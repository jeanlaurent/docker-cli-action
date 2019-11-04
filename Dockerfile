FROM docker:19.03.4

ENTRYPOINT ["sh","-c","docker", "$*"]