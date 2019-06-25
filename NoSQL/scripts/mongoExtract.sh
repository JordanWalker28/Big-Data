mysql -u root -pnosql123 < ~/Desktop/mongoplaylist1.sql > ~/Desktop/mongoplaylist1.tsv

mysql -u root -pnosql123 < ~/Desktop/mongoplaylist2.sql > ~/Desktop/mongoplaylist2.tsv

mysql -u root -pnosql123 < ~/Desktop/mongotrack.sql >~/Desktop/mongotrack.tsv

mysql -u root -pnosql123 < ~/Desktop/mongoinvoice1.sql >~/Desktop/mongoinvoice1.tsv

mysql -u root -pnosql123 < ~/Desktop/mongoinvoice2.sql >~/Desktop/mongoinvoice2.tsv

mysql -u root -pnosql123 < ~/Desktop/mongoinvoice3.sql >~/Desktop/mongoinvoice3.tsv

mysql -u root -pnosql123 < ~/Desktop/mongoinvoice4.sql >~/Desktop/mongoinvoice4.tsv

mysql -u root -pnosql123 < ~/Desktop/mongocustomer.sql >~/Desktop/mongocustomer.tsv

mysql -u root -pnosql123 < ~/Desktop/mongoemployee.sql >~/Desktop/mongoemployee.tsv


mysql -u root -p < ~/Desktop/invoice.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/invoice.csv

mysql -u root -p < ~/Desktop/customer.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/customer.csv

mysql -u root -p < ~/Desktop/employee.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/employee.csv

mysql -u root -p < ~/Desktop/playlist.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/playlist.csv

mysql -u root -p < ~/Desktop/genre.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/genre.csv

mysql -u root -p < ~/Desktop/artist.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/artist.csv

mysql -u root -p < ~/Desktop/album.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/album.csv

mysql -u root -p < ~/Desktop/PlaylistTrack.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/PlaylistTrack.csv

mysql -u root -p < ~/Desktop/invoiceLine.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/invoiceLine.csv

mysql -u root -p < ~/Desktop/MediaType.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/MediaType.csv

mysql -u root -p < ~/Desktop/invoice.sql  | sed -e 's/,//g' -e 's/\t/,/g' -e 's/"//g' > ~/Desktop/neo4j-community-3.4.4/import/invoice.csv






