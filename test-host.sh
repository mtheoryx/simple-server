#! /bin/bash
resultIP=$(docker run --rm alpine:3.6 wget --spider 192.168.65.1:9000 2>&1 | grep -c refused)

resultAlias=$(docker run --rm alpine:3.6 wget --spider docker.for.mac.localhost:9000 2>&1 | grep -c refused)

if [[ $resultIP -eq 0 ]]; then
  echo 'Success! Connected to host alias 192.168.65.1 from inside container!'
else
  echo 'Failure! Not able to connect to host alias 192.168.65.1 from inside container!'
fi

if [[ $resultAlias -eq 0 ]]; then
  echo 'Success! Connected to host alias docker.for.mac.localhost from inside container!'
else
  echo 'Failure! Not able to connect to host alias docker.for.mac.localhost from inside container!'
fi
