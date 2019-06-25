[QueryGroup="cw2"] @collection [[
[QueryItem="bermuda"]
PREFIX loc: <https://data.nasa.gov/ontologies/atmonto/general#>
PREFIX cw2: <https://data.nasa.gov/ontologies/atmonto/NAS#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
select  ?name ?lat ?long
where {
	
	?airport cw2:airportName ?name;
	cw2:airportLocation ?loc.
	?loc loc:latitude ?lat;
	loc:longitude ?long;
	

	FILTER (?long >= -80.0 && ?long <=-64.00).
	FILTER (?lat <= 32.0 && ?lat >=18.00).
	
}

[QueryItem="UK airlines"]
PREFIX loc: <https://data.nasa.gov/ontologies/atmonto/general#>
PREFIX cw2: <https://data.nasa.gov/ontologies/atmonto/NAS#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>



select *
where {
	?airline cw2:airCarrierName ?name;
		cw2:countryOfRegistry ?country.
	FILTER REGEX (?country, 'United Kingdom').
}

[QueryItem="top 10 airports"]
PREFIX cw2: <https://data.nasa.gov/ontologies/atmonto/NAS#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX loc: <https://data.nasa.gov/ontologies/atmonto/general#>

select ?name ?class
where{
	
	?airport cw2:airportName ?name;
	 	a ?class;
	
	 
}limit 10

[QueryItem="top 10 airlines"]
PREFIX cw2: <https://data.nasa.gov/ontologies/atmonto/NAS#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX loc: <https://data.nasa.gov/ontologies/atmonto/general#>

select ?name ?class
where{
	
	?airport cw2:airCarrierName ?name;
	 	a ?class;
	
	 
}limit 10

[QueryItem="Iata matching"]
PREFIX cw2: <https://data.nasa.gov/ontologies/atmonto/NAS#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX loc: <https://data.nasa.gov/ontologies/atmonto/general#>

select ?iata ?iata2
where{
	
	?s cw2:iataCarrierCode ?iata.
	?s cw2:iataAirportCode ?iata2
	
	filter (?iata = ?iata2) 
}
]]
