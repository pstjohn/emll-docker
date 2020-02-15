FROM jupyter/minimal-notebook

COPY environment.yml /tmp/environment.yml

RUN conda env update -f /tmp/environment.yml && \
    conda clean --all --yes && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
