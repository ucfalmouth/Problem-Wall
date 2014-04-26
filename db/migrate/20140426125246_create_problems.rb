class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.text :description
      t.string :url
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
