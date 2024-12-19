FROM python:3.5

ENV CONNECT_WITH_USER=${CONNECT_WITH_USER:-True}
ENV MONGO_HOST=${MONGO_HOST:-mongo}
ENV MONGO_PORT=${MONGO_PORT:-27017}
ENV MONGO_DATABASE=${MONGO_DATABASE:-central}
ENV MONGO_USER=${MONGO_USER:-central}
ENV MONGO_PASSWORD=${MONGO_PASSWORD:-secret}
ENV HISTORIAL=${HISTORIAL:-true}

RUN mkdir precios
COPY . precios/

WORKDIR /precios
RUN pip install -r requirements.txt && ls && chmod 777 start.sh



ENTRYPOINT ["./start.sh"]