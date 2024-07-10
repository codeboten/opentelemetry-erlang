

%% String indicating the [cipher](https://datatracker.ietf.org/doc/html/rfc5246#appendix-A.5) used during the current connection.
%%  
-define(TLS_CIPHER, 'tls.cipher').


%% PEM-encoded stand-alone certificate offered by the client. This is usually mutually-exclusive of `client.certificate_chain` since this value also exists in that list.
%%  
-define(TLS_CLIENT_CERTIFICATE, 'tls.client.certificate').


%% Array of PEM-encoded certificates that make up the certificate chain offered by the client. This is usually mutually-exclusive of `client.certificate` since that value should be the first certificate in the chain.
%%  
-define(TLS_CLIENT_CERTIFICATECHAIN, 'tls.client.certificate_chain').


%% Certificate fingerprint using the MD5 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash.
%%  
-define(TLS_CLIENT_HASH_MD_5, 'tls.client.hash.md5').


%% Certificate fingerprint using the SHA1 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash.
%%  
-define(TLS_CLIENT_HASH_SHA_1, 'tls.client.hash.sha1').


%% Certificate fingerprint using the SHA256 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash.
%%  
-define(TLS_CLIENT_HASH_SHA_256, 'tls.client.hash.sha256').


%% Distinguished name of [subject](https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.6) of the issuer of the x.509 certificate presented by the client.
-define(TLS_CLIENT_ISSUER, 'tls.client.issuer').


%% A hash that identifies clients based on how they perform an SSL/TLS handshake.
-define(TLS_CLIENT_JA_3, 'tls.client.ja3').


%% Date/Time indicating when client certificate is no longer considered valid.
-define(TLS_CLIENT_NOTAFTER, 'tls.client.not_after').


%% Date/Time indicating when client certificate is first considered valid.
-define(TLS_CLIENT_NOTBEFORE, 'tls.client.not_before').


%% Also called an SNI, this tells the server which hostname to which the client is attempting to connect to.
-define(TLS_CLIENT_SERVERNAME, 'tls.client.server_name').


%% Distinguished name of subject of the x.509 certificate presented by the client.
-define(TLS_CLIENT_SUBJECT, 'tls.client.subject').


%% Array of ciphers offered by the client during the client hello.
-define(TLS_CLIENT_SUPPORTEDCIPHERS, 'tls.client.supported_ciphers').


%% String indicating the curve used for the given cipher, when applicable
-define(TLS_CURVE, 'tls.curve').


%% Boolean flag indicating if the TLS negotiation was successful and transitioned to an encrypted tunnel.
-define(TLS_ESTABLISHED, 'tls.established').


%% String indicating the protocol being tunneled. Per the values in the [IANA registry](https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids), this string should be lower case.
%%  
-define(TLS_NEXTPROTOCOL, 'tls.next_protocol').


%% Normalized lowercase protocol name parsed from original string of the negotiated [SSL/TLS protocol version](https://www.openssl.org/docs/man1.1.1/man3/SSL_get_version.html#RETURN-VALUES)
%%  

-define('tls_protocol_name.ssl', 'ssl').

-define('tls_protocol_name.tls', 'tls').

-define(tls_protocol_name.(Custom), Custom).


%% Numeric part of the version parsed from the original string of the negotiated [SSL/TLS protocol version](https://www.openssl.org/docs/man1.1.1/man3/SSL_get_version.html#RETURN-VALUES)
%%  
-define(TLS_PROTOCOL_VERSION, 'tls.protocol.version').


%% Boolean flag indicating if this TLS connection was resumed from an existing TLS negotiation.
-define(TLS_RESUMED, 'tls.resumed').


%% PEM-encoded stand-alone certificate offered by the server. This is usually mutually-exclusive of `server.certificate_chain` since this value also exists in that list.
%%  
-define(TLS_SERVER_CERTIFICATE, 'tls.server.certificate').


%% Array of PEM-encoded certificates that make up the certificate chain offered by the server. This is usually mutually-exclusive of `server.certificate` since that value should be the first certificate in the chain.
%%  
-define(TLS_SERVER_CERTIFICATECHAIN, 'tls.server.certificate_chain').


%% Certificate fingerprint using the MD5 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash.
%%  
-define(TLS_SERVER_HASH_MD_5, 'tls.server.hash.md5').


%% Certificate fingerprint using the SHA1 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash.
%%  
-define(TLS_SERVER_HASH_SHA_1, 'tls.server.hash.sha1').


%% Certificate fingerprint using the SHA256 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash.
%%  
-define(TLS_SERVER_HASH_SHA_256, 'tls.server.hash.sha256').


%% Distinguished name of [subject](https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.6) of the issuer of the x.509 certificate presented by the client.
-define(TLS_SERVER_ISSUER, 'tls.server.issuer').


%% A hash that identifies servers based on how they perform an SSL/TLS handshake.
-define(TLS_SERVER_JA_3_S, 'tls.server.ja3s').


%% Date/Time indicating when server certificate is no longer considered valid.
-define(TLS_SERVER_NOTAFTER, 'tls.server.not_after').


%% Date/Time indicating when server certificate is first considered valid.
-define(TLS_SERVER_NOTBEFORE, 'tls.server.not_before').


%% Distinguished name of subject of the x.509 certificate presented by the server.
-define(TLS_SERVER_SUBJECT, 'tls.server.subject').
