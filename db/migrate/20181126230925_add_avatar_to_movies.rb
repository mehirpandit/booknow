class AddAvatarToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :avatar, :string
  end
end
