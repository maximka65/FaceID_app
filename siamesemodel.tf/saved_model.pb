��
��
.
Abs
x"T
y"T"
Ttype:

2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.22v2.8.2-0-g2ea19cbb5758��

y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	� *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:

@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:@�*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:�*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_2/kernel
}
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:�*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�H� *
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
�H� *
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:� *
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�@
value�@B�@ B�@
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
* 
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
layer-8
layer_with_weights-4
layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
Z
,0
-1
.2
/3
04
15
26
37
48
59
$10
%11*
Z
,0
-1
.2
/3
04
15
26
37
48
59
$10
%11*
* 
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

;serving_default* 
* 
�

,kernel
-bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
�

.kernel
/bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
�

0kernel
1bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses*
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 
�

2kernel
3bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses*
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses* 
�

4kernel
5bias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses*
J
,0
-1
.2
/3
04
15
26
37
48
59*
J
,0
-1
.2
/3
04
15
26
37
48
59*
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*
* 
* 
* 
* 

,0
-1*

,0
-1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 
* 
* 

.0
/1*

.0
/1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 
* 
* 

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 
* 
* 

20
31*

20
31*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 
* 
* 

40
51*

40
51*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*
* 
* 
* 
J
0
1
2
3
4
5
6
7
8
9*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
serving_default_anchor_imgPlaceholder*/
_output_shapes
:���������dd*
dtype0*$
shape:���������dd
�
serving_default_validation_imgPlaceholder*/
_output_shapes
:���������dd*
dtype0*$
shape:���������dd
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_anchor_imgserving_default_validation_imgconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_62181
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_62553
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_62599��	
��
�
 __inference__wrapped_model_61197

anchor_img
validation_imgT
:siamesenet_embedding_conv2d_conv2d_readvariableop_resource:

