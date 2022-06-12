class AddComentToFeeds < ActiveRecord::Migration[6.0]
  def change
    add_column :pictures, :coment, :text
  end
end
