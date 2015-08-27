FROM java:7
ENV FOO bar
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN echo "Redundant layer" > /tmp/whatevz
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
