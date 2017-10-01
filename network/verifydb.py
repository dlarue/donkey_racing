import numpy as np
import os
import sys
import time
import lmdb
from netdef import *

from caffe2.python import core, model_helper, net_drawer, workspace, visualize, brew
import caffe2.python.predictor.predictor_exporter as pe
import caffe2.python.predictor.predictor_py_utils as pred_utils
from caffe2.python.predictor_constants import predictor_constants as pc
from caffe2.proto import caffe2_pb2


workspace.ResetWorkspace()
device_opts = caffe2_pb2.DeviceOption()
device_opts.device_type = caffe2_pb2.CUDA
device_opts.cuda_gpu_id = 0


train_model, test_model, deploy_model = build_networks()

test_model.RunAllOnGPU()
workspace.RunNetOnce(test_model.param_init_net)
load_crunk(os.path.join(root_folder, "donkey_model_protos.crunk"), device_opts)
workspace.CreateNet(test_model.net, overwrite=False)
netname = test_model.net.Proto().name

print('iter,label_steer,net_steer,label_throttle,net_throttle')
for i in range(0, 1000):
    workspace.RunNet(netname, 1)
    label = workspace.FetchBlob('label')
    output = workspace.FetchBlob('output')
    print(i, label[0][0], output[0][0], label[0][1], output[0][1])

