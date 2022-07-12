class AddAudToAllowlistedJwts < ActiveRecord::Migration[7.0]
  def change
    add_column :allowlisted_jwts, :aud, :string
  end
end
