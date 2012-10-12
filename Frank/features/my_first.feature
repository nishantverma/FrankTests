Feature: 
  As an iOS developer
  I want to have a sample feature file
  So I can see what my next step is in the wonderful world of Frank/Cucumber testing

Background: 
	When I launch the app

Scenario:  Navigate to Add User Screen
Given I launch the app
When I touch "Add"
Then I should see "User Profile"


Scenario: Add a User
Given I touch "Add"
When I fill in text fields as follows:
|	text  					|	field 		|
| Nishant 					| First Name	|
| Verma 					| Last Name		|
| nishanv@thoughtworks.com 	| Email			|
| Nishanv 					| Username*		|
| abcd1234 					| Password*		|
| abcd1234 					| Confirm*		|
And I touch "Save"
Then I should see "Nishant Verma"

Scenario: Assign User Role to the newly created user
Given I touch "Larry Stooge"
	And I touch "User Roles"
When I touch "Administrator"
And I touch "Save"
Then I should see "User Profile" 
	When I touch "User Roles"
	Then I should see "More info, Administrator"
