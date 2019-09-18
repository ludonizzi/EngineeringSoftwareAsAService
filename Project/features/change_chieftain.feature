Feature: Visit profile from admin
		I want to visit the User's Profile page
		As Admin

		Scenario: Change Chieftain
				Given a valid admin with email "admin@admin.com" username "admin_1a" and password "adminadmin"
				When I visit homepage
				Then I should see "Benvenuto Admin"
				When I click on "Classifiche"
				Then I should be on Classifiche list
				When I click on "Classifica Generale"
				Then I should be on Classifica page
				Given I am on Classifica page
				When I click on User name
				Then I should be on User page