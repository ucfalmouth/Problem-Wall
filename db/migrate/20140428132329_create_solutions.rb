class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :body
      t.belongs_to :problem, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
