FROM python:3.9

WORKDIR /home/ubuntu/Portfolio

COPY requirements.txt /home/ubuntu/Portfolio
RUN pip install -r requirements.txt

COPY . /home/ubuntu/Portfolio

EXPOSE 8000

CMD python /home/ubuntu/Portfolio manage.py runserver 0.0.0.0:8000