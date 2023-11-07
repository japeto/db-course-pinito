# Borrar los datos de la base datos
´´´shell
rm -rfv /data/db/*
´´´

# Levanta la base de datos (queda atachada)
´´´shell
docker-compose up pinito-db
´´´

# Levanta la base de datos (queda en backgroud)
´´´
docker-compose up -d pinito-db
´´´



