FROM node:20-slim

# Instala o OpenClaw globalmente
RUN npm install -g openclaw --unsafe-perm=true

# Define o diretório de trabalho apenas por organização
WORKDIR /app

# Define a porta que o Render exige
ENV PORT=10000

# O segredo: usamos o 'sh -c' para que o sistema procure o 'openclaw' no PATH do NPM
# sem precisarmos digitar o caminho completo.
CMD ["sh", "-c", "openclaw gateway --auth token --port 10000 --bind lan"]
