Feature: Rest API Booking

  Scenario: our scenario outline
    Given url 'https://restful-booker.herokuapp.com/booking'
    And request
      """
          {"firstname" : "Jim", "lastname" : "Brown", "totalprice" : 111, "depositpaid" : true, "bookingdates" : { "checkin" : "2018-01-01", "checkout" : "2019-01-01" }, "additionalneeds" : "Breakfast"}
      """
    When method post
    Then status 200
