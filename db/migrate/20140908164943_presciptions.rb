class Presciptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :dosage
      t.string :schedule
      t.string :start_dates
      t.string :end_dates
    end
  end
end
