class CreateConvos < ActiveRecord::Migration[5.0]
  def change
    create_table :convos do |t|
      t.string :content


      t.belongs_to :user
      t.belongs_to :blog
      t.timestamps
    end
  end
end
