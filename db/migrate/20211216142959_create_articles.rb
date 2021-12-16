class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.datetime :published_at
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end