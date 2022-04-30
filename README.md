# vscode-cloud
Visual Studio Code on Browser (using Docker Container)

### Build
```docker build --pull --rm -f "Dockerfile" -t igrwijaya/vscode-cloud:latest "."```

### Command
``` docker run -it --name code-server -p 127.0.0.1:8080:80 -v "D:/Workspace/Infrastructure/DockerVolume/.config:/home/coder/.config" -v "D:/Workspace/Infrastructure/DockerVolume/project:/home/coder/project" igrwijaya/vscode-cloud:latest```
