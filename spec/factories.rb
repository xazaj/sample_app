FactoryGirl.define do 
	factory :user do
		sequence(:name) { |n|  "Xazajjj #{n}" }
		sequence(:email) { |n| "xazaj_#{n}@163.com" }
		password "qinqin10"
		password_confirmation "qinqin10" 

		factory :admin do
			admin true
		end
	end

	factory :micropost do
		content "Lorem ipsum"
		user
	end
end