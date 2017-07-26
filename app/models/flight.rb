class Flight < ApplicationRecord
  @@response = nil
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
                                                    "destination": ['LAX', 'SEA', 'BNA'],
                                                    "date": @date
                                                  }
                                                ],
                                                "passengers": {
                                                  "adultCount": 1
                                                },
                                                "solutions": 500,
                                                "refundable": false
                                              }
                                            }.to_json,
                                 headers: {"Content-Type" => "application/json"}
                               )

    @@response = JSON.parse(response)
 end

  def self.get_best_deal
    bestdeal = []
    @@response['trips']['tripOption'].each do |flight|
      miles_per_dollar = ((flight['slice'][0]['segment'][0]['leg'][0]['mileage'].to_i + 0.0) / (flight['saleTotal'].gsub(/[^\d\.-]/,'').to_i + 0.0)).round(2)
      flight["miles_per_dollar"] = "#{miles_per_dollar}"
      bestdeal.push(flight)
    end
    sorted_deals = bestdeal.sort_by {|x| x['miles_per_dollar'].to_i}
    sorted_deals.each do |deal|
    end
    sorted_deals[sorted_deals.length - 1]
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
