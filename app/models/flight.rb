class Flight < ApplicationController
   def get_flights
     response = RestClient::Request.execute(method: :post,
                                 url: 'https://www.googleapis.com/qpxExpress/v1/trips/search?key=' + ENV['GOOGLE_FLIGHTS_API_KEY'],
                                 payload: {
                                              "request": {
                                                "slice": [
                                                  {
                                                    "origin": "PDX",
                                                    "destination": ["LAX", "SEA"],
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

 def get_flights_mileage

 end

 def get_flights_price
 end
end
