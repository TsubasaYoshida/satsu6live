class AddPitcherTopToGameInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :game_infos, :pitcher_top, :string
  end
end
