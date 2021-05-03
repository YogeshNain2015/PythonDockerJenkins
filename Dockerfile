FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN py -m venv myenv
RUN .\myenv\Scripts\activate
RUN pip install django
RUN pip freeze > requirements.txt
RUN python manage.py runserver
CMD [ "exec", "-it", "sh" ]