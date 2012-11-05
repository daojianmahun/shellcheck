all: .tests shpell
	true
	
shpell: 
	ghc --make shpell #GHC handles the dependencies

.tests: *.hs */*.hs
	./test/runQuack && touch .tests
  
clean:
	rm -f .tests shpell  *.hi *.o  Shpell/*.hi Shpell/*.o
