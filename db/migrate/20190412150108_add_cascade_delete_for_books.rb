class AddCascadeDeleteForBooks < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :books, :authors
    add_foreign_key :books, :authors, on_delete: :cascade
  end
end
