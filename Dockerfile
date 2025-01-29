FROM python:latest

ARG BUILD_ARG=default

RUN echo "The value of BUILD_ARG is: ${BUILD_ARG}"

COPY . .

RUN echo "Hello, ${BUILD_ARG}!" > /greeting.txt

RUN pip install -r requirements.txt

CMD ["python3", "handler.py"]
