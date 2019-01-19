FROM python
COPY hello_server.py /hello_server.py
RUN pip install flask
ENV FLASK_APP=/hello_server.py
ENTRYPOINT [ "python", "hello_server.py" ]
