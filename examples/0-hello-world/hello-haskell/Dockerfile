FROM haskell
WORKDIR /app
COPY hello.hs /app
RUN ghc -o hello hello.hs
CMD [ "/app/hello" ]
