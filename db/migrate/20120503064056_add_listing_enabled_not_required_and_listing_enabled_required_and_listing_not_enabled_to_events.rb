class AddListingEnabledNotRequiredAndListingEnabledRequiredAndListingNotEnabledToEvents < ActiveRecord::Migration
  def change
    add_column :events, :lis_tings_swap_behaviour, :integer
  end
end
