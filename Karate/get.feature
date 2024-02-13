Feature: GET API feature

Scenario: getuser details
Given url 'https://restful-booker.herokuapp.com/booking/:id'
When method GET
Then status 200

* print response 
* def jsonResponse = response 
* print jsonResponse
* def actName = jsonResponse.$[*].firstname

* print actName



Scenario: get user details - User Not Found
Given url 'https://restful-booker.herokuapp.com/booking'
And path '0'
When method GET
Then status 404