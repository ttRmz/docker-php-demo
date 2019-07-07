printf '\n\e[1;34m%-6s\e[m\n\n' "📦  Building container\n" 
docker-compose build

printf '\n\e[1;34m%-6s\e[m\n\n' "🚀  Composing"
docker-compose up -d

printf '\n\e[1;34m%-6s\e[m\n\n' "👀  Running tests"
docker-compose exec -T php phpunit functions.test.php

printf '\n\e[1;34m%-6s\e[m\n\n' "✨  Application is running on : http://localhost:8080/"

read -p "Press enter to shut down containers"

docker-compose down
printf '\n\e[1;34m%-6s\e[m' "👻  Docker containers down"
