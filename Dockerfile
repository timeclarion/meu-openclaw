FROM node:20-slim

WORKDIR /app

# Instala o pacote localmente
RUN npm install openclaw

# Garante que as variáveis de ambiente estejam disponíveis
ENV PORT=10000

# Usamos o npx especificando o pacote (-p) e chamando o binário 'openclaw'
CMD ["npx", "-p", "openclaw", "openclaw", "gateway", "--auth", "token", "--port", "10000", "--bind", "lan"]
