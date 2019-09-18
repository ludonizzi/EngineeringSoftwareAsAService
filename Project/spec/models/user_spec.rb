require "spec_helper"

describe User, :type => :model do

    it "Create User" do
        user=User.new(:id => 24,:email => "user@user.it", :password => "ciaociao", :clan => "1", :username => "user")
        expect(user).to be_valid
    end

end
