class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      
      t.string :taco_name
      t.string :taco_price

      t.timestamps
    end
  end
end
