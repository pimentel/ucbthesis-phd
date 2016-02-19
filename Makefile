BASE_DIRECTORY=$(CURDIR)

INPUT_DIRECTORY=$(BASE_DIRECTORY)/src
OUTPUT_DIRECTORY=$(BASE_DIRECTORY)/output
FINAL_DIRECTORY=$(BASE_DIRECTORY)/pdf

all: link

$(OUTPUT_DIRECTORY)/approvalpage.pdf: $(INPUT_DIRECTORY)/approvalpage.tex
	cd $(INPUT_DIRECTORY) && \
	latexmk \
	-pdf \
	-output-directory=$(OUTPUT_DIRECTORY) \
	approvalpage

$(OUTPUT_DIRECTORY)/thesis.pdf: $(INPUT_DIRECTORY)/thesis.tex
	cd $(INPUT_DIRECTORY) && \
	latexmk \
	-pdf \
	-f \
	-quiet \
	-output-directory=$(OUTPUT_DIRECTORY) \
	thesis

link: $(OUTPUT_DIRECTORY)/thesis.pdf $(OUTPUT_DIRECTORY)/approvalpage.pdf
	mkdir -p $(FINAL_DIRECTORY) && \
	ln -snf $(OUTPUT_DIRECTORY)/thesis.pdf $(FINAL_DIRECTORY)
	ln -snf $(OUTPUT_DIRECTORY)/approvalpage.pdf $(FINAL_DIRECTORY)

clean:
	rm -rf \
	$(OUTPUT_DIRECTORY) \
	$(FINAL_DIRECTORY)
