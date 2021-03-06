\echo Use "ALTER EXTENSION pgmemcache UPDATE TO '2.1'" to load this file. \quit

ALTER FUNCTION memcache_server_add(text) STRICT;
ALTER FUNCTION memcache_stats() STRICT;
ALTER FUNCTION memcache_flush_all() STRICT;
ALTER FUNCTION memcache_delete(text, interval) STRICT;
ALTER FUNCTION memcache_delete(text) STRICT;
ALTER FUNCTION memcache_get(text) STRICT;
ALTER FUNCTION memcache_get(bytea) STRICT;
ALTER FUNCTION memcache_get_multi(text[]) STRICT;
ALTER FUNCTION memcache_get_multi(bytea[]) STRICT;
ALTER FUNCTION memcache_set(text, text, timestamptz) STRICT;
ALTER FUNCTION memcache_set(text, text, interval) STRICT;
ALTER FUNCTION memcache_set(text, text) STRICT;
ALTER FUNCTION memcache_set(bytea, text) STRICT;
ALTER FUNCTION memcache_set(text, bytea) STRICT;
ALTER FUNCTION memcache_add(text, text, timestamptz) STRICT;
ALTER FUNCTION memcache_add(text, text, interval) STRICT;
ALTER FUNCTION memcache_add(text, text) STRICT;
ALTER FUNCTION memcache_replace(text, text, timestamptz) STRICT;
ALTER FUNCTION memcache_replace(text, text, interval) STRICT;
ALTER FUNCTION memcache_replace(text, text) STRICT;
ALTER FUNCTION memcache_append(text, text, timestamptz) STRICT;
ALTER FUNCTION memcache_append(text, text, interval) STRICT;
ALTER FUNCTION memcache_append(text, text) STRICT;
ALTER FUNCTION memcache_prepend(text, text, timestamptz) STRICT;
ALTER FUNCTION memcache_prepend(text, text, interval) STRICT;
ALTER FUNCTION memcache_prepend(text, text) STRICT;
ALTER FUNCTION memcache_incr(text, int) STRICT;
ALTER FUNCTION memcache_incr(text) STRICT;
ALTER FUNCTION memcache_decr(text, int) STRICT;
ALTER FUNCTION memcache_decr(text) STRICT;
