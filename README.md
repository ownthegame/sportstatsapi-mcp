# SportStatsAPI MCP server

Sports data for AI assistants and agents: fixtures, live scores, results, standings, lineups and verified match facts in five languages (English, German, Spanish, Italian, French) for soccer, basketball, tennis, hockey, baseball, American football, handball, volleyball, cricket and horse racing, in thousands of competitions down to lower leagues such as the German Regionalliga and Oberliga. `list_sports` gives the current sports and how many competitions each has; the live counts are on https://sportstatsapi.com/.

The server is hosted; there is nothing to install.

- **URL (Streamable HTTP):** `https://mcp.sportstatsapi.com/mcp`
- **Official MCP Registry:** `com.sportstatsapi/sports-data`
- **Website:** https://sportstatsapi.com/ai-agents/

## Access

Sign in with your SportStatsAPI account (OAuth; clients such as Claude ask when you connect) or send an API key as `Authorization: Bearer <key>`. A free account works; plans at https://sportstatsapi.com/pricing/. `list_sports` and `find_leagues` work without an account.

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
| `get_summary` | Ready paragraphs on a match, team, league or player, from our data only |
| `get_match_briefing` | Form, streaks, home and away records, head-to-head, table and stakes, as facts and sentences |
| `get_team_briefing` | A team's form, streaks, table place, last and next match |
| `get_facts` | A match's or team's fact sentences, most important first |
| `get_league_facts` | What finished matches changed in a league |
| `get_h2h` | Head-to-head of two teams over every meeting in our data |
| `get_standings` | League table, its history and season statistics |
| `get_team` | Team profile, squad, next matches |
| `get_player` | Player profile and season statistics |
| `get_transfers` | Soccer transfers |
| `get_bracket` | Cup knock-outs and tennis draws |
| `get_races`, `get_race`, `get_race_briefing`, `find_horses`, `get_runner_form`, `get_racing_stats` | Horse racing: race cards, results, form and statistics |

The full, current list: https://mcp.sportstatsapi.com/.well-known/mcp.json

Facts only, no predictions.

## Connect

Clients that support remote MCP servers (Claude, ChatGPT, Cursor, VS Code and others) connect to the URL directly.

For clients that only run local (stdio) servers, this repository has a small image that connects to the hosted server:

```sh
docker build -t sportstatsapi-mcp .
docker run -i --rm sportstatsapi-mcp                                   # sign in when the client asks
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
