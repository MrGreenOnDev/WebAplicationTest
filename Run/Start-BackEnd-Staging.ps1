docker pull mrgreenondev/webaplicationtest:Dev
docker stop MyWebCenas-Test
docker rm MyWebCenas-Test
docker run --name MyWebCenas-Test --env=ASPNETCORE_ENVIRONMENT=Development --env=DOTNET_RUNNING_IN_CONTAINER=true -p 4430:443 -p 8080:80 -d docker.io/mrgreenondev/webaplicationtest:Dev 
start-process "http://localhost:8080"