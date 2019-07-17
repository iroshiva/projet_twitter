SUPER ARCHITECTURE

IMPORTANT : NE PAS PUSHER SUR GITHUB AVANT D'AVOIR MIT LE .ENV DANS LE .GITIGNORE !!!!!!!!!

ETAPES

# création du dossier racine

# crétion d'un fichier README.md 
	$ subl README.md == à compléter

# création d'un fichier Gemfile et ajouter les gems que l'on veut
	$ subl Gemfile == à compléter

	source "https://rubygems.org"
	ruby '2.5.1'
	gem 'rubocop', '~> 0.57.2'
	gem 'rspec'
	gem 'twitter'
	gem 'dotenv'
	gem 'pry'

# $ bundle install : rend dispo les gems à tout le dossier du projet
 	==> création d'un Gemfile.lock

# création d'un fichier .env où on stock les données que l'on ne veut pas pusher sur github
	==> mettre dedans les choses que l'on veut cacher, par ex clés APIs

# création d'un fichier .gitignore
	==> mettre dedans .env 
	==> c'est ce qui va faire que lors du push sur github, .env ne sera pas pushé, par ex les clés APIs

# $ rspec --init
	==> créé un dossier spec avec un fichier spec_helper.rb 
		à l'intérieur, vont figurer tout les fichiers de test en _spec.rb
	==> créé un fichier .rspec

	==> NE PAS OUBLIER DE LIER LE FICHIER _spec.rb avec le fichier.rb
		ex : require_relative '../lib/projet_twitter.rb'

# création d'un dossier lib

# création d'un fichier .rb
	==> pour connecter le fichier .rb : mettre en haut
		reguire 'nom du gem'
		require 'nom de gem'
		.
		. etc...
		.

	==> pour connecter le fichier.rb au .env
	==> require 'dotenv'# Appelle la gem Dotenv

		Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)
		# et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV

# création repo github

# $ git init

# $ git remote add

# $ git add

# $ git commit -m".."

# $ git push origin master