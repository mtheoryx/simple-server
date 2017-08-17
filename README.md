# simple-server

Spin up a simple node server on your Mac host, and run a script
to verify your Mac host can be reached from within a Docker container

## Install

Clone this repository

```bash
git clone https://github.com/mtheoryx/simple-server.git && cd simple-server
```

Install npm dependencies
```bash
npm i
```

## Usage

Spin up the node server in a terminal

```bash
npm start
```

Run the test script

```bash
./test-host.sh
```

## Results

On success, results will read:

```bash
Success! Connected to host alias 192.168.65.1 from inside container!
Success! Connected to host alias docker.for.mac.localhost from inside container!
```

You can also see that it's successful since there will be 2 more logs of `Got request!` from the node server.

On failure, results will read:

```bash
Failure! Not able to connect to host alias 192.168.65.1 from inside container!
Failure! Not able to connect to host alias docker.for.mac.localhost from inside container!
```

This could mean your node server is not running, or your Docker for Mac configuration is broken.
