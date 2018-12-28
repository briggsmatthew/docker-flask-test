FROM python
COPY hello.py /hello.py
RUN pip install flask
ENV FLASK_APP=/hello.py
ENTRYPOINT [ "python", "hello.py" ]