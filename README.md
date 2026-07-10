# deploy stanford coreNlp

- please check [the stanford-coreNlp project](https://github.com/stanfordnlp/CoreNLP)
- the curren version we're using is 4.5.10

## build image

- clone stanford coreNLp project

```sh
git clone https://github.com/stanfordnlp/CoreNLP.git
```

- copy the dockerfile

```sh
cp Dockerfile CoreNLP
cd CoreNLP
```

```sh
docker build -t core-nlp:4.5.6 .
```

## run coreNLP

```sh
docker run --name stanford-corenlp --rm -p 9000:9000 core-nlp:4.5.6 -d
```
