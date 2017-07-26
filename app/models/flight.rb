class Flight < ApplicationRecord

  def initialize(origin, destination, date)
    @origin = origin
    @destination = destination
    @date = date
  end


   def get_flights
     response = RestClient::Request.execute(method: :post,
                                 url: 'https://www.googleapis.com/qpxExpress/v1/trips/search?key=' + ENV['GOOGLE_FLIGHTS_API_KEY'],
                                 payload: {
                                              "request": {
                                                "slice": [
                                                  {
                                                    "origin": @origin,
                                                    "destination": @destination,
                                                    "date": @date
                                                  }
                                                ],
                                                "passengers": {
                                                  "adultCount": 1
                                                },
                                                "solutions": 300,
                                                "refundable": false
                                              }
                                            }.to_json,
                                 headers: {"Content-Type" => "application/json"}
                               )

     JSON.parse(response)

 end



end

#
# USA Airport Codes
# ["LAX", "SEA", "ATL", "ORD", "DFW", "JFK", "DEN", "SFO", "CLT", "LAS", "PHX", "MIA", "IAH", "MCO", "EWR", "MSR", "BOS", "DTW", "PHL", "LGA", "FLL", "BWI", "DCA", "MDW", "SLC", "IAD", "SAN", "HNL", "TPA"]

# INT Airport Codes
# ["PEK", "DXB","HND", "LHR", "HGK", "PVG", "CDG", "AMS", "FRA", "IST", "CAN", "SIN", "CGK", "KUL", "MAD", "CTU", "BOM", "YYZ"]
#
# BOTH
# ["LAX", "SEA", "ATL", "ORD", "DFW", "JFK", "DEN", "SFO", "CLT", "LAS", "PHX", "MIA", "IAH", "MCO", "EWR", "MSR", "BOS", "DTW", "PHL", "LGA", "FLL", "BWI", "DCA", "MDW", "SLC", "IAD", "SAN", "HNL", "TPA", "PEK", "DXB","HND", "LHR", "HGK", "PVG", "CDG", "AMS", "FRA", "IST", "CAN", "SIN", "CGK", "KUL", "MAD", "CTU", "BOM", "YYZ"]
