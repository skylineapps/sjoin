class ChangeTableName < ActiveRecord::Migration
  def change
  	rename_table :frienships, :friendships
  end
end
