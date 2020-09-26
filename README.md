# travis-cli-devbox

Developer box for Travis CLI client


## Getting started

Clone this repository:
```
$ git clone --recursive https://github.com/extra2000/travis-cli-devbox.git
$ cd travis-cli-devbox
```


## Preparing environment

```
$ vagrant up --provider=libvirt
$ vagrant ssh travis-cli-box -- sudo salt-call state.sls ruby
$ vagrant ssh travis-cli-box -- sudo salt-call state.sls travis-cli
```


## Using `travis` commands

Create a [new personal access token](https://github.com/settings/tokens/new) for your Travis CLI access. Make sure to enable the following [scopes](https://docs.travis-ci.com/user/github-oauth-scopes/#repositories-on-httpstravis-cicom-private-and-public).

Login into `travis-cli-box` and then you can start using `travis` commands, for example:
```
$ vagrant ssh travis-cli-box
$ travis login --pro --github-token [your-personal-access-token]
```

## Example usage

The followings are the common example of `travis` commands.


### Encrypting Slack token

```
$ vagrant ssh travis-cli-box
$ git clone https://github.com/[owner]/[repo].git
$ cd [repo]
$ travis encrypt "[owner]:[slack-token]" --add notifications.slack --com
```
