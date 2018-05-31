class CreateGameInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :game_infos do |t|
      t.date :date
      t.string :batting_first_team
      t.string :field_first_team
      t.string :stadium
      t.integer :game_number
      t.string :event
      t.string :round
      t.integer :top1
      t.integer :bottom1
      t.integer :top2
      t.integer :bottom2
      t.integer :top3
      t.integer :bottom3
      t.integer :top4
      t.integer :bottom4
      t.integer :top5
      t.integer :bottom5
      t.integer :top6
      t.integer :bottom6
      t.integer :top7
      t.integer :bottom7
      t.integer :top8
      t.integer :bottom8
      t.integer :top9
      t.integer :bottom9
      t.integer :top10
      t.integer :bottom10
      t.integer :top11
      t.integer :bottom11
      t.integer :top12
      t.integer :bottom12
      t.integer :top13
      t.integer :bottom13
      t.integer :top14
      t.integer :bottom14
      t.integer :top15
      t.integer :bottom15
      t.boolean :updatable

      t.timestamps
    end
  end
end
