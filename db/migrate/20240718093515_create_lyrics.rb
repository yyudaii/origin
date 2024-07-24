class CreateLyrics < ActiveRecord::Migration[7.0]
  def change
    create_table :lyrics do |t|
      t.string :title
      t.text   :lyric
      t.integer :user_id
      t.timestamps
    end
  end
end
