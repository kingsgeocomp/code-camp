FROM jupyter/base-notebook

USER root
RUN conda install jupyter_contrib_nbextensions 
#  conda install ipywidgets
RUN jupyter contrib nbextension install --user && \
#  jupyter nbextension enable --py widgetsnbextension && \
  jupyter nbextension enable exercise2/main

USER $NB_UID

RUN echo "Done."
