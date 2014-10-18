class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.string :deed
    end
  end
end
