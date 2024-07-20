class CreateLyrics < ActiveRecord::Migration[7.0]
  def change
    create_table :lyrics do |t|

      t.timestamps
    end
  end
end
