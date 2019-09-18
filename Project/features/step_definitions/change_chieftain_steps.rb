Given ("I am authenticated as Admin") do
	
		@admin = create(:admin)
		@admin.save
		@user=create(:player1_a)
		@user.save
		visit admin_path(1)
		click_button "CLASSIFICHE"
		click_button "Classifica Generale"
	end
	
Given ("I am on Classifica page") do
	expect(page).to have_text("Rank")
end

When /I click on "User name" link/ do
	click_link("player1_a", :match => first)
end

Then ("I should be on User page") do
	expect(page).to have_text("Profilo di "+@user.username)
end