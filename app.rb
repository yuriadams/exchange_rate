#!/usr/bin/env ruby
require 'sinatra'
require('./lib/exchange_rate')
require('./app/connection')

set :bind, '0.0.0.0'

::Connection.open_connection

get '/fx/:amount/:counter_currency' do
  counter_currency = params[:counter_currency]
  current = ExchangeRate.at(Date.today, 'EUR', params[:counter_currency])
  converted = (params[:amount].to_f) * (current.rate.to_f)
  "AMOUNT IN #{counter_currency}: #{converted}"
end
