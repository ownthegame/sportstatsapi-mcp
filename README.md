# SportStatsAPI MCP server

Sports data for AI assistants and agents: fixtures, live scores, results, standings, lineups and verified match facts in five languages (English, German, Spanish, Italian, French) for **1,881 competitions in 8 sports**: soccer, basketball, tennis, hockey, baseball, American football, handball and volleyball. Down to lower leagues such as the German Regionalliga and Oberliga.

The server is hosted; there is nothing to install.

- **URL (Streamable HTTP):** `https://mcp.sportstatsapi.com/mcp`
- **Official MCP Registry:** `com.sportstatsapi/sports-data`
- **Website:** https://sportstatsapi.com/ai-agents/

## Access

- **With an API key** (plans at https://sportstatsapi.com/pricing/): send `Authorization: Bearer <key>`. Every tool is open.
- **Without a key:** `list_sports` and `find_leagues` are free. The other tools answer with a price and are paid per call with [x402](https://www.x402.org/) (USDC on Base, no sign-up).

## Tools

| Tool | What it gives |
|---|---|
| `list_sports` | Sports and how many competitions each has |
| `find_leagues` | Competitions by name or country, with their ids |
| `find_teams` | Teams by name |
| `get_matches` | Fixtures and results by day or date range, optionally of one league; TV channels and highlights where known |
| `get_live_matches` | Matches in play now, with score and minute |
| `get_match` | One match: score, status, events, venue, referee, TV channels, highlights |
| `get_match_details` | Statistics or box score, lineups, injuries, play-by-play |
| `get_match_briefing` | Form, streaks, home and away records, head-to-head, table and stakes, as facts and sentences |
| `get_team_briefing` | A team's form, streaks, table place, last and next match |
| `get_league_facts` | What finished matches changed in a league |
| `get_standings` | League table |
| `get_team` | Team profile and squad |
| `get_player` | Player profile |

Facts only, no predictions.

## Connect

Clients that support remote MCP servers (Claude, ChatGPT, Cursor, VS Code and others) connect to the URL directly.

For clients that only run local (stdio) servers, this repository has a small image that connects to the hosted server:

```sh
docker build -t sportstatsapi-mcp .
docker run -i --rm sportstatsapi-mcp                                   # free tools and pay per call
docker run -i --rm -e SPORTSTATSAPI_KEY=your_key sportstatsapi-mcp     # with an API key
```

or without Docker:

```sh
npx -y mcp-remote@0.1.29 https://mcp.sportstatsapi.com/mcp --transport http-only
```

## Images

Team logos, competition logos and player photos are provided to identify teams, competitions and players. Rights stay with the leagues, clubs and players; you need their permission before using these images.

## Contact

info@sportstatsapi.com · https://sportstatsapi.com/contact/
