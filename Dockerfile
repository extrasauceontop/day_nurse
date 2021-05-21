FROM safegraph/apify-python3:3.7.0

COPY . ./

USER root

RUN pip3 install -r requirements.txt

RUN pip3.7 install certifi     && ln -s /usr/local/lib/python3.7/site-packages/certifi/cacert.pem /usr/local/ssl/cert.pem

CMD npm start
