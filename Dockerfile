FROM woahbase/alpine-openjdk8

ENV CLOJURE_VERSION=1.10.1.483

WORKDIR /tmp

RUN apk add --update --no-cache curl bash
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh
RUN chmod +x linux-install-$CLOJURE_VERSION.sh
RUN ./linux-install-$CLOJURE_VERSION.sh
RUN /usr/local/bin/clojure -e "(clojure-version)"

CMD /usr/local/bin/clojure

