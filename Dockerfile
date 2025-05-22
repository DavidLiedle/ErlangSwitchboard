FROM erlang:26-alpine
WORKDIR /app
COPY . .
RUN rebar3 compile
CMD ["rebar3","shell"]
