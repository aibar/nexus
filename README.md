# BUILD
    ./build.sh

# RUN
    docker run --restart always --name nexus -d -p 80:8081 -v /data:/data nexus:3.0.0-m7
