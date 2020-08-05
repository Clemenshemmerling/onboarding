class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.boolean :active
      t.string :name
      t.string :email
      t.string :billing_plan

      t.timestamps
    end
  end
end
