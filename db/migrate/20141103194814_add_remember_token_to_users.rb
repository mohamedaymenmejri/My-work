<<<<<<< HEAD
class AddRememberTokenToUsers < ActiveRecord::Migration
=======
 class AddRememberTokenToUsers < ActiveRecord::Migration
>>>>>>> sign-in-out
      def change
        add_column :users, :remember_token, :string
        add_index  :users, :remember_token
      end
    end