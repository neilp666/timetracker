class SwapOut < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :description, :work_performed
  end
end
