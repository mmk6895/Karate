Feature: GET API feature

Scenario: getuser details

*def query = {status:'active' , gender: 'male', id:23}
Given url 'https://restful-booker.herokuapp.com/booking/:id'
And params query
When method GET
Then status 200

* print response 

Scenario: Count the total and validate total count

*def query = {status:'active' , gender: 'male', id:23}
Given url 'https://restful-booker.herokuapp.com/booking/:id'
And params query
When method GET
Then status 200

* def jsonResponse = response 
* print jsonResponse
* def userCount = jsonResponse.length
* print userCount
* match userCount == 20




