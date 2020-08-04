class CreateJoinTableAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :albums, :players, table_name: :collabs

    Album.all.each do |a|
      Collab.create(album_id: a.id, player_id: a.player_id)
    end
  end
end
