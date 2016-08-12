class ChangeColumnNames < ActiveRecord::Migration
  def change
  	rename_column :friendships, :user_id_id, :user_id
  	rename_column :friendships, :friend_id_id, :friend_id
  end
end
