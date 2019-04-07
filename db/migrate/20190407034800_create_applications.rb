class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :member1
      t.string :member2
      t.string :member3
      t.string :member4
      t.string :member5
      t.string :average_MMR

      t.timestamps
    end
  end
end
