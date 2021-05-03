FROM python:3

WORKDIR /usr/src/app

COPY . .
RUN pip freeze > requirements.txt
RUN .\myenv\Scripts\activate
RUN pip install django
RUN python manage.py runserver
CMD [ "exec", "-it", "sh" ]