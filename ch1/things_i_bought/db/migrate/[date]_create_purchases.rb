class CreatePurchases < ActiveRecord::Migration
	def change
		create_table :purchases do |t|
			t.string :name <co id="ch01_292_1"/>
			t.float :cost <co id="ch01_292_2"/>
			t.timestamps <co id="ch01_292_3"/>
		end
	end
end