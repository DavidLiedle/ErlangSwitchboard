-module(ai_base).

-callback call(binary(), map()) -> {ok, binary()} | {error, term()}.
