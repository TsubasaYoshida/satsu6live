class AddMessageToGameInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :game_infos, :message, :string
  end
end
