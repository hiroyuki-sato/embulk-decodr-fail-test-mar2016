#!/usr/bin/env ruby 

require 'faker'
require 'json'

dummy = {}

dummy["param1"] = Time.now.strftime("%Y-%m-%d %H:%M:%S")
2.upto(20) do |n|
  key = "param#{n}"
  dummy[key] = Faker::Bitcoin.address
end


puts dummy.to_json


