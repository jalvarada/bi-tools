FROM jupyter/pyspark-notebook

USER root

# install OS packages to enable spatial modules
RUN apt-get update && \
    apt-get install curl g++ make -y && \
    # installing spatialindex
    curl -sL http://download.osgeo.org/libspatialindex/spatialindex-src-1.8.5.tar.gz \
    | tar xz && \
    cd spatialindex-src-1.8.5 && \
    ./configure && \
    make && \
    make install && \
    ldconfig && \
    wget -qO- https://cmake.org/files/v3.17/cmake-3.17.0-Linux-x86_64.tar.gz \
    | tar --strip-components=1 -xz -C /usr/local

# installing dependencies
RUN pip install -r requirements.txt && \
    # enable jupyter extensions
    jupyter contrib nbextension install --sys-prefix && \
    jupyter nbextension enable collapsible_headings/main --sys-prefix && \
    jupyter nbextension enable python-markdown/main --sys-prefix  && \
    jupyter nbextension enable execute_time/ExecuteTime --sys-prefix && \
    jupyter nbextension enable hinterland/hinterland --sys-prefix && \
    jupyter nbextension enable scratchpad/main --sys-prefix && \
    jupyter nbextension enable toc2/main --sys-prefix && \
    jupyter nbextension enable hide_input_all/main --sys-prefix && \
    jupyter nbextension enable varInspector/main --sys-prefix && \
    jupyter nbextension enable --py --sys-prefix qgrid && \
    jupyter nbextensions_configurator disable --sys-prefix && \
    jupyter nbextension enable --py widgetsnbextension && \
    jupyter nbextension enable jupyter_bokeh --py --sys-prefix && \
    jupyter nbextension install --py --sys-prefix jupytext && \
    jupyter nbextension enable --py --sys-prefix jupytext && \
    jupytext --set-formats ipynb,md *.ipynbRUN pip install -r requirements.txt && \
    # enable jupyter extensions
    jupyter contrib nbextension install --sys-prefix && \
    jupyter nbextension enable collapsible_headings/main --sys-prefix && \
    jupyter nbextension enable python-markdown/main --sys-prefix  && \
    jupyter nbextension enable execute_time/ExecuteTime --sys-prefix && \
    jupyter nbextension enable hinterland/hinterland --sys-prefix && \
    jupyter nbextension enable scratchpad/main --sys-prefix && \
    jupyter nbextension enable toc2/main --sys-prefix && \
    jupyter nbextension enable hide_input_all/main --sys-prefix && \
    jupyter nbextension enable varInspector/main --sys-prefix && \
    jupyter nbextension enable --py --sys-prefix qgrid && \
    jupyter nbextensions_configurator disable --sys-prefix && \
    jupyter nbextension enable --py widgetsnbextension && \
    jupyter nbextension enable jupyter_bokeh --py --sys-prefix && \
    jupyter nbextension install --py --sys-prefix jupytext && \
    jupyter nbextension enable --py --sys-prefix jupytext && \
    jupytext --set-formats ipynb,md *.ipynb

USER jovyan
