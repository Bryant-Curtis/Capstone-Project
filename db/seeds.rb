# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

alexander = User.create!(first_name: "Alexander", last_name: "Hamilton", email: "alexander@hamilton.com", password: "hamilton", birthday: "1755-01-11", gender: "Male")
julius = User.create!(first_name: "Julius", last_name: "Caesar", email: "julius@caesar.com", password: "caesar", birthday: "-100-07-13", gender: "Male")
oprah = User.create!(first_name: "Oprah", last_name: "Winfrey", email: "oprah@winfrey.com", password: "winfrey", birthday: "1954-01-29", gender: "Female")
george = User.create!(first_name: "George", last_name: "Clooney", email: "george@clooney.com", password: "clooney", birthday: "1961-05-06", gender: "Male")
robert = User.create!(first_name: "Robert", last_name: "De Niro", email: "robert@deniro.com", password: "deniro", birthday: "1943-08-17", gender: "Male")
# lance = User.create!(first_name: "Lance", last_name: "Armstrong", email: "lance@armstrong.com", password: "armstrong", birthday: "1971-09-18", gender: "Male")
# cloud = User.create!(first_name: "Cloud", last_name: "Strife", email: "cloud@strife.com", password: "strife", birthday: "1997-01-01", gender: "Male")
# gintoki = User.create!(first_name: "Gintoki", last_name: "Sakata", email: "gintoki@sakata.com", password: "sakata")
# naruto = User.create!(first_name: "Naruto", last_name: "Uzumaki", email: "naruto@uzumaki.com", password: "uzumaki")
# vegeta = User.create!(first_name: "Vegeta", last_name: "Breigh", email: "vegeta@breigh.com", password: "breigh")
# zidane = User.create!(first_name: "Zidane", last_name: "Tribal", email: "zidane@tribal.com", password: "tribal")
# musashi = User.create!(first_name: "Musashi", last_name: "Miyamoto", email: "musashi@miyamoto.com", password: "miyamoto")

Post.destroy_all

