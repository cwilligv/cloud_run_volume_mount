FROM rocker/shiny

# Install Packages
RUN R -e 'install.packages(c("shiny", "bslib", "ggplot2", "config"))'


# Copy App
COPY ./app/* /srv/shiny-server/

# run app
CMD ["/usr/bin/shiny-server"]
