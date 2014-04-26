class ChangeDescriptionTypeOnProblems < ActiveRecord::Migration
  def change
    remove_column :problems, :description
    add_column :problems, :description, :string
  end
end
