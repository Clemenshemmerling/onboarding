class AddFieldsToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :count, :integer
  end
end
