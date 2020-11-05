
docker run --rm --name slate -v $(pwd)/build:/srv/slate/build -v $(pwd)/source:/srv/slate/source repo.xenn.io/slatedocs:v2.8.0
