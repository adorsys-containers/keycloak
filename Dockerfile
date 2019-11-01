ARG TAG=latest

FROM jboss/keycloak:${TAG}

USER 0

RUN if command -v yum; then \
      yum update -y && yum clean all; \
    else \
      microdnf update -y && microdnf clean all; \
    fi

USER jboss
