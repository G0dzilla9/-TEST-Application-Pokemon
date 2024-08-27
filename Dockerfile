# Utilise une image Go officielle pour builder l'application
FROM golang:1.22-alpine AS build

# Répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier les fichiers Go dans le répertoire de travail
COPY . .

# Compile l'application Go
RUN go build -o app

# Utilise une image légère pour exécuter l'application
FROM alpine:3.18

# Répertoire de travail dans le conteneur final
WORKDIR /app

# Copie l'exécutable Go compilé depuis l'étape de build
COPY --from=build /app/app .

# Copie les autres fichiers nécessaires comme index.tmpl.html
COPY index.tmpl.html .

# Port sur lequel l'application va écouter
EXPOSE 8080

# Commande pour exécuter l'application
CMD ["./app"]
