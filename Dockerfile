FROM python:3.9

WORKDIR /code

COPY poetry.lock pyproject.toml  /code/

RUN pip install --no-cache-dir --upgrade "poetry==1.1.14"

RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

COPY app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]