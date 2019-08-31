# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1,
            email: "pipiple.official@gmail.com",
            created_at: "2019-08-31 14:44:00",
            updated_at: "2019-08-31 14:44:33",
            name: "pipiple",
            age: "20歳〜24歳",
            sex: "男性",
            profile: nil,
            user_id: nil)

Purpose.create(:purpose => '付き合う前')
Purpose.create(:purpose => '告白')
Purpose.create(:purpose => '初デート')
Purpose.create(:purpose => '定番デート')
Purpose.create(:purpose => '記念日')
Purpose.create(:purpose => '誕生日')
