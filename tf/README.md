One-time setup
==============

```
    $ export TMPDIR=$(mktemp -d)
    $ export TF_VAR_aws_region=us-west-2
    $ export TF_VAR_table_name=snippets
    $ export AWS_ACCESS_KEY_ID=<...>
    $ export AWS_SECRET_ACCESS_KEY=<...>
    $ terraform init
    $ terraform plan -out ${TMPDIR}/plan.out
    $ terraform apply ${TMPDIR}/plan.out
```
