.PHONY: all
all: population.png

population.png: chart.png
	composite chart.png frame.png population.png

chart.png:
	gnuplot population.gpi > chart.png

.PHONY: clean
clean:
	rm -rf chart.png population.png
