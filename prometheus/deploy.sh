#!/bin/bash
docker-compose down
docker build ./prometheus -t shomaigu/prometheus-aicta:latest
docker push shomaigu/prometheus-aicta:latest

docker build ./black -t shomaigu/black-aicta:latest
docker push shomaigu/black-aicta:latest

docker build ./grafana -t shomaigu/grafana-aicta:latest
docker push shomaigu/grafana-aicta:latest


docker-compose down --rmi all --volumes --remove-orphans
docker-compose down --rmi all --volumes
docker-compose up
