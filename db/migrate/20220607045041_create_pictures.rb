class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.text :picture_path
      t.text :coment
      t.timestamps
    end
  end
end
