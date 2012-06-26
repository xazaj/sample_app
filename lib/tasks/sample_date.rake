namespace :db do
	desc "Fill database with sample data"

	task populate: :environment do
		admin = User.create!(name: "xazaaj",
							email: "xazaaj@163.com",
							password: "qinqn10",
							password_confirmation: "qinqn10")
		admin.toggle!(:admin)
	end

	task populate: :environment do
		User.create!(name: "Xazajj",
					email: "xazajj@163.com",
					password: "qinqin10",
					password_confirmation: "qinqin10")
		99.times do |n|
			name = Faker::Name.name
			email = "xazajj-#{n+1}@163.com"
			password = "password"
			User.create!(name: name,
						email: email,
						password: password,
						password_confirmation: password)
		end

		users = User.all(limit: 6)
		50.times do
			content = Faker::Lorem.sentence(5)
			users.each { |user| user.microposts.create!(content: content) }
		end
	end
end