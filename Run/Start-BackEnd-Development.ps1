docker pull mrgreenondev/webaplicationtest:Dev
docker stop MyWebCenas-Dev
docker rm MyWebCenas-Dev
docker run --name MyWebCenas-Dev --env=ASPNETCORE_ENVIRONMENT=Development --env=DOTNET_RUNNING_IN_CONTAINER=true -p 4430:443 -p 8080:80 -d docker.io/mrgreenondev/webaplicationtest:Dev 
start-process "http://localhost:8080"