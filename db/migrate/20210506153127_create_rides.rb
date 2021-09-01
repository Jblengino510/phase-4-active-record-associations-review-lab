class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.belongs_to :passenger, foreign_key: true, null: false
      t.belongs_to :taxi, foreign_key: true, null: false
      t.timestamps
    end
  end
end
