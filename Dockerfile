FROM elasticsearch:7.0.0
LABEL description="Netology_test"
ENV PATH=/usr/lib:$PATH

USER elasticsearch

COPY ./elasticsearch.yml ./usr/share/elasticsearch/config
        
RUN mkdir /usr/share/elasticsearch/snapshots &&\
    chown elasticsearch:elasticsearch /usr/share/elasticsearch/snapshots
RUN mkdir /var/lib/logs \
    && chown elasticsearch:elasticsearch /var/lib/logs \
    && mkdir /var/lib/data \
    && chown elasticsearch:elasticsearch /var/lib/data
    
EXPOSE 9200
