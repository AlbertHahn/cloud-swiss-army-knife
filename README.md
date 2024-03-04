# cloud-swiss-army-knife

![Docker Workflow](https://github.com/AlbertHahn/cloud-swiss-army-knife/actions/workflows/image.yml/badge.svg)

# About

This repository serves multiple images based on alpine that come preinstalled with linux tools that are essential for the daily devops business like `wget, curl, jq, aws-cli, python` etc.

## Flavours

To minimize image size they come in different "flavours" each with another database client or without.

### Images

Preinstalled with no database \
`ghcr.io/alberthahn/cloud-swiss-army-knife-essentials`

Preinstalled with mongodb && mongodb-tools \
`ghcr.io/alberthahn/cloud-swiss-army-knife-mongodb`

Preinstalled with redis \
`ghcr.io/alberthahn/cloud-swiss-army-knife-redis`

Preinstalled with mysql-client \
`ghcr.io/alberthahn/cloud-swiss-army-knife-mysql`

Preinstalled with postgresql-client \
`ghcr.io/alberthahn/cloud-swiss-army-knife-postgresql`