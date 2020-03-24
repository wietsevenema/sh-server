FROM alpine
COPY response.sh response.sh

# The next line starts netcat. It will listen on PORT and
# execute 'response.sh' on incoming requests 
CMD echo "Listening on :${PORT:-8080}" && \
    nc -lkp ${PORT:-8080} -e ./response.sh