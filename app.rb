#!/usr/bin/env ruby
require 'sinatra'
require('./lib/exchange_rate')
require('./app/connection')

set :bind, '0.0.0.0'

::Connection.open_connection

get '/fx/:amount/:counter_currency' do
  counter_currency = params[:counter_currency]
  current = ExchangeRate.at(Date.today, 'EUR', params[:counter_currency])
  
  if current.nil?
    "There's no value for base currency: EUR and counter currency: #{counter_currency}"
  else
    converted = (params[:amount].to_f) * (current.rate.to_f)
    "AMOUNT IN #{counter_currency}: #{converted}"
  end
end
