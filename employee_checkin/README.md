# README
The present repo corresponds to the exercise described in _challenge.md_.

## Pre-requisites  
1.-Ruby version: 2.6.3
2.-Posgresql 11
 
## Database
To create, migrate and _seed_ the database, first put the credentials on the _database.yml_ file, and execute accordingly:
 
```
rake db:create
rake db:migrate
rake db:seed
```
 
## How to run the test suite
To run the tests, execute:
 
```
rails test
```
 
## Run locally
To run the project locally:
```
rails server
```
 
## Usage
 
_Admin user:_
1.-The admin (goodmin) interface is placed in:
 
http://localhost:3000/admin/
 
2.- Employees Assistance Report:
 
http://localhost:3000/report/index
This filters assistances of the current month
 
_Employee:_
 
3.- Checkin and Checkout:
http://localhost:3000/check/index?employee_id=1
 
To do a check-in/checkout you can use the links right below the last assistance info":
 
1.-"Realizar Check-In"
2.-"Realizar Check Out"
 
As I'm assuming the use of a login/ldap; This should pass the id (and probably the role) somehow to the app, so for demo porpuses the employee_id needs to be posted in the url, those can be taken from the employee _Report_ (http://localhost:3000/report/index).
 
4.-Api
Standard CRUD API has been put in place as resources
 
Api-Documentation can be found on:
 
http://localhost:3000/api-docs/index.html
 
resources:
 
http://localhost:3000/employees/
 
http://localhost:3000/assistances/
 
example:
 
http://localhost:3000/employees/1.json
 
http://localhost:3000/employees.json
 
http://localhost:3000/assistances/1.json
 
Api has been only implemented to cover basic CRUD operations. A checkin, checkout endpoints that reflect the UI behavior (/check#in, /check#out) haven't been implemented becasue rails erb framework have been adopted to develop the front end. Still, it's worth to mention those can be easily implemented using (for example) this operation:
 
1.-post: employee/{id}/checkin/
2.-post: employee/{id}/checkout/
 
Accordingly, if a front where implemented build in React or angular where to be adopted, the correct verbs and http codes should be used, for example:
 
1.- GET /report/  , 200 if ok
1.- GET /search?name=’jorhe’  , 200 if ok
 
 Also a security mechanism (like a session token) should be use to determine the role and access of the user/request.
 
## Design notes:
The following rationales and assumptions have been taken:
 
1.- Security: Security concerns have been mostly omitted, login and roles haven't been putted in place. This folows the assumption of roles and authentications should come from an LDAP or credential manager (ex: Facebook, Google, Github).
 
2.- the _goodmin_ gem has been adopted to create the administrative interfaces (CRUD) of the database entities.
 
3.-Numbers haven't been rounded and dates haven't been formatted as this seems not to be relevant to the evaluation.
 
4.-API needs to be secured using a token on another security artifact, but it's not implemented because of time constraints.
 
5.-Personal and sensitive information (Ex: email, gender) should be encrypted according to organization practices and country applicable laws, this also has been omitted.
 
6.- Test for generated (ex: scaffold and godmin) code has been omitted as they seem not to be relevant to the evaluation
 
## Todo:
The following represents improvement that haven't been adreesed due to time contricstricions:
 
1.- The application information accesiility concern (who can see what) according to roles haven’t been implemented.
 
1.1.- The /admin/ and api urls shoudl only be accesible to the relevant roles (ex admins, other systems that require to acceess or modify information), this can be done using proxy, network policies or a roles/auth module external or internal to the app.
 
1.2.- An employee should only see his assistances.
 
2.-Test: More test needs to be added such as ede cases (ex: verify sums), reports and searches.
 
3.-Api should be versioned (/v1/)
 
4.-Document all methods in swagger, only a couple have been documented for demo purposes.
 
5.- search doesn't contemplate all the fields, this cuold be easily implemented using scopes, following the implemented search.
 
6.- Factory Girl/Factory Boot gem could be adopted to create test data and seeds, still the size of the project and it's concerns isn't big enough to make this an important point.
 
7.- Messages on the check in and out should use the build in message/exception functionalities
 
## Bugs:
 

