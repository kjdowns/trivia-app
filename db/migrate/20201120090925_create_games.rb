class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :code
      t.string :team_a
      t.string :team_b

      t.timestamps
    end
  end
end
