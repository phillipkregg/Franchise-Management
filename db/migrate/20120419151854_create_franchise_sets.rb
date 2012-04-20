class CreateFranchiseSets < ActiveRecord::Migration
  def change
    create_table :franchise_sets do |t|
      t.string :set_name
      t.string :set_id
      t.string :soa_id
      t.string :address
      t.string :time_zone
      t.string :country
      t.string :temperature      

      t.timestamps
    end
  end
end
