class AddScrimAdIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :scrim_ad
  end
end
