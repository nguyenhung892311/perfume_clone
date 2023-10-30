class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :image
      t.text :content
      t.integer :status
      t.datetime :deleted_at
      t.string :slug
      t.integer :order
      t.integer :article_catalogue_id

      t.timestamps
    end
  end
end
