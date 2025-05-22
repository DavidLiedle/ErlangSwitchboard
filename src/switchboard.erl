-module(switchboard).

-export([relay/3]).

-spec relay(binary(), module(), module()) -> {ok, binary()} | {error, term()}.
relay(Message, ProviderFrom, ProviderTo) when is_binary(Message) ->
    case ProviderFrom:call(Message, #{}) of
        {ok, Response} ->
            ProviderTo:call(Response, #{});
        Error ->
            Error
    end.
