class RenameModelPoster < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :movie_url, :poster_url
  end
end
