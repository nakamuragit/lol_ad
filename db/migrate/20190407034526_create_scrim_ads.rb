class CreateScrimAds < ActiveRecord::Migration[5.2]
  def change
    create_table :scrim_ads do |t|
      t.string :teammember1
      t.string :teammember2
      t.string :teammember3
      t.string :teammember4
      t.string :teammember5
      t.string :sabmember1
      t.string :sabmember2
      t.integer :average_mmr
      t.string :contact
      t.datetime :closed
      t.datetime :start_time
      t.text :title
      t.text :teamname

      t.timestamps
    end
  end
end
