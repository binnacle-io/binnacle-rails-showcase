bernie = Candidate.find_or_create_by(name: 'Bernie Sanders')
hillary = Candidate.find_or_create_by(name: 'Hillary Clinton')
ted = Candidate.find_or_create_by(name: 'Ted Cruz')
donald = Candidate.find_or_create_by(name: 'Donald Trump')
marco = Candidate.find_or_create_by(name: 'Marco Rubio')

pwd = rand(36**20).to_s(36)
arthur = User.find_or_create_by(email: 'arthur@dontpanic.com')
arthur.update({
  name: 'Arthur Dent',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
slartibartfast = User.find_or_create_by(email: 'slart@dontpanic.com')
slartibartfast.update({
  name: 'Slartibartfast',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
trillian = User.find_or_create_by(email: 'trillian@dontpanic.com')
trillian.update({
  name: 'Trillian',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
ford = User.find_or_create_by(email: 'ford@dontpanic.com')
ford.update({
  name: 'Ford Prefect',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
zaphod = User.find_or_create_by(email: 'z@dontpanic.com')
zaphod.update({
  name: 'Zaphod Beeblebrox',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
eddie = User.find_or_create_by(email: 'eddie@dontpanic.com')
eddie.update({
  name: 'Eddie',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
deep_thought = User.find_or_create_by(email: 'deep@dontpanic.com')
deep_thought.update({
  name: 'Deep Thought',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
benji = User.find_or_create_by(email: 'benji@dontpanic.com')
benji.update({
  name: 'Benji Mouse',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
frankie = User.find_or_create_by(email: 'frankie@dontpanic.com')
frankie.update({
  name: 'Frankie Mouse',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
prostetnic = User.find_or_create_by(email: 'prostetnic@dontpanic.com')
prostetnic.update({
  name: 'Prostetnic Vogon Jeltz',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
prosser = User.find_or_create_by(email: 'prosser@dontpanic.com')
prosser.update({
  name: 'L. Prosser',
  password: pwd,
  password_confirmation: pwd
})

pwd = rand(36**20).to_s(36)
petunias = User.find_or_create_by(email: 'petunias@dontpanic.com')
petunias.update({
  name: 'Bowl of Petunias',
  password: pwd,
  password_confirmation: pwd
})

# Cast some votes
bernie.liked_by arthur
bernie.liked_by trillian
bernie.liked_by ford
bernie.liked_by deep_thought

hillary.liked_by eddie
hillary.liked_by slartibartfast

ted.liked_by prosser
ted.liked_by prostetnic

donald.liked_by zaphod
donald.liked_by benji
donald.liked_by frankie

marco.liked_by petunias
