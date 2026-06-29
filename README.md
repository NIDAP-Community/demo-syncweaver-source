# demo-syncweaver-source-monorepo

Example source repository to demonstrate syncweaver

## Initial set up

```sh
mkdir -p modules/ .github/workflows
syncweaver templates add syncweaver-source-dispatch
```

### Create code to be sourced by hosts

Example module as a minimal R package:

```R
usethis::create_package("modules/hello")
```

Edit the code and make sure the NAMESPACE is up to date (use gha workflows to automate it):

```R
devtools::document("modules/hello")
```

Sources do not strictly have to be R packages, but functracer can only work if a NAMESPACE file exists.

## Usage

Cut a release, or run the `syncweaver-source-dispatch` workflow manually.