# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


To do lists
  - Test API Call in Postman
  def get_flights
    response = RestClient::Request.execute(method: :post,
                                url: 'https://www.googleapis.com/qpxExpress/v1/trips/search?key=' + ENV['GOOGLE_FLIGHTS_API_KEY'],
                                payload: {
                                             "request": {
                                               "slice": [
                                                 {
                                                   "origin": "PDX",
                                                   "destination": ["LAX", "SEA", "ATL", "ORD", "DFW", "JFK", "DEN", "SFO", "CLT", "LAS", "PHX", "MIA", "IAH", "MCO", "EWR", "MSR", "BOS", "DTW", "PHL", "LGA", "FLL", "BWI", "DCA", "MDW", "SLC", "IAD", "SAN", "HNL", "TPA"],
                                                   "date": "2017-12-02"
                                                 }
                                               ],
                                               "passengers": {
                                                 "adultCount": 1
                                               },
                                               "solutions": 100,
                                               "refundable": false
                                             }
                                           }.to_json,
                                headers: {"Content-Type" => "application/json"}
                              )

    JSON.parse(response)

end
              Header
                key Content-Type
                value application/json


  - Test API call in rails
  - Display flights in views
  - Display flight name[price][distance]
  - Take User inputs
    - origin
    - destination
    - Date
 OR
  - Take user destination and date, and return flights under inputted Miles per Dollar


  - Take user input for Price/mileage pass that variable to back-end conditional
