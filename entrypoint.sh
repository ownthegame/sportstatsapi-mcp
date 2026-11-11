#!/bin/sh
# With an API key every tool runs on its plan; without one the client signs in
# (OAuth) when the server asks.
if [ -n "$SPORTSTATSAPI_KEY" ]; then
  exec mcp-remote "$SPORTSTATSAPI_URL" --transport http-only --header "Authorization:Bearer $SPORTSTATSAPI_KEY"
fi
exec mcp-remote "$SPORTSTATSAPI_URL" --transport http-only
