-module(switchboard_tests).
-include_lib("eunit/include/eunit.hrl").

relay_success_test() ->
    Expected = {ok, <<"gemini response to chatgpt response to hello">>},
    ?assertEqual(Expected, switchboard:relay(<<"hello">>, ai_chatgpt, ai_gemini)).

relay_error_test() ->
    ?assertEqual({error, test_error}, switchboard:relay(<<"hello">>, error_provider, ai_gemini)).
