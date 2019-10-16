FROM opensuse/leap:15.1
RUN zypper --non-interactive install \
      patch \
      ruby \
      system-user-nobody \
      inotify-tools \
      tini \
      ruby && zypper clean
RUN gem install bosh-template
