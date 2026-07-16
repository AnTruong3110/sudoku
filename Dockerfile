FROM nginx:alpine

# Serve the static Sudoku app
COPY index.html /usr/share/nginx/html/index.html

# Disable browser caching so updates show up on a normal reload
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
