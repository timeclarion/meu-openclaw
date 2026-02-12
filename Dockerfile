FROM node:20-slim

WORKDIR /app

# Instala o pacote localmente
RUN npm install openclaw

# Define as variáveis de ambiente necessárias
ENV PORT=10000
ENV NODE_ENV=production

# Comando que ignora o binário do sistema e chama o código direto
CMD ["node", "./node_modules/openclaw/dist/index.js", "gateway", "--auth", "token", "--port", "10000", "--bind", "lan"]
