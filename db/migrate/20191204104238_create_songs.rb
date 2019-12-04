class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :writers
      t.string :fullText

      t.timestamps
    end
  end
end
