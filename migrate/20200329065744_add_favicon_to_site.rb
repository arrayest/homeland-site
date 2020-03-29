class AddFaviconToSite < ActiveRecord::Migration[6.0]
  def change
    add_column :sites, :favicon, :string
  end
end
