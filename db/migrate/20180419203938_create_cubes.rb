class CreateCubes < ActiveRecord::Migration[5.2]
  def change
    create_table :cubes do |t|
      t.datetime :time, null: false
      t.string :rate, null: false
      t.string :base_currency, null: false
      t.string :counter_currency, null: false

      t.timestamps
    end
  end
end
