Feature: Post feature

Background:
*url 'https://restful-booker.herokuapp.com/booking'
* def requestPayload = 
"""
 {"firstname" : "Jim", "lastname" : "Brown", "totalprice" : 111, "depositpaid" : true, "bookingdates" : { "checkin" : "2018-01-01", "checkout" : "2019-01-01" }, "additionalneeds" : "Breakfast"}
      """


Scenario: Create Tickete Booking

Given path '/booking'
And request requestPayload
And headers {Content-Type: 'application/json' , Accept: 'application/json'}

When method post
Then status 200
And match $.booking.firstname == 'Jim'
And match $.booking.lastname == '111'


