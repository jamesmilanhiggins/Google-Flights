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
         https://www.googleapis.com/qpxExpress/v1/trips/search?key=[API KEY HERE]
          body
              {
                "request": {
                  "slice": [
                    {
                      "origin": "PDX",
                      "destination": "LAX",
                      "date": "2017-12-02"
                    }
                  ],
                  "passengers": {
                    "adultCount": 1
                  },
                  "solutions": 5,
                  "refundable": false
                }
              }
              Header
                key Content-Type
                value application/json


  - Test API call in rails
  - Display flights in views
  - Display flight name[price][distance]
