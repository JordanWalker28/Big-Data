sed 's/,*$//' mongoplaylist2.tsv > mongopl2.tsv
sed "s/.*/[&]/" mongopl2.tsv > mongoplaylist2.tsv
sed '1s/^.*$/trackID/' mongoplaylist2.tsv > mongopl2.tsv
paste mongoplaylist1.tsv mongopl2.tsv > mongoplaylist.tsv

sed 's/,*$//' mongoinvoice2.tsv > mongoiv2.tsv
sed "s/.*/[&]/" mongoiv2.tsv > mongoinvoice2.tsv
sed '1s/^.*$/purchases.TrackId/' mongoinvoice2.tsv > mongoiv2.tsv
sed 's/,*$//' mongoinvoice3.tsv > mongoiv3.tsv
sed "s/.*/[&]/" mongoiv3.tsv > mongoinvoice3.tsv
sed '1s/^.*$/purchases.Track_Cost/' mongoinvoice3.tsv > mongoiv3.tsv
sed 's/,*$//' mongoinvoice4.tsv > mongoiv4.tsv
sed "s/.*/[&]/" mongoiv4.tsv > mongoinvoice4.tsv
sed '1s/^.*$/purchases.Quantity/' mongoinvoice4.tsv > mongoiv4.tsv
paste mongoinvoice1.tsv mongoiv2.tsv mongoiv3.tsv mongoiv4.tsv> mongoinvoice.tsv
