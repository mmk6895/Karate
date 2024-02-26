Feature: Post feature

Background:
*url 'https://restful-booker.herokuapp.com'

* def requestPayload = 
"""
 {"firstname" : "Jim", "lastname" : "Brown", "totalprice" : 111, "depositpaid" : true, "bookingdates" : { "checkin" : "2018-01-01", "checkout" : "2019-01-01" }, "additionalneeds" : "Breakfast"}
      """
 
 * def requestPayloadPut = 
"""
{"firstname":"James","lastname":"Brown","totalprice":111,"depositpaid":true,"bookingdates":{"checkin":"2018-01-01","checkout":"2019-01-01"},"additionalneeds":"Breakfast"}
      """     
      
*headers {
         'Content-Type': 'application/json',
         'Authorization': 'Basic YWRtaW46cGFzc3dvcmQxMjM='
         }




Scenario: GetBookingIds Tickete Booking
 Given path '/booking/{id}'
 And path id = 1
 When method GET
 Then status 200




Scenario: CreateBooking
 Given path '/booking'
 And request requestPayload
 And headers {Accept: 'application/json'}
 When method POST
 Then status 201
 And match $.booking.firstname == 'Jim'
 And match $.booking.lastname == '111'



Scenario: UpdateBooking
 Given path '/booking/{id}'
 And path id = 1
 And request requestPayloadPut
 And headers {Accept: 'application/json'}
  
 When method PUT
 Then status 200
 And match $.booking.firstname == 'James'
 And match $.booking.totalprice == '111'
   
 
 
 Scenario: PartialUpdateBooking
  Given path '/booking/{id}'
  And path id = 1
  And request { 
    "firstname": "James" , "lastname": "Brown"
  }
  When method PATCH
  Then status 200
  
  
  
  Scenario: DeleteBooking
  Given path '/booking/{id}'
  And path id = 1
  When method DELETE
  Then status 200
  
  
   
  