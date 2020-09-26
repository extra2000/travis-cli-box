# travis-cli-devbox

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build Status](https://travis-ci.com/extra2000/travis-cli-devbox.svg?branch=master)](https://travis-ci.com/extra2000/travis-cli-devbox) [![Build status](https://ci.appveyor.com/api/projects/status/3i368jm38yyjkhel/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/travis-cli-devbox/branch/master) |

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
