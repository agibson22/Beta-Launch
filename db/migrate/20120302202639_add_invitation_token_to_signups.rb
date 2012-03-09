class AddInvitationTokenToSignups < ActiveRecord::Migration
  def change
    add_column :signups, :invitation_token, :string
  end
end
