FROM node:20-slim

# Instala as dependências necessárias para o OpenClaw (se houver)
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

# Instala o OpenClaw globalmente
RUN npm install -g openclaw

# Garante que o binário seja encontrável criando um link simbólico (garantia extra)
RUN ln -s $(npm config get prefix)/bin/openclaw /usr/local/bin/openclaw

# Porta padrão do Render
ENV PORT=10000

# Comando de inicialização
# O OpenClaw lerá ANTHROPIC_API_KEY e OPENCLAW_GATEWAY_TOKEN das variáveis de ambiente do Render
CMD openclaw gateway --auth token --port 10000 --bind lan
