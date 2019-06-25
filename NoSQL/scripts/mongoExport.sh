mongoimport -u dah3 -p giblets --authenticationDatabase admin --collection chinook --type tsv --file ~/Desktop/mongoemployee.tsv --headerline
mongoimport -u dah3 -p giblets --authenticationDatabase admin --collection chinook --type tsv --file ~/Desktop/mongocustomer.tsv --headerline
mongoimport -u dah3 -p giblets --authenticationDatabase admin --collection chinook --type tsv --file ~/Desktop/mongoinvoice.tsv --headerline
mongoimport -u dah3 -p giblets --authenticationDatabase admin --collection chinook --type tsv --file ~/Desktop/mongotrack.tsv --headerline
mongoimport -u dah3 -p giblets --authenticationDatabase admin --collection chinook --type tsv --file ~/Desktop/mongoplaylist.tsv --headerline


db.playlist.find({}).snapshot().forEach(function (el) {el.trackID = JSON.parse(el.trackID); db.playlist.save(el);});
db.invoice.find({}).snapshot().forEach(function (el){el.purchases.TrackId = JSON.parse(el.purchases.TrackId); db.invoice.save(el);});
db.invoice.find({}).snapshot().forEach(function (el){el.purchases.Track_Cost = JSON.parse(el.purchases.Track_Cost); db.invoice.save(el);});
db.invoice.find({}).snapshot().forEach(function (el){el.purchases.Quantity = JSON.parse(el.purchases.Quantity); db.invoice.save(el);});
