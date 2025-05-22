# ErlangSwitchboard
An aggressive use of Codex from OpenAI to see what is possible.

## Switchboard Application

This project provides a minimal Erlang application that can relay output from one AI provider to another. The core API is `switchboard:relay/3` which accepts an input string and two provider modules.

Example usage (in an Erlang shell):

```
1> switchboard:relay(<<"Hello">>, ai_chatgpt, ai_gemini).
```

Provider modules implement the `ai_base` behaviour. The included modules `ai_chatgpt` and `ai_gemini` are placeholders that simply echo the input.
