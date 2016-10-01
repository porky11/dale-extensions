.RECIPEPREFIX+= 

all: libutil.dtm libsequence-math.dtm libmath-concepts.dtm

libutil.dtm: src/util.dt
  dalec -c src/util.dt

libsequence-math.dtm: src/sequence-math.dt libmath-concepts.dtm
  dalec -c src/sequence-math.dt

libmath-concepts.dtm: src/math-concepts.dt
  dalec -c src/math-concepts.dt

src/%.dt:
  true

.PHONY: all clean
clean:
  rm *.so && rm *.bc && rm *.dtm

