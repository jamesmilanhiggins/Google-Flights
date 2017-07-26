# README



* instructions on how to get a goolge flights api KEY
  Create a .env file and add GOOGLE_FLIGHTS_API_KEY=[ADD YOUR API KEY HERE]


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


  - Devise and RailsAdmin
  - Make people login before they can search
  - callbacks for airport code input, upcase


  -Take user input for Price/mileage pass that variable to back-end conditional
  - Spec and Testing


  Further Exploration and Additional Features
  - let users save flights
  - 
