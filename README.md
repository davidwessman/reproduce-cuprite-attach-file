# Cuprite debug attach_file

## App generated using

```sh
rails new cuprite-attach-file --skip-webpack-install --skip-bootstap --skip-jbuilder --skip-turbolinks --skip-listen --skip-javascript --skip-sprockets --skip-action-cable --skip-active-storage --skip-active-job --skip-action-mailbox --skip-action-mailer
```


## Reproduce

```sh
rails db:setup
rails test:system
```

Cuprite is configured as driver in [`application_system_test_case.rb`](./test/application_system_test_case.rb) and it works with Selenium.

Chrome version used: Version 90.0.4430.85 (Official Build) (x86_64)
