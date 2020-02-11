FROM continuumio/miniconda3

COPY environment.yml /tmp/environment.yml

RUN conda update -n base -c defaults conda && \
    conda env update -f /tmp/environment.yml && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    conda clean --all --yes

EXPOSE 8888

ENTRYPOINT [ "/bin/bash", "-c" ]
