FactoryBot.define do

    factory :admin, class: User do
        email "admin@admin.com"
        password "adminadmin"
        roles_mask "4"
        username "admin_1a"
        created_at => "2019-08-05 10:19:18"
        updated_at => "2019-08-05 10:19:18"
    end


     factory :player1_a, class: User do
        email "playeremail@random.com"
        password "password"
        roles_mask "1"
        clan "1"
        username "player1_a"
        created_at => "2019-08-05 10:19:18"
        updated_at => "2019-08-05 10:19:18"
    end


    factory :player2_a, class: User do
        email "player2email@random.com"
        password "password"
        roles_mask "2"
        clan "2"
        username "player2_a"
        created_at => "2019-08-05 10:19:18",
        updated_at => "2019-08-05 10:19:18"
    end



    factory :clan1 class: Clan do
        nome => "elfo",
        membri => 0,
        created_at => "2019-08-05 10:19:18"
        updated_at => "2019-08-05 10:19:18"
    end



    factory :clan2, class: Clan do
        nome => "elfo",
        membri => 0,
        created_at => "2019-08-05 10:19:18"
        updated_at => "2019-08-05 10:19:18"
    end



    factory :clan3, class: Clan do
        nome => "elfo",
        membri => 0,
        created_at => "2019-08-05 10:19:18"
        updated_at => "2019-08-05 10:19:18"
    end
