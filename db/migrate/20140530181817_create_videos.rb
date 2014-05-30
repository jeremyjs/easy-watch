class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.integer :show_id
      t.integer :user_id
      t.boolean :is_movie
      t.boolean :is_watched
      t.integer :bookmark

      t.timestamps
    end
  end
end
