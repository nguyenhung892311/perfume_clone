class AddMiniDescriptionToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :mini_description, :text
  end
end
