class CreateCustomer < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :api_key
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
