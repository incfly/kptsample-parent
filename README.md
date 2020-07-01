# Kpt sample parent repo.

why not git submodule:

 1. not needed, when we require change on parent repo meanwhile consume remote upstream updates, https://git-scm.com/book/en/v2/Git-Tools-Submodules

## Installation Steps, for User

 1. `kpt live init kptsample-child/oauth2/`
     Initialized: ./oauth2/grouping-object-template.yaml
 1.  kpt apply
 
   ```
   kpt live apply kptsample-child/oauth2                    
   configmap/grouping-object-ba81eb8b created
   customresourcedefinition.apiextensions.k8s.io/logins.oauth2.example.com configured
   serviceaccount/httpbin unchanged
   service/httpbin unchanged
   deployment.apps/httpbin unchanged
   5 resource(s) applied. 1 created, 3 unchanged, 1 configured
   0 resource(s) pruned
  ``` 

Done.

## Update Child for a New Release, for Dev


1. Point to a new SHA, export SHA="abc" && ./update.sh

