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
  {:name => 'Casablanca'},
  {:name => 'Shakespeare in Love'},
  {:name => 'L.A. Confidential'},
  {:name => 'The Shawshank Redemption'},
  {:name => 'The Dark Knight'},
  {:name => 'Band of Brothers'},
  {:name => 'Pulp Fiction'},
  {:name => 'Fight Club'},
  {:name => 'Citizen Kane'},
  {:name => 'A Clockwork Orange'},
  {:name => 'Apocalypse Now'},
  {:name => 'Forrest Gump'},
  {:name => 'Gladiator'},
  {:name => 'The Departed'},
  {:name => 'Braveheart'},
  {:name => 'The Silence of the Lambs'},
  {:name => 'Requiem for a Dream'},
  {:name => 'Reservoir Dogs'},
  {:name => 'The Green Mile'},
  {:name => 'Saving Private Ryan'},
  {:name => 'Black Swan'},
  {:name => 'The Artist'},
  {:name => 'American Beauty'},
  {:name => 'The Bourne Ultimatum'},
  {:name => 'How to Train Your Dragon'},
  {:name => 'Lock, Stock and Two Smoking Barrels'},
  {:name => 'The Social Network'},
  {:name => 'V for Vendetta'},
  {:name => 'Back to the Future'},
  {:name => 'Rise of the Planet of the Apes'},
  {:name => 'The Man from Earth'},
  {:name => 'Children of Men'},
  {:name => 'Dark City'},
  {:name => 'Source Code'},
  {:name => 'Close Encounters of the Third Kind'},
  {:name => 'The Truman Show'},
  {:name => 'The Fifth Element'},
  {:name => 'Gattaca'},
  {:name => '28 Days Later'},
  {:name => 'Limitless'},
  {:name => 'Minority Report'},
  {:name => 'Real Steel'},
  {:name => 'I Am Legend'},
  {:name => 'District 9'},
  {:name => 'Transformers'},
  {:name => 'Scarface'},
  {:name => 'Taken'},
  {:name => 'Paycheck'},
  {:name => 'The Cell'},
  {:name => 'Derailed'},
  {:name => 'Double Jeopardy'},
  {:name => 'City of Angels'},
  {:name => 'Demolition Man'},
  {:name => 'The Day After Tomorrow'},
  {:name => 'Rules of Engagement'},
  {:name => 'The Sum of All Fears'},
  {:name => 'Swordfish'},
  {:name => 'Event Horizon'},
  {:name => 'Next'},
  {:name => 'Bicentennial Man'},
  {:name => 'The Faculty'},
  {:name => 'Deep Impact'},
  {:name => 'Armaggedon'},
  {:name => 'Starship Troopers'},
  {:name => 'Battleship'},
  {:name => 'Knowing'},
  {:name => 'The Lost World: Jurassic Park'},
  {:name => 'Battlestar Galactica: Razor'},
  {:name => 'Watchmen'},
  {:name => 'Men in Black'},
  {:name => 'Dawn of the Dead'},
  {:name => 'Highlander'},
  {:name => 'Cloverfield'},
  {:name => 'Total Recall'},
  {:name => 'Independence Day'},
  {:name => 'I, Robot'},
  {:name => 'A Scanner Darkly'},
  {:name => 'Pitch Black'},
  {:name => 'Superman'},
  {:name => 'Mad Max'},
  {:name => 'Invasion of the Body Snatchers'},
  {:name => 'RoboCop'},
  {:name => 'Slumdog Millionaire'},
  {:name => 'Juno'},
  {:name => 'The Notebook'},
  {:name => 'Walk the Line'},
  {:name => 'Love Actually'},
  {:name => 'Letters to Juliet'},
  {:name => 'Entrapment'},
  {:name => 'The Ugly Truth'},
  {:name => 'Legally Blonde'},
  {:name => 'Jersey Girl'},
  {:name => 'The Invention of Lying'},
  {:name => 'Elizabethtown'},
  {:name => 'Mr. and Mrs. Smith'},
  {:name => 'No Strings Attached'},
  {:name => 'What Women Want'},
  {:name => 'Going the Distance'},
  {:name => 'The Last Kiss'},
  {:name => 'While You Were Sleeping'},
  {:name => 'Sweet November'},
  {:name => 'American Pie'},
  {:name => 'The Whole Nine Yards'},
  {:name => 'Date Night'},
  {:name => 'Pretty Woman'},
  {:name => 'Great Expectations'},
  {:name => 'Hitch'},
  {:name => 'Life as We Know It'},
  {:name => 'Groundhog Day'},
  {:name => 'The Illusionist'},
  {:name => 'The Curious Case of Benjamin Button'},
  {:name => 'A Very Long Engagement'},
  {:name => 'The Holiday'},
  {:name => 'Match Point'},
  {:name => 'The Next Three Days'},
  {:name => 'Knocked Up'},
  {:name => 'Dirty Dancing'},
  {:name => 'The Phantom of the Opera'},
  {:name => 'Memoirs of a Geisha'},
  {:name => 'As Good as It Gets'},
  {:name => 'Crouching Tiger, Hidden Dragon'},
  {:name => 'Terms of Endearment'},
  {:name => '17 Again'},
  {:name => 'Just Like Heaven'},
  {:name => 'Easy A'},
  {:name => 'Revolutionary Road'},
  {:name => 'The English Patient'},
  {:name => 'The Wedding Singer'},
  {:name => 'Erin Brockovich'},
  {:name => 'Meet Joe Black'},
  {:name => 'Wedding Crashers'},
  {:name => 'Top Gun'},
  {:name => 'The Lake House'},
  {:name => 'Forgetting Sarah Marshall'},
  {:name => 'Notting Hill'},
  {:name => 'Serendipity'},
  {:name => 'Cruel Intentions'},
  {:name => 'A Good Year'},
  {:name => 'Prince of Persia'},
  {:name => 'Sleepless in Seattle'},
  {:name => 'Ghost Town'},
  {:name => 'In Her Shoes'},
  {:name => 'Little Miss Sunshine'},
  {:name => 'Superbad'},
  {:name => 'Up'},
  {:name => 'Pirates of the Caribbean'},
  {:name => 'Black Hawk Down'},
  {:name => 'Apocalypto'},
  {:name => 'Mission: Impossible'},
  {:name => 'The Terminator'},
  {:name => '300'},
  {:name => 'Die Hard'},
  {:name => 'Raiders of the Lost Ark'},
  {:name => 'Collateral'}
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
r = Rating.create(:user => u, :movie => Movie.find_by_name("Die Hard"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("300"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Fight Club"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Gladiator"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Inception"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Prometheus"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("TRON: Legacy"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Titanic"), :rating => 2)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Casablanca"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Shakespeare in Love"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Total Recall"), :rating => 5)

u = User.find_by_nickname("AgentSmith")
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Matrix"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Die Hard"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("300"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Bourne Ultimatum"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("V for Vendetta"), :rating => 5)
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

u = User.find_by_nickname("WeaponX")
r = Rating.create(:user => u, :movie => Movie.find_by_name("300"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Raiders of the Lost Ark"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Die Hard"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Black Hawk Down"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Mr. and Mrs. Smith"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Minority Report"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Taken"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Matrix"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Inception"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Prometheus"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("TRON: Legacy"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Total Recall"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Titanic"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Casablanca"), :rating => 2)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Shakespeare in Love"), :rating => 2)
r = Rating.create(:user => u, :movie => Movie.find_by_name("L.A. Confidential"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Midnight in Paris"), :rating => 1)

u = User.find_by_nickname("WonderWoman")
r = Rating.create(:user => u, :movie => Movie.find_by_name("Titanic"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Casablanca"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Shakespeare in Love"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("L.A. Confidential"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Midnight in Paris"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Sweet November"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Love Actually"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Just Like Heaven"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Notebook"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Letters to Juliet"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("What Women Want"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Last Kiss"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("A Very Long Engagement"), :rating => 5)

u = User.find_by_nickname("XenaWarriorPrincess")
r = Rating.create(:user => u, :movie => Movie.find_by_name("The Matrix"), :rating => 2)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Inception"), :rating => 2)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Prometheus"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("TRON: Legacy"), :rating => 2)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Total Recall"), :rating => 1)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Titanic"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Casablanca"), :rating => 5)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Shakespeare in Love"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("L.A. Confidential"), :rating => 4)
r = Rating.create(:user => u, :movie => Movie.find_by_name("Midnight in Paris"), :rating => 4)

Rating.generate_recommendations_from_ratings

