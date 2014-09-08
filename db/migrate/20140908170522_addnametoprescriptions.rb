class Addnametoprescriptions < ActiveRecord::Migration
  def change
    change_table :prescriptions do |t|
      t.string :name
    end
  end
end
