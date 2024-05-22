FROM alpine
LABEL aigerim=test
RUN apk add pingu curl nginx 
COPY ./entrypoint.sh /
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["postgres"]
