%% -*- coding: utf-8 -*-
%% Automatically generated, do not edit
%% Generated by gpb_compile version 4.11.0

-ifndef(opentelemetry_zipkin_pb).
-define(opentelemetry_zipkin_pb, true).

-define(opentelemetry_zipkin_pb_gpb_version, "4.11.0").

-ifndef('ZIPKIN_SPAN_PB_H').
-define('ZIPKIN_SPAN_PB_H', true).
-record(zipkin_span,
        {trace_id = <<>>        :: iodata() | undefined, % = 1
         parent_id = <<>>       :: iodata() | undefined, % = 2
         id = <<>>              :: iodata() | undefined, % = 3
         kind = 'SPAN_KIND_UNSPECIFIED' :: 'SPAN_KIND_UNSPECIFIED' | 'CLIENT' | 'SERVER' | 'PRODUCER' | 'CONSUMER' | integer() | undefined, % = 4, enum zipkin_span.Kind
         name = <<>>            :: iodata() | undefined, % = 5
         timestamp = 0          :: non_neg_integer() | undefined, % = 6, 32 bits
         duration = 0           :: non_neg_integer() | undefined, % = 7, 32 bits
         local_endpoint = undefined :: opentelemetry_zipkin_pb:zipkin_endpoint() | undefined, % = 8
         remote_endpoint = undefined :: opentelemetry_zipkin_pb:zipkin_endpoint() | undefined, % = 9
         annotations = []       :: [opentelemetry_zipkin_pb:zipkin_annotation()] | undefined, % = 10
         tags = []              :: [{iodata(), iodata()}] | undefined, % = 11
         debug = false          :: boolean() | 0 | 1 | undefined, % = 12
         shared = false         :: boolean() | 0 | 1 | undefined % = 13
        }).
-endif.

-ifndef('ZIPKIN_ENDPOINT_PB_H').
-define('ZIPKIN_ENDPOINT_PB_H', true).
-record(zipkin_endpoint,
        {service_name = <<>>    :: iodata() | undefined, % = 1
         ipv4 = <<>>            :: iodata() | undefined, % = 2
         ipv6 = <<>>            :: iodata() | undefined, % = 3
         port = 0               :: integer() | undefined % = 4, 32 bits
        }).
-endif.

-ifndef('ZIPKIN_ANNOTATION_PB_H').
-define('ZIPKIN_ANNOTATION_PB_H', true).
-record(zipkin_annotation,
        {timestamp = 0          :: non_neg_integer() | undefined, % = 1, 32 bits
         value = <<>>           :: iodata() | undefined % = 2
        }).
-endif.

-ifndef('ZIPKIN_LIST_OF_SPANS_PB_H').
-define('ZIPKIN_LIST_OF_SPANS_PB_H', true).
-record(zipkin_list_of_spans,
        {spans = []             :: [opentelemetry_zipkin_pb:zipkin_span()] | undefined % = 1
        }).
-endif.

-ifndef('ZIPKIN_REPORT_RESPONSE_PB_H').
-define('ZIPKIN_REPORT_RESPONSE_PB_H', true).
-record(zipkin_report_response,
        {
        }).
-endif.

-endif.