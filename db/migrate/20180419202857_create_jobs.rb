class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :cost
      t.integer :containers_needed

      t.references :shipper, foreign_key: true
      t.references :boat, foreign_key: true
      t.timestamps
    end
  end
end
