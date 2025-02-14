FROM alpine:3.21.2

# Copyright (c) 2023 Battelle Energy Alliance, LLC.  All rights reserved.
LABEL maintainer="malcolm@inl.gov"

# install packages
RUN apk add --no-cache     bash     curl     jq     openssl

# copy in scripts
COPY --chmod=755 scripts/*.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/dirinit.sh"]
