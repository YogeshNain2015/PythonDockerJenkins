FROM python:3

WORKDIR /usr/src/app

COPY . .


RUN python -m pip install --user virtualenv
RUN cd /usr/src/app
RUN python -m venv myenv
RUN su
RUN . myenv/bin/activate
RUN pip install django
RUN pip freeze > requirements.txt

CMD [ "exec", "-it", "sh" ]