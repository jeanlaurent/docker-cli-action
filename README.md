# docker-cli-action

Playing with Docker and github actionsm trying to answer what would be the best way to interact with docker within a github actions.

## using the github provided "docker/moby" cli.

in a workflow:
```
   steps:
    - name: 'docker version simple'
      run: docker version
```

Good:
* simplest
Bad:
* you don't control the version
* the version is weird (3.0.8???)



## using the docker official docker image
in a workflow:
```
    steps:
    - name: 'docker version simple'
      uses: docker://docker:19.03.4
      with:
        args: docker version
```
Good:
* already shipped today
* you control the version
Bad:
* it's not a github action


## using a custom github action
in a workflow:
```
    - name: 'docker version'
      uses: jeanlaurent/docker-cli-action@master
      with:
        docker: version
```
`jeanlaurent/docker-cli-action` should be replaced with `docker/docker-cli-action` or something like that.
TODO: We should also expose the outputs for people to wire that in in github action.

Good:
* you control the version
* it integrates nicely with the github action mecanism
Bad:
* This needs to be shipped with every engine release.

