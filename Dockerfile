FROM node:20-slim

# Instala o OpenClaw globalmente
RUN npm install -g openclaw

# Define a porta
ENV PORT=10000

# Usa o caminho direto do executável do NPM para evitar erros de link
# O 'npm bin -g' geralmente aponta para /usr/local/bin ou /usr/bin
CMD ["/usr/local/bin/openclaw", "gateway", "--auth", "token", "--port", "10000", "--bind", "lan"]
