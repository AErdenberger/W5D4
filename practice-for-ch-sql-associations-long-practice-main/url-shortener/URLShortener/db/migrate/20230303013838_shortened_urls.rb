class ShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_url do |t|
      t.string :long_url, null: false
      t.string :short_url, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  add_index :shortened_url, :short_url, unique: true
  add_index :shortened_url, :long_url, unique: true
  end
end
