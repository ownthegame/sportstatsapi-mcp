#!/bin/sh
# With an API key every tool is open; without one list_sports and
# find_leagues are free and the others answer with an x402 price.
if [ -n "$SPORTSTATSAPI_KEY" ]; then
  exec mcp-remote "$SPORTSTATSAPI_URL" --transport http-only --header "Authorization:Bearer $SPORTSTATSAPI_KEY"
fi
exec mcp-remote "$SPORTSTATSAPI_URL" --transport http-only
