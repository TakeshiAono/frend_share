class AddComentToFeeds < ActiveRecord::Migration[6.0]
  def change
    add_column :feeds, :coment, :text
  end
end