j3 = Post.create!(body: "Experience is the teacher of all things.", author_id: julius.id)
a1 = Post.create!(body: "There are seasons in every country when noise and impudence pass current for worth; and in popular commotions especially, the clamors of interested and factious men are often mistaken for patriotism.", author_id: alexander.id)
o3 = Post.create!(body: "Do the one thing you think you cannot do. Fail at it. Try again. Do better the second time. The only people who never tumble are those who never mount the high wire. This is your moment. Own it.", author_id: oprah.id)
g1 = Post.create!(body: "I had to stop going to auditions thinking, 'Oh, I hope they like me.' I had to go in thinking I was the answer to their problem.", author_id: george.id)
a2 = Post.create!(body: "Those who stand for nothing fall for anything.", author_id: alexander.id)
j4 = Post.create!(body: "As a rule, men worry more about what they can't see than about what they can.", author_id: julius.id)
g2 = Post.create!(body: "I can't give you 150 takes. I can't even give you 30 different ways of doing it! I don't have the talent or the range for it.", author_id: george.id)
r1 = Post.create!(body: "It's important not to indicate. People don't try to show their feelings, they try to hide them.", author_id: robert.id)
a3 = Post.create!(body: "I never expect to see a perfect work from an imperfect man.", author_id: alexander.id)
j5 = Post.create!(body: "I love the name of honor, more than I fear death.", author_id: julius.id)
o2 = Post.create!(body: "Think like a queen. A queen is not afraid to fail. Failure is another steppingstone to greatness.", author_id: oprah.id)
a4 = Post.create!(body: "In framing a government which is to be administered by men over men, the great difficulty lies in this: you must first enable the government to control the governed; and in the next place, oblige it to control itself.", author_id: alexander.id)
j6 = Post.create!(body: "If you must break the law, do it to seize power: in all other cases observe it.", author_id: julius.id)
r2 = Post.create!(body: "You learned the two greatest thing in life, never rat on your friends, and always keep your mouth shut.", author_id: robert.id)
g3 = Post.create!(body: "You never really learn much from hearing yourself talk.", author_id: george.id)
o1 = Post.create!(body: "The more you praise and celebrate your life, the more there is in life to celebrate.", author_id: oprah.id)
a5 = Post.create!(body: "A national debt, if it is not excessive, will be to us a national blessing.", author_id: alexander.id)
o4 = Post.create!(body: "Where there is no struggle, there is no strength.", author_id: oprah.id)
j2 = Post.create!(body: "It is easier to find men who will volunteer to die, than to find those who are willing to endure pain with patience.", author_id: julius.id)
g4 = Post.create!(body: "The only failure is not to try.", author_id: george.id)
r3 = Post.create!(body: "I always tell actors when they go in for an audition: Don't be afraid to do what your instincts tell you. You may not get the part, but people will take notice.", author_id: robert.id)
o5 = Post.create!(body: "The whole point of being alive is to evolve into the complete person you were intended to be.", author_id: oprah.id)
a6 = Post.create!(body: "Constitutions should consist only of general provisions; the reason is that they must necessarily be permanent, and that they cannot calculate for the possible change of things.", author_id: alexander.id)
r4 = Post.create!(body: "I love to find new people. It's not for the sake of their being new; it's because if you find someone who perfectly fits a part, that's such a great thing.", author_id: robert.id)
o6 = Post.create!(body: "Be thankful for what you have; you'll end up having more. If you concentrate on what you don't have, you will never, ever have enough.", author_id: oprah.id)
g5 = Post.create!(body: "I was very lucky to get well known much later in life. You need to have flopped quite a few times to get a sense of how little any of it has to do with you.", author_id: george.id)
j1 = Post.create!(body: "Cowards die many times before their actual deaths.", author_id: julius.id)
a10 = Post.create!(body: "You should not have taken advantage of my sensibility to steal into my affections without my consent.", author_id: alexander.id)
r5 = Post.create!(body: "I'll work with a director if I think I'm going to get into a comfortable situation, and if it's someone I respect and who respects me, even if they're not so well known. Movies are hard to make, and you have to work toward a common ethic and do your best.", author_id: robert.id)
j7 = Post.create!(body: "Men willingly believe what they wish.", author_id: julius.id)
o8 = Post.create!(body: "The greatest discovery of all time is that a person can change his future by merely changing his attitude.", author_id: oprah.id)
g6 = Post.create!(body: "But I'm kind of comfortable with getting older because it's better than the other option, which is being dead. So I'll take getting older.", author_id: george.id)
r6 = Post.create!(body: "Money makes your life easier. If you're lucky to have it, you're lucky.", author_id: robert.id)
a8 = Post.create!(body: "A well adjusted person is one who makes the same mistake twice without getting nervous.", author_id: alexander.id)
a7 = Post.create!(body: "Why has government been instituted at all? Because the passions of man will not conform to the dictates of reason and justice without constraint.", author_id: alexander.id)
j8 = Post.create!(body: "No one is so brave that he is not disturbed by something unexpected.", author_id: julius.id)
o9 = Post.create!(body: "Passion is energy. Feel the power that comes from focusing on what excites you.", author_id: oprah.id)
r7 = Post.create!(body: "The talent is in the choices.", author_id: robert.id)
g7 = Post.create!(body: "My father ran for Congress in 2004, and I got a sense that there is no way to achieve much success without a certain amount of compromise.", author_id: george.id)
a9 = Post.create!(body: "The nation which can prefer disgrace to danger is prepared for a master and deserves one.", author_id: alexander.id)
j9 = Post.create!(body: "It is better to create than to learn! Creating is the essence of life.", author_id: julius.id)
o7 = Post.create!(body: "Lots of people want to ride with you in the limo, but what you want is someone who will take the bus with you when the limo breaks down.", author_id: oprah.id)
g8 = Post.create!(body: "I bought a piano once because I had the dream of playing As Time Goes By as some girl's leaning on it drinking a martini. Great image. But none of it worked out. I can't even play Chopsticks. But I've got a nice piano at my house!", author_id: george.id)
r8 = Post.create!(body: "The hardest thing about being famous is that people are always nice to you.", author_id: robert.id)

