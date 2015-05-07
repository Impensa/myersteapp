class ChangingAuthorToUser < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  	t.rename :author_id, :admin_user_id
  end
  end
end
