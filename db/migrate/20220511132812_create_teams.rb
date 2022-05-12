class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :member1
      t.string :member2
      t.string :member3
      t.string :member4
      t.string :member5
      t.string :member6
      t.string :member7
      t.string :member8
      t.string :member9
      t.string :member10

      t.timestamps
    end
  end
end
