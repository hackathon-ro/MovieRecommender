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

u = User.find_by_nickname("Frodo")
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Matrix"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Inception"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Prometheus"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("TRON: Legacy"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Titanic"), :rating => 2)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Casablanca"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Shakespeare in Love"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Total Recall"), :rating => 5)

u = User.find_by_nickname("AgentSmith")
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Matrix"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Inception"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Prometheus"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("TRON: Legacy"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Avengers"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Iron Man"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Avatar"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Equilibrium"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Pirates of Silicon Valley"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Midnight in Paris"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Titanic"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Casablanca"), :rating => 2)
r = Rating.create(:user => u, :movie => Movie.find_by_name("L.A. Confidential"), :rating => 1)

