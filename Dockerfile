# Étape de base : image Nginx officielle
FROM nginx:alpine

# Supprime la page d'accueil par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copie les fichiers HTML dans le répertoire public de Nginx
COPY . /usr/share/nginx/html

# Expose le port standard HTTP
EXPOSE 80

# Nginx est lancé automatiquement via l'image de base