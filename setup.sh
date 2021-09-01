echo "mmdetection is not installing cython properly - it has to be installed from conda if this is conda python"
conda install -y cython

echo "Installing pytorch and torchvision"
pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio===0.9.0 -f https://download.pytorch.org/whl/torch_stable.html


echo "Installing mmdetection"
echo "For more details, see: https://github.com/open-mmlab/mmdetection/blob/master/docs/get_started.md and https://github.com/open-mmlab/mmdetection"
pip install openmim
mim install mmdet=2.16.0


pip3 install onnxruntime
pip3 install onnxoptimizer

echo "This package depdends on edgeai-torchvision:"
echo "Please visit https://github.com/TexasInstruments/edgeai-torchvision and clone and install that package."
