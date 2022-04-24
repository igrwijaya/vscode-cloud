# vscode-cloud
Visual Studio Code on Browser (using Docker Container)

### Build
```docker build --pull --rm -f "Dockerfile" -t vscodecloud:latest "."```

### Command
``` docker run -it --name code-server -p 127.0.0.1:8080:8080 -v "D:/Workspace/Infrastructure/DockerVolume/.config:/home/coder/.config" -v "D:/Workspace/Infrastructure/DockerVolume/project:/home/coder/project" vscodecloud:latest```
