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
To run the tests:

```
rails test
```

## Run locally
To run the project locally:

```
rails server
```

# Usage

1.-The admin interface is placed in:

```
http://localhost:3000/admin/
```

2.- Employees Assistance Report:

```
http://localhost:3000/report/index
```

3.- Checkin and Checkout:

```
http://localhost:3000/check/index?employee_id=1
```

To do a checkin/checkout you can use the links right below the last assistance info":

1.-"Realizar Check In"

2.-"Realizar Check Out"

As I'm assuming session and credentials will come from session or login/ldap, for demo porpuses the employee_id needs to be posted in the url, those can be taken from _Report_.

4.-Api
Standard CRUD api has been putted in place as resources

Api-Documentation, can be found on:

http://localhost:3000/api-docs/index.html

resources:

http://localhost:3000/employees/

http://localhost:3000/assistances/

example:

http://localhost:3000/employees/1.json

http://localhost:3000/employees.json

http://localhost:3000/assistances/1.json

Api have been only design to do basic CRUD operations. A checkin, checkout endpoints that reflects the UI behavior (/check#in, /check#out) haven't been stricly required, but it's worth to mention those can be easily implemented using (for example) this operations

1.-post: employee/{id}/checkin/

2.-post: employee/{id}/checkout/

# Design notes:
The following rationales and assumtions have been taken:

1.- Security: Security concerns have been mostly ommited, also roles haven't been putted in place as roles and authentications should come from an LDAP or credential managaer (ex:Facebook, Google, Github).

2.- the _goodmin_ gem have been adopted to create the administrative interfaces (CRUD) of the database entities.

3.-Numbers haven't been rounded and dates haven't been formatted as this seems not to be relevant to the evaluation.

3.-Api needs to be secured using a token on another security artefact, but it's not implemented because time constrains.

4.-Personal and sensitive information should be encripted accordin to organization practices and policies, this also have been omitted.


## Todo:
The following represents improvement that haven't been adreesed due time contricstricions:

1.- The application information accesiility (who can see what) according to roles haven't  been implemented, that includes:

3.1.- The /admin/ and api urls shoudl only be accesible to the relevant roles (ex admins, other systems that requires to acceess or modify information), this can be done using proxy, network policies or a roles/auth module external or internal to the app.

3.2.- An employee should only see his assistances.

3.-Test: More test need to be added such as ede cases (verify sums)

4.-Api should be versioned (/v1/)

5.-Document all methods in swagger

6.- Search doesn't contemplate all the fields, this cuold be easily implemented using scopes, following the implemented search.

7.- Factory Girl/Factory Boot gem could be adopted to create test data and seeds, still the size of the project and it's concerns isn't bifg enought to make this an important point.

## Bugs:



