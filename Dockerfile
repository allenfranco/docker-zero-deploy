# Imagem golang na ultima versao
FROM golang:latest
# Copiando todos os arquivos locais dentro da imagem
COPY . . 

# Comando para ele executar ao iniciar
RUN go build main.go

# porta que vamos rodar
EXPOSE 80

# Quando o container rodar ele vai executar
ENTRYPOINT [ "./main" ]