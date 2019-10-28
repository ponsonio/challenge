# README

The present repo correspond to an exercise described in _challenge.md_

## Pre-requisites

1.-Ruby version: 2.6.3
2.-Posgresql 11

## Database creation
To create, migrate and _seed_ the database create put the credetials correspondly on the _database.yml_ file, and execute correspondly:

```
rake db:create
rake db:migrate
rake db:seed
```

## How to run the test suite


## Run locally
To run the project locally:

```
rails server
```

# Usage
The admin interface is placed in:

```
http://localhost:3000/admin/
```

Report:
```
http://localhost:3000/report/index
```

Checkin and Checkout:
```
http://localhost:3000/check/index?employee_id=1
```

As I'm assuming session and credentials will come from session or login/ldap, the id needs to be posted in the url, those can be taken from _Report_.

# Design notes:
The main rationales have been taken:

1.- User and Roles: Security and roles haven't been putted in place as I'm assuming roles and authentications should come from an LDAP or credential managaer (ex:Facebook, Google, Github), that can be implemented using for example _pundit_.

2.- the _googmin_ gem have been adopted to create the administrative interfaces (CRUD) of the database entities.

3.-Numbers haven't been rounded and dates haven't been formatted as this seems not to be relevant to the evaluation.

## Todo:
The following represents improvement that haven't been adreesed due time contricstricions:

1.-Refactor: The common code of the view controllers and service (rest) controllers should be organized to follow the DRY principle. 

2.-Test: More test need to be added such as ede cases (verify sums)

## Bugs:



