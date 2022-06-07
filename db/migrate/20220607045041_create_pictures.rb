class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.text :picture_path
      t.text :coment
      t.timestamps
    end
  end
end
