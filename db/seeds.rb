movies = [
  {:name => 'The Matrix'},
  {:name => 'Inception'},
  {:name => 'Prometheus'},
  {:name => 'TRON: Legacy'},
  {:name => 'The Avengers'},
  {:name => 'Iron Man'},
  {:name => 'Spiderman'},
  {:name => 'Avatar'},
  {:name => 'Equilibrium'},
  {:name => 'Pirates of Silicon Valley'},
  {:name => 'Blade Runner'},
  {:name => 'Thor'},
  {:name => 'Love Story'},
  {:name => 'Midnight in Paris'},
  {:name => 'Titanic'},
  {:name => 'Eternal Sunshine of the Spotless Mind'},
  {:name => 'Casablanca'}
]

movies.each do |m|
  Movie.create(m)
end

users = [
  {:nickname => 'GuestUserAccount'},
  {:nickname => 'AquaShark'},
  {:nickname => 'EtherealCereal'},
  {:nickname => 'ZborDeFluturi'},
  {:nickname => 'Frodo'},
  {:nickname => 'WeaponX'},
  {:nickname => 'AgentSmith'},
  {:nickname => 'WonderWoman'},
  {:nickname => 'Haiducul'},
  {:nickname => 'XenaWarriorPrincess'}
]

users.each do |u|
  User.create(u)
end

