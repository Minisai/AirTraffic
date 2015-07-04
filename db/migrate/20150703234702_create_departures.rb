class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|
      t.datetime :departed_at
      t.string :name

      t.timestamps null: false
    end
  end
end
