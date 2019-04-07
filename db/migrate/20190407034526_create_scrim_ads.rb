class CreateScrimAds < ActiveRecord::Migration[5.2]
  def change
    create_table :scrim_ads do |t|
      t.string :teammember1
      t.string :teammember2
      t.string :teammember3
      t.string :teammember4
      t.string :teammember5
      t.string :sabmember1
      t.string :sabmember
      t.string :average_mmr
      t.string :contact
      t.string :closed
      t.string :start_time

      t.timestamps
    end
  end
end
