ARG TAG=latest

FROM jboss/keycloak:${TAG}

USER 0

RUN yum update -y && yum clean all

USER jboss