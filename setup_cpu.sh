#echo "mmdetection is not installing cython properly - it has to be installed from conda if this is conda python"
#conda install -y cython

echo "Installing pytorch"
pip3 install --no-input torch==2.0.1 torchvision==0.15.2 --index-url https://download.pytorch.org/whl/cpu

pip3 install --no-input cython

echo "Installing mmcv"
pip3 install --no-input mmcv-lite==2.0.1

# onnx
pip3 install --no-input protobuf==3.19.4
pip3 install --no-input pybind11[global]         # for building the below onnx custom fork
pip3 install --no-input https://github.com/TexasInstruments/onnx/archive/tidl-j7.zip
pip3 install --no-input torchinfo
pip3 install --no-input pycocotools

echo "Installing mmdetection"
echo "For more details, see: https://github.com/open-mmlab/mmdetection/blob/master/docs/get_started.md and https://github.com/open-mmlab/mmdetection"
python3 setup.py develop

echo "This package depends on edgeai-modeltoolkit. Please clone and install that package."
echo "URL: https://github.com/TexasInstruments/edgeai-modeltoolkit"
