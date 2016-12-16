class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :blog_title
      t.string :string
      t.string :blog_content
      t.string :string

      t.timestamps
    end
  end
end
