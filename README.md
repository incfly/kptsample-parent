# Kpt sample parent repo.

why not git submodule:

 1. not needed, when we require change on parent repo meanwhile consume remote upstream updates, https://git-scm.com/book/en/v2/Git-Tools-Submodules

## Step 0, Parent package already done prior release

1. `kpt pkg get https://github.com/incfly/kptsample-child/oauth2@v1  oauth2`.

## Installation Steps, for User

 1. `kpt live init oauth2/`
     Initialized: ./oauth2/grouping-object-template.yaml
 1. `kpt live apply helloworld`
 
   ```
   configmap/grouping-object-9c263c7f configured
  customresourcedefinition.apiextensions.k8s.io/logins.oauth2.example.com configured
  serviceaccount/httpbin unchanged
  serviceaccount/httpbin-sa-foo-2 created
  service/httpbin unchanged
  deployment.apps/httpbin unchanged
  6 resource(s) applied. 1 created, 3 unchanged, 2 configured
  0 resource(s) pruned
  ``` 


## Customer update to a specific SHA of child repo.


