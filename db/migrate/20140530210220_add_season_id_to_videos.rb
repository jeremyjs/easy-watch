class AddSeasonIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :season_id, :integer
  end
end
