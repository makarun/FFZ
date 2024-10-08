FROM public.ecr.aws/lambda/python:3.12

RUN mkdir -p /app
COPY . main.py /app/
WORKDIR /app
# RUN apt-get update && apt-get install -y git
RUN pip install -r requirements.txt
EXPOSE 8080
CMD [ "main.py" ]
ENTRYPOINT [ "python" ]