# s1 = Post.create!(body: "漫画は読者と一緒に作ってくもんだろーが！", author_id: gintoki.id)
# s2 = Post.create!(body: "人生を楽しく生きるコツは童心を忘れねーことだよ。", author_id: gintoki.id)
# s3 = Post.create!(body: "皮肉なもんだな。ホントに大事なモンってのは　もってる奴よりもってねー奴の方がしってるもんさ", author_id: gintoki.id)
# n1 = Post.create!(body: "言ったことは、まげねぇ。・・・それが俺の忍道だ！！", author_id: naruto.id)
# n2 = Post.create!(body: "賢いっていうのがそういう事なら、俺は一生バカでいい。", author_id: naruto.id)
# n3 = Post.create!(body: "やっぱ覚悟しとかなきゃな…みんながみんな認めてくれる火影ってスゲー名前語るのによーお。ぜってェー！近道なんかねェーってことはよ！！", author_id: naruto.id)
# v1 = Post.create!(body: "トランクス・・・おまえは赤ん坊の頃からいちども抱いてやったことがなかったな・・・抱かせてくれ・・・", author_id: vegeta.id)
# v2 = Post.create!(body: "がんばれカカロット お前がナンバーワンだ！", author_id: vegeta.id)
# c1 = Post.create!(body: "No one lives in the slums because they want to. It's like this train. It can only go where the tracks take it.", author_id: cloud.id)
# z1 = Post.create!(body: "You don't need a reason to help people.", author_id: zidane.id)
# z2 = Post.create!(body: "I shall hereby do my best to kidnap you!", author_id: zidane.id)
# z3 = Post.create!(body: "Whoever pulled this off had to be highly skilled, like me.", author_id: zidane.id)
# l = Post.create!(body: "", author_id: lance.id)
# m = Post.create!(body: "", author_id: musashi.id)

Friendship.destroy_all

f1 = Friendship.create!(self_id: oprah.id, friend_id: alexander.id)
f2 = Friendship.create!(self_id: alexander.id, friend_id: oprah.id)
# f3 = Friendship.create!(self_id: oprah.id, friend_id: julius.id)
# f4 = Friendship.create!(self_id: julius.id, friend_id: oprah.id)
# f5 = Friendship.create!(self_id: oprah.id, friend_id: robert.id)
# f6 = Friendship.create!(self_id: robert.id, friend_id: oprah.id)
f7 = Friendship.create!(self_id: oprah.id, friend_id: george.id)
f8 = Friendship.create!(self_id: george.id, friend_id: oprah.id)
# f7 = Friendship.create!(self_id: oprah.id, friend_id: cloud.id)
# f8 = Friendship.create!(self_id: cloud.id, friend_id: oprah.id)
# f9 = Friendship.create!(self_id: oprah.id, friend_id: lance.id)
# f10 = Friendship.create!(self_id: lance.id, friend_id: oprah.id)
# f9 = Friendship.create!(self_id: robert.id, friend_id: alexander.id)
# f10 = Friendship.create!(self_id: alexander.id, friend_id: robert.id)
f11 = Friendship.create!(self_id: robert.id, friend_id: julius.id)
f12 = Friendship.create!(self_id: julius.id, friend_id: robert.id)
# f13 = Friendship.create!(self_id: robert.id, friend_id: george.id)
# f14 = Friendship.create!(self_id: george.id, friend_id: robert.id)
# f15 = Friendship.create!(self_id: george.id, friend_id: alexander.id)
# f16 = Friendship.create!(self_id: alexander.id, friend_id: george.id)
f17 = Friendship.create!(self_id: george.id, friend_id: julius.id)
f18 = Friendship.create!(self_id: julius.id, friend_id: george.id)
# f19 = Friendship.create!(self_id: alexander.id, friend_id: julius.id)
# f20 = Friendship.create!(self_id: julius.id, friend_id: alexander.id)

FriendRequest.destroy_all

fr1 = FriendRequest.create!(requestee_id: alexander.id, requestor_id: george.id)
fr2 = FriendRequest.create!(requestee_id: alexander.id, requestor_id: julius.id)
fr3 = FriendRequest.create!(requestee_id: alexander.id, requestor_id: robert.id)
# fr4 = FriendRequest.create!(requestee_id: alexander.id, requestor_id: lance.id)
fr5 = FriendRequest.create!(requestee_id: robert.id, requestor_id: oprah.id)
fr6 = FriendRequest.create!(requestee_id: julius.id, requestor_id: oprah.id)
# fr = FriendRequest.create!(requestee_id: alexander.id, requestor_id: oprah.id)
# fr = FriendRequest.create!(requestee_id: george.id, requestor_id: robert.id)
