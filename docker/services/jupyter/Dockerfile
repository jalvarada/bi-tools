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
RUN pip install bokeh==2.1.1 &&\
    pip install fastparquet==0.4.0 &&\
    pip install geohash2==1.1 &&\
    pip install geopandas==0.8.0 &&\
    pip install geopy==2.0.0 &&\
    pip install h3==3.6.3 &&\
    pip install ipywidgets==7.5.1 &&\
    pip install jupyter_bokeh==2.0.3 &&\
    pip install keplergl==0.2.0 &&\
    pip install nbconvert==5.6.1 &&\
    pip install nbformat==5.0.7 &&\
    pip install networkx==2.4 &&\
    pip install osmnx==0.15.1 &&\
    pip install pandas-profiling==2.8.0 &&\
    pip install pendulum==2.1.1 &&\
    pip install psycopg2==2.8.5 &&\
    pip install pyparsing==2.4.7 &&\
    pip install pyproj==2.6.1 &&\
    pip install python-dateutil==2.8.1 &&\
    pip install pytz==2020.1 &&\
    pip install pyvis==0.1.8.1.1 &&\
    pip install qgrid==1.3.1 &&\
    pip install Rtree==0.9.4 &&\
    pip install seaborn==0.10.1 &&\
    pip install shapely==1.7.0 &&\
    pip install jupytext==1.5.0 &&\
    pip install jupyternotify==0.1.15 &&\
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
