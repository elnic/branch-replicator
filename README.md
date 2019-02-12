# Branch Replicator Action

A GitHub action to automatically create new PR based on target branch. 

## Usage

```
workflow "on pull request merge, delete the branch" {
  on = "pull_request"
  resolves = ["branch cleanup"]
}

action "branch replicator" {
  uses = "elnic/branch-replicator@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    SRC_BRANCH = "staging"
    T_BRANCH = "development
  }
}
```

`SRC_BRANCH` is for branch that you make PR into
`T_BRANCH` is the target branch that github action makes copy

## Contributing

### Running the tests

The tests use [shellcheck](https://github.com/koalaman/shellcheck). You don't
need to install anything. They run in a container.

```console
$ make test
```