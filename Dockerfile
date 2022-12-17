FROM  python:3.9-slim
COPY .  /app 
WORKDIR /app
RUN python -m pip install --upgrade pip
RUN pip3 install pyspark
RUN pip3 install numpy
CMD [ "python","main.py" ]
