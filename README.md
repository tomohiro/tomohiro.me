tomohiro.me
================================================================================

My domain's records configuration with DNSimple by Terraform


Requirements
--------------------------------------------------------------------------------

- DNSimple token
- Atlas token
- Terraform


Getting Started
--------------------------------------------------------------------------------

Add tokens to `.envrc`:

```sh
$ cp .envrc.example .envrc
$ vi .envrc
```

Remote configuration:

```sh
$ terraform remote config -backend-config="name=tomohiro/tomohiro.me"
```

Check the plan:

```sh
$ terraform plan
```

Send the local environment variables to the Atlas environment:

```sh
$ terraform push -name="tomohiro/tomohiro.me"
```


LICENSE
--------------------------------------------------------------------------------

&copy; 2015 Tomohiro TAIRA.

This project is licensed under the MIT license. See [LICENSE](LICENSE) for details.
