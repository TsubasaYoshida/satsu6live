class AddGameinfoToGameInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :game_infos, :pitcher_bottom, :string
    add_column :game_infos, :catcher_top, :string
    add_column :game_infos, :catcher_bottom, :string
    add_column :game_infos, :homerun_top, :string
    add_column :game_infos, :homerun_bottom, :string
    add_column :game_infos, :threebase_top, :string
    add_column :game_infos, :threebase_bottom, :string
    add_column :game_infos, :twobase_top, :string
    add_column :game_infos, :twobase_bottom, :string
  end
end
