module AdminPermisson
    def edit_users_profile
      puts "Admin updated all users profile"
    end
  end
  
  module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end
  
  end
  
  class User
    attr_accessor :username, :password, :ip_address

    def change_password=(new_password)
        password = new_password
    end
  
    protected
    def login
      puts "User logged in. IP address: #{ip_address}"
    end
  end
  
  
  class Admin < User
    include AdminPermisson

    def admin_login 
        login 
    end
  end
  
  
  class Buyer < User
    include BuyerPermission

    def buyer_login 
        login 
    end
  end
  
  
  
  ## execute
  
  my_admin = Admin.new()
  my_admin.username = 'avionuser'
  my_admin.password = 'password'
  my_admin.ip_address = '127.0.0.1'
  my_admin.admin_login
  my_admin.edit_users_profile
  
  my_admin.change_password = 'new_password'
  
  buyer = Buyer.new()
  buyer.username = 'juan'
  buyer.password = 'password'
  buyer.ip_address = '127.0.0.1'
  buyer.buyer_login
  buyer.buy
  
  buyer.change_password = 'new_password'