require ‘rubygems’
require ‘JSON’
require ‘HTTParty’
require ‘pp’
require ‘dotenv’
Dotenv.load (‘.env’)
TOKEN = ENV[‘TOKEN’]
response = HTTParty.get(“https://faria.openapply.com/api/v3/students?access_token=#{TOKEN}&per_page=10”, format: :plain)
JSON.parse response, symbolize_names: true
puts response