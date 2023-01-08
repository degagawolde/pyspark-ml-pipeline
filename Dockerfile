FROM  gcr.io/datamechanics/spark:platform-3.1-dm17
# RUN addgroup app && adduser -S -G app app
# USER app 
ENV PYSPARK_MAJOR_PYTHON_VERSION=3
COPY main.py requirements.txt  /app/ 
WORKDIR /app
# RUN wget https://jdbc.postgresql.org/download/postgresql-42.2.5.jar
# RUN mv postgresql-42.2.5.jar /opt/spark/jars
RUN pip3 install --upgrade pip
RUN pip3 install pyspark numpy
RUN addgroup app && adduser -S -G app app
CMD [ "python","main.py" ]

