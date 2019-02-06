# STX devel

Development scripts and makefiles for [Starling X](https://www.starlingx.io/)


## Getting start

If you are new in the starling x development this starting point is for you,
lets first cover the basic question.

## How do I set up a development machine?

```
bash setup.sh
```

## Where do I get the STX code?

The source code is splited in multiple [git repositories](https://git.starlingx.io/cgit)

you can jsut run inside this repository:

```
make clone
```

## How do I build an image ( ISO )?

The starting point should be the [developer
guide](https://docs.starlingx.io/developer_guide/index.html). However to make
the things more clean for myself I create a Makefile(WIP) to execute the basic
instructions to build an image:

* Build the Base Docker Image

```
    make docker image
```

* Build the CentOS Mirror Repository

```
    make run_container
```

if you are under a proxy please set up in proxy.conf as:
```http://<addrs>:port``

## If I want to send a change to review 

First review the basic sanity tests before submiting, 
go into the repository you want and run

```
tox -c doc

```

Or 
```
tox -e pep8

```




