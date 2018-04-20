class AddAvatarToShippers < ActiveRecord::Migration[5.2]
  def change
    add_column :shippers, :avatar, :string
  end
end
