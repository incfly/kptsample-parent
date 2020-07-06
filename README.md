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

## Parent Dev Release new V2 branch for Child package.

Now v2 branch at https://github.com/incfly/kptsample-child@v2 is modified to

1. use new service account
1. refactor out the service account from old deployment.yaml file.

## Customer update to a specific SHA of child repo.

1. `kpt pkg update oauth2@v2  --strategy=resource-merge`

    ```
    fetching package oauth2 from https://github.com/incfly/kptsample-child to oauth2
    ```
1. `kpt live apply  oauth2`
  ```
  configmap/grouping-object-5332740c created
  customresourcedefinition.apiextensions.k8s.io/logins.oauth2.example.com configured
  serviceaccount/httpbin-v2 created
  service/httpbin unchanged
  deployment.apps/httpbin configured
  5 resource(s) applied. 2 created, 1 unchanged, 2 configured
  serviceaccount/httpbin pruned
  configmap/grouping-object-ba81eb8b pruned
  2 resource(s) pruned
  ```

We see the update has been completed.

Additionaly, kpt supports more features not covered in this doc.

1. functions to validate and modify the resource.
1. merge with package consumer's local commits via a three way merge.
