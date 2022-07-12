class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users, bulk: true do |t|
      t.string :name
      t.string :cpf
      t.string :phone
    end
  end
end
