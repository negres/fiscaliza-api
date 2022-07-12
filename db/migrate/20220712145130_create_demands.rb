class CreateDemands < ActiveRecord::Migration[7.0]
  def change
    create_table :demands do |t|
      t.string :title
      t.string :description
      t.references :user
      t.integer :status, default: 0
      t.string :image
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :state
      t.string :country
      t.timestamps
    end
  end
end
