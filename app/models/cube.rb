require 'active_record'

class Cube < ActiveRecord::Base
  validates :time, presence: true
  validates :base_currency, presence: true
  validates :counter_currency, presence: true
  validates :rate, presence: true
end
