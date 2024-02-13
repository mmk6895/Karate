Feature: GET API feature

Scenario: Pass headers

Given header Accept = 'application/json'

When url 'https://restful-booker.herokuapp.com/booking/1'
When method GET
Then status 200

* print response 
* def jsonResponse = response 
* print jsonResponse

* def firstname = jsonResponse.$[*].firstname
* def last = jsonResponse.$[*].lastname

* match firstname == 'Sally'
* match last == 'Brown'

* print actName