@I
;siamesenet_embedding_conv2d_biasadd_readvariableop_resource:@W
<siamesenet_embedding_conv2d_1_conv2d_readvariableop_resource:@�L
=siamesenet_embedding_conv2d_1_biasadd_readvariableop_resource:	�X
<siamesenet_embedding_conv2d_2_conv2d_readvariableop_resource:��L
=siamesenet_embedding_conv2d_2_biasadd_readvariableop_resource:	�X
<siamesenet_embedding_conv2d_3_conv2d_readvariableop_resource:��L
=siamesenet_embedding_conv2d_3_biasadd_readvariableop_resource:	�M
9siamesenet_embedding_dense_matmul_readvariableop_resource:
�H� I
:siamesenet_embedding_dense_biasadd_readvariableop_resource:	� D
1siamesenet_dense_1_matmul_readvariableop_resource:	� @
2siamesenet_dense_1_biasadd_readvariableop_resource:
identity��)SiameseNet/dense_1/BiasAdd/ReadVariableOp�(SiameseNet/dense_1/MatMul/ReadVariableOp�2SiameseNet/embedding/conv2d/BiasAdd/ReadVariableOp�4SiameseNet/embedding/conv2d/BiasAdd_1/ReadVariableOp�1SiameseNet/embedding/conv2d/Conv2D/ReadVariableOp�3SiameseNet/embedding/conv2d/Conv2D_1/ReadVariableOp�4SiameseNet/embedding/conv2d_1/BiasAdd/ReadVariableOp�6SiameseNet/embedding/conv2d_1/BiasAdd_1/ReadVariableOp�3SiameseNet/embedding/conv2d_1/Conv2D/ReadVariableOp�5SiameseNet/embedding/conv2d_1/Conv2D_1/ReadVariableOp�4SiameseNet/embedding/conv2d_2/BiasAdd/ReadVariableOp�6SiameseNet/embedding/conv2d_2/BiasAdd_1/ReadVariableOp�3SiameseNet/embedding/conv2d_2/Conv2D/ReadVariableOp�5SiameseNet/embedding/conv2d_2/Conv2D_1/ReadVariableOp�4SiameseNet/embedding/conv2d_3/BiasAdd/ReadVariableOp�6SiameseNet/embedding/conv2d_3/BiasAdd_1/ReadVariableOp�3SiameseNet/embedding/conv2d_3/Conv2D/ReadVariableOp�5SiameseNet/embedding/conv2d_3/Conv2D_1/ReadVariableOp�1SiameseNet/embedding/dense/BiasAdd/ReadVariableOp�3SiameseNet/embedding/dense/BiasAdd_1/ReadVariableOp�0SiameseNet/embedding/dense/MatMul/ReadVariableOp�2SiameseNet/embedding/dense/MatMul_1/ReadVariableOp�
1SiameseNet/embedding/conv2d/Conv2D/ReadVariableOpReadVariableOp:siamesenet_embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
"SiameseNet/embedding/conv2d/Conv2DConv2D
anchor_img9SiameseNet/embedding/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
�
2SiameseNet/embedding/conv2d/BiasAdd/ReadVariableOpReadVariableOp;siamesenet_embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
#SiameseNet/embedding/conv2d/BiasAddBiasAdd+SiameseNet/embedding/conv2d/Conv2D:output:0:SiameseNet/embedding/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@�
 SiameseNet/embedding/conv2d/ReluRelu,SiameseNet/embedding/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������[[@�
*SiameseNet/embedding/max_pooling2d/MaxPoolMaxPool.SiameseNet/embedding/conv2d/Relu:activations:0*/
_output_shapes
:���������..@*
ksize
@@*
paddingSAME*
strides
�
3SiameseNet/embedding/conv2d_1/Conv2D/ReadVariableOpReadVariableOp<siamesenet_embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
$SiameseNet/embedding/conv2d_1/Conv2DConv2D3SiameseNet/embedding/max_pooling2d/MaxPool:output:0;SiameseNet/embedding/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
�
4SiameseNet/embedding/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp=siamesenet_embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%SiameseNet/embedding/conv2d_1/BiasAddBiasAdd-SiameseNet/embedding/conv2d_1/Conv2D:output:0<SiameseNet/embedding/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((��
"SiameseNet/embedding/conv2d_1/ReluRelu.SiameseNet/embedding/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������((��
,SiameseNet/embedding/max_pooling2d_1/MaxPoolMaxPool0SiameseNet/embedding/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
@@*
paddingSAME*
strides
�
3SiameseNet/embedding/conv2d_2/Conv2D/ReadVariableOpReadVariableOp<siamesenet_embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
$SiameseNet/embedding/conv2d_2/Conv2DConv2D5SiameseNet/embedding/max_pooling2d_1/MaxPool:output:0;SiameseNet/embedding/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
4SiameseNet/embedding/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp=siamesenet_embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%SiameseNet/embedding/conv2d_2/BiasAddBiasAdd-SiameseNet/embedding/conv2d_2/Conv2D:output:0<SiameseNet/embedding/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
"SiameseNet/embedding/conv2d_2/ReluRelu.SiameseNet/embedding/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
,SiameseNet/embedding/max_pooling2d_2/MaxPoolMaxPool0SiameseNet/embedding/conv2d_2/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
@@*
paddingSAME*
strides
�
3SiameseNet/embedding/conv2d_3/Conv2D/ReadVariableOpReadVariableOp<siamesenet_embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
$SiameseNet/embedding/conv2d_3/Conv2DConv2D5SiameseNet/embedding/max_pooling2d_2/MaxPool:output:0;SiameseNet/embedding/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
4SiameseNet/embedding/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp=siamesenet_embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%SiameseNet/embedding/conv2d_3/BiasAddBiasAdd-SiameseNet/embedding/conv2d_3/Conv2D:output:0<SiameseNet/embedding/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
"SiameseNet/embedding/conv2d_3/ReluRelu.SiameseNet/embedding/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������s
"SiameseNet/embedding/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� $  �
$SiameseNet/embedding/flatten/ReshapeReshape0SiameseNet/embedding/conv2d_3/Relu:activations:0+SiameseNet/embedding/flatten/Const:output:0*
T0*(
_output_shapes
:����������H�
0SiameseNet/embedding/dense/MatMul/ReadVariableOpReadVariableOp9siamesenet_embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0�
!SiameseNet/embedding/dense/MatMulMatMul-SiameseNet/embedding/flatten/Reshape:output:08SiameseNet/embedding/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� �
1SiameseNet/embedding/dense/BiasAdd/ReadVariableOpReadVariableOp:siamesenet_embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0�
"SiameseNet/embedding/dense/BiasAddBiasAdd+SiameseNet/embedding/dense/MatMul:product:09SiameseNet/embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� �
"SiameseNet/embedding/dense/SigmoidSigmoid+SiameseNet/embedding/dense/BiasAdd:output:0*
T0*(
_output_shapes
:���������� �
3SiameseNet/embedding/conv2d/Conv2D_1/ReadVariableOpReadVariableOp:siamesenet_embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
$SiameseNet/embedding/conv2d/Conv2D_1Conv2Dvalidation_img;SiameseNet/embedding/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
�
4SiameseNet/embedding/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp;siamesenet_embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
%SiameseNet/embedding/conv2d/BiasAdd_1BiasAdd-SiameseNet/embedding/conv2d/Conv2D_1:output:0<SiameseNet/embedding/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@�
"SiameseNet/embedding/conv2d/Relu_1Relu.SiameseNet/embedding/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������[[@�
,SiameseNet/embedding/max_pooling2d/MaxPool_1MaxPool0SiameseNet/embedding/conv2d/Relu_1:activations:0*/
_output_shapes
:���������..@*
ksize
@@*
paddingSAME*
strides
�
5SiameseNet/embedding/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp<siamesenet_embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&SiameseNet/embedding/conv2d_1/Conv2D_1Conv2D5SiameseNet/embedding/max_pooling2d/MaxPool_1:output:0=SiameseNet/embedding/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
�
6SiameseNet/embedding/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp=siamesenet_embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'SiameseNet/embedding/conv2d_1/BiasAdd_1BiasAdd/SiameseNet/embedding/conv2d_1/Conv2D_1:output:0>SiameseNet/embedding/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((��
$SiameseNet/embedding/conv2d_1/Relu_1Relu0SiameseNet/embedding/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:���������((��
.SiameseNet/embedding/max_pooling2d_1/MaxPool_1MaxPool2SiameseNet/embedding/conv2d_1/Relu_1:activations:0*0
_output_shapes
:����������*
ksize
@@*
paddingSAME*
strides
�
5SiameseNet/embedding/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp<siamesenet_embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&SiameseNet/embedding/conv2d_2/Conv2D_1Conv2D7SiameseNet/embedding/max_pooling2d_1/MaxPool_1:output:0=SiameseNet/embedding/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
6SiameseNet/embedding/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp=siamesenet_embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'SiameseNet/embedding/conv2d_2/BiasAdd_1BiasAdd/SiameseNet/embedding/conv2d_2/Conv2D_1:output:0>SiameseNet/embedding/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
$SiameseNet/embedding/conv2d_2/Relu_1Relu0SiameseNet/embedding/conv2d_2/BiasAdd_1:output:0*
T0*0
_output_shapes
:�����������
.SiameseNet/embedding/max_pooling2d_2/MaxPool_1MaxPool2SiameseNet/embedding/conv2d_2/Relu_1:activations:0*0
_output_shapes
:���������		�*
ksize
@@*
paddingSAME*
strides
�
5SiameseNet/embedding/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp<siamesenet_embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&SiameseNet/embedding/conv2d_3/Conv2D_1Conv2D7SiameseNet/embedding/max_pooling2d_2/MaxPool_1:output:0=SiameseNet/embedding/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
6SiameseNet/embedding/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOp=siamesenet_embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'SiameseNet/embedding/conv2d_3/BiasAdd_1BiasAdd/SiameseNet/embedding/conv2d_3/Conv2D_1:output:0>SiameseNet/embedding/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
$SiameseNet/embedding/conv2d_3/Relu_1Relu0SiameseNet/embedding/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:����������u
$SiameseNet/embedding/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"���� $  �
&SiameseNet/embedding/flatten/Reshape_1Reshape2SiameseNet/embedding/conv2d_3/Relu_1:activations:0-SiameseNet/embedding/flatten/Const_1:output:0*
T0*(
_output_shapes
:����������H�
2SiameseNet/embedding/dense/MatMul_1/ReadVariableOpReadVariableOp9siamesenet_embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0�
#SiameseNet/embedding/dense/MatMul_1MatMul/SiameseNet/embedding/flatten/Reshape_1:output:0:SiameseNet/embedding/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� �
3SiameseNet/embedding/dense/BiasAdd_1/ReadVariableOpReadVariableOp:siamesenet_embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0�
$SiameseNet/embedding/dense/BiasAdd_1BiasAdd-SiameseNet/embedding/dense/MatMul_1:product:0;SiameseNet/embedding/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� �
$SiameseNet/embedding/dense/Sigmoid_1Sigmoid-SiameseNet/embedding/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:���������� �
SiameseNet/distance/subSub&SiameseNet/embedding/dense/Sigmoid:y:0(SiameseNet/embedding/dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:���������� n
SiameseNet/distance/AbsAbsSiameseNet/distance/sub:z:0*
T0*(
_output_shapes
:���������� �
(SiameseNet/dense_1/MatMul/ReadVariableOpReadVariableOp1siamesenet_dense_1_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
SiameseNet/dense_1/MatMulMatMulSiameseNet/distance/Abs:y:00SiameseNet/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)SiameseNet/dense_1/BiasAdd/ReadVariableOpReadVariableOp2siamesenet_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
SiameseNet/dense_1/BiasAddBiasAdd#SiameseNet/dense_1/MatMul:product:01SiameseNet/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
SiameseNet/dense_1/SigmoidSigmoid#SiameseNet/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������m
IdentityIdentitySiameseNet/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp*^SiameseNet/dense_1/BiasAdd/ReadVariableOp)^SiameseNet/dense_1/MatMul/ReadVariableOp3^SiameseNet/embedding/conv2d/BiasAdd/ReadVariableOp5^SiameseNet/embedding/conv2d/BiasAdd_1/ReadVariableOp2^SiameseNet/embedding/conv2d/Conv2D/ReadVariableOp4^SiameseNet/embedding/conv2d/Conv2D_1/ReadVariableOp5^SiameseNet/embedding/conv2d_1/BiasAdd/ReadVariableOp7^SiameseNet/embedding/conv2d_1/BiasAdd_1/ReadVariableOp4^SiameseNet/embedding/conv2d_1/Conv2D/ReadVariableOp6^SiameseNet/embedding/conv2d_1/Conv2D_1/ReadVariableOp5^SiameseNet/embedding/conv2d_2/BiasAdd/ReadVariableOp7^SiameseNet/embedding/conv2d_2/BiasAdd_1/ReadVariableOp4^SiameseNet/embedding/conv2d_2/Conv2D/ReadVariableOp6^SiameseNet/embedding/conv2d_2/Conv2D_1/ReadVariableOp5^SiameseNet/embedding/conv2d_3/BiasAdd/ReadVariableOp7^SiameseNet/embedding/conv2d_3/BiasAdd_1/ReadVariableOp4^SiameseNet/embedding/conv2d_3/Conv2D/ReadVariableOp6^SiameseNet/embedding/conv2d_3/Conv2D_1/ReadVariableOp2^SiameseNet/embedding/dense/BiasAdd/ReadVariableOp4^SiameseNet/embedding/dense/BiasAdd_1/ReadVariableOp1^SiameseNet/embedding/dense/MatMul/ReadVariableOp3^SiameseNet/embedding/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 2V
)SiameseNet/dense_1/BiasAdd/ReadVariableOp)SiameseNet/dense_1/BiasAdd/ReadVariableOp2T
(SiameseNet/dense_1/MatMul/ReadVariableOp(SiameseNet/dense_1/MatMul/ReadVariableOp2h
2SiameseNet/embedding/conv2d/BiasAdd/ReadVariableOp2SiameseNet/embedding/conv2d/BiasAdd/ReadVariableOp2l
4SiameseNet/embedding/conv2d/BiasAdd_1/ReadVariableOp4SiameseNet/embedding/conv2d/BiasAdd_1/ReadVariableOp2f
1SiameseNet/embedding/conv2d/Conv2D/ReadVariableOp1SiameseNet/embedding/conv2d/Conv2D/ReadVariableOp2j
3SiameseNet/embedding/conv2d/Conv2D_1/ReadVariableOp3SiameseNet/embedding/conv2d/Conv2D_1/ReadVariableOp2l
4SiameseNet/embedding/conv2d_1/BiasAdd/ReadVariableOp4SiameseNet/embedding/conv2d_1/BiasAdd/ReadVariableOp2p
6SiameseNet/embedding/conv2d_1/BiasAdd_1/ReadVariableOp6SiameseNet/embedding/conv2d_1/BiasAdd_1/ReadVariableOp2j
3SiameseNet/embedding/conv2d_1/Conv2D/ReadVariableOp3SiameseNet/embedding/conv2d_1/Conv2D/ReadVariableOp2n
5SiameseNet/embedding/conv2d_1/Conv2D_1/ReadVariableOp5SiameseNet/embedding/conv2d_1/Conv2D_1/ReadVariableOp2l
4SiameseNet/embedding/conv2d_2/BiasAdd/ReadVariableOp4SiameseNet/embedding/conv2d_2/BiasAdd/ReadVariableOp2p
6SiameseNet/embedding/conv2d_2/BiasAdd_1/ReadVariableOp6SiameseNet/embedding/conv2d_2/BiasAdd_1/ReadVariableOp2j
3SiameseNet/embedding/conv2d_2/Conv2D/ReadVariableOp3SiameseNet/embedding/conv2d_2/Conv2D/ReadVariableOp2n
5SiameseNet/embedding/conv2d_2/Conv2D_1/ReadVariableOp5SiameseNet/embedding/conv2d_2/Conv2D_1/ReadVariableOp2l
4SiameseNet/embedding/conv2d_3/BiasAdd/ReadVariableOp4SiameseNet/embedding/conv2d_3/BiasAdd/ReadVariableOp2p
6SiameseNet/embedding/conv2d_3/BiasAdd_1/ReadVariableOp6SiameseNet/embedding/conv2d_3/BiasAdd_1/ReadVariableOp2j
3SiameseNet/embedding/conv2d_3/Conv2D/ReadVariableOp3SiameseNet/embedding/conv2d_3/Conv2D/ReadVariableOp2n
5SiameseNet/embedding/conv2d_3/Conv2D_1/ReadVariableOp5SiameseNet/embedding/conv2d_3/Conv2D_1/ReadVariableOp2f
1SiameseNet/embedding/dense/BiasAdd/ReadVariableOp1SiameseNet/embedding/dense/BiasAdd/ReadVariableOp2j
3SiameseNet/embedding/dense/BiasAdd_1/ReadVariableOp3SiameseNet/embedding/dense/BiasAdd_1/ReadVariableOp2d
0SiameseNet/embedding/dense/MatMul/ReadVariableOp0SiameseNet/embedding/dense/MatMul/ReadVariableOp2h
2SiameseNet/embedding/dense/MatMul_1/ReadVariableOp2SiameseNet/embedding/dense/MatMul_1/ReadVariableOp:[ W
/
_output_shapes
:���������dd
$
_user_specified_name
anchor_img:_[
/
_output_shapes
:���������dd
(
_user_specified_namevalidation_img
�'
�
D__inference_embedding_layer_call_and_return_conditional_losses_61337

inputs&
conv2d_61252:

@
conv2d_61254:@)
conv2d_1_61270:@�
conv2d_1_61272:	�*
conv2d_2_61288:��
conv2d_2_61290:	�*
conv2d_3_61306:��
conv2d_3_61308:	�
dense_61331:
�H� 
dense_61333:	� 
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_61252conv2d_61254*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������[[@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_61251�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_61206�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_61270conv2d_1_61272*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������((�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_61269�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_61218�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_61288conv2d_2_61290*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_61287�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_61230�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_61306conv2d_3_61308*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_61305�
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_61317�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_61331dense_61333*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61330v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� �
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_61269

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������((�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������((�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������..@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_61651

inputs1
matmul_readvariableop_resource:	� -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_62402

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������((�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������((�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������..@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_2_layer_call_fn_62437

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_61230�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�4
�
D__inference_embedding_layer_call_and_return_conditional_losses_62319

inputs?
%conv2d_conv2d_readvariableop_resource:

@4
&conv2d_biasadd_readvariableop_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@�7
(conv2d_1_biasadd_readvariableop_resource:	�C
'conv2d_2_conv2d_readvariableop_resource:��7
(conv2d_2_biasadd_readvariableop_resource:	�C
'conv2d_3_conv2d_readvariableop_resource:��7
(conv2d_3_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
�H� 4
%dense_biasadd_readvariableop_resource:	� 
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������[[@�
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:���������..@*
ksize
@@*
paddingSAME*
strides
�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�k
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������((��
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
@@*
paddingSAME*
strides
�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
@@*
paddingSAME*
strides
�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� $  �
flatten/ReshapeReshapeconv2d_3/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:����������H�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� 
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� c
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:���������� a
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:���������� �
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_62382

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�'
�
D__inference_embedding_layer_call_and_return_conditional_losses_61476

inputs&
conv2d_61446:

@
conv2d_61448:@)
conv2d_1_61452:@�
conv2d_1_61454:	�*
conv2d_2_61458:��
conv2d_2_61460:	�*
conv2d_3_61464:��
conv2d_3_61466:	�
dense_61470:
�H� 
dense_61472:	� 
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_61446conv2d_61448*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������[[@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_61251�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_61206�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_61452conv2d_1_61454*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������((�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_61269�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_61218�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_61458conv2d_2_61460*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_61287�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_61230�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_61464conv2d_3_61466*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_61305�
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_61317�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_61470dense_61472*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61330v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� �
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_62407

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_61218�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_62181

anchor_img
validation_img!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
	unknown_9:	� 

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
anchor_imgvalidation_imgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_61197o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:���������dd
$
_user_specified_name
anchor_img:_[
/
_output_shapes
:���������dd
(
_user_specified_namevalidation_img
�

�
@__inference_dense_layer_call_and_return_conditional_losses_62493

inputs2
matmul_readvariableop_resource:
�H� .
biasadd_readvariableop_resource:	� 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:���������� [
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:���������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������H
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_62377

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_61206�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_1_layer_call_fn_62391

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������((�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_61269x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������((�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������..@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_62432

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
@__inference_dense_layer_call_and_return_conditional_losses_61330

inputs2
matmul_readvariableop_resource:
�H� .
biasadd_readvariableop_resource:	� 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:���������� [
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:���������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������H
 
_user_specified_nameinputs
�
�
&__inference_conv2d_layer_call_fn_62361

inputs!
unknown:

@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������[[@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_61251w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������[[@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������dd: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�'
�
D__inference_embedding_layer_call_and_return_conditional_losses_61557
inp_img&
conv2d_61527:

@
conv2d_61529:@)
conv2d_1_61533:@�
conv2d_1_61535:	�*
conv2d_2_61539:��
conv2d_2_61541:	�*
conv2d_3_61545:��
conv2d_3_61547:	�
dense_61551:
�H� 
dense_61553:	� 
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinp_imgconv2d_61527conv2d_61529*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������[[@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_61251�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_61206�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_61533conv2d_1_61535*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������((�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_61269�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_61218�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_61539conv2d_2_61541*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_61287�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_61230�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_61545conv2d_3_61547*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_61305�
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_61317�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_61551dense_61553*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61330v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� �
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:X T
/
_output_shapes
:���������dd
!
_user_specified_name	inp_img
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_61230

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
*__inference_SiameseNet_layer_call_fn_61835

anchor_img
validation_img!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
	unknown_9:	� 

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
anchor_imgvalidation_imgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61778o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:���������dd
$
_user_specified_name
anchor_img:_[
/
_output_shapes
:���������dd
(
_user_specified_namevalidation_img
�
g
(__inference_distance_layer_call_fn_62325
input_embedding
validation_embedding
identity�
PartitionedCallPartitionedCallinput_embeddingvalidation_embedding*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_61638a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:���������� :���������� :Y U
(
_output_shapes
:���������� 
)
_user_specified_nameinput_embedding:^Z
(
_output_shapes
:���������� 
.
_user_specified_namevalidation_embedding
�

�
)__inference_embedding_layer_call_fn_62231

inputs!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61476p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_62473

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������HY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������H"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_distance_layer_call_and_return_conditional_losses_62332
input_embedding
validation_embedding
identityd
subSubinput_embeddingvalidation_embedding*
T0*(
_output_shapes
:���������� F
AbsAbssub:z:0*
T0*(
_output_shapes
:���������� P
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:���������� :���������� :Y U
(
_output_shapes
:���������� 
)
_user_specified_nameinput_embedding:^Z
(
_output_shapes
:���������� 
.
_user_specified_namevalidation_embedding
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_61287

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_distance_layer_call_and_return_conditional_losses_61638
input_embedding
validation_embedding
identityd
subSubinput_embeddingvalidation_embedding*
T0*(
_output_shapes
:���������� F
AbsAbssub:z:0*
T0*(
_output_shapes
:���������� P
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:���������� :���������� :Y U
(
_output_shapes
:���������� 
)
_user_specified_nameinput_embedding:^Z
(
_output_shapes
:���������� 
.
_user_specified_namevalidation_embedding
�
�
%__inference_dense_layer_call_fn_62482

inputs
unknown:
�H� 
	unknown_0:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61330p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������H: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������H
 
_user_specified_nameinputs
�
�
*__inference_SiameseNet_layer_call_fn_61951
inputs_0
inputs_1!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
	unknown_9:	� 

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61658o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������dd
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:���������dd
"
_user_specified_name
inputs/1
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_61206

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_62352

inputs1
matmul_readvariableop_resource:	� -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_62467

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_61317a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������H"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61878

anchor_img
validation_img)
embedding_61839:

@
embedding_61841:@*
embedding_61843:@�
embedding_61845:	�+
embedding_61847:��
embedding_61849:	�+
embedding_61851:��
embedding_61853:	�#
embedding_61855:
�H� 
embedding_61857:	�  
dense_1_61872:	� 
dense_1_61874:
identity��dense_1/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�#embedding/StatefulPartitionedCall_1�
!embedding/StatefulPartitionedCallStatefulPartitionedCall
anchor_imgembedding_61839embedding_61841embedding_61843embedding_61845embedding_61847embedding_61849embedding_61851embedding_61853embedding_61855embedding_61857*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61337�
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallvalidation_imgembedding_61839embedding_61841embedding_61843embedding_61845embedding_61847embedding_61849embedding_61851embedding_61853embedding_61855embedding_61857*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61337�
distance/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_61638�
dense_1/StatefulPartitionedCallStatefulPartitionedCall!distance/PartitionedCall:output:0dense_1_61872dense_1_61874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_61651w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:[ W
/
_output_shapes
:���������dd
$
_user_specified_name
anchor_img:_[
/
_output_shapes
:���������dd
(
_user_specified_namevalidation_img
�

�
)__inference_embedding_layer_call_fn_61360
inp_img!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinp_imgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61337p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������dd
!
_user_specified_name	inp_img
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_61251

inputs8
conv2d_readvariableop_resource:

@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������[[@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������[[@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�

�
)__inference_embedding_layer_call_fn_61524
inp_img!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinp_imgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61476p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������dd
!
_user_specified_name	inp_img
�
�
(__inference_conv2d_3_layer_call_fn_62451

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_61305x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�4
�
D__inference_embedding_layer_call_and_return_conditional_losses_62275

inputs?
%conv2d_conv2d_readvariableop_resource:

@4
&conv2d_biasadd_readvariableop_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@�7
(conv2d_1_biasadd_readvariableop_resource:	�C
'conv2d_2_conv2d_readvariableop_resource:��7
(conv2d_2_biasadd_readvariableop_resource:	�C
'conv2d_3_conv2d_readvariableop_resource:��7
(conv2d_3_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
�H� 4
%dense_biasadd_readvariableop_resource:	� 
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������[[@�
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:���������..@*
ksize
@@*
paddingSAME*
strides
�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�k
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������((��
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
@@*
paddingSAME*
strides
�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
@@*
paddingSAME*
strides
�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� $  �
flatten/ReshapeReshapeconv2d_3/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:����������H�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� 
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� c
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:���������� a
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:���������� �
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
�
E__inference_SiameseNet_layer_call_and_return_conditional_losses_62065
inputs_0
inputs_1I
/embedding_conv2d_conv2d_readvariableop_resource:

@>
0embedding_conv2d_biasadd_readvariableop_resource:@L
1embedding_conv2d_1_conv2d_readvariableop_resource:@�A
2embedding_conv2d_1_biasadd_readvariableop_resource:	�M
1embedding_conv2d_2_conv2d_readvariableop_resource:��A
2embedding_conv2d_2_biasadd_readvariableop_resource:	�M
1embedding_conv2d_3_conv2d_readvariableop_resource:��A
2embedding_conv2d_3_biasadd_readvariableop_resource:	�B
.embedding_dense_matmul_readvariableop_resource:
�H� >
/embedding_dense_biasadd_readvariableop_resource:	� 9
&dense_1_matmul_readvariableop_resource:	� 5
'dense_1_biasadd_readvariableop_resource:
identity��dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�'embedding/conv2d/BiasAdd/ReadVariableOp�)embedding/conv2d/BiasAdd_1/ReadVariableOp�&embedding/conv2d/Conv2D/ReadVariableOp�(embedding/conv2d/Conv2D_1/ReadVariableOp�)embedding/conv2d_1/BiasAdd/ReadVariableOp�+embedding/conv2d_1/BiasAdd_1/ReadVariableOp�(embedding/conv2d_1/Conv2D/ReadVariableOp�*embedding/conv2d_1/Conv2D_1/ReadVariableOp�)embedding/conv2d_2/BiasAdd/ReadVariableOp�+embedding/conv2d_2/BiasAdd_1/ReadVariableOp�(embedding/conv2d_2/Conv2D/ReadVariableOp�*embedding/conv2d_2/Conv2D_1/ReadVariableOp�)embedding/conv2d_3/BiasAdd/ReadVariableOp�+embedding/conv2d_3/BiasAdd_1/ReadVariableOp�(embedding/conv2d_3/Conv2D/ReadVariableOp�*embedding/conv2d_3/Conv2D_1/ReadVariableOp�&embedding/dense/BiasAdd/ReadVariableOp�(embedding/dense/BiasAdd_1/ReadVariableOp�%embedding/dense/MatMul/ReadVariableOp�'embedding/dense/MatMul_1/ReadVariableOp�
&embedding/conv2d/Conv2D/ReadVariableOpReadVariableOp/embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
embedding/conv2d/Conv2DConv2Dinputs_0.embedding/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
�
'embedding/conv2d/BiasAdd/ReadVariableOpReadVariableOp0embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
embedding/conv2d/BiasAddBiasAdd embedding/conv2d/Conv2D:output:0/embedding/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@z
embedding/conv2d/ReluRelu!embedding/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������[[@�
embedding/max_pooling2d/MaxPoolMaxPool#embedding/conv2d/Relu:activations:0*/
_output_shapes
:���������..@*
ksize
@@*
paddingSAME*
strides
�
(embedding/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
embedding/conv2d_1/Conv2DConv2D(embedding/max_pooling2d/MaxPool:output:00embedding/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
�
)embedding/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_1/BiasAddBiasAdd"embedding/conv2d_1/Conv2D:output:01embedding/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�
embedding/conv2d_1/ReluRelu#embedding/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������((��
!embedding/max_pooling2d_1/MaxPoolMaxPool%embedding/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
@@*
paddingSAME*
strides
�
(embedding/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
embedding/conv2d_2/Conv2DConv2D*embedding/max_pooling2d_1/MaxPool:output:00embedding/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)embedding/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_2/BiasAddBiasAdd"embedding/conv2d_2/Conv2D:output:01embedding/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
embedding/conv2d_2/ReluRelu#embedding/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
!embedding/max_pooling2d_2/MaxPoolMaxPool%embedding/conv2d_2/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
@@*
paddingSAME*
strides
�
(embedding/conv2d_3/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
embedding/conv2d_3/Conv2DConv2D*embedding/max_pooling2d_2/MaxPool:output:00embedding/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)embedding/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_3/BiasAddBiasAdd"embedding/conv2d_3/Conv2D:output:01embedding/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
embedding/conv2d_3/ReluRelu#embedding/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
embedding/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� $  �
embedding/flatten/ReshapeReshape%embedding/conv2d_3/Relu:activations:0 embedding/flatten/Const:output:0*
T0*(
_output_shapes
:����������H�
%embedding/dense/MatMul/ReadVariableOpReadVariableOp.embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0�
embedding/dense/MatMulMatMul"embedding/flatten/Reshape:output:0-embedding/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� �
&embedding/dense/BiasAdd/ReadVariableOpReadVariableOp/embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0�
embedding/dense/BiasAddBiasAdd embedding/dense/MatMul:product:0.embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� w
embedding/dense/SigmoidSigmoid embedding/dense/BiasAdd:output:0*
T0*(
_output_shapes
:���������� �
(embedding/conv2d/Conv2D_1/ReadVariableOpReadVariableOp/embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
embedding/conv2d/Conv2D_1Conv2Dinputs_10embedding/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
�
)embedding/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp0embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
embedding/conv2d/BiasAdd_1BiasAdd"embedding/conv2d/Conv2D_1:output:01embedding/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@~
embedding/conv2d/Relu_1Relu#embedding/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������[[@�
!embedding/max_pooling2d/MaxPool_1MaxPool%embedding/conv2d/Relu_1:activations:0*/
_output_shapes
:���������..@*
ksize
@@*
paddingSAME*
strides
�
*embedding/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
embedding/conv2d_1/Conv2D_1Conv2D*embedding/max_pooling2d/MaxPool_1:output:02embedding/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
�
+embedding/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_1/BiasAdd_1BiasAdd$embedding/conv2d_1/Conv2D_1:output:03embedding/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((��
embedding/conv2d_1/Relu_1Relu%embedding/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:���������((��
#embedding/max_pooling2d_1/MaxPool_1MaxPool'embedding/conv2d_1/Relu_1:activations:0*0
_output_shapes
:����������*
ksize
@@*
paddingSAME*
strides
�
*embedding/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
embedding/conv2d_2/Conv2D_1Conv2D,embedding/max_pooling2d_1/MaxPool_1:output:02embedding/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+embedding/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_2/BiasAdd_1BiasAdd$embedding/conv2d_2/Conv2D_1:output:03embedding/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
embedding/conv2d_2/Relu_1Relu%embedding/conv2d_2/BiasAdd_1:output:0*
T0*0
_output_shapes
:�����������
#embedding/max_pooling2d_2/MaxPool_1MaxPool'embedding/conv2d_2/Relu_1:activations:0*0
_output_shapes
:���������		�*
ksize
@@*
paddingSAME*
strides
�
*embedding/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
embedding/conv2d_3/Conv2D_1Conv2D,embedding/max_pooling2d_2/MaxPool_1:output:02embedding/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+embedding/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_3/BiasAdd_1BiasAdd$embedding/conv2d_3/Conv2D_1:output:03embedding/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
embedding/conv2d_3/Relu_1Relu%embedding/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:����������j
embedding/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"���� $  �
embedding/flatten/Reshape_1Reshape'embedding/conv2d_3/Relu_1:activations:0"embedding/flatten/Const_1:output:0*
T0*(
_output_shapes
:����������H�
'embedding/dense/MatMul_1/ReadVariableOpReadVariableOp.embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0�
embedding/dense/MatMul_1MatMul$embedding/flatten/Reshape_1:output:0/embedding/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� �
(embedding/dense/BiasAdd_1/ReadVariableOpReadVariableOp/embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0�
embedding/dense/BiasAdd_1BiasAdd"embedding/dense/MatMul_1:product:00embedding/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� {
embedding/dense/Sigmoid_1Sigmoid"embedding/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:���������� �
distance/subSubembedding/dense/Sigmoid:y:0embedding/dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:���������� X
distance/AbsAbsdistance/sub:z:0*
T0*(
_output_shapes
:���������� �
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
dense_1/MatMulMatMuldistance/Abs:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp(^embedding/conv2d/BiasAdd/ReadVariableOp*^embedding/conv2d/BiasAdd_1/ReadVariableOp'^embedding/conv2d/Conv2D/ReadVariableOp)^embedding/conv2d/Conv2D_1/ReadVariableOp*^embedding/conv2d_1/BiasAdd/ReadVariableOp,^embedding/conv2d_1/BiasAdd_1/ReadVariableOp)^embedding/conv2d_1/Conv2D/ReadVariableOp+^embedding/conv2d_1/Conv2D_1/ReadVariableOp*^embedding/conv2d_2/BiasAdd/ReadVariableOp,^embedding/conv2d_2/BiasAdd_1/ReadVariableOp)^embedding/conv2d_2/Conv2D/ReadVariableOp+^embedding/conv2d_2/Conv2D_1/ReadVariableOp*^embedding/conv2d_3/BiasAdd/ReadVariableOp,^embedding/conv2d_3/BiasAdd_1/ReadVariableOp)^embedding/conv2d_3/Conv2D/ReadVariableOp+^embedding/conv2d_3/Conv2D_1/ReadVariableOp'^embedding/dense/BiasAdd/ReadVariableOp)^embedding/dense/BiasAdd_1/ReadVariableOp&^embedding/dense/MatMul/ReadVariableOp(^embedding/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2R
'embedding/conv2d/BiasAdd/ReadVariableOp'embedding/conv2d/BiasAdd/ReadVariableOp2V
)embedding/conv2d/BiasAdd_1/ReadVariableOp)embedding/conv2d/BiasAdd_1/ReadVariableOp2P
&embedding/conv2d/Conv2D/ReadVariableOp&embedding/conv2d/Conv2D/ReadVariableOp2T
(embedding/conv2d/Conv2D_1/ReadVariableOp(embedding/conv2d/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_1/BiasAdd/ReadVariableOp)embedding/conv2d_1/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_1/BiasAdd_1/ReadVariableOp+embedding/conv2d_1/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_1/Conv2D/ReadVariableOp(embedding/conv2d_1/Conv2D/ReadVariableOp2X
*embedding/conv2d_1/Conv2D_1/ReadVariableOp*embedding/conv2d_1/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_2/BiasAdd/ReadVariableOp)embedding/conv2d_2/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_2/BiasAdd_1/ReadVariableOp+embedding/conv2d_2/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_2/Conv2D/ReadVariableOp(embedding/conv2d_2/Conv2D/ReadVariableOp2X
*embedding/conv2d_2/Conv2D_1/ReadVariableOp*embedding/conv2d_2/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_3/BiasAdd/ReadVariableOp)embedding/conv2d_3/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_3/BiasAdd_1/ReadVariableOp+embedding/conv2d_3/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_3/Conv2D/ReadVariableOp(embedding/conv2d_3/Conv2D/ReadVariableOp2X
*embedding/conv2d_3/Conv2D_1/ReadVariableOp*embedding/conv2d_3/Conv2D_1/ReadVariableOp2P
&embedding/dense/BiasAdd/ReadVariableOp&embedding/dense/BiasAdd/ReadVariableOp2T
(embedding/dense/BiasAdd_1/ReadVariableOp(embedding/dense/BiasAdd_1/ReadVariableOp2N
%embedding/dense/MatMul/ReadVariableOp%embedding/dense/MatMul/ReadVariableOp2R
'embedding/dense/MatMul_1/ReadVariableOp'embedding/dense/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:���������dd
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:���������dd
"
_user_specified_name
inputs/1
�
�
*__inference_SiameseNet_layer_call_fn_61981
inputs_0
inputs_1!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
	unknown_9:	� 

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61778o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������dd
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:���������dd
"
_user_specified_name
inputs/1
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_62442

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_62412

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61921

anchor_img
validation_img)
embedding_61882:

@
embedding_61884:@*
embedding_61886:@�
embedding_61888:	�+
embedding_61890:��
embedding_61892:	�+
embedding_61894:��
embedding_61896:	�#
embedding_61898:
�H� 
embedding_61900:	�  
dense_1_61915:	� 
dense_1_61917:
identity��dense_1/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�#embedding/StatefulPartitionedCall_1�
!embedding/StatefulPartitionedCallStatefulPartitionedCall
anchor_imgembedding_61882embedding_61884embedding_61886embedding_61888embedding_61890embedding_61892embedding_61894embedding_61896embedding_61898embedding_61900*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61476�
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallvalidation_imgembedding_61882embedding_61884embedding_61886embedding_61888embedding_61890embedding_61892embedding_61894embedding_61896embedding_61898embedding_61900*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61476�
distance/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_61638�
dense_1/StatefulPartitionedCallStatefulPartitionedCall!distance/PartitionedCall:output:0dense_1_61915dense_1_61917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_61651w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:[ W
/
_output_shapes
:���������dd
$
_user_specified_name
anchor_img:_[
/
_output_shapes
:���������dd
(
_user_specified_namevalidation_img
�
�
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61658

inputs
inputs_1)
embedding_61599:

@
embedding_61601:@*
embedding_61603:@�
embedding_61605:	�+
embedding_61607:��
embedding_61609:	�+
embedding_61611:��
embedding_61613:	�#
embedding_61615:
�H� 
embedding_61617:	�  
dense_1_61652:	� 
dense_1_61654:
identity��dense_1/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�#embedding/StatefulPartitionedCall_1�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_61599embedding_61601embedding_61603embedding_61605embedding_61607embedding_61609embedding_61611embedding_61613embedding_61615embedding_61617*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61337�
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1embedding_61599embedding_61601embedding_61603embedding_61605embedding_61607embedding_61609embedding_61611embedding_61613embedding_61615embedding_61617*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61337�
distance/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_61638�
dense_1/StatefulPartitionedCallStatefulPartitionedCall!distance/PartitionedCall:output:0dense_1_61652dense_1_61654*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_61651w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs:WS
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�

�
)__inference_embedding_layer_call_fn_62206

inputs!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61337p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
�
'__inference_dense_1_layer_call_fn_62341

inputs
unknown:	� 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_61651o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
*__inference_SiameseNet_layer_call_fn_61685

anchor_img
validation_img!
unknown:

@
	unknown_0:@$
	unknown_1:@�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�H� 
	unknown_8:	� 
	unknown_9:	� 

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
anchor_imgvalidation_imgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61658o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:���������dd
$
_user_specified_name
anchor_img:_[
/
_output_shapes
:���������dd
(
_user_specified_namevalidation_img
�
�
(__inference_conv2d_2_layer_call_fn_62421

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_61287x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�"
�
__inference__traced_save_62553
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	� ::

@:@:@�:�:��:�:��:�:
�H� :� : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	� : 

_output_shapes
::,(
&
_output_shapes
:

@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.	*
(
_output_shapes
:��:!


_output_shapes	
:�:&"
 
_output_shapes
:
�H� :!

_output_shapes	
:� :

_output_shapes
: 
�
�
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61778

inputs
inputs_1)
embedding_61739:

@
embedding_61741:@*
embedding_61743:@�
embedding_61745:	�+
embedding_61747:��
embedding_61749:	�+
embedding_61751:��
embedding_61753:	�#
embedding_61755:
�H� 
embedding_61757:	�  
dense_1_61772:	� 
dense_1_61774:
identity��dense_1/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�#embedding/StatefulPartitionedCall_1�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_61739embedding_61741embedding_61743embedding_61745embedding_61747embedding_61749embedding_61751embedding_61753embedding_61755embedding_61757*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61476�
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1embedding_61739embedding_61741embedding_61743embedding_61745embedding_61747embedding_61749embedding_61751embedding_61753embedding_61755embedding_61757*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_61476�
distance/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_61638�
dense_1/StatefulPartitionedCallStatefulPartitionedCall!distance/PartitionedCall:output:0dense_1_61772dense_1_61774*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_61651w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs:WS
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_61305

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_62462

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_62372

inputs8
conv2d_readvariableop_resource:

@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������[[@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������[[@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
�
E__inference_SiameseNet_layer_call_and_return_conditional_losses_62149
inputs_0
inputs_1I
/embedding_conv2d_conv2d_readvariableop_resource:

@>
0embedding_conv2d_biasadd_readvariableop_resource:@L
1embedding_conv2d_1_conv2d_readvariableop_resource:@�A
2embedding_conv2d_1_biasadd_readvariableop_resource:	�M
1embedding_conv2d_2_conv2d_readvariableop_resource:��A
2embedding_conv2d_2_biasadd_readvariableop_resource:	�M
1embedding_conv2d_3_conv2d_readvariableop_resource:��A
2embedding_conv2d_3_biasadd_readvariableop_resource:	�B
.embedding_dense_matmul_readvariableop_resource:
�H� >
/embedding_dense_biasadd_readvariableop_resource:	� 9
&dense_1_matmul_readvariableop_resource:	� 5
'dense_1_biasadd_readvariableop_resource:
identity��dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�'embedding/conv2d/BiasAdd/ReadVariableOp�)embedding/conv2d/BiasAdd_1/ReadVariableOp�&embedding/conv2d/Conv2D/ReadVariableOp�(embedding/conv2d/Conv2D_1/ReadVariableOp�)embedding/conv2d_1/BiasAdd/ReadVariableOp�+embedding/conv2d_1/BiasAdd_1/ReadVariableOp�(embedding/conv2d_1/Conv2D/ReadVariableOp�*embedding/conv2d_1/Conv2D_1/ReadVariableOp�)embedding/conv2d_2/BiasAdd/ReadVariableOp�+embedding/conv2d_2/BiasAdd_1/ReadVariableOp�(embedding/conv2d_2/Conv2D/ReadVariableOp�*embedding/conv2d_2/Conv2D_1/ReadVariableOp�)embedding/conv2d_3/BiasAdd/ReadVariableOp�+embedding/conv2d_3/BiasAdd_1/ReadVariableOp�(embedding/conv2d_3/Conv2D/ReadVariableOp�*embedding/conv2d_3/Conv2D_1/ReadVariableOp�&embedding/dense/BiasAdd/ReadVariableOp�(embedding/dense/BiasAdd_1/ReadVariableOp�%embedding/dense/MatMul/ReadVariableOp�'embedding/dense/MatMul_1/ReadVariableOp�
&embedding/conv2d/Conv2D/ReadVariableOpReadVariableOp/embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
embedding/conv2d/Conv2DConv2Dinputs_0.embedding/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
�
'embedding/conv2d/BiasAdd/ReadVariableOpReadVariableOp0embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
embedding/conv2d/BiasAddBiasAdd embedding/conv2d/Conv2D:output:0/embedding/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@z
embedding/conv2d/ReluRelu!embedding/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������[[@�
embedding/max_pooling2d/MaxPoolMaxPool#embedding/conv2d/Relu:activations:0*/
_output_shapes
:���������..@*
ksize
@@*
paddingSAME*
strides
�
(embedding/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
embedding/conv2d_1/Conv2DConv2D(embedding/max_pooling2d/MaxPool:output:00embedding/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
�
)embedding/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_1/BiasAddBiasAdd"embedding/conv2d_1/Conv2D:output:01embedding/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�
embedding/conv2d_1/ReluRelu#embedding/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������((��
!embedding/max_pooling2d_1/MaxPoolMaxPool%embedding/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
@@*
paddingSAME*
strides
�
(embedding/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
embedding/conv2d_2/Conv2DConv2D*embedding/max_pooling2d_1/MaxPool:output:00embedding/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)embedding/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_2/BiasAddBiasAdd"embedding/conv2d_2/Conv2D:output:01embedding/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
embedding/conv2d_2/ReluRelu#embedding/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
!embedding/max_pooling2d_2/MaxPoolMaxPool%embedding/conv2d_2/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
@@*
paddingSAME*
strides
�
(embedding/conv2d_3/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
embedding/conv2d_3/Conv2DConv2D*embedding/max_pooling2d_2/MaxPool:output:00embedding/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)embedding/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_3/BiasAddBiasAdd"embedding/conv2d_3/Conv2D:output:01embedding/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
embedding/conv2d_3/ReluRelu#embedding/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
embedding/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� $  �
embedding/flatten/ReshapeReshape%embedding/conv2d_3/Relu:activations:0 embedding/flatten/Const:output:0*
T0*(
_output_shapes
:����������H�
%embedding/dense/MatMul/ReadVariableOpReadVariableOp.embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0�
embedding/dense/MatMulMatMul"embedding/flatten/Reshape:output:0-embedding/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� �
&embedding/dense/BiasAdd/ReadVariableOpReadVariableOp/embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0�
embedding/dense/BiasAddBiasAdd embedding/dense/MatMul:product:0.embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� w
embedding/dense/SigmoidSigmoid embedding/dense/BiasAdd:output:0*
T0*(
_output_shapes
:���������� �
(embedding/conv2d/Conv2D_1/ReadVariableOpReadVariableOp/embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0�
embedding/conv2d/Conv2D_1Conv2Dinputs_10embedding/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@*
paddingVALID*
strides
�
)embedding/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp0embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
embedding/conv2d/BiasAdd_1BiasAdd"embedding/conv2d/Conv2D_1:output:01embedding/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������[[@~
embedding/conv2d/Relu_1Relu#embedding/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������[[@�
!embedding/max_pooling2d/MaxPool_1MaxPool%embedding/conv2d/Relu_1:activations:0*/
_output_shapes
:���������..@*
ksize
@@*
paddingSAME*
strides
�
*embedding/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
embedding/conv2d_1/Conv2D_1Conv2D*embedding/max_pooling2d/MaxPool_1:output:02embedding/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((�*
paddingVALID*
strides
�
+embedding/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_1/BiasAdd_1BiasAdd$embedding/conv2d_1/Conv2D_1:output:03embedding/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������((��
embedding/conv2d_1/Relu_1Relu%embedding/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:���������((��
#embedding/max_pooling2d_1/MaxPool_1MaxPool'embedding/conv2d_1/Relu_1:activations:0*0
_output_shapes
:����������*
ksize
@@*
paddingSAME*
strides
�
*embedding/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
embedding/conv2d_2/Conv2D_1Conv2D,embedding/max_pooling2d_1/MaxPool_1:output:02embedding/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+embedding/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_2/BiasAdd_1BiasAdd$embedding/conv2d_2/Conv2D_1:output:03embedding/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
embedding/conv2d_2/Relu_1Relu%embedding/conv2d_2/BiasAdd_1:output:0*
T0*0
_output_shapes
:�����������
#embedding/max_pooling2d_2/MaxPool_1MaxPool'embedding/conv2d_2/Relu_1:activations:0*0
_output_shapes
:���������		�*
ksize
@@*
paddingSAME*
strides
�
*embedding/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
embedding/conv2d_3/Conv2D_1Conv2D,embedding/max_pooling2d_2/MaxPool_1:output:02embedding/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+embedding/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
embedding/conv2d_3/BiasAdd_1BiasAdd$embedding/conv2d_3/Conv2D_1:output:03embedding/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
embedding/conv2d_3/Relu_1Relu%embedding/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:����������j
embedding/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"���� $  �
embedding/flatten/Reshape_1Reshape'embedding/conv2d_3/Relu_1:activations:0"embedding/flatten/Const_1:output:0*
T0*(
_output_shapes
:����������H�
'embedding/dense/MatMul_1/ReadVariableOpReadVariableOp.embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
�H� *
dtype0�
embedding/dense/MatMul_1MatMul$embedding/flatten/Reshape_1:output:0/embedding/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� �
(embedding/dense/BiasAdd_1/ReadVariableOpReadVariableOp/embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype0�
embedding/dense/BiasAdd_1BiasAdd"embedding/dense/MatMul_1:product:00embedding/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� {
embedding/dense/Sigmoid_1Sigmoid"embedding/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:���������� �
distance/subSubembedding/dense/Sigmoid:y:0embedding/dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:���������� X
distance/AbsAbsdistance/sub:z:0*
T0*(
_output_shapes
:���������� �
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
dense_1/MatMulMatMuldistance/Abs:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp(^embedding/conv2d/BiasAdd/ReadVariableOp*^embedding/conv2d/BiasAdd_1/ReadVariableOp'^embedding/conv2d/Conv2D/ReadVariableOp)^embedding/conv2d/Conv2D_1/ReadVariableOp*^embedding/conv2d_1/BiasAdd/ReadVariableOp,^embedding/conv2d_1/BiasAdd_1/ReadVariableOp)^embedding/conv2d_1/Conv2D/ReadVariableOp+^embedding/conv2d_1/Conv2D_1/ReadVariableOp*^embedding/conv2d_2/BiasAdd/ReadVariableOp,^embedding/conv2d_2/BiasAdd_1/ReadVariableOp)^embedding/conv2d_2/Conv2D/ReadVariableOp+^embedding/conv2d_2/Conv2D_1/ReadVariableOp*^embedding/conv2d_3/BiasAdd/ReadVariableOp,^embedding/conv2d_3/BiasAdd_1/ReadVariableOp)^embedding/conv2d_3/Conv2D/ReadVariableOp+^embedding/conv2d_3/Conv2D_1/ReadVariableOp'^embedding/dense/BiasAdd/ReadVariableOp)^embedding/dense/BiasAdd_1/ReadVariableOp&^embedding/dense/MatMul/ReadVariableOp(^embedding/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:���������dd:���������dd: : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2R
'embedding/conv2d/BiasAdd/ReadVariableOp'embedding/conv2d/BiasAdd/ReadVariableOp2V
)embedding/conv2d/BiasAdd_1/ReadVariableOp)embedding/conv2d/BiasAdd_1/ReadVariableOp2P
&embedding/conv2d/Conv2D/ReadVariableOp&embedding/conv2d/Conv2D/ReadVariableOp2T
(embedding/conv2d/Conv2D_1/ReadVariableOp(embedding/conv2d/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_1/BiasAdd/ReadVariableOp)embedding/conv2d_1/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_1/BiasAdd_1/ReadVariableOp+embedding/conv2d_1/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_1/Conv2D/ReadVariableOp(embedding/conv2d_1/Conv2D/ReadVariableOp2X
*embedding/conv2d_1/Conv2D_1/ReadVariableOp*embedding/conv2d_1/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_2/BiasAdd/ReadVariableOp)embedding/conv2d_2/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_2/BiasAdd_1/ReadVariableOp+embedding/conv2d_2/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_2/Conv2D/ReadVariableOp(embedding/conv2d_2/Conv2D/ReadVariableOp2X
*embedding/conv2d_2/Conv2D_1/ReadVariableOp*embedding/conv2d_2/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_3/BiasAdd/ReadVariableOp)embedding/conv2d_3/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_3/BiasAdd_1/ReadVariableOp+embedding/conv2d_3/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_3/Conv2D/ReadVariableOp(embedding/conv2d_3/Conv2D/ReadVariableOp2X
*embedding/conv2d_3/Conv2D_1/ReadVariableOp*embedding/conv2d_3/Conv2D_1/ReadVariableOp2P
&embedding/dense/BiasAdd/ReadVariableOp&embedding/dense/BiasAdd/ReadVariableOp2T
(embedding/dense/BiasAdd_1/ReadVariableOp(embedding/dense/BiasAdd_1/ReadVariableOp2N
%embedding/dense/MatMul/ReadVariableOp%embedding/dense/MatMul/ReadVariableOp2R
'embedding/dense/MatMul_1/ReadVariableOp'embedding/dense/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:���������dd
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:���������dd
"
_user_specified_name
inputs/1
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_61218

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_61317

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������HY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������H"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�1
�
!__inference__traced_restore_62599
file_prefix2
assignvariableop_dense_1_kernel:	� -
assignvariableop_1_dense_1_bias::
 assignvariableop_2_conv2d_kernel:

@,
assignvariableop_3_conv2d_bias:@=
"assignvariableop_4_conv2d_1_kernel:@�/
 assignvariableop_5_conv2d_1_bias:	�>
"assignvariableop_6_conv2d_2_kernel:��/
 assignvariableop_7_conv2d_2_bias:	�>
"assignvariableop_8_conv2d_3_kernel:��/
 assignvariableop_9_conv2d_3_bias:	�4
 assignvariableop_10_dense_kernel:
�H� -
assignvariableop_11_dense_bias:	� 
identity_13��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv2d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�'
�
D__inference_embedding_layer_call_and_return_conditional_losses_61590
inp_img&
conv2d_61560:

@
conv2d_61562:@)
conv2d_1_61566:@�
conv2d_1_61568:	�*
conv2d_2_61572:��
conv2d_2_61574:	�*
conv2d_3_61578:��
conv2d_3_61580:	�
dense_61584:
�H� 
dense_61586:	� 
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinp_imgconv2d_61560conv2d_61562*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������[[@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_61251�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_61206�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_61566conv2d_1_61568*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������((�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_61269�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_61218�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_61572conv2d_2_61574*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_61287�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_61230�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_61578conv2d_3_61580*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_61305�
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_61317�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_61584dense_61586*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61330v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:���������� �
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������dd: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:X T
/
_output_shapes
:���������dd
!
_user_specified_name	inp_img"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
I

anchor_img;
serving_default_anchor_img:0���������dd
Q
validation_img?
 serving_default_validation_img:0���������dd;
dense_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
layer-8
layer_with_weights-4
layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
v
,0
-1
.2
/3
04
15
26
37
48
59
$10
%11"
trackable_list_wrapper
v
,0
-1
.2
/3
04
15
26
37
48
59
$10
%11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_SiameseNet_layer_call_fn_61685
*__inference_SiameseNet_layer_call_fn_61951
*__inference_SiameseNet_layer_call_fn_61981
*__inference_SiameseNet_layer_call_fn_61835�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_SiameseNet_layer_call_and_return_conditional_losses_62065
E__inference_SiameseNet_layer_call_and_return_conditional_losses_62149
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61878
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61921�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_61197
anchor_imgvalidation_img"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
;serving_default"
signature_map
"
_tf_keras_input_layer
�

,kernel
-bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�

.kernel
/bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
�

0kernel
1bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
�

2kernel
3bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
�

4kernel
5bias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
f
,0
-1
.2
/3
04
15
26
37
48
59"
trackable_list_wrapper
f
,0
-1
.2
/3
04
15
26
37
48
59"
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_embedding_layer_call_fn_61360
)__inference_embedding_layer_call_fn_62206
)__inference_embedding_layer_call_fn_62231
)__inference_embedding_layer_call_fn_61524�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_embedding_layer_call_and_return_conditional_losses_62275
D__inference_embedding_layer_call_and_return_conditional_losses_62319
D__inference_embedding_layer_call_and_return_conditional_losses_61557
D__inference_embedding_layer_call_and_return_conditional_losses_61590�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_distance_layer_call_fn_62325�
���
FullArgSpec>
args6�3
jself
jinput_embedding
jvalidation_embedding
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_distance_layer_call_and_return_conditional_losses_62332�
���
FullArgSpec>
args6�3
jself
jinput_embedding
jvalidation_embedding
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
!:	� 2dense_1/kernel
:2dense_1/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_dense_1_layer_call_fn_62341�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_1_layer_call_and_return_conditional_losses_62352�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
':%

@2conv2d/kernel
:@2conv2d/bias
*:(@�2conv2d_1/kernel
:�2conv2d_1/bias
+:)��2conv2d_2/kernel
:�2conv2d_2/bias
+:)��2conv2d_3/kernel
:�2conv2d_3/bias
 :
�H� 2dense/kernel
:� 2
dense/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_signature_wrapper_62181
anchor_imgvalidation_img"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�2�
&__inference_conv2d_layer_call_fn_62361�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_conv2d_layer_call_and_return_conditional_losses_62372�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_max_pooling2d_layer_call_fn_62377�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_62382�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_conv2d_1_layer_call_fn_62391�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_62402�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_max_pooling2d_1_layer_call_fn_62407�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_62412�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_conv2d_2_layer_call_fn_62421�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_62432�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_max_pooling2d_2_layer_call_fn_62437�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_62442�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_conv2d_3_layer_call_fn_62451�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_62462�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_flatten_layer_call_fn_62467�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_flatten_layer_call_and_return_conditional_losses_62473�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
�2�
%__inference_dense_layer_call_fn_62482�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_dense_layer_call_and_return_conditional_losses_62493�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61878�,-./012345$%z�w
p�m
c�`
,�)

anchor_img���������dd
0�-
validation_img���������dd
p 

 
� "%�"
�
0���������
� �
E__inference_SiameseNet_layer_call_and_return_conditional_losses_61921�,-./012345$%z�w
p�m
c�`
,�)

anchor_img���������dd
0�-
validation_img���������dd
p

 
� "%�"
�
0���������
� �
E__inference_SiameseNet_layer_call_and_return_conditional_losses_62065�,-./012345$%r�o
h�e
[�X
*�'
inputs/0���������dd
*�'
inputs/1���������dd
p 

 
� "%�"
�
0���������
� �
E__inference_SiameseNet_layer_call_and_return_conditional_losses_62149�,-./012345$%r�o
h�e
[�X
*�'
inputs/0���������dd
*�'
inputs/1���������dd
p

 
� "%�"
�
0���������
� �
*__inference_SiameseNet_layer_call_fn_61685�,-./012345$%z�w
p�m
c�`
,�)

anchor_img���������dd
0�-
validation_img���������dd
p 

 
� "�����������
*__inference_SiameseNet_layer_call_fn_61835�,-./012345$%z�w
p�m
c�`
,�)

anchor_img���������dd
0�-
validation_img���������dd
p

 
� "�����������
*__inference_SiameseNet_layer_call_fn_61951�,-./012345$%r�o
h�e
[�X
*�'
inputs/0���������dd
*�'
inputs/1���������dd
p 

 
� "�����������
*__inference_SiameseNet_layer_call_fn_61981�,-./012345$%r�o
h�e
[�X
*�'
inputs/0���������dd
*�'
inputs/1���������dd
p

 
� "�����������
 __inference__wrapped_model_61197�,-./012345$%r�o
h�e
c�`
,�)

anchor_img���������dd
0�-
validation_img���������dd
� "1�.
,
dense_1!�
dense_1����������
C__inference_conv2d_1_layer_call_and_return_conditional_losses_62402m./7�4
-�*
(�%
inputs���������..@
� ".�+
$�!
0���������((�
� �
(__inference_conv2d_1_layer_call_fn_62391`./7�4
-�*
(�%
inputs���������..@
� "!����������((��
C__inference_conv2d_2_layer_call_and_return_conditional_losses_62432n018�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
(__inference_conv2d_2_layer_call_fn_62421a018�5
.�+
)�&
inputs����������
� "!������������
C__inference_conv2d_3_layer_call_and_return_conditional_losses_62462n238�5
.�+
)�&
inputs���������		�
� ".�+
$�!
0����������
� �
(__inference_conv2d_3_layer_call_fn_62451a238�5
.�+
)�&
inputs���������		�
� "!������������
A__inference_conv2d_layer_call_and_return_conditional_losses_62372l,-7�4
-�*
(�%
inputs���������dd
� "-�*
#� 
0���������[[@
� �
&__inference_conv2d_layer_call_fn_62361_,-7�4
-�*
(�%
inputs���������dd
� " ����������[[@�
B__inference_dense_1_layer_call_and_return_conditional_losses_62352]$%0�-
&�#
!�
inputs���������� 
� "%�"
�
0���������
� {
'__inference_dense_1_layer_call_fn_62341P$%0�-
&�#
!�
inputs���������� 
� "�����������
@__inference_dense_layer_call_and_return_conditional_losses_62493^450�-
&�#
!�
inputs����������H
� "&�#
�
0���������� 
� z
%__inference_dense_layer_call_fn_62482Q450�-
&�#
!�
inputs����������H
� "����������� �
C__inference_distance_layer_call_and_return_conditional_losses_62332�j�g
`�]
*�'
input_embedding���������� 
/�,
validation_embedding���������� 
� "&�#
�
0���������� 
� �
(__inference_distance_layer_call_fn_62325�j�g
`�]
*�'
input_embedding���������� 
/�,
validation_embedding���������� 
� "����������� �
D__inference_embedding_layer_call_and_return_conditional_losses_61557v
,-./012345@�=
6�3
)�&
inp_img���������dd
p 

 
� "&�#
�
0���������� 
� �
D__inference_embedding_layer_call_and_return_conditional_losses_61590v
,-./012345@�=
6�3
)�&
inp_img���������dd
p

 
� "&�#
�
0���������� 
� �
D__inference_embedding_layer_call_and_return_conditional_losses_62275u
,-./012345?�<
5�2
(�%
inputs���������dd
p 

 
� "&�#
�
0���������� 
� �
D__inference_embedding_layer_call_and_return_conditional_losses_62319u
,-./012345?�<
5�2
(�%
inputs���������dd
p

 
� "&�#
�
0���������� 
� �
)__inference_embedding_layer_call_fn_61360i
,-./012345@�=
6�3
)�&
inp_img���������dd
p 

 
� "����������� �
)__inference_embedding_layer_call_fn_61524i
,-./012345@�=
6�3
)�&
inp_img���������dd
p

 
� "����������� �
)__inference_embedding_layer_call_fn_62206h
,-./012345?�<
5�2
(�%
inputs���������dd
p 

 
� "����������� �
)__inference_embedding_layer_call_fn_62231h
,-./012345?�<
5�2
(�%
inputs���������dd
p

 
� "����������� �
B__inference_flatten_layer_call_and_return_conditional_losses_62473b8�5
.�+
)�&
inputs����������
� "&�#
�
0����������H
� �
'__inference_flatten_layer_call_fn_62467U8�5
.�+
)�&
inputs����������
� "�����������H�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_62412�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_1_layer_call_fn_62407�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_62442�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_2_layer_call_fn_62437�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_62382�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_62377�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
#__inference_signature_wrapper_62181�,-./012345$%���
� 
���
:

anchor_img,�)

anchor_img���������dd
B
validation_img0�-
validation_img���������dd"1�.
,
dense_1!�
dense_1���������