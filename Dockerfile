# 1. Imagem base oficial otimizada (Alpine Linux com Node.js 18)
FROM node:18-alpine

# 2. Diretório de trabalho dentro do container
WORKDIR /usr/src/app

# 3. Copia manifestos de dependência
COPY package*.json ./

# 4. Instala as dependências da aplicação
RUN npm install

# 5. Copia o restante do código-fonte e submódulos
COPY . .

# 6. Documenta a porta da API
EXPOSE 3000

# 7. Comando de inicialização do servidor
CMD ["node", "server.js"]
