FROM hayd/alpine-deno:1.10.2

WORKDIR /app

EXPOSE 60000

RUN apk add --no-cache tzdata

USER deno

ADD applylabels.js /app

RUN deno cache applylabels.js

CMD ["run", "--allow-net", "--allow-env", "applylabels.js"]
