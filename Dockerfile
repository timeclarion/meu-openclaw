FROM node:20-slim

# Instala o OpenClaw
RUN npm install -g openclaw

# Define a porta que o Render usa
ENV PORT=10000

# Comando para iniciar a lagosta
CMD openclaw gateway --auth token --port ${PORT} --bind lan
