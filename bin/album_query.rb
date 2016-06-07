require 'sparql'
require 'sparql/client'

sp_end = SPARQL::Client.new("http://dbpedia.org/sparql")

# q = "SELECT ?recording
# WHERE {
#   ?recording <http://dbpedia.org/ontology/artist> <http://dbpedia.org/resource/The_Beatles> .
#   ?recording a <http://dbpedia.org/ontology/Album> .
# }"
#
# solutions = sp_end.query(q)
# solutions.each_solution do |solution|
#   puts solution.inspect
# end

q = "SELECT ?recording ?title ?release_date
WHERE {
  ?recording <http://dbpedia.org/ontology/artist> <http://dbpedia.org/resource/The_Beatles> .
  ?recording a <http://dbpedia.org/ontology/Album> .
  ?recording <http://dbpedia.org/property/name> ?title .
  ?recording <http://dbpedia.org/ontology/releaseDate> ?release_date .
     } ORDER BY ?release_date "

solutions = sp_end.query(q)
solutions.each_solution do |solution|
   puts solution.title.to_s + " " + solution.release_date.to_s
end
