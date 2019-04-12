class AddPlatformAuthorIdToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :platform_author_id, :integer
  end
end
