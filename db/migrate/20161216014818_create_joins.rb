class CreateJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :joins do |t|

      t.timestamps

      t.belongs_to :user
      t.belongs_to :blog
    end
  end
end
