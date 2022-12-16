FROM  python:3.8-slim
COPY .  /app 
WORKDIR /app
RUN python -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install pyspark
CMD [ "python","main.py" ]
