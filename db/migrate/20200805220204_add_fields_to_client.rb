class AddFieldsToClient < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :count, :int
  end
end
