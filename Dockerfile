FROM python

WORKDIR /code

COPY . .

EXPOSE 80 
EXPOSE 443 

CMD ["sh", "runCaddy.sh"]