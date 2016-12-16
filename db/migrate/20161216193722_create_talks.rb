class CreateTalks < ActiveRecord::Migration[5.0]
  def change
    create_table :talks do |t|
      t.string :content
      t.belongs_to :blog, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
