FROM  python:3.7-slim
COPY .  /app 
WORKDIR /app
RUN python -m pip install --upgrade pip
RUN pip3 install -r requirements.txt

CMD [ "python","main.py" ]