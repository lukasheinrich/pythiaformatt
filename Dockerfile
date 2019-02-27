FROM lukasheinrich/generic_madgraphpythiadelphes
ADD . /patches
RUN cd /code/pythia8215; patch -p0 < /patches/patch_pythia.patch
RUN cd /code/pythia8215/examples; \
    patch -p0 < /patches/patch_makefile.patch;  \
    patch -p0 < /patches/patch_makefile_inc.patch; \
    make main92
