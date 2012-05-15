class CreateAccessReports < ActiveRecord::Migration
  def change
    create_table :access_reports do |t|
      t.string :email
      t.string :provider
      t.datetime :access_at
      t.string :access_ip
    end
  end
end
