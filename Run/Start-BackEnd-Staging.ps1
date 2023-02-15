docker pull mrgreenondev/webaplicationtest:Test
docker stop MyWebCenas-Test
docker rm MyWebCenas-Test
docker run --name MyWebCenas-Test --env=ASPNETCORE_ENVIRONMENT=Staging --env=DOTNET_RUNNING_IN_CONTAINER=true -p 4430:443 -p 8080:80 -d docker.io/mrgreenondev/webaplicationtest:Test
start-process "http://localhost:8080"