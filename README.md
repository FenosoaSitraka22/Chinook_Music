# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#Reponses
 
a) Niveau facile
Album.count
=>347
Track.find_by(title: "White Room").artist
=>Eric Clapton
Track.find_by(duration:  188133).title
=>Perfect
Album.find_by(title: "Use Your Illusion II").artist
=>Guns N Roses

b) Niveau moyen
 Album.where("title like ?", "%Great%")
=>13
=>Album.where("title like ?", "%music%").destroy_all
=>Album.where("title like ?", "%music%") => 2
=>Track.where(duration: 158589).count => 0

c) Niveau dificile

#puts en console tous les titres de AC/DC.

irb(main):033:0> Track.where(artist: "AC/DC").each do |t|
irb(main):034:1* puts t.title
irb(main):035:1> end


#puts en console tous les titres de l'album "Let There Be Rock".
irb(main):036:0> Track.where(album: "Let There Be Rock").each do |t|
irb(main):037:1* puts t.title
irb(main):038:1> end
 

#Calcule le prix total de cet album

irb(main):013:0>prix_total=0
=> 0
irb(main):014:0> Track.where(album: "Let There Be Rock").each do |k|
irb(main):015:1* prix_total = prix_total + k.price.to_f
irb(main):016:1> end
irb(main):029:0> puts prix_total
7.920000000000001

Calcule le prix total de cet DURRE TOTALE
irb(main):025:0> durationtotal = 0
=> 0
irb(main):026:0> Track.where(album: "Let There Be Rock").each do |k|
irb(main):027:1* durationtotal = durationtotal + k.duration.to_f
irb(main):028:1> end
irb(main):029:0> puts durationtotal
2453259.0



#Calcule le coût de l'intégralité de la discographie de "Deep Purple".

irb(main):003:0> prix_total=0
=> 0
irb(main):004:0>  Track.where(artist: "Deep Purple").each do |t|
irb(main):005:1* prix_total = prix_total + t.price.to_f
irb(main):006:1> end
irb(main):007:0> puts prix_total
90.0899999999999

#Modifie (via une boucle) tous les titres de "Eric Clapton" afin 
#qu'ils soient affichés avec "Britney Spears" en artist.

irb(main):024:0> Track.where(artist: "Eric Clapton").each do |t|
irb(main):025:1* t.update(artist: "Britney Spears")
irb(main):026:1> 
irb(main):027:1> end
