class CreateBlogPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :summary
      t.string :body
      t.string :tags
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
