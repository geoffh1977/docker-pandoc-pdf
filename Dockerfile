# Pandoc With Latex PDF Extensions
FROM geoffh1977/pandoc:latest
LABEL maintainer="geoffh1977 <geoffh1977@gmail.com>"
USER root

# Latex For PDF
# hadolint ignore=DL3018,DL3019
RUN apk add -U --repository http://dl-3.alpinelinux.org/alpine/v3.9/main poppler harfbuzz-icu && \
    apk add -U --repository http://dl-3.alpinelinux.org/alpine/v3.9/community zziplib texlive-full && \
    ln -s /usr/bin/mktexlsr /usr/bin/mktexlsr.pl

USER ${ALPINE_USER}
