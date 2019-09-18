require "spec_helper"

describe ProfileController, :type => :controller do
    before :each do

        #@capoclan = FactoryBot.create(:player2_a)
        @utente =  FactoryBot.create(:player1_a)
        #@admin =  FactoryBot.create(:admin)
        #@capoclan.save
        @utente.save
        #@admin.save
        sign_in @utente
    end



        describe "Show Profilo" do

            it "show has a 200 status code" do
                get :show
                expect(response.status).to eq(200)
            end

        end

end
