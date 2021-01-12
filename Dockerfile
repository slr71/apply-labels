FROM hayd/alpine-deno:1.6.2

WORKDIR /app

EXPOSE 60000

USER deno

ADD applylabels.js /app

RUN deno cache applylabels.js

CMD ["run", "--allow-net", "--allow-env", "applylabels.js"]