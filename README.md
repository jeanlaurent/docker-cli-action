# docker-cli-action

Playing with Docker and github actionsm trying to answer what would be the best way to interact with docker within a github actions.

## using the github provided "docker/moby" cli.

in a workflow:
```
   steps:
    - name: 'docker version simple'
      run: docker version
```


## using the docker official docker image
in a workflow:
```
    steps:
    - name: 'docker version simple'
      uses: docker://docker:19.03.4
      with:
        args: docker version
```


## using a custom github action
in a workflow:
```
    - name: 'docker version'
      uses: jeanlaurent/docker-cli-action@master
      with:
        docker: version
```
