class AddSenderIdToSignups < ActiveRecord::Migration
  def change
    add_column :signups, :sender_id, :string
  end
end
