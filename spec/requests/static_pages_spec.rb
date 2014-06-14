require 'spec_helper'

describe "Static Pages" do
  subject { page }
  describe "home" do
  	before {visit root_path}
    it {
    	should have_title("Home")
    }
  end

  describe "about" do
  	before {visit about_path}
  	it {
  		should have_title("About")
  	}
  	it {
  		should have_content("About")
  	}
  end

  describe "handbook" do
  	before {visit handbook_path}
  	it {
  		should have_title("Handbook")
  	}
  	it {
  		should have_content("Handbook")
  	}
  end

  describe "media" do
  	before {visit media_path}
  	it {
  		should have_title("Media")
  	}
  	it {
  		should have_content("Media")
  	}
  end

  # describe "admin" do
  # 	before {
  # 		current_user = User.new(admin:true)
  # 		user_signed_in = true
  # 		visit admin_path
  # 	}
  # 	it {
  # 		should have_title("Admin")
  # 	}
  # 	it {
  # 		should have_content("Admin")
  # 	}
  # 	it { 
  # 		should have_content("Users")
  # 	}
  # 	it { 
  # 		should have_content("News Posts")
  # 	}
  # 	it { 
  # 		should have_content("Events")
  # 	}
  # 	it { 
  # 		should have_content("Platoons")
  # 	}
  # 	it { 
  # 		should have_content("Squads")
  # 	}
  # 	it { 
  # 		should have_content("Fireteams")
  # 	}
  # end
end