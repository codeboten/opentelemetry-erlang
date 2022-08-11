%%%------------------------------------------------------------------------
%% Copyright 2019, OpenTelemetry Authors
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%% http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% @doc Supervisor for processes belonging to the Metric SDK.
%% @end
%%%-------------------------------------------------------------------------
-module(otel_metrics_sup).

-behaviour(supervisor).

-export([start_link/1]).

-export([init/1]).

-define(SERVER, ?MODULE).

start_link(Opts) ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, [Opts]).

init([Opts]) ->
    SupFlags = #{strategy => one_for_one,
                 intensity => 1,
                 period => 5},

    MeterServer = #{id => otel_meter_server,
                    start => {otel_meter_server, start_link, [Opts]},
                    restart => permanent,
                    shutdown => 5000,
                    type => worker,
                    modules => [otel_meter_provider, otel_meter_server]},

    ChildSpecs = [MeterServer],
    {ok, {SupFlags, ChildSpecs}}.
