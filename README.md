# ErlangSwitchboard
An aggressive use of Codex from OpenAI to see what is possible.

## Switchboard Application

This project provides a minimal Erlang application that can relay output from one AI provider to another. The core API is `switchboard:relay/3` which accepts an input string and two provider modules.

Example usage (in an Erlang shell):

```
1> switchboard:relay(<<"Hello">>, ai_chatgpt, ai_gemini).
```

Provider modules implement the `ai_base` behaviour. The included modules `ai_chatgpt` and `ai_gemini` are placeholders that simply echo the input.

## Running Tests

The project uses `rebar3` and includes eunit tests. Run them with:

```
rebar3 eunit
```

## Docker

A simple `Dockerfile` is provided for running the application in a container:

```
docker build -t erlang-switchboard .
docker run -it erlang-switchboard
```

## Continuous Integration

GitHub Actions are configured to compile and test the application automatically on pushes and pull requests to the `main` branch.
