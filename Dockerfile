# SportStatsAPI MCP server for clients that run MCP servers locally (stdio).
# The server itself is hosted at https://mcp.sportstatsapi.com/mcp; this
# image only connects to it (mcp-remote). Optional: SPORTSTATSAPI_KEY.
FROM node:22-alpine
RUN npm install -g mcp-remote@0.1.29
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENV SPORTSTATSAPI_URL=https://mcp.sportstatsapi.com/mcp
ENTRYPOINT ["/entrypoint.sh"]
