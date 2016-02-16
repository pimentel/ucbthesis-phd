BASE_DIRECTORY=$(CURDIR)

INPUT_DIRECTORY=$(BASE_DIRECTORY)/src
OUTPUT_DIRECTORY=$(BASE_DIRECTORY)/output
FINAL_DIRECTORY=$(BASE_DIRECTORY)/pdf

all: link

pdf:
	cd $(INPUT_DIRECTORY) && \
	latexmk \
	-pdf \
	-f \
	-quiet \
	-output-directory=$(OUTPUT_DIRECTORY) \
	thesis

link: pdf
	mkdir -p $(FINAL_DIRECTORY) && \
	ln -snf $(OUTPUT_DIRECTORY)/thesis.pdf $(FINAL_DIRECTORY)

clean:
	rm -rf \
	$(OUTPUT_DIRECTORY) \
	$(FINAL_DIRECTORY)
