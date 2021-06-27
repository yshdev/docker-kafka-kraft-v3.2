# Docker Kafka Kraft

Apache Kafka Docker image using using Kafka Raft metadata mode (KRaft). In KRaft the Kafka metadata information will be stored as a partition within Kafka itself. There will be a KRaft Quorum of controller nodes which will be used to store the metadata. The metadata will be stored in an internal Kafka topic `@metadata`.

**IMPORTANT: THIS IMAGE IS ONLY VALID FOR TEST PURPOSES AND NOT PRODUCTION USE.**

# Getting Started

```bash
    $ docker pull
    $ docker run
```

Now you can reach container...

# Environment Variables

| Name                | Type     | Description                                                    | Example                 |
| ------------------- | -------- | -------------------------------------------------------------- | ----------------------- |
| CONTAINER_HOST_NAME | string   | Hostname for the running container as the Kafka listener       | kafka                   |
| CREATE_TOPICS       | []string | Comma separated list of topics to be created post server setup | topic-a,topic-b,topic-c |

# Resources

- [https://adityasridhar.com/posts/how-to-easily-install-kafka-without-zookeeper](https://adityasridhar.com/posts/how-to-easily-install-kafka-without-zookeeper)

# License

MIT License

Copyright (c) 2021 docker-kafka-kraft

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.