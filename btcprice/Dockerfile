FROM python:3.9-alpine
LABEL org.opencontainers.image.authors="phooshmand@gmail.com"
RUN pip install requests
COPY app.py /app.py
CMD ["/app.py"]
ENTRYPOINT ["python"]
