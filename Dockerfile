FROM python:3.7-slim-buster

COPY ./requirements.txt /code/requirements.txt
RUN pip install -r /code/requirements.txt

COPY . /code/
WORKDIR /code/

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["src/app.py"]
