FROM java:7
MAINTAINER Martin Mosegaard Amdisen <martin.amdisen@praqma.com>

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin && \
    javac -d bin src/HelloWorld.java && \
    rm -rf src

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

