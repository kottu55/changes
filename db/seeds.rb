# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Categories
categories = ['人','ファッション','建物','乗り物','その他']
c1 = ['体型','ヘアスタイル','歯並び','表情']
c2 = ['全身','靴','財布','ジーンズ']
c3 = ['マイルーム','インテリア','外装']
c4 = ['車','バイク','自転車']
c5 = ['給料','笑顔','ペット','植物','その他']
n = 0
ary_category = [c1, c2, c3, c4, c5]
categories.each do |name|
    pearents = Category.new(:name=>name)
    pearents.save
    ary_category[n].each do |parson|
        pearents.children.create(:name=>parson)
    end
    n += 1
end



# Users
n = 1
10.times do
  gimei = Gimei.new
  User.create(
    account_name: gimei.name.romaji,
    area_code: gimei.address.prefecture.kanji,
    email: "test#{n}@gmail.com",
    birth_date: "1990-01-01",
    password: "password")
    n += 1
end



# Follows
    

