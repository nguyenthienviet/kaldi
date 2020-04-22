# Kaldi root directory
export KALDI_ROOT="/home/viet/kaldi"

# Set paths to useful tools
export PATH=$PWD/utils/:$KALDI_ROOT/src/bin:$KALDI_ROOT/tools/openfst/bin:$KALDI_ROOT/src/fstbin/:$KALDI_ROOT/src/gmmbin/:$KALDI_ROOT/src/featbin/:$KALDI_ROOT/src/lmbin/:$KALDI_ROOT/src/sgmm2bin/:$KALDI_ROOT/src/fgmmbin/:$KALDI_ROOT/src/latbin/:$PWD:$PATH

# Define audio data directory
export DATA_ROOT="/home/viet/kaldi/working/data"

# Enable SRILM
. $KALDI_ROOT/tools/env.sh

# Variable for data sorting
export LC_ALL=C
