FROM openjdk:11.0.8-jre

WORKDIR /opt/corenlp

# Download and unzip CoreNLP (replace with the actual download URL)
RUN wget https://github.com/stanfordnlp/CoreNLP/archive/refs/tags/v4.5.10.zip \
    && unzip v4.5.10.zip \
    && mv $(ls -d CoreNLP-*/) corenlp \
    && rm *.zip

# Expose the default CoreNLP server port
EXPOSE 9000

# Command to run the CoreNLP server
CMD ["java", "-mx4g", "-cp", "*", "edu.stanford.nlp.pipeline.StanfordCoreNLPServer", "-port", "9000", "-timeout", "15000"]
