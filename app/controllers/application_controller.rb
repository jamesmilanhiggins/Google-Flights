class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#   helper_method :get_flights
#
#
#
#   def get_flights
#     response = RestClient::Request.execute(method: :post,
#                                 url: 'https://www.googleapis.com/qpxExpress/v1/trips/search?key=' + ENV['GOOGLE_FLIGHTS_API_KEY'],
#                                 payload: {
#                                              "request": {
#                                                "slice": [
#                                                  {
#                                                    "origin": "PDX",
#                                                    "destination": @airport,
#                                                    "date": "2017-12-02"
#                                                  }
#                                                ],
#                                                "passengers": {
#                                                  "adultCount": 1
#                                                },
#                                                "solutions": 200,
#                                                "refundable": false
#                                              }
#                                            }.to_json,
#                                 headers: {"Content-Type" => "application/json"}
#                               )
#
#     JSON.parse(response)
#
# end
#
end


# ["LAX", "SEA", "ATL", "ORD", "DFW", "JFK", "DEN", "SFO", "CLT", "LAS", "PHX", "MIA", "IAH", "MCO", "EWR", "MSR", "BOS", "DTW", "PHL", "LGA", "FLL", "BWI", "DCA", "MDW", "SLC", "IAD", "SAN", "HNL", "TPA", "PEK", "DXB","HND", "LHR", "HGK", "PVG", "CDG", "AMS", "FRA", "IST", "CAN", "SIN", "CGK", "KUL", "MAD", "CTU", "BOM", "YYZ"]
