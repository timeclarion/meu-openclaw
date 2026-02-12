FROM node:20-slim

# Definimos o diretório de trabalho
WORKDIR /app

# Instalamos localmente para evitar problemas de PATH global
RUN npm install openclaw

# A porta que o Render exige
ENV PORT=10000

# Usamos npx para garantir que ele localize o binário dentro de node_modules
CMD ["npx", "openclaw", "gateway", "--auth", "token", "--port", "10000", "--bind", "lan"]
