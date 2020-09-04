class AddColumnToPerson01 < ActiveRecord::Migration[6.0]
  def change
    add_column :person01s, :gender, :string
    add_column :person01s, :address, :string
    add_column :person01s, :phone, :string
  end
end
