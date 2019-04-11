class AddUserIdToScrimads < ActiveRecord::Migration[5.2]
  def change
    add_reference :scrim_ads, :user, foreign_key: true
  end
end
