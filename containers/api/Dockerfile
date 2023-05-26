FROM python

WORKDIR app/

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./api/requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./api/app/. .

CMD uvicorn app.main:app --host 0.0.0.0 --port 80
