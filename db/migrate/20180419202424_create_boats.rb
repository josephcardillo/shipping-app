class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :container_volume
      t.string :location

      t.references :shipper, foreign_key: true
      t.references :job, foreign_key: true
      t.timestamps
    end
  end
end
