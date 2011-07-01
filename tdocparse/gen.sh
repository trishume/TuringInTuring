ruby gen.rb filter < Keyword\ Lookup.txt > filt.txt
ruby gen.rb gen < filt.txt > gendefs.t
ruby gen.rb inits < outmethods.txt > geninits.t