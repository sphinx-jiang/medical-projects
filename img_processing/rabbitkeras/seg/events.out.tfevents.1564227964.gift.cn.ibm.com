       £K"	   _O„Abrain.Event:2ВКРz,     GEKЏ	!A)_O„A"нЎ
z
input_1Placeholder*
dtype0*/
_output_shapes
:€€€€€€€€€``*$
shape:€€€€€€€€€``
z
input_2Placeholder*
dtype0*/
_output_shapes
:€€€€€€€€€``*$
shape:€€€€€€€€€``
_
subtract/subSubinput_2input_1*
T0*/
_output_shapes
:€€€€€€€€€``
©
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            * 
_class
loc:@conv2d/kernel
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *р7'Њ* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *р7'>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
р
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0* 
_class
loc:@conv2d/kernel
“
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
м
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
ё
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0* 
_class
loc:@conv2d/kernel
±
conv2d/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
Р
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0
Щ
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
:
К
conv2d/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
Я
conv2d/biasVarHandleOp*
shared_nameconv2d/bias*
_class
loc:@conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0*
_class
loc:@conv2d/bias
З
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
л
conv2d/Conv2DConv2Dsubtract/subconv2d/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
Ш
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
≠
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *п[сљ*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *п[с=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
Џ
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ф
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
ж
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
Ј
conv2d_1/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
	container *
shape:
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
Ш
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0
Я
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
:
О
conv2d_1/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
•
conv2d_1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
	container 
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
З
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_1/bias
Н
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:
о
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
Ю
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``
a
conv2d_1/ReluReluconv2d_1/BiasAdd*/
_output_shapes
:€€€€€€€€€``*
T0
e
add/addAddsubtract/subconv2d_1/Relu*
T0*/
_output_shapes
:€€€€€€€€€``
µ
max_pooling2d/MaxPoolMaxPooladd/add*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€00*
T0
≠
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЌУЊ*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *:ЌУ>*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
Џ
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
ф
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0
ж
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0
Ј
conv2d_2/kernelVarHandleOp* 
shared_nameconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: 
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
Ш
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_2/kernel
Я
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0*"
_class
loc:@conv2d_2/kernel
О
conv2d_2/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
•
conv2d_2/biasVarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_2/bias* 
_class
loc:@conv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
З
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0
Н
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0
ш
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€000*
	dilations

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€000
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€000
≠
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *£≈љ*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *£≈=*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
Џ
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
ф
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
ж
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
Ј
conv2d_3/kernelVarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
Ш
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_3/kernel*
dtype0
Я
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_3/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
•
conv2d_3/biasVarHandleOp*
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
	container 
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
З
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros* 
_class
loc:@conv2d_3/bias*
dtype0
Н
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0
ш
conv2d_3/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€000
i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€000
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€000
≠
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   0   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *Ђ™™љ*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ђ™™=*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:00*

seed *
T0*"
_class
loc:@conv2d_4/kernel
Џ
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
ф
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:00
ж
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:00
Ј
conv2d_4/kernelVarHandleOp* 
shared_nameconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
	container *
shape:00*
dtype0*
_output_shapes
: 
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
Ш
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_4/kernel*
dtype0
Я
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
dtype0*&
_output_shapes
:00
О
conv2d_4/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:0
•
conv2d_4/biasVarHandleOp*
shared_nameconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
	container *
shape:0*
dtype0*
_output_shapes
: 
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
З
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros* 
_class
loc:@conv2d_4/bias*
dtype0
Н
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0* 
_class
loc:@conv2d_4/bias
g
conv2d_4/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00
р
conv2d_4/Conv2DConv2Dconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*/
_output_shapes
:€€€€€€€€€000*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€000*
T0
a
conv2d_4/ReluReluconv2d_4/BiasAdd*/
_output_shapes
:€€€€€€€€€000*
T0
h
	add_1/addAddconv2d_2/Reluconv2d_4/Relu*
T0*/
_output_shapes
:€€€€€€€€€000
\
up_sampling2d/ShapeShape	add_1/add*
_output_shapes
:*
T0*
out_type0
k
!up_sampling2d/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
√
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape!up_sampling2d/strided_slice/stack#up_sampling2d/strided_slice/stack_1#up_sampling2d/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
d
up_sampling2d/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
o
up_sampling2d/mulMulup_sampling2d/strided_sliceup_sampling2d/Const*
T0*
_output_shapes
:
©
#up_sampling2d/ResizeNearestNeighborResizeNearestNeighbor	add_1/addup_sampling2d/mul*
align_corners( *
T0*/
_output_shapes
:€€€€€€€€€``0
≠
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЌУЊ*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *:ЌУ>*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_5/kernel*
seed2 *
dtype0*&
_output_shapes
:0
Џ
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
ф
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:0
ж
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_5/kernel
Ј
conv2d_5/kernelVarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
Ш
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_5/kernel*
dtype0
Я
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_5/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
•
conv2d_5/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_5/bias* 
_class
loc:@conv2d_5/bias
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
З
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros* 
_class
loc:@conv2d_5/bias*
dtype0
Н
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d_5/bias
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0
Ж
conv2d_5/Conv2DConv2D#up_sampling2d/ResizeNearestNeighborconv2d_5/Conv2D/ReadVariableOp*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:
Ю
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``
a
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
≠
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_6/kernel/Initializer/random_uniform/minConst*
valueB
 *£≈љ*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_6/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *£≈=*"
_class
loc:@conv2d_6/kernel
ц
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_6/kernel*
seed2 *
dtype0*&
_output_shapes
:0
Џ
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
ф
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
ж
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
Ј
conv2d_6/kernelVarHandleOp*"
_class
loc:@conv2d_6/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_6/kernel
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
Ш
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_6/kernel*
dtype0
Я
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_6/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    * 
_class
loc:@conv2d_6/bias
•
conv2d_6/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_6/bias* 
_class
loc:@conv2d_6/bias
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
З
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros* 
_class
loc:@conv2d_6/bias*
dtype0
Н
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
g
conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0
Ж
conv2d_6/Conv2DConv2D#up_sampling2d/ResizeNearestNeighborconv2d_6/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations

i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:
Ю
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``
a
conv2d_6/ReluReluconv2d_6/BiasAdd*/
_output_shapes
:€€€€€€€€€``*
T0
≠
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *"
_class
loc:@conv2d_7/kernel
Ч
.conv2d_7/kernel/Initializer/random_uniform/minConst*
valueB
 *п[сљ*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_7/kernel/Initializer/random_uniform/maxConst*
valueB
 *п[с=*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_7/kernel*
seed2 
Џ
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_7/kernel
ф
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:
ж
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:
Ј
conv2d_7/kernelVarHandleOp* 
shared_nameconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
Ш
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_7/kernel*
dtype0
Я
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*&
_output_shapes
:
О
conv2d_7/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:
•
conv2d_7/biasVarHandleOp* 
_class
loc:@conv2d_7/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_7/bias
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
З
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros* 
_class
loc:@conv2d_7/bias*
dtype0
Н
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:
g
conv2d_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:
р
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``
i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:
Ю
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``
a
conv2d_7/ReluReluconv2d_7/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
h
	add_2/addAddconv2d_5/Reluconv2d_7/Relu*
T0*/
_output_shapes
:€€€€€€€€€``
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
concatenate/concatConcatV2add/add	add_2/addconcatenate/concat/axis*
T0*
N*/
_output_shapes
:€€€€€€€€€``0*

Tidx0
≠
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_8/kernel/Initializer/random_uniform/minConst*
valueB
 *•)≥Њ*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_8/kernel/Initializer/random_uniform/maxConst*
valueB
 *•)≥>*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_8/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
Џ
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
ф
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:0
ж
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_8/kernel
Ј
conv2d_8/kernelVarHandleOp*
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
	container 
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
Ш
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_8/kernel
Я
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_8/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    * 
_class
loc:@conv2d_8/bias
•
conv2d_8/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_8/bias* 
_class
loc:@conv2d_8/bias
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
З
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros* 
_class
loc:@conv2d_8/bias*
dtype0
Н
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d_8/bias
g
conv2d_8/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0
х
conv2d_8/Conv2DConv2Dconcatenate/concatconv2d_8/Conv2D/ReadVariableOp*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:
Ю
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``*
T0
a
conv2d_8/ReluReluconv2d_8/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
b
	add_3/addAddinput_1conv2d_8/Relu*
T0*/
_output_shapes
:€€€€€€€€€``
Н
(SGD/iterations/Initializer/initial_valueConst*
value	B	 R *!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
§
SGD/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *
shared_nameSGD/iterations*!
_class
loc:@SGD/iterations*
	container *
shape: 
m
/SGD/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 
У
SGD/iterations/AssignAssignVariableOpSGD/iterations(SGD/iterations/Initializer/initial_value*!
_class
loc:@SGD/iterations*
dtype0	
М
"SGD/iterations/Read/ReadVariableOpReadVariableOpSGD/iterations*
dtype0	*
_output_shapes
: *!
_class
loc:@SGD/iterations
А
 SGD/lr/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *
„#<*
_class
loc:@SGD/lr
М
SGD/lrVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameSGD/lr*
_class
loc:@SGD/lr
]
'SGD/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/lr*
_output_shapes
: 
s
SGD/lr/AssignAssignVariableOpSGD/lr SGD/lr/Initializer/initial_value*
_class
loc:@SGD/lr*
dtype0
t
SGD/lr/Read/ReadVariableOpReadVariableOpSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 
М
&SGD/momentum/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@SGD/momentum
Ю
SGD/momentumVarHandleOp*
shared_nameSGD/momentum*
_class
loc:@SGD/momentum*
	container *
shape: *
dtype0*
_output_shapes
: 
i
-SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/momentum*
_output_shapes
: 
Л
SGD/momentum/AssignAssignVariableOpSGD/momentum&SGD/momentum/Initializer/initial_value*
dtype0*
_class
loc:@SGD/momentum
Ж
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 
Ж
#SGD/decay/Initializer/initial_valueConst*
valueB
 *љ7Ж5*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
Х
	SGD/decayVarHandleOp*
shared_name	SGD/decay*
_class
loc:@SGD/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
c
*SGD/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp	SGD/decay*
_output_shapes
: 

SGD/decay/AssignAssignVariableOp	SGD/decay#SGD/decay/Initializer/initial_value*
_class
loc:@SGD/decay*
dtype0
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
µ
add_3_targetPlaceholder*
dtype0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*?
shape6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
R
ConstConst*
dtype0*
_output_shapes
:*
valueB*  А?
Б
add_3_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
Й
totalVarHandleOp*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: *
_class

loc:@total
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
Й
countVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
z
total_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@total_1*
dtype0*
_output_shapes
: 
П
total_1VarHandleOp*
shared_name	total_1*
_class
loc:@total_1*
	container *
shape: *
dtype0*
_output_shapes
: 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
z
count_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@count_1
П
count_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	count_1*
_class
loc:@count_1*
	container *
shape: 
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
dtype0*
_output_shapes
: *
_class
loc:@count_1
p
loss/add_3_loss/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Л
loss/add_3_loss/ReshapeReshapeadd_3_targetloss/add_3_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
r
loss/add_3_loss/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
М
loss/add_3_loss/Reshape_1Reshape	add_3/addloss/add_3_loss/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
|
loss/add_3_loss/mulMulloss/add_3_loss/Reshapeloss/add_3_loss/Reshape_1*
T0*#
_output_shapes
:€€€€€€€€€
_
loss/add_3_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Д
loss/add_3_loss/SumSumloss/add_3_loss/mulloss/add_3_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
\
loss/add_3_loss/mul_1/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
k
loss/add_3_loss/mul_1Mulloss/add_3_loss/mul_1/xloss/add_3_loss/Sum*
_output_shapes
: *
T0
Z
loss/add_3_loss/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
i
loss/add_3_loss/addAddloss/add_3_loss/mul_1loss/add_3_loss/add/y*
_output_shapes
: *
T0
|
loss/add_3_loss/mul_2Mulloss/add_3_loss/Reshapeloss/add_3_loss/Reshape*
T0*#
_output_shapes
:€€€€€€€€€
a
loss/add_3_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
К
loss/add_3_loss/Sum_1Sumloss/add_3_loss/mul_2loss/add_3_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
А
loss/add_3_loss/mul_3Mulloss/add_3_loss/Reshape_1loss/add_3_loss/Reshape_1*
T0*#
_output_shapes
:€€€€€€€€€
a
loss/add_3_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
К
loss/add_3_loss/Sum_2Sumloss/add_3_loss/mul_3loss/add_3_loss/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
loss/add_3_loss/add_1Addloss/add_3_loss/Sum_1loss/add_3_loss/Sum_2*
T0*
_output_shapes
: 
\
loss/add_3_loss/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
m
loss/add_3_loss/add_2Addloss/add_3_loss/add_1loss/add_3_loss/add_2/y*
T0*
_output_shapes
: 
o
loss/add_3_loss/truedivRealDivloss/add_3_loss/addloss/add_3_loss/add_2*
_output_shapes
: *
T0
Z
loss/add_3_loss/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
k
loss/add_3_loss/subSubloss/add_3_loss/sub/xloss/add_3_loss/truediv*
_output_shapes
: *
T0
y
loss/add_3_loss/SqueezeSqueezeadd_3_sample_weights*
_output_shapes
: *
squeeze_dims

€€€€€€€€€*
T0
k
loss/add_3_loss/Mul_4Mulloss/add_3_loss/subloss/add_3_loss/Squeeze*
T0*
_output_shapes
: 
Z
loss/add_3_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
К
loss/add_3_loss/Sum_3Sumloss/add_3_loss/Mul_4loss/add_3_loss/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Z
loss/add_3_loss/Const_4Const*
dtype0*
_output_shapes
: *
valueB 
М
loss/add_3_loss/Sum_4Sumloss/add_3_loss/Squeezeloss/add_3_loss/Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
u
loss/add_3_loss/div_no_nanDivNoNanloss/add_3_loss/Sum_3loss/add_3_loss/Sum_4*
T0*
_output_shapes
: 
Z
loss/add_3_loss/Const_5Const*
dtype0*
_output_shapes
: *
valueB 
П
loss/add_3_loss/MeanMeanloss/add_3_loss/div_no_nanloss/add_3_loss/Const_5*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
R
loss/mulMul
loss/mul/xloss/add_3_loss/Mean*
_output_shapes
: *
T0
s
metrics/psnr/subSub	add_3/addadd_3_target*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
r
metrics/psnr/SquareSquaremetrics/psnr/sub*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
k
metrics/psnr/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
А
metrics/psnr/MeanMeanmetrics/psnr/Squaremetrics/psnr/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
K
metrics/psnr/LogLogmetrics/psnr/Mean*
T0*
_output_shapes
: 
Y
metrics/psnr/Const_1Const*
valueB
 *   A*
dtype0*
_output_shapes
: 
P
metrics/psnr/Log_1Logmetrics/psnr/Const_1*
T0*
_output_shapes
: 
f
metrics/psnr/truedivRealDivmetrics/psnr/Logmetrics/psnr/Log_1*
T0*
_output_shapes
: 
W
metrics/psnr/mul/xConst*
valueB
 *   Ѕ*
dtype0*
_output_shapes
: 
b
metrics/psnr/mulMulmetrics/psnr/mul/xmetrics/psnr/truediv*
_output_shapes
: *
T0
S
metrics/psnr/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
l
metrics/psnr/CastCastmetrics/psnr/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
W
metrics/psnr/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
}
metrics/psnr/SumSummetrics/psnr/mulmetrics/psnr/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
]
 metrics/psnr/AssignAddVariableOpAssignAddVariableOptotalmetrics/psnr/Sum*
dtype0
|
metrics/psnr/ReadVariableOpReadVariableOptotal!^metrics/psnr/AssignAddVariableOp*
dtype0*
_output_shapes
: 
~
"metrics/psnr/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/psnr/Cast^metrics/psnr/ReadVariableOp*
dtype0
Ю
metrics/psnr/ReadVariableOp_1ReadVariableOpcount#^metrics/psnr/AssignAddVariableOp_1^metrics/psnr/ReadVariableOp*
dtype0*
_output_shapes
: 
Д
&metrics/psnr/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ж
(metrics/psnr/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ц
metrics/psnr/div_no_nanDivNoNan&metrics/psnr/div_no_nan/ReadVariableOp(metrics/psnr/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
u
metrics/psnr/sub_1Sub	add_3/addadd_3_target*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
v
metrics/psnr/Square_1Squaremetrics/psnr/sub_1*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€*
T0
m
metrics/psnr/Const_3Const*%
valueB"             *
dtype0*
_output_shapes
:
Ж
metrics/psnr/Mean_1Meanmetrics/psnr/Square_1metrics/psnr/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O
metrics/psnr/Log_2Logmetrics/psnr/Mean_1*
T0*
_output_shapes
: 
Y
metrics/psnr/Const_4Const*
valueB
 *   A*
dtype0*
_output_shapes
: 
P
metrics/psnr/Log_3Logmetrics/psnr/Const_4*
T0*
_output_shapes
: 
j
metrics/psnr/truediv_1RealDivmetrics/psnr/Log_2metrics/psnr/Log_3*
T0*
_output_shapes
: 
Y
metrics/psnr/mul_1/xConst*
valueB
 *   Ѕ*
dtype0*
_output_shapes
: 
h
metrics/psnr/mul_1Mulmetrics/psnr/mul_1/xmetrics/psnr/truediv_1*
_output_shapes
: *
T0
W
metrics/psnr/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
Г
metrics/psnr/Mean_2Meanmetrics/psnr/mul_1metrics/psnr/Const_5*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
z
metrics/ssim/ShapeNShapeNadd_3_target	add_3/add*
N* 
_output_shapes
::*
T0*
out_type0
S
metrics/ssim/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
]
metrics/ssim/GreaterEqual/yConst*
value	B :*
dtype0*
_output_shapes
: 
z
metrics/ssim/GreaterEqualGreaterEqualmetrics/ssim/Sizemetrics/ssim/GreaterEqual/y*
T0*
_output_shapes
: 
Й
metrics/ssim/Assert/AssertAssertmetrics/ssim/GreaterEqualmetrics/ssim/ShapeNmetrics/ssim/ShapeN:1*
T
2*
	summarize

s
 metrics/ssim/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
l
"metrics/ssim/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
l
"metrics/ssim/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
њ
metrics/ssim/strided_sliceStridedSlicemetrics/ssim/ShapeN metrics/ssim/strided_slice/stack"metrics/ssim/strided_slice/stack_1"metrics/ssim/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
u
"metrics/ssim/strided_slice_1/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
…
metrics/ssim/strided_slice_1StridedSlicemetrics/ssim/ShapeN:1"metrics/ssim/strided_slice_1/stack$metrics/ssim/strided_slice_1/stack_1$metrics/ssim/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
z
metrics/ssim/EqualEqualmetrics/ssim/strided_slicemetrics/ssim/strided_slice_1*
T0*
_output_shapes
:
\
metrics/ssim/ConstConst*
valueB: *
dtype0*
_output_shapes
:
t
metrics/ssim/AllAllmetrics/ssim/Equalmetrics/ssim/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
В
metrics/ssim/Assert_1/AssertAssertmetrics/ssim/Allmetrics/ssim/ShapeNmetrics/ssim/ShapeN:1*
T
2*
	summarize

ј
metrics/ssim/IdentityIdentityadd_3_target^metrics/ssim/Assert/Assert^metrics/ssim/Assert_1/Assert*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
T0
X
metrics/ssim/Cast/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Y
metrics/ssim/Identity_1Identitymetrics/ssim/Cast/x*
_output_shapes
: *
T0
П
metrics/ssim/Identity_2Identitymetrics/ssim/Identity*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
h
metrics/ssim/Identity_3Identity	add_3/add*/
_output_shapes
:€€€€€€€€€``*
T0
V
metrics/ssim/Const_1Const*
dtype0*
_output_shapes
: *
value	B :
Y
metrics/ssim/Const_2Const*
valueB
 *  ј?*
dtype0*
_output_shapes
: 
Х
metrics/ssim/ShapeN_1ShapeNmetrics/ssim/Identity_2metrics/ssim/Identity_3*
T0*
out_type0*
N* 
_output_shapes
::
u
"metrics/ssim/strided_slice_2/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_2/stack_1Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
…
metrics/ssim/strided_slice_2StridedSlicemetrics/ssim/ShapeN_1"metrics/ssim/strided_slice_2/stack$metrics/ssim/strided_slice_2/stack_1$metrics/ssim/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
Д
metrics/ssim/GreaterEqual_1GreaterEqualmetrics/ssim/strided_slice_2metrics/ssim/Const_1*
_output_shapes
:*
T0
^
metrics/ssim/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
Б
metrics/ssim/All_1Allmetrics/ssim/GreaterEqual_1metrics/ssim/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0
Е
metrics/ssim/Assert_2/AssertAssertmetrics/ssim/All_1metrics/ssim/ShapeN_1metrics/ssim/Const_1*
T
2*
	summarize
u
"metrics/ssim/strided_slice_3/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_3/stack_1Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ћ
metrics/ssim/strided_slice_3StridedSlicemetrics/ssim/ShapeN_1:1"metrics/ssim/strided_slice_3/stack$metrics/ssim/strided_slice_3/stack_1$metrics/ssim/strided_slice_3/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
Д
metrics/ssim/GreaterEqual_2GreaterEqualmetrics/ssim/strided_slice_3metrics/ssim/Const_1*
_output_shapes
:*
T0
^
metrics/ssim/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
Б
metrics/ssim/All_2Allmetrics/ssim/GreaterEqual_2metrics/ssim/Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0
З
metrics/ssim/Assert_3/AssertAssertmetrics/ssim/All_2metrics/ssim/ShapeN_1:1metrics/ssim/Const_1*
T
2*
	summarize
ѕ
metrics/ssim/Identity_4Identitymetrics/ssim/Identity_2^metrics/ssim/Assert_2/Assert^metrics/ssim/Assert_3/Assert*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Z
metrics/ssim/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Z
metrics/ssim/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Н
metrics/ssim/rangeRangemetrics/ssim/range/startmetrics/ssim/Const_1metrics/ssim/range/delta*
_output_shapes
:*

Tidx0
s
metrics/ssim/Cast_1Castmetrics/ssim/range*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0
T
metrics/ssim/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
b
metrics/ssim/subSubmetrics/ssim/Const_1metrics/ssim/sub/y*
T0*
_output_shapes
: 
m
metrics/ssim/Cast_2Castmetrics/ssim/sub*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
[
metrics/ssim/truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
m
metrics/ssim/truedivRealDivmetrics/ssim/Cast_2metrics/ssim/truediv/y*
T0*
_output_shapes
: 
i
metrics/ssim/sub_1Submetrics/ssim/Cast_1metrics/ssim/truediv*
T0*
_output_shapes
:
V
metrics/ssim/SquareSquaremetrics/ssim/sub_1*
T0*
_output_shapes
:
V
metrics/ssim/Square_1Squaremetrics/ssim/Const_2*
_output_shapes
: *
T0
]
metrics/ssim/truediv_1/xConst*
valueB
 *   њ*
dtype0*
_output_shapes
: 
s
metrics/ssim/truediv_1RealDivmetrics/ssim/truediv_1/xmetrics/ssim/Square_1*
T0*
_output_shapes
: 
i
metrics/ssim/mulMulmetrics/ssim/Squaremetrics/ssim/truediv_1*
_output_shapes
:*
T0
k
metrics/ssim/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"   €€€€
Д
metrics/ssim/ReshapeReshapemetrics/ssim/mulmetrics/ssim/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
m
metrics/ssim/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
И
metrics/ssim/Reshape_1Reshapemetrics/ssim/mulmetrics/ssim/Reshape_1/shape*
T0*
Tshape0*
_output_shapes

:
n
metrics/ssim/addAddmetrics/ssim/Reshapemetrics/ssim/Reshape_1*
T0*
_output_shapes

:
m
metrics/ssim/Reshape_2/shapeConst*
valueB"   €€€€*
dtype0*
_output_shapes
:
И
metrics/ssim/Reshape_2Reshapemetrics/ssim/addmetrics/ssim/Reshape_2/shape*
T0*
Tshape0*
_output_shapes

:y
`
metrics/ssim/SoftmaxSoftmaxmetrics/ssim/Reshape_2*
T0*
_output_shapes

:y
`
metrics/ssim/Reshape_3/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
`
metrics/ssim/Reshape_3/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
 
metrics/ssim/Reshape_3/shapePackmetrics/ssim/Const_1metrics/ssim/Const_1metrics/ssim/Reshape_3/shape/2metrics/ssim/Reshape_3/shape/3*
T0*

axis *
N*
_output_shapes
:
Ф
metrics/ssim/Reshape_3Reshapemetrics/ssim/Softmaxmetrics/ssim/Reshape_3/shape*
T0*
Tshape0*&
_output_shapes
:
u
"metrics/ssim/strided_slice_4/stackConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
≈
metrics/ssim/strided_slice_4StridedSlicemetrics/ssim/ShapeN_1"metrics/ssim/strided_slice_4/stack$metrics/ssim/strided_slice_4/stack_1$metrics/ssim/strided_slice_4/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
_
metrics/ssim/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/Tile/multiples/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ў
metrics/ssim/Tile/multiplesPackmetrics/ssim/Tile/multiples/0metrics/ssim/Tile/multiples/1metrics/ssim/strided_slice_4metrics/ssim/Tile/multiples/3*
T0*

axis *
N*
_output_shapes
:
Ъ
metrics/ssim/TileTilemetrics/ssim/Reshape_3metrics/ssim/Tile/multiples*
T0*/
_output_shapes
:€€€€€€€€€*

Tmultiples0
Y
metrics/ssim/mul_1/xConst*
valueB
 *
„#<*
dtype0*
_output_shapes
: 
i
metrics/ssim/mul_1Mulmetrics/ssim/mul_1/xmetrics/ssim/Identity_1*
T0*
_output_shapes
: 
W
metrics/ssim/pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
`
metrics/ssim/powPowmetrics/ssim/mul_1metrics/ssim/pow/y*
T0*
_output_shapes
: 
Y
metrics/ssim/mul_2/xConst*
valueB
 *П¬х<*
dtype0*
_output_shapes
: 
i
metrics/ssim/mul_2Mulmetrics/ssim/mul_2/xmetrics/ssim/Identity_1*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
d
metrics/ssim/pow_1Powmetrics/ssim/mul_2metrics/ssim/pow_1/y*
T0*
_output_shapes
: 
i
metrics/ssim/ShapeShapemetrics/ssim/Identity_4*
T0*
out_type0*
_output_shapes
:
u
"metrics/ssim/strided_slice_5/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_5/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
∆
metrics/ssim/strided_slice_5StridedSlicemetrics/ssim/Shape"metrics/ssim/strided_slice_5/stack$metrics/ssim/strided_slice_5/stack_1$metrics/ssim/strided_slice_5/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 
o
metrics/ssim/concat/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Z
metrics/ssim/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ѓ
metrics/ssim/concatConcatV2metrics/ssim/concat/values_0metrics/ssim/strided_slice_5metrics/ssim/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
≤
metrics/ssim/Reshape_4Reshapemetrics/ssim/Identity_4metrics/ssim/concat*
T0*
Tshape0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
metrics/ssim/depthwise/ShapeShapemetrics/ssim/Tile*
_output_shapes
:*
T0*
out_type0
u
$metrics/ssim/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ж
metrics/ssim/depthwiseDepthwiseConv2dNativemetrics/ssim/Reshape_4metrics/ssim/Tile*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
l
"metrics/ssim/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_6/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
∆
metrics/ssim/strided_slice_6StridedSlicemetrics/ssim/Shape"metrics/ssim/strided_slice_6/stack$metrics/ssim/strided_slice_6/stack_1$metrics/ssim/strided_slice_6/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
j
metrics/ssim/Shape_1Shapemetrics/ssim/depthwise*
T0*
out_type0*
_output_shapes
:
l
"metrics/ssim/strided_slice_7/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_7/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
n
$metrics/ssim/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
»
metrics/ssim/strided_slice_7StridedSlicemetrics/ssim/Shape_1"metrics/ssim/strided_slice_7/stack$metrics/ssim/strided_slice_7/stack_1$metrics/ssim/strided_slice_7/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
\
metrics/ssim/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
≥
metrics/ssim/concat_1ConcatV2metrics/ssim/strided_slice_6metrics/ssim/strided_slice_7metrics/ssim/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
≥
metrics/ssim/Reshape_5Reshapemetrics/ssim/depthwisemetrics/ssim/concat_1*
T0*
Tshape0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
k
metrics/ssim/Shape_2Shapemetrics/ssim/Identity_3*
T0*
out_type0*
_output_shapes
:
u
"metrics/ssim/strided_slice_8/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_8/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
n
$metrics/ssim/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
»
metrics/ssim/strided_slice_8StridedSlicemetrics/ssim/Shape_2"metrics/ssim/strided_slice_8/stack$metrics/ssim/strided_slice_8/stack_1$metrics/ssim/strided_slice_8/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
q
metrics/ssim/concat_2/values_0Const*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
\
metrics/ssim/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
µ
metrics/ssim/concat_2ConcatV2metrics/ssim/concat_2/values_0metrics/ssim/strided_slice_8metrics/ssim/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
Щ
metrics/ssim/Reshape_6Reshapemetrics/ssim/Identity_3metrics/ssim/concat_2*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€``
o
metrics/ssim/depthwise_1/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
н
metrics/ssim/depthwise_1DepthwiseConv2dNativemetrics/ssim/Reshape_6metrics/ssim/Tile*/
_output_shapes
:€€€€€€€€€VV*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
l
"metrics/ssim/strided_slice_9/stackConst*
dtype0*
_output_shapes
:*
valueB: 
w
$metrics/ssim/strided_slice_9/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_9/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
»
metrics/ssim/strided_slice_9StridedSlicemetrics/ssim/Shape_2"metrics/ssim/strided_slice_9/stack$metrics/ssim/strided_slice_9/stack_1$metrics/ssim/strided_slice_9/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
l
metrics/ssim/Shape_3Shapemetrics/ssim/depthwise_1*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_10/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_10/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_10StridedSlicemetrics/ssim/Shape_3#metrics/ssim/strided_slice_10/stack%metrics/ssim/strided_slice_10/stack_1%metrics/ssim/strided_slice_10/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
\
metrics/ssim/concat_3/axisConst*
dtype0*
_output_shapes
: *
value	B : 
і
metrics/ssim/concat_3ConcatV2metrics/ssim/strided_slice_9metrics/ssim/strided_slice_10metrics/ssim/concat_3/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ъ
metrics/ssim/Reshape_7Reshapemetrics/ssim/depthwise_1metrics/ssim/concat_3*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€VV
М
metrics/ssim/mul_3Mulmetrics/ssim/Reshape_5metrics/ssim/Reshape_7*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Y
metrics/ssim/mul_4/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
Ж
metrics/ssim/mul_4Mulmetrics/ssim/mul_3metrics/ssim/mul_4/y*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
М
metrics/ssim/Square_2Squaremetrics/ssim/Reshape_5*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
T0
q
metrics/ssim/Square_3Squaremetrics/ssim/Reshape_7*/
_output_shapes
:€€€€€€€€€VV*
T0
К
metrics/ssim/add_1Addmetrics/ssim/Square_2metrics/ssim/Square_3*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
В
metrics/ssim/add_2Addmetrics/ssim/mul_4metrics/ssim/pow*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
В
metrics/ssim/add_3Addmetrics/ssim/add_1metrics/ssim/pow*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
М
metrics/ssim/truediv_2RealDivmetrics/ssim/add_2metrics/ssim/add_3*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
О
metrics/ssim/mul_5Mulmetrics/ssim/Identity_4metrics/ssim/Identity_3*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
f
metrics/ssim/Shape_4Shapemetrics/ssim/mul_5*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_11/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_11/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_11StridedSlicemetrics/ssim/Shape_4#metrics/ssim/strided_slice_11/stack%metrics/ssim/strided_slice_11/stack_1%metrics/ssim/strided_slice_11/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
q
metrics/ssim/concat_4/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ґ
metrics/ssim/concat_4ConcatV2metrics/ssim/concat_4/values_0metrics/ssim/strided_slice_11metrics/ssim/concat_4/axis*
T0*
N*
_output_shapes
:*

Tidx0
Э
metrics/ssim/Reshape_8Reshapemetrics/ssim/mul_5metrics/ssim/concat_4*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
o
metrics/ssim/depthwise_2/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ц
metrics/ssim/depthwise_2DepthwiseConv2dNativemetrics/ssim/Reshape_8metrics/ssim/Tile*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
	dilations
*
T0
m
#metrics/ssim/strided_slice_12/stackConst*
dtype0*
_output_shapes
:*
valueB: 
x
%metrics/ssim/strided_slice_12/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_12StridedSlicemetrics/ssim/Shape_4#metrics/ssim/strided_slice_12/stack%metrics/ssim/strided_slice_12/stack_1%metrics/ssim/strided_slice_12/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
l
metrics/ssim/Shape_5Shapemetrics/ssim/depthwise_2*
_output_shapes
:*
T0*
out_type0
m
#metrics/ssim/strided_slice_13/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_13/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_13/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ћ
metrics/ssim/strided_slice_13StridedSlicemetrics/ssim/Shape_5#metrics/ssim/strided_slice_13/stack%metrics/ssim/strided_slice_13/stack_1%metrics/ssim/strided_slice_13/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
\
metrics/ssim/concat_5/axisConst*
value	B : *
dtype0*
_output_shapes
: 
µ
metrics/ssim/concat_5ConcatV2metrics/ssim/strided_slice_12metrics/ssim/strided_slice_13metrics/ssim/concat_5/axis*
T0*
N*
_output_shapes
:*

Tidx0
£
metrics/ssim/Reshape_9Reshapemetrics/ssim/depthwise_2metrics/ssim/concat_5*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Y
metrics/ssim/mul_6/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
К
metrics/ssim/mul_6Mulmetrics/ssim/Reshape_9metrics/ssim/mul_6/y*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Н
metrics/ssim/Square_4Squaremetrics/ssim/Identity_4*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
r
metrics/ssim/Square_5Squaremetrics/ssim/Identity_3*
T0*/
_output_shapes
:€€€€€€€€€``
К
metrics/ssim/add_4Addmetrics/ssim/Square_4metrics/ssim/Square_5*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
f
metrics/ssim/Shape_6Shapemetrics/ssim/add_4*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_14/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_14/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_14StridedSlicemetrics/ssim/Shape_6#metrics/ssim/strided_slice_14/stack%metrics/ssim/strided_slice_14/stack_1%metrics/ssim/strided_slice_14/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
q
metrics/ssim/concat_6/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_6/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ґ
metrics/ssim/concat_6ConcatV2metrics/ssim/concat_6/values_0metrics/ssim/strided_slice_14metrics/ssim/concat_6/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ю
metrics/ssim/Reshape_10Reshapemetrics/ssim/add_4metrics/ssim/concat_6*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€*
T0*
Tshape0
o
metrics/ssim/depthwise_3/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ч
metrics/ssim/depthwise_3DepthwiseConv2dNativemetrics/ssim/Reshape_10metrics/ssim/Tile*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
m
#metrics/ssim/strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_15/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_15StridedSlicemetrics/ssim/Shape_6#metrics/ssim/strided_slice_15/stack%metrics/ssim/strided_slice_15/stack_1%metrics/ssim/strided_slice_15/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
l
metrics/ssim/Shape_7Shapemetrics/ssim/depthwise_3*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_16/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_16/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_16StridedSlicemetrics/ssim/Shape_7#metrics/ssim/strided_slice_16/stack%metrics/ssim/strided_slice_16/stack_1%metrics/ssim/strided_slice_16/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
\
metrics/ssim/concat_7/axisConst*
dtype0*
_output_shapes
: *
value	B : 
µ
metrics/ssim/concat_7ConcatV2metrics/ssim/strided_slice_15metrics/ssim/strided_slice_16metrics/ssim/concat_7/axis*

Tidx0*
T0*
N*
_output_shapes
:
§
metrics/ssim/Reshape_11Reshapemetrics/ssim/depthwise_3metrics/ssim/concat_7*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Y
metrics/ssim/mul_7/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
d
metrics/ssim/mul_7Mulmetrics/ssim/pow_1metrics/ssim/mul_7/y*
T0*
_output_shapes
: 
Д
metrics/ssim/sub_2Submetrics/ssim/mul_6metrics/ssim/mul_4*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Д
metrics/ssim/add_5Addmetrics/ssim/sub_2metrics/ssim/mul_7*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
Й
metrics/ssim/sub_3Submetrics/ssim/Reshape_11metrics/ssim/add_1*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Д
metrics/ssim/add_6Addmetrics/ssim/sub_3metrics/ssim/mul_7*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
М
metrics/ssim/truediv_3RealDivmetrics/ssim/add_5metrics/ssim/add_6*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
e
metrics/ssim/Const_5Const*
valueB"э€€€ю€€€*
dtype0*
_output_shapes
:
М
metrics/ssim/mul_8Mulmetrics/ssim/truediv_2metrics/ssim/truediv_3*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Ы
metrics/ssim/MeanMeanmetrics/ssim/mul_8metrics/ssim/Const_5*
	keep_dims( *

Tidx0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
°
metrics/ssim/Mean_1Meanmetrics/ssim/truediv_3metrics/ssim/Const_5*
	keep_dims( *

Tidx0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
x
%metrics/ssim/Mean_2/reduction_indicesConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
†
metrics/ssim/Mean_2Meanmetrics/ssim/Mean%metrics/ssim/Mean_2/reduction_indices*#
_output_shapes
:€€€€€€€€€*
	keep_dims( *

Tidx0*
T0
^
metrics/ssim/Const_6Const*
valueB: *
dtype0*
_output_shapes
:
Д
metrics/ssim/Mean_3Meanmetrics/ssim/Mean_2metrics/ssim/Const_6*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
U
metrics/ssim/Size_1Const*
value	B :*
dtype0*
_output_shapes
: 
p
metrics/ssim/Cast_3Castmetrics/ssim/Size_1*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
W
metrics/ssim/Const_7Const*
valueB *
dtype0*
_output_shapes
: 
А
metrics/ssim/SumSummetrics/ssim/Mean_3metrics/ssim/Const_7*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
 metrics/ssim/AssignAddVariableOpAssignAddVariableOptotal_1metrics/ssim/Sum*
dtype0
~
metrics/ssim/ReadVariableOpReadVariableOptotal_1!^metrics/ssim/AssignAddVariableOp*
dtype0*
_output_shapes
: 
В
"metrics/ssim/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics/ssim/Cast_3^metrics/ssim/ReadVariableOp*
dtype0
†
metrics/ssim/ReadVariableOp_1ReadVariableOpcount_1#^metrics/ssim/AssignAddVariableOp_1^metrics/ssim/ReadVariableOp*
dtype0*
_output_shapes
: 
Ж
&metrics/ssim/div_no_nan/ReadVariableOpReadVariableOptotal_1^metrics/ssim/ReadVariableOp_1*
dtype0*
_output_shapes
: 
И
(metrics/ssim/div_no_nan/ReadVariableOp_1ReadVariableOpcount_1^metrics/ssim/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ц
metrics/ssim/div_no_nanDivNoNan&metrics/ssim/div_no_nan/ReadVariableOp(metrics/ssim/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
|
metrics/ssim/ShapeN_2ShapeNadd_3_target	add_3/add*
T0*
out_type0*
N* 
_output_shapes
::
U
metrics/ssim/Size_2Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/GreaterEqual_3/yConst*
value	B :*
dtype0*
_output_shapes
: 
А
metrics/ssim/GreaterEqual_3GreaterEqualmetrics/ssim/Size_2metrics/ssim/GreaterEqual_3/y*
T0*
_output_shapes
: 
С
metrics/ssim/Assert_4/AssertAssertmetrics/ssim/GreaterEqual_3metrics/ssim/ShapeN_2metrics/ssim/ShapeN_2:1*
T
2*
	summarize

v
#metrics/ssim/strided_slice_17/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_17/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_17StridedSlicemetrics/ssim/ShapeN_2#metrics/ssim/strided_slice_17/stack%metrics/ssim/strided_slice_17/stack_1%metrics/ssim/strided_slice_17/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
v
#metrics/ssim/strided_slice_18/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_18/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_18/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ѕ
metrics/ssim/strided_slice_18StridedSlicemetrics/ssim/ShapeN_2:1#metrics/ssim/strided_slice_18/stack%metrics/ssim/strided_slice_18/stack_1%metrics/ssim/strided_slice_18/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
А
metrics/ssim/Equal_1Equalmetrics/ssim/strided_slice_17metrics/ssim/strided_slice_18*
T0*
_output_shapes
:
^
metrics/ssim/Const_8Const*
valueB: *
dtype0*
_output_shapes
:
z
metrics/ssim/All_3Allmetrics/ssim/Equal_1metrics/ssim/Const_8*
_output_shapes
: *
	keep_dims( *

Tidx0
И
metrics/ssim/Assert_5/AssertAssertmetrics/ssim/All_3metrics/ssim/ShapeN_2metrics/ssim/ShapeN_2:1*
T
2*
	summarize

ƒ
metrics/ssim/Identity_5Identityadd_3_target^metrics/ssim/Assert_4/Assert^metrics/ssim/Assert_5/Assert*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Z
metrics/ssim/Cast_4/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
[
metrics/ssim/Identity_6Identitymetrics/ssim/Cast_4/x*
_output_shapes
: *
T0
С
metrics/ssim/Identity_7Identitymetrics/ssim/Identity_5*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
h
metrics/ssim/Identity_8Identity	add_3/add*
T0*/
_output_shapes
:€€€€€€€€€``
V
metrics/ssim/Const_9Const*
dtype0*
_output_shapes
: *
value	B :
Z
metrics/ssim/Const_10Const*
valueB
 *  ј?*
dtype0*
_output_shapes
: 
Х
metrics/ssim/ShapeN_3ShapeNmetrics/ssim/Identity_7metrics/ssim/Identity_8*
T0*
out_type0*
N* 
_output_shapes
::
v
#metrics/ssim/strided_slice_19/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
x
%metrics/ssim/strided_slice_19/stack_1Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_19/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_19StridedSlicemetrics/ssim/ShapeN_3#metrics/ssim/strided_slice_19/stack%metrics/ssim/strided_slice_19/stack_1%metrics/ssim/strided_slice_19/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
Е
metrics/ssim/GreaterEqual_4GreaterEqualmetrics/ssim/strided_slice_19metrics/ssim/Const_9*
T0*
_output_shapes
:
_
metrics/ssim/Const_11Const*
valueB: *
dtype0*
_output_shapes
:
В
metrics/ssim/All_4Allmetrics/ssim/GreaterEqual_4metrics/ssim/Const_11*
_output_shapes
: *
	keep_dims( *

Tidx0
Е
metrics/ssim/Assert_6/AssertAssertmetrics/ssim/All_4metrics/ssim/ShapeN_3metrics/ssim/Const_9*
T
2*
	summarize
v
#metrics/ssim/strided_slice_20/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_20/stack_1Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_20/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѕ
metrics/ssim/strided_slice_20StridedSlicemetrics/ssim/ShapeN_3:1#metrics/ssim/strided_slice_20/stack%metrics/ssim/strided_slice_20/stack_1%metrics/ssim/strided_slice_20/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
Е
metrics/ssim/GreaterEqual_5GreaterEqualmetrics/ssim/strided_slice_20metrics/ssim/Const_9*
T0*
_output_shapes
:
_
metrics/ssim/Const_12Const*
valueB: *
dtype0*
_output_shapes
:
В
metrics/ssim/All_5Allmetrics/ssim/GreaterEqual_5metrics/ssim/Const_12*
_output_shapes
: *
	keep_dims( *

Tidx0
З
metrics/ssim/Assert_7/AssertAssertmetrics/ssim/All_5metrics/ssim/ShapeN_3:1metrics/ssim/Const_9*
T
2*
	summarize
ѕ
metrics/ssim/Identity_9Identitymetrics/ssim/Identity_7^metrics/ssim/Assert_6/Assert^metrics/ssim/Assert_7/Assert*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
\
metrics/ssim/range_1/startConst*
dtype0*
_output_shapes
: *
value	B : 
\
metrics/ssim/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
У
metrics/ssim/range_1Rangemetrics/ssim/range_1/startmetrics/ssim/Const_9metrics/ssim/range_1/delta*
_output_shapes
:*

Tidx0
u
metrics/ssim/Cast_5Castmetrics/ssim/range_1*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0
V
metrics/ssim/sub_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
f
metrics/ssim/sub_4Submetrics/ssim/Const_9metrics/ssim/sub_4/y*
T0*
_output_shapes
: 
o
metrics/ssim/Cast_6Castmetrics/ssim/sub_4*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
]
metrics/ssim/truediv_4/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
q
metrics/ssim/truediv_4RealDivmetrics/ssim/Cast_6metrics/ssim/truediv_4/y*
T0*
_output_shapes
: 
k
metrics/ssim/sub_5Submetrics/ssim/Cast_5metrics/ssim/truediv_4*
T0*
_output_shapes
:
X
metrics/ssim/Square_6Squaremetrics/ssim/sub_5*
T0*
_output_shapes
:
W
metrics/ssim/Square_7Squaremetrics/ssim/Const_10*
_output_shapes
: *
T0
]
metrics/ssim/truediv_5/xConst*
valueB
 *   њ*
dtype0*
_output_shapes
: 
s
metrics/ssim/truediv_5RealDivmetrics/ssim/truediv_5/xmetrics/ssim/Square_7*
T0*
_output_shapes
: 
m
metrics/ssim/mul_9Mulmetrics/ssim/Square_6metrics/ssim/truediv_5*
_output_shapes
:*
T0
n
metrics/ssim/Reshape_12/shapeConst*
dtype0*
_output_shapes
:*
valueB"   €€€€
М
metrics/ssim/Reshape_12Reshapemetrics/ssim/mul_9metrics/ssim/Reshape_12/shape*
T0*
Tshape0*
_output_shapes

:
n
metrics/ssim/Reshape_13/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
М
metrics/ssim/Reshape_13Reshapemetrics/ssim/mul_9metrics/ssim/Reshape_13/shape*
T0*
Tshape0*
_output_shapes

:
t
metrics/ssim/add_7Addmetrics/ssim/Reshape_12metrics/ssim/Reshape_13*
T0*
_output_shapes

:
n
metrics/ssim/Reshape_14/shapeConst*
valueB"   €€€€*
dtype0*
_output_shapes
:
М
metrics/ssim/Reshape_14Reshapemetrics/ssim/add_7metrics/ssim/Reshape_14/shape*
T0*
Tshape0*
_output_shapes

:y
c
metrics/ssim/Softmax_1Softmaxmetrics/ssim/Reshape_14*
T0*
_output_shapes

:y
a
metrics/ssim/Reshape_15/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
a
metrics/ssim/Reshape_15/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ќ
metrics/ssim/Reshape_15/shapePackmetrics/ssim/Const_9metrics/ssim/Const_9metrics/ssim/Reshape_15/shape/2metrics/ssim/Reshape_15/shape/3*
T0*

axis *
N*
_output_shapes
:
Ш
metrics/ssim/Reshape_15Reshapemetrics/ssim/Softmax_1metrics/ssim/Reshape_15/shape*&
_output_shapes
:*
T0*
Tshape0
v
#metrics/ssim/strided_slice_21/stackConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_21/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_21/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
…
metrics/ssim/strided_slice_21StridedSlicemetrics/ssim/ShapeN_3#metrics/ssim/strided_slice_21/stack%metrics/ssim/strided_slice_21/stack_1%metrics/ssim/strided_slice_21/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
a
metrics/ssim/Tile_1/multiples/0Const*
dtype0*
_output_shapes
: *
value	B :
a
metrics/ssim/Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
a
metrics/ssim/Tile_1/multiples/3Const*
value	B :*
dtype0*
_output_shapes
: 
б
metrics/ssim/Tile_1/multiplesPackmetrics/ssim/Tile_1/multiples/0metrics/ssim/Tile_1/multiples/1metrics/ssim/strided_slice_21metrics/ssim/Tile_1/multiples/3*
N*
_output_shapes
:*
T0*

axis 
Я
metrics/ssim/Tile_1Tilemetrics/ssim/Reshape_15metrics/ssim/Tile_1/multiples*

Tmultiples0*
T0*/
_output_shapes
:€€€€€€€€€
Z
metrics/ssim/mul_10/xConst*
valueB
 *
„#<*
dtype0*
_output_shapes
: 
k
metrics/ssim/mul_10Mulmetrics/ssim/mul_10/xmetrics/ssim/Identity_6*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_2/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
e
metrics/ssim/pow_2Powmetrics/ssim/mul_10metrics/ssim/pow_2/y*
T0*
_output_shapes
: 
Z
metrics/ssim/mul_11/xConst*
valueB
 *П¬х<*
dtype0*
_output_shapes
: 
k
metrics/ssim/mul_11Mulmetrics/ssim/mul_11/xmetrics/ssim/Identity_6*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
e
metrics/ssim/pow_3Powmetrics/ssim/mul_11metrics/ssim/pow_3/y*
T0*
_output_shapes
: 
k
metrics/ssim/Shape_8Shapemetrics/ssim/Identity_9*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_22/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_22/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_22/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ћ
metrics/ssim/strided_slice_22StridedSlicemetrics/ssim/Shape_8#metrics/ssim/strided_slice_22/stack%metrics/ssim/strided_slice_22/stack_1%metrics/ssim/strided_slice_22/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
q
metrics/ssim/concat_8/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_8/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ґ
metrics/ssim/concat_8ConcatV2metrics/ssim/concat_8/values_0metrics/ssim/strided_slice_22metrics/ssim/concat_8/axis*
T0*
N*
_output_shapes
:*

Tidx0
µ
metrics/ssim/Reshape_16Reshapemetrics/ssim/Identity_9metrics/ssim/concat_8*
T0*
Tshape0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
q
metrics/ssim/depthwise_4/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Л
metrics/ssim/depthwise_4DepthwiseConv2dNativemetrics/ssim/Reshape_16metrics/ssim/Tile_1*
paddingVALID*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
data_formatNHWC*
strides

m
#metrics/ssim/strided_slice_23/stackConst*
dtype0*
_output_shapes
:*
valueB: 
x
%metrics/ssim/strided_slice_23/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_23/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_23StridedSlicemetrics/ssim/Shape_8#metrics/ssim/strided_slice_23/stack%metrics/ssim/strided_slice_23/stack_1%metrics/ssim/strided_slice_23/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
l
metrics/ssim/Shape_9Shapemetrics/ssim/depthwise_4*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_24/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_24/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_24/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ћ
metrics/ssim/strided_slice_24StridedSlicemetrics/ssim/Shape_9#metrics/ssim/strided_slice_24/stack%metrics/ssim/strided_slice_24/stack_1%metrics/ssim/strided_slice_24/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_9/axisConst*
dtype0*
_output_shapes
: *
value	B : 
µ
metrics/ssim/concat_9ConcatV2metrics/ssim/strided_slice_23metrics/ssim/strided_slice_24metrics/ssim/concat_9/axis*
N*
_output_shapes
:*

Tidx0*
T0
ґ
metrics/ssim/Reshape_17Reshapemetrics/ssim/depthwise_4metrics/ssim/concat_9*
T0*
Tshape0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
l
metrics/ssim/Shape_10Shapemetrics/ssim/Identity_8*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_25/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_25/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_25/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ќ
metrics/ssim/strided_slice_25StridedSlicemetrics/ssim/Shape_10#metrics/ssim/strided_slice_25/stack%metrics/ssim/strided_slice_25/stack_1%metrics/ssim/strided_slice_25/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
r
metrics/ssim/concat_10/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
]
metrics/ssim/concat_10/axisConst*
value	B : *
dtype0*
_output_shapes
: 
є
metrics/ssim/concat_10ConcatV2metrics/ssim/concat_10/values_0metrics/ssim/strided_slice_25metrics/ssim/concat_10/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ы
metrics/ssim/Reshape_18Reshapemetrics/ssim/Identity_8metrics/ssim/concat_10*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€``
q
metrics/ssim/depthwise_5/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
р
metrics/ssim/depthwise_5DepthwiseConv2dNativemetrics/ssim/Reshape_18metrics/ssim/Tile_1*
T0*
data_formatNHWC*
strides
*
paddingVALID*/
_output_shapes
:€€€€€€€€€VV*
	dilations

m
#metrics/ssim/strided_slice_26/stackConst*
dtype0*
_output_shapes
:*
valueB: 
x
%metrics/ssim/strided_slice_26/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_26/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_26StridedSlicemetrics/ssim/Shape_10#metrics/ssim/strided_slice_26/stack%metrics/ssim/strided_slice_26/stack_1%metrics/ssim/strided_slice_26/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
m
metrics/ssim/Shape_11Shapemetrics/ssim/depthwise_5*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_27/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_27/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_27/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ќ
metrics/ssim/strided_slice_27StridedSlicemetrics/ssim/Shape_11#metrics/ssim/strided_slice_27/stack%metrics/ssim/strided_slice_27/stack_1%metrics/ssim/strided_slice_27/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
]
metrics/ssim/concat_11/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ј
metrics/ssim/concat_11ConcatV2metrics/ssim/strided_slice_26metrics/ssim/strided_slice_27metrics/ssim/concat_11/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ь
metrics/ssim/Reshape_19Reshapemetrics/ssim/depthwise_5metrics/ssim/concat_11*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€VV
П
metrics/ssim/mul_12Mulmetrics/ssim/Reshape_17metrics/ssim/Reshape_19*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Z
metrics/ssim/mul_13/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Й
metrics/ssim/mul_13Mulmetrics/ssim/mul_12metrics/ssim/mul_13/y*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Н
metrics/ssim/Square_8Squaremetrics/ssim/Reshape_17*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
T0
r
metrics/ssim/Square_9Squaremetrics/ssim/Reshape_19*
T0*/
_output_shapes
:€€€€€€€€€VV
К
metrics/ssim/add_8Addmetrics/ssim/Square_8metrics/ssim/Square_9*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
Е
metrics/ssim/add_9Addmetrics/ssim/mul_13metrics/ssim/pow_2*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Е
metrics/ssim/add_10Addmetrics/ssim/add_8metrics/ssim/pow_2*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Н
metrics/ssim/truediv_6RealDivmetrics/ssim/add_9metrics/ssim/add_10*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
П
metrics/ssim/mul_14Mulmetrics/ssim/Identity_9metrics/ssim/Identity_8*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
h
metrics/ssim/Shape_12Shapemetrics/ssim/mul_14*
_output_shapes
:*
T0*
out_type0
v
#metrics/ssim/strided_slice_28/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_28/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_28/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ќ
metrics/ssim/strided_slice_28StridedSlicemetrics/ssim/Shape_12#metrics/ssim/strided_slice_28/stack%metrics/ssim/strided_slice_28/stack_1%metrics/ssim/strided_slice_28/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
r
metrics/ssim/concat_12/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
]
metrics/ssim/concat_12/axisConst*
value	B : *
dtype0*
_output_shapes
: 
є
metrics/ssim/concat_12ConcatV2metrics/ssim/concat_12/values_0metrics/ssim/strided_slice_28metrics/ssim/concat_12/axis*
T0*
N*
_output_shapes
:*

Tidx0
†
metrics/ssim/Reshape_20Reshapemetrics/ssim/mul_14metrics/ssim/concat_12*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
q
metrics/ssim/depthwise_6/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
щ
metrics/ssim/depthwise_6DepthwiseConv2dNativemetrics/ssim/Reshape_20metrics/ssim/Tile_1*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
m
#metrics/ssim/strided_slice_29/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_29/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_29/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_29StridedSlicemetrics/ssim/Shape_12#metrics/ssim/strided_slice_29/stack%metrics/ssim/strided_slice_29/stack_1%metrics/ssim/strided_slice_29/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
m
metrics/ssim/Shape_13Shapemetrics/ssim/depthwise_6*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_30/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_30/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_30/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_30StridedSlicemetrics/ssim/Shape_13#metrics/ssim/strided_slice_30/stack%metrics/ssim/strided_slice_30/stack_1%metrics/ssim/strided_slice_30/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
]
metrics/ssim/concat_13/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ј
metrics/ssim/concat_13ConcatV2metrics/ssim/strided_slice_29metrics/ssim/strided_slice_30metrics/ssim/concat_13/axis*

Tidx0*
T0*
N*
_output_shapes
:
•
metrics/ssim/Reshape_21Reshapemetrics/ssim/depthwise_6metrics/ssim/concat_13*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0*
Tshape0
Z
metrics/ssim/mul_15/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Н
metrics/ssim/mul_15Mulmetrics/ssim/Reshape_21metrics/ssim/mul_15/y*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
О
metrics/ssim/Square_10Squaremetrics/ssim/Identity_9*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
s
metrics/ssim/Square_11Squaremetrics/ssim/Identity_8*
T0*/
_output_shapes
:€€€€€€€€€``
Н
metrics/ssim/add_11Addmetrics/ssim/Square_10metrics/ssim/Square_11*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
h
metrics/ssim/Shape_14Shapemetrics/ssim/add_11*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_31/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_31/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_31/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_31StridedSlicemetrics/ssim/Shape_14#metrics/ssim/strided_slice_31/stack%metrics/ssim/strided_slice_31/stack_1%metrics/ssim/strided_slice_31/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
r
metrics/ssim/concat_14/values_0Const*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
]
metrics/ssim/concat_14/axisConst*
value	B : *
dtype0*
_output_shapes
: 
є
metrics/ssim/concat_14ConcatV2metrics/ssim/concat_14/values_0metrics/ssim/strided_slice_31metrics/ssim/concat_14/axis*

Tidx0*
T0*
N*
_output_shapes
:
†
metrics/ssim/Reshape_22Reshapemetrics/ssim/add_11metrics/ssim/concat_14*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
q
metrics/ssim/depthwise_7/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
щ
metrics/ssim/depthwise_7DepthwiseConv2dNativemetrics/ssim/Reshape_22metrics/ssim/Tile_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
m
#metrics/ssim/strided_slice_32/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_32/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_32/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_32StridedSlicemetrics/ssim/Shape_14#metrics/ssim/strided_slice_32/stack%metrics/ssim/strided_slice_32/stack_1%metrics/ssim/strided_slice_32/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
m
metrics/ssim/Shape_15Shapemetrics/ssim/depthwise_7*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_33/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_33/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_33/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_33StridedSlicemetrics/ssim/Shape_15#metrics/ssim/strided_slice_33/stack%metrics/ssim/strided_slice_33/stack_1%metrics/ssim/strided_slice_33/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
]
metrics/ssim/concat_15/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ј
metrics/ssim/concat_15ConcatV2metrics/ssim/strided_slice_32metrics/ssim/strided_slice_33metrics/ssim/concat_15/axis*
T0*
N*
_output_shapes
:*

Tidx0
•
metrics/ssim/Reshape_23Reshapemetrics/ssim/depthwise_7metrics/ssim/concat_15*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0*
Tshape0
Z
metrics/ssim/mul_16/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
metrics/ssim/mul_16Mulmetrics/ssim/pow_3metrics/ssim/mul_16/y*
T0*
_output_shapes
: 
Ж
metrics/ssim/sub_6Submetrics/ssim/mul_15metrics/ssim/mul_13*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Ж
metrics/ssim/add_12Addmetrics/ssim/sub_6metrics/ssim/mul_16*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Й
metrics/ssim/sub_7Submetrics/ssim/Reshape_23metrics/ssim/add_8*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
Ж
metrics/ssim/add_13Addmetrics/ssim/sub_7metrics/ssim/mul_16*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
О
metrics/ssim/truediv_7RealDivmetrics/ssim/add_12metrics/ssim/add_13*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
f
metrics/ssim/Const_13Const*
valueB"э€€€ю€€€*
dtype0*
_output_shapes
:
Н
metrics/ssim/mul_17Mulmetrics/ssim/truediv_6metrics/ssim/truediv_7*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
Я
metrics/ssim/Mean_4Meanmetrics/ssim/mul_17metrics/ssim/Const_13*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
	keep_dims( *

Tidx0
Ґ
metrics/ssim/Mean_5Meanmetrics/ssim/truediv_7metrics/ssim/Const_13*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
	keep_dims( *

Tidx0
x
%metrics/ssim/Mean_6/reduction_indicesConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ґ
metrics/ssim/Mean_6Meanmetrics/ssim/Mean_4%metrics/ssim/Mean_6/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:€€€€€€€€€
_
metrics/ssim/Const_14Const*
valueB: *
dtype0*
_output_shapes
:
Е
metrics/ssim/Mean_7Meanmetrics/ssim/Mean_6metrics/ssim/Const_14*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
metrics/ssim/Const_15Const*
valueB *
dtype0*
_output_shapes
: 
Е
metrics/ssim/Mean_8Meanmetrics/ssim/Mean_7metrics/ssim/Const_15*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
|
training/SGD/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
В
 training/SGD/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  А?*
_class
loc:@loss/mul
≥
training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
†
(training/SGD/gradients/loss/mul_grad/MulMultraining/SGD/gradients/Fillloss/add_3_loss/Mean*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ш
*training/SGD/gradients/loss/mul_grad/Mul_1Multraining/SGD/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
™
>training/SGD/gradients/loss/add_3_loss/Mean_grad/Reshape/shapeConst*
valueB *'
_class
loc:@loss/add_3_loss/Mean*
dtype0*
_output_shapes
: 
З
8training/SGD/gradients/loss/add_3_loss/Mean_grad/ReshapeReshape*training/SGD/gradients/loss/mul_grad/Mul_1>training/SGD/gradients/loss/add_3_loss/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0*'
_class
loc:@loss/add_3_loss/Mean
Ґ
6training/SGD/gradients/loss/add_3_loss/Mean_grad/ConstConst*
valueB *'
_class
loc:@loss/add_3_loss/Mean*
dtype0*
_output_shapes
: 
Л
5training/SGD/gradients/loss/add_3_loss/Mean_grad/TileTile8training/SGD/gradients/loss/add_3_loss/Mean_grad/Reshape6training/SGD/gradients/loss/add_3_loss/Mean_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*'
_class
loc:@loss/add_3_loss/Mean
¶
8training/SGD/gradients/loss/add_3_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  А?*'
_class
loc:@loss/add_3_loss/Mean
ю
8training/SGD/gradients/loss/add_3_loss/Mean_grad/truedivRealDiv5training/SGD/gradients/loss/add_3_loss/Mean_grad/Tile8training/SGD/gradients/loss/add_3_loss/Mean_grad/Const_1*
_output_shapes
: *
T0*'
_class
loc:@loss/add_3_loss/Mean
Ѓ
<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB *-
_class#
!loc:@loss/add_3_loss/div_no_nan
∞
>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1Const*
valueB *-
_class#
!loc:@loss/add_3_loss/div_no_nan*
dtype0*
_output_shapes
: 
ѕ
Ltraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgs<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
о
Atraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nanDivNoNan8training/SGD/gradients/loss/add_3_loss/Mean_grad/truedivloss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
њ
:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/SumSumAtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nanLtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
°
>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/ReshapeReshape:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Sum<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
®
:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/NegNegloss/add_3_loss/Sum_3*
_output_shapes
: *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
т
Ctraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_1DivNoNan:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Negloss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
ы
Ctraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_2DivNoNanCtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_1loss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
Р
:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/mulMul8training/SGD/gradients/loss/add_3_loss/Mean_grad/truedivCtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_2*
_output_shapes
: *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
Љ
<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Sum_1Sum:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/mulNtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( 
І
@training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Reshape_1Reshape<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Sum_1>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
ђ
?training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Reshape/shapeConst*
valueB *(
_class
loc:@loss/add_3_loss/Sum_3*
dtype0*
_output_shapes
: 
Ю
9training/SGD/gradients/loss/add_3_loss/Sum_3_grad/ReshapeReshape>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Reshape?training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Reshape/shape*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/Sum_3*
_output_shapes
: 
§
7training/SGD/gradients/loss/add_3_loss/Sum_3_grad/ConstConst*
valueB *(
_class
loc:@loss/add_3_loss/Sum_3*
dtype0*
_output_shapes
: 
П
6training/SGD/gradients/loss/add_3_loss/Sum_3_grad/TileTile9training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Reshape7training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*(
_class
loc:@loss/add_3_loss/Sum_3
Ў
5training/SGD/gradients/loss/add_3_loss/Mul_4_grad/MulMul6training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Tileloss/add_3_loss/Squeeze*
T0*(
_class
loc:@loss/add_3_loss/Mul_4*
_output_shapes
: 
÷
7training/SGD/gradients/loss/add_3_loss/Mul_4_grad/Mul_1Mul6training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Tileloss/add_3_loss/sub*
_output_shapes
: *
T0*(
_class
loc:@loss/add_3_loss/Mul_4
Ї
3training/SGD/gradients/loss/add_3_loss/sub_grad/NegNeg5training/SGD/gradients/loss/add_3_loss/Mul_4_grad/Mul*
T0*&
_class
loc:@loss/add_3_loss/sub*
_output_shapes
: 
®
9training/SGD/gradients/loss/add_3_loss/truediv_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB **
_class 
loc:@loss/add_3_loss/truediv
™
;training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB **
_class 
loc:@loss/add_3_loss/truediv
√
Itraining/SGD/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs9training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape;training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape_1*
T0**
_class 
loc:@loss/add_3_loss/truediv*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
я
;training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDivRealDiv3training/SGD/gradients/loss/add_3_loss/sub_grad/Negloss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
∞
7training/SGD/gradients/loss/add_3_loss/truediv_grad/SumSum;training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDivItraining/SGD/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
Х
;training/SGD/gradients/loss/add_3_loss/truediv_grad/ReshapeReshape7training/SGD/gradients/loss/add_3_loss/truediv_grad/Sum9training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
†
7training/SGD/gradients/loss/add_3_loss/truediv_grad/NegNegloss/add_3_loss/add*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
е
=training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDiv_1RealDiv7training/SGD/gradients/loss/add_3_loss/truediv_grad/Negloss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
л
=training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDiv_2RealDiv=training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDiv_1loss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
€
7training/SGD/gradients/loss/add_3_loss/truediv_grad/mulMul3training/SGD/gradients/loss/add_3_loss/sub_grad/Neg=training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0**
_class 
loc:@loss/add_3_loss/truediv
∞
9training/SGD/gradients/loss/add_3_loss/truediv_grad/Sum_1Sum7training/SGD/gradients/loss/add_3_loss/truediv_grad/mulKtraining/SGD/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
Ы
=training/SGD/gradients/loss/add_3_loss/truediv_grad/Reshape_1Reshape9training/SGD/gradients/loss/add_3_loss/truediv_grad/Sum_1;training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
ў
5training/SGD/gradients/loss/add_3_loss/mul_1_grad/MulMul;training/SGD/gradients/loss/add_3_loss/truediv_grad/Reshapeloss/add_3_loss/Sum*
T0*(
_class
loc:@loss/add_3_loss/mul_1*
_output_shapes
: 
я
7training/SGD/gradients/loss/add_3_loss/mul_1_grad/Mul_1Mul;training/SGD/gradients/loss/add_3_loss/truediv_grad/Reshapeloss/add_3_loss/mul_1/x*
T0*(
_class
loc:@loss/add_3_loss/mul_1*
_output_shapes
: 
ѓ
=training/SGD/gradients/loss/add_3_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*&
_class
loc:@loss/add_3_loss/Sum
Х
7training/SGD/gradients/loss/add_3_loss/Sum_grad/ReshapeReshape7training/SGD/gradients/loss/add_3_loss/mul_1_grad/Mul_1=training/SGD/gradients/loss/add_3_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/Sum*
_output_shapes
:
∞
5training/SGD/gradients/loss/add_3_loss/Sum_grad/ShapeShapeloss/add_3_loss/mul*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/Sum
Ф
4training/SGD/gradients/loss/add_3_loss/Sum_grad/TileTile7training/SGD/gradients/loss/add_3_loss/Sum_grad/Reshape5training/SGD/gradients/loss/add_3_loss/Sum_grad/Shape*
T0*&
_class
loc:@loss/add_3_loss/Sum*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
≥
?training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*(
_class
loc:@loss/add_3_loss/Sum_2
°
9training/SGD/gradients/loss/add_3_loss/Sum_2_grad/ReshapeReshape=training/SGD/gradients/loss/add_3_loss/truediv_grad/Reshape_1?training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Reshape/shape*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/Sum_2*
_output_shapes
:
ґ
7training/SGD/gradients/loss/add_3_loss/Sum_2_grad/ShapeShapeloss/add_3_loss/mul_3*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/Sum_2*
_output_shapes
:
Ь
6training/SGD/gradients/loss/add_3_loss/Sum_2_grad/TileTile9training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Reshape7training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Shape*
T0*(
_class
loc:@loss/add_3_loss/Sum_2*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
і
5training/SGD/gradients/loss/add_3_loss/mul_grad/ShapeShapeloss/add_3_loss/Reshape*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:
Є
7training/SGD/gradients/loss/add_3_loss/mul_grad/Shape_1Shapeloss/add_3_loss/Reshape_1*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:
≥
Etraining/SGD/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/SGD/gradients/loss/add_3_loss/mul_grad/Shape7training/SGD/gradients/loss/add_3_loss/mul_grad/Shape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
б
3training/SGD/gradients/loss/add_3_loss/mul_grad/MulMul4training/SGD/gradients/loss/add_3_loss/Sum_grad/Tileloss/add_3_loss/Reshape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:€€€€€€€€€
Ю
3training/SGD/gradients/loss/add_3_loss/mul_grad/SumSum3training/SGD/gradients/loss/add_3_loss/mul_grad/MulEtraining/SGD/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*&
_class
loc:@loss/add_3_loss/mul
Т
7training/SGD/gradients/loss/add_3_loss/mul_grad/ReshapeReshape3training/SGD/gradients/loss/add_3_loss/mul_grad/Sum5training/SGD/gradients/loss/add_3_loss/mul_grad/Shape*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:€€€€€€€€€
б
5training/SGD/gradients/loss/add_3_loss/mul_grad/Mul_1Mulloss/add_3_loss/Reshape4training/SGD/gradients/loss/add_3_loss/Sum_grad/Tile*
T0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:€€€€€€€€€
§
5training/SGD/gradients/loss/add_3_loss/mul_grad/Sum_1Sum5training/SGD/gradients/loss/add_3_loss/mul_grad/Mul_1Gtraining/SGD/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:
Ш
9training/SGD/gradients/loss/add_3_loss/mul_grad/Reshape_1Reshape5training/SGD/gradients/loss/add_3_loss/mul_grad/Sum_17training/SGD/gradients/loss/add_3_loss/mul_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/mul
Ї
7training/SGD/gradients/loss/add_3_loss/mul_3_grad/ShapeShapeloss/add_3_loss/Reshape_1*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
Љ
9training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape_1Shapeloss/add_3_loss/Reshape_1*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
ї
Gtraining/SGD/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape9training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape_1*
T0*(
_class
loc:@loss/add_3_loss/mul_3*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
з
5training/SGD/gradients/loss/add_3_loss/mul_3_grad/MulMul6training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Tileloss/add_3_loss/Reshape_1*
T0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:€€€€€€€€€
¶
5training/SGD/gradients/loss/add_3_loss/mul_3_grad/SumSum5training/SGD/gradients/loss/add_3_loss/mul_3_grad/MulGtraining/SGD/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/add_3_loss/mul_3
Ъ
9training/SGD/gradients/loss/add_3_loss/mul_3_grad/ReshapeReshape5training/SGD/gradients/loss/add_3_loss/mul_3_grad/Sum7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/mul_3
й
7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Mul_1Mulloss/add_3_loss/Reshape_16training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Tile*
T0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:€€€€€€€€€
ђ
7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Sum_1Sum7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Mul_1Itraining/SGD/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:*

Tidx0*
	keep_dims( 
†
;training/SGD/gradients/loss/add_3_loss/mul_3_grad/Reshape_1Reshape7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Sum_19training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:€€€€€€€€€
µ
training/SGD/gradients/AddNAddN9training/SGD/gradients/loss/add_3_loss/mul_grad/Reshape_19training/SGD/gradients/loss/add_3_loss/mul_3_grad/Reshape;training/SGD/gradients/loss/add_3_loss/mul_3_grad/Reshape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*
N*#
_output_shapes
:€€€€€€€€€
≤
;training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/ShapeShape	add_3/add*
T0*
out_type0*,
_class"
 loc:@loss/add_3_loss/Reshape_1*
_output_shapes
:
Ш
=training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/ReshapeReshapetraining/SGD/gradients/AddN;training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/Shape*/
_output_shapes
:€€€€€€€€€``*
T0*
Tshape0*,
_class"
 loc:@loss/add_3_loss/Reshape_1
Р
+training/SGD/gradients/add_3/add_grad/ShapeShapeinput_1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_3/add
Ш
-training/SGD/gradients/add_3/add_grad/Shape_1Shapeconv2d_8/Relu*
T0*
out_type0*
_class
loc:@add_3/add*
_output_shapes
:
Л
;training/SGD/gradients/add_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_3/add_grad/Shape-training/SGD/gradients/add_3/add_grad/Shape_1*
T0*
_class
loc:@add_3/add*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
К
)training/SGD/gradients/add_3/add_grad/SumSum=training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/Reshape;training/SGD/gradients/add_3/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_3/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
-training/SGD/gradients/add_3/add_grad/ReshapeReshape)training/SGD/gradients/add_3/add_grad/Sum+training/SGD/gradients/add_3/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_3/add*/
_output_shapes
:€€€€€€€€€``
О
+training/SGD/gradients/add_3/add_grad/Sum_1Sum=training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/Reshape=training/SGD/gradients/add_3/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_3/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ь
/training/SGD/gradients/add_3/add_grad/Reshape_1Reshape+training/SGD/gradients/add_3/add_grad/Sum_1-training/SGD/gradients/add_3/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_3/add*/
_output_shapes
:€€€€€€€€€``
Џ
2training/SGD/gradients/conv2d_8/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_3/add_grad/Reshape_1conv2d_8/Relu*
T0* 
_class
loc:@conv2d_8/Relu*/
_output_shapes
:€€€€€€€€€``
№
8training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*#
_class
loc:@conv2d_8/BiasAdd
Ў
2training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeNShapeNconcatenate/concatconv2d_8/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_8/Conv2D
™
?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeNconv2d_8/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``0
Щ
@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate/concat4training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0
Ь
3training/SGD/gradients/concatenate/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :*%
_class
loc:@concatenate/concat
‘
2training/SGD/gradients/concatenate/concat_grad/modFloorModconcatenate/concat/axis3training/SGD/gradients/concatenate/concat_grad/Rank*
T0*%
_class
loc:@concatenate/concat*
_output_shapes
: 
Ґ
4training/SGD/gradients/concatenate/concat_grad/ShapeShapeadd/add*
T0*
out_type0*%
_class
loc:@concatenate/concat*
_output_shapes
:
Њ
5training/SGD/gradients/concatenate/concat_grad/ShapeNShapeNadd/add	add_2/add*
T0*
out_type0*%
_class
loc:@concatenate/concat*
N* 
_output_shapes
::
Ѕ
;training/SGD/gradients/concatenate/concat_grad/ConcatOffsetConcatOffset2training/SGD/gradients/concatenate/concat_grad/mod5training/SGD/gradients/concatenate/concat_grad/ShapeN7training/SGD/gradients/concatenate/concat_grad/ShapeN:1*
N* 
_output_shapes
::*%
_class
loc:@concatenate/concat
а
4training/SGD/gradients/concatenate/concat_grad/SliceSlice?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput;training/SGD/gradients/concatenate/concat_grad/ConcatOffset5training/SGD/gradients/concatenate/concat_grad/ShapeN*
T0*
Index0*%
_class
loc:@concatenate/concat*/
_output_shapes
:€€€€€€€€€``
ж
6training/SGD/gradients/concatenate/concat_grad/Slice_1Slice?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput=training/SGD/gradients/concatenate/concat_grad/ConcatOffset:17training/SGD/gradients/concatenate/concat_grad/ShapeN:1*
T0*
Index0*%
_class
loc:@concatenate/concat*/
_output_shapes
:€€€€€€€€€``
Ц
+training/SGD/gradients/add_2/add_grad/ShapeShapeconv2d_5/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_2/add
Ш
-training/SGD/gradients/add_2/add_grad/Shape_1Shapeconv2d_7/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_2/add
Л
;training/SGD/gradients/add_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_2/add_grad/Shape-training/SGD/gradients/add_2/add_grad/Shape_1*
T0*
_class
loc:@add_2/add*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Г
)training/SGD/gradients/add_2/add_grad/SumSum6training/SGD/gradients/concatenate/concat_grad/Slice_1;training/SGD/gradients/add_2/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_2/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
-training/SGD/gradients/add_2/add_grad/ReshapeReshape)training/SGD/gradients/add_2/add_grad/Sum+training/SGD/gradients/add_2/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_2/add*/
_output_shapes
:€€€€€€€€€``
З
+training/SGD/gradients/add_2/add_grad/Sum_1Sum6training/SGD/gradients/concatenate/concat_grad/Slice_1=training/SGD/gradients/add_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_2/add*
_output_shapes
:
ь
/training/SGD/gradients/add_2/add_grad/Reshape_1Reshape+training/SGD/gradients/add_2/add_grad/Sum_1-training/SGD/gradients/add_2/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_2/add*/
_output_shapes
:€€€€€€€€€``
Ў
2training/SGD/gradients/conv2d_5/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_2/add_grad/Reshapeconv2d_5/Relu*/
_output_shapes
:€€€€€€€€€``*
T0* 
_class
loc:@conv2d_5/Relu
Џ
2training/SGD/gradients/conv2d_7/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_2/add_grad/Reshape_1conv2d_7/Relu*/
_output_shapes
:€€€€€€€€€``*
T0* 
_class
loc:@conv2d_7/Relu
№
8training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*#
_class
loc:@conv2d_5/BiasAdd
№
8training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_7/BiasAdd*
data_formatNHWC*
_output_shapes
:
й
2training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighborconv2d_5/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_5/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``0*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D
™
@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#up_sampling2d/ResizeNearestNeighbor4training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D
”
2training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_7/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D
Ф
@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_6/Relu4training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
к
2training/SGD/gradients/conv2d_6/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputconv2d_6/Relu*
T0* 
_class
loc:@conv2d_6/Relu*/
_output_shapes
:€€€€€€€€€``
№
8training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_6/BiasAdd*
data_formatNHWC*
_output_shapes
:
й
2training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighborconv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_6/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``0*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D
™
@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#up_sampling2d/ResizeNearestNeighbor4training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
О
training/SGD/gradients/AddN_1AddN?training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_5/Conv2D*
N*/
_output_shapes
:€€€€€€€€€``0
з
^training/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
valueB"0   0   *6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor*
dtype0*
_output_shapes
:
ь
Ytraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGradtraining/SGD/gradients/AddN_1^training/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*
align_corners( *
T0*6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor*/
_output_shapes
:€€€€€€€€€000
Ц
+training/SGD/gradients/add_1/add_grad/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:
Ш
-training/SGD/gradients/add_1/add_grad/Shape_1Shapeconv2d_4/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:
Л
;training/SGD/gradients/add_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_1/add_grad/Shape-training/SGD/gradients/add_1/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*
_class
loc:@add_1/add
¶
)training/SGD/gradients/add_1/add_grad/SumSumYtraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/SGD/gradients/add_1/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_1/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
-training/SGD/gradients/add_1/add_grad/ReshapeReshape)training/SGD/gradients/add_1/add_grad/Sum+training/SGD/gradients/add_1/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_1/add*/
_output_shapes
:€€€€€€€€€000
™
+training/SGD/gradients/add_1/add_grad/Sum_1SumYtraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad=training/SGD/gradients/add_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_1/add*
_output_shapes
:
ь
/training/SGD/gradients/add_1/add_grad/Reshape_1Reshape+training/SGD/gradients/add_1/add_grad/Sum_1-training/SGD/gradients/add_1/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_1/add*/
_output_shapes
:€€€€€€€€€000
Ў
2training/SGD/gradients/conv2d_2/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_1/add_grad/Reshapeconv2d_2/Relu*/
_output_shapes
:€€€€€€€€€000*
T0* 
_class
loc:@conv2d_2/Relu
Џ
2training/SGD/gradients/conv2d_4/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_1/add_grad/Reshape_1conv2d_4/Relu*/
_output_shapes
:€€€€€€€€€000*
T0* 
_class
loc:@conv2d_4/Relu
№
8training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:0*
T0*#
_class
loc:@conv2d_2/BiasAdd
№
8training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_4/BiasAdd*
data_formatNHWC*
_output_shapes
:0
џ
2training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_2/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_2/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€00*
	dilations

Ь
@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool4training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D
”
2training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeNShapeNconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_4/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€000
Ф
@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_3/Relu4training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_4/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00*
	dilations

к
2training/SGD/gradients/conv2d_3/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputconv2d_3/Relu*/
_output_shapes
:€€€€€€€€€000*
T0* 
_class
loc:@conv2d_3/Relu
№
8training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_3/BiasAdd*
data_formatNHWC*
_output_shapes
:0
џ
2training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_3/Conv2D
™
?training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_3/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€00*
	dilations

Ь
@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool4training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
О
training/SGD/gradients/AddN_2AddN?training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*
N*/
_output_shapes
:€€€€€€€€€00*
T0*"
_class
loc:@conv2d_2/Conv2D
Ѕ
=training/SGD/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradadd/addmax_pooling2d/MaxPooltraining/SGD/gradients/AddN_2*/
_output_shapes
:€€€€€€€€€``*
T0*(
_class
loc:@max_pooling2d/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Д
training/SGD/gradients/AddN_3AddN4training/SGD/gradients/concatenate/concat_grad/Slice=training/SGD/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad*
N*/
_output_shapes
:€€€€€€€€€``*
T0*%
_class
loc:@concatenate/concat
С
)training/SGD/gradients/add/add_grad/ShapeShapesubtract/sub*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add/add
Ф
+training/SGD/gradients/add/add_grad/Shape_1Shapeconv2d_1/Relu*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:
Г
9training/SGD/gradients/add/add_grad/BroadcastGradientArgsBroadcastGradientArgs)training/SGD/gradients/add/add_grad/Shape+training/SGD/gradients/add/add_grad/Shape_1*
T0*
_class
loc:@add/add*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
д
'training/SGD/gradients/add/add_grad/SumSumtraining/SGD/gradients/AddN_39training/SGD/gradients/add/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
о
+training/SGD/gradients/add/add_grad/ReshapeReshape'training/SGD/gradients/add/add_grad/Sum)training/SGD/gradients/add/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add/add*/
_output_shapes
:€€€€€€€€€``
и
)training/SGD/gradients/add/add_grad/Sum_1Sumtraining/SGD/gradients/AddN_3;training/SGD/gradients/add/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add/add*
_output_shapes
:
ф
-training/SGD/gradients/add/add_grad/Reshape_1Reshape)training/SGD/gradients/add/add_grad/Sum_1+training/SGD/gradients/add/add_grad/Shape_1*/
_output_shapes
:€€€€€€€€€``*
T0*
Tshape0*
_class
loc:@add/add
Ў
2training/SGD/gradients/conv2d_1/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add/add_grad/Reshape_1conv2d_1/Relu*/
_output_shapes
:€€€€€€€€€``*
T0* 
_class
loc:@conv2d_1/Relu
№
8training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*#
_class
loc:@conv2d_1/BiasAdd
—
2training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_1/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``
Т
@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu4training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_1/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

д
0training/SGD/gradients/conv2d/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputconv2d/Relu*
T0*
_class
loc:@conv2d/Relu*/
_output_shapes
:€€€€€€€€€``
÷
6training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*!
_class
loc:@conv2d/BiasAdd
ћ
0training/SGD/gradients/conv2d/Conv2D_grad/ShapeNShapeNsubtract/subconv2d/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0* 
_class
loc:@conv2d/Conv2D
†
=training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0training/SGD/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp0training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D
Л
>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltersubtract/sub2training/SGD/gradients/conv2d/Conv2D_grad/ShapeN:10training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
T0* 
_class
loc:@conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

T
training/SGD/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
h
 training/SGD/AssignAddVariableOpAssignAddVariableOpSGD/iterationstraining/SGD/Const*
dtype0	
Е
training/SGD/ReadVariableOpReadVariableOpSGD/iterations!^training/SGD/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
g
 training/SGD/Cast/ReadVariableOpReadVariableOpSGD/iterations*
dtype0	*
_output_shapes
: 
{
training/SGD/CastCast training/SGD/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
_
training/SGD/ReadVariableOp_1ReadVariableOp	SGD/decay*
dtype0*
_output_shapes
: 
j
training/SGD/mulMultraining/SGD/ReadVariableOp_1training/SGD/Cast*
T0*
_output_shapes
: 
W
training/SGD/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
^
training/SGD/addAddtraining/SGD/add/xtraining/SGD/mul*
T0*
_output_shapes
: 
[
training/SGD/truediv/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
j
training/SGD/truedivRealDivtraining/SGD/truediv/xtraining/SGD/add*
T0*
_output_shapes
: 
\
training/SGD/ReadVariableOp_2ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
o
training/SGD/mul_1Multraining/SGD/ReadVariableOp_2training/SGD/truediv*
_output_shapes
: *
T0
w
training/SGD/zerosConst*%
valueB*    *
dtype0*&
_output_shapes
:
…
training/SGD/VariableVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining/SGD/Variable*(
_class
loc:@training/SGD/Variable
{
6training/SGD/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable*
_output_shapes
: 
Т
training/SGD/Variable/AssignAssignVariableOptraining/SGD/Variabletraining/SGD/zeros*(
_class
loc:@training/SGD/Variable*
dtype0
±
)training/SGD/Variable/Read/ReadVariableOpReadVariableOptraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
dtype0*&
_output_shapes
:
a
training/SGD/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
√
training/SGD/Variable_1VarHandleOp*(
shared_nametraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
	container *
shape:*
dtype0*
_output_shapes
: 

8training/SGD/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_1*
_output_shapes
: 
Ъ
training/SGD/Variable_1/AssignAssignVariableOptraining/SGD/Variable_1training/SGD/zeros_1**
_class 
loc:@training/SGD/Variable_1*
dtype0
Ђ
+training/SGD/Variable_1/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
dtype0*
_output_shapes
:
}
$training/SGD/zeros_2/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
_
training/SGD/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
training/SGD/zeros_2Fill$training/SGD/zeros_2/shape_as_tensortraining/SGD/zeros_2/Const*&
_output_shapes
:*
T0*

index_type0
ѕ
training/SGD/Variable_2VarHandleOp*(
shared_nametraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
	container *
shape:*
dtype0*
_output_shapes
: 

8training/SGD/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_2*
_output_shapes
: 
Ъ
training/SGD/Variable_2/AssignAssignVariableOptraining/SGD/Variable_2training/SGD/zeros_2**
_class 
loc:@training/SGD/Variable_2*
dtype0
Ј
+training/SGD/Variable_2/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
dtype0*&
_output_shapes
:
a
training/SGD/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:
√
training/SGD/Variable_3VarHandleOp*(
shared_nametraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
	container *
shape:*
dtype0*
_output_shapes
: 

8training/SGD/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_3*
_output_shapes
: 
Ъ
training/SGD/Variable_3/AssignAssignVariableOptraining/SGD/Variable_3training/SGD/zeros_3**
_class 
loc:@training/SGD/Variable_3*
dtype0
Ђ
+training/SGD/Variable_3/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
dtype0*
_output_shapes
:
}
$training/SGD/zeros_4/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
°
training/SGD/zeros_4Fill$training/SGD/zeros_4/shape_as_tensortraining/SGD/zeros_4/Const*&
_output_shapes
:0*
T0*

index_type0
ѕ
training/SGD/Variable_4VarHandleOp**
_class 
loc:@training/SGD/Variable_4*
	container *
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_4

8training/SGD/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_4*
_output_shapes
: 
Ъ
training/SGD/Variable_4/AssignAssignVariableOptraining/SGD/Variable_4training/SGD/zeros_4**
_class 
loc:@training/SGD/Variable_4*
dtype0
Ј
+training/SGD/Variable_4/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
dtype0*&
_output_shapes
:0
a
training/SGD/zeros_5Const*
valueB0*    *
dtype0*
_output_shapes
:0
√
training/SGD/Variable_5VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
	container *
shape:0

8training/SGD/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_5*
_output_shapes
: 
Ъ
training/SGD/Variable_5/AssignAssignVariableOptraining/SGD/Variable_5training/SGD/zeros_5**
_class 
loc:@training/SGD/Variable_5*
dtype0
Ђ
+training/SGD/Variable_5/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_5*
dtype0*
_output_shapes
:0**
_class 
loc:@training/SGD/Variable_5
}
$training/SGD/zeros_6/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
training/SGD/zeros_6Fill$training/SGD/zeros_6/shape_as_tensortraining/SGD/zeros_6/Const*&
_output_shapes
:0*
T0*

index_type0
ѕ
training/SGD/Variable_6VarHandleOp*
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
	container 

8training/SGD/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_6*
_output_shapes
: 
Ъ
training/SGD/Variable_6/AssignAssignVariableOptraining/SGD/Variable_6training/SGD/zeros_6**
_class 
loc:@training/SGD/Variable_6*
dtype0
Ј
+training/SGD/Variable_6/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
dtype0*&
_output_shapes
:0
a
training/SGD/zeros_7Const*
valueB0*    *
dtype0*
_output_shapes
:0
√
training/SGD/Variable_7VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7

8training/SGD/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_7*
_output_shapes
: 
Ъ
training/SGD/Variable_7/AssignAssignVariableOptraining/SGD/Variable_7training/SGD/zeros_7**
_class 
loc:@training/SGD/Variable_7*
dtype0
Ђ
+training/SGD/Variable_7/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
dtype0*
_output_shapes
:0
}
$training/SGD/zeros_8/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
training/SGD/zeros_8Fill$training/SGD/zeros_8/shape_as_tensortraining/SGD/zeros_8/Const*
T0*

index_type0*&
_output_shapes
:00
ѕ
training/SGD/Variable_8VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
	container *
shape:00

8training/SGD/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_8*
_output_shapes
: 
Ъ
training/SGD/Variable_8/AssignAssignVariableOptraining/SGD/Variable_8training/SGD/zeros_8**
_class 
loc:@training/SGD/Variable_8*
dtype0
Ј
+training/SGD/Variable_8/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
dtype0*&
_output_shapes
:00
a
training/SGD/zeros_9Const*
valueB0*    *
dtype0*
_output_shapes
:0
√
training/SGD/Variable_9VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
	container *
shape:0

8training/SGD/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_9*
_output_shapes
: 
Ъ
training/SGD/Variable_9/AssignAssignVariableOptraining/SGD/Variable_9training/SGD/zeros_9**
_class 
loc:@training/SGD/Variable_9*
dtype0
Ђ
+training/SGD/Variable_9/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
dtype0*
_output_shapes
:0
~
%training/SGD/zeros_10/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_10/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
§
training/SGD/zeros_10Fill%training/SGD/zeros_10/shape_as_tensortraining/SGD/zeros_10/Const*
T0*

index_type0*&
_output_shapes
:0
“
training/SGD/Variable_10VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
	container *
shape:0
Б
9training/SGD/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_10*
_output_shapes
: 
Ю
training/SGD/Variable_10/AssignAssignVariableOptraining/SGD/Variable_10training/SGD/zeros_10*
dtype0*+
_class!
loc:@training/SGD/Variable_10
Ї
,training/SGD/Variable_10/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0*&
_output_shapes
:0
b
training/SGD/zeros_11Const*
valueB*    *
dtype0*
_output_shapes
:
∆
training/SGD/Variable_11VarHandleOp*)
shared_nametraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_11*
_output_shapes
: 
Ю
training/SGD/Variable_11/AssignAssignVariableOptraining/SGD/Variable_11training/SGD/zeros_11*+
_class!
loc:@training/SGD/Variable_11*
dtype0
Ѓ
,training/SGD/Variable_11/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
dtype0*
_output_shapes
:
~
%training/SGD/zeros_12/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_12/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
§
training/SGD/zeros_12Fill%training/SGD/zeros_12/shape_as_tensortraining/SGD/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:0
“
training/SGD/Variable_12VarHandleOp*
shape:0*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
	container 
Б
9training/SGD/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_12*
_output_shapes
: 
Ю
training/SGD/Variable_12/AssignAssignVariableOptraining/SGD/Variable_12training/SGD/zeros_12*
dtype0*+
_class!
loc:@training/SGD/Variable_12
Ї
,training/SGD/Variable_12/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_12*
dtype0*&
_output_shapes
:0*+
_class!
loc:@training/SGD/Variable_12
b
training/SGD/zeros_13Const*
valueB*    *
dtype0*
_output_shapes
:
∆
training/SGD/Variable_13VarHandleOp*)
shared_nametraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_13*
_output_shapes
: 
Ю
training/SGD/Variable_13/AssignAssignVariableOptraining/SGD/Variable_13training/SGD/zeros_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0
Ѓ
,training/SGD/Variable_13/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0*
_output_shapes
:
~
%training/SGD/zeros_14/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"            
`
training/SGD/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/SGD/zeros_14Fill%training/SGD/zeros_14/shape_as_tensortraining/SGD/zeros_14/Const*
T0*

index_type0*&
_output_shapes
:
“
training/SGD/Variable_14VarHandleOp*+
_class!
loc:@training/SGD/Variable_14*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_14
Б
9training/SGD/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_14*
_output_shapes
: 
Ю
training/SGD/Variable_14/AssignAssignVariableOptraining/SGD/Variable_14training/SGD/zeros_14*
dtype0*+
_class!
loc:@training/SGD/Variable_14
Ї
,training/SGD/Variable_14/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0*&
_output_shapes
:
b
training/SGD/zeros_15Const*
valueB*    *
dtype0*
_output_shapes
:
∆
training/SGD/Variable_15VarHandleOp*)
shared_nametraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_15*
_output_shapes
: 
Ю
training/SGD/Variable_15/AssignAssignVariableOptraining/SGD/Variable_15training/SGD/zeros_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0
Ѓ
,training/SGD/Variable_15/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_15*
dtype0*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_15
z
training/SGD/zeros_16Const*%
valueB0*    *
dtype0*&
_output_shapes
:0
“
training/SGD/Variable_16VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_16*+
_class!
loc:@training/SGD/Variable_16*
	container *
shape:0
Б
9training/SGD/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_16*
_output_shapes
: 
Ю
training/SGD/Variable_16/AssignAssignVariableOptraining/SGD/Variable_16training/SGD/zeros_16*
dtype0*+
_class!
loc:@training/SGD/Variable_16
Ї
,training/SGD/Variable_16/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_16*+
_class!
loc:@training/SGD/Variable_16*
dtype0*&
_output_shapes
:0
b
training/SGD/zeros_17Const*
valueB*    *
dtype0*
_output_shapes
:
∆
training/SGD/Variable_17VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_17*+
_class!
loc:@training/SGD/Variable_17*
	container *
shape:
Б
9training/SGD/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_17*
_output_shapes
: 
Ю
training/SGD/Variable_17/AssignAssignVariableOptraining/SGD/Variable_17training/SGD/zeros_17*+
_class!
loc:@training/SGD/Variable_17*
dtype0
Ѓ
,training/SGD/Variable_17/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_17*
dtype0*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_17
b
training/SGD/ReadVariableOp_3ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 

!training/SGD/mul_2/ReadVariableOpReadVariableOptraining/SGD/Variable*
dtype0*&
_output_shapes
:
М
training/SGD/mul_2Multraining/SGD/ReadVariableOp_3!training/SGD/mul_2/ReadVariableOp*
T0*&
_output_shapes
:
Ю
training/SGD/mul_3Multraining/SGD/mul_1>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
p
training/SGD/subSubtraining/SGD/mul_2training/SGD/mul_3*&
_output_shapes
:*
T0
g
training/SGD/AssignVariableOpAssignVariableOptraining/SGD/Variabletraining/SGD/sub*
dtype0
Ы
training/SGD/ReadVariableOp_4ReadVariableOptraining/SGD/Variable^training/SGD/AssignVariableOp*
dtype0*&
_output_shapes
:
b
training/SGD/ReadVariableOp_5ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
{
training/SGD/mul_4Multraining/SGD/ReadVariableOp_5training/SGD/sub*
T0*&
_output_shapes
:
s
training/SGD/ReadVariableOp_6ReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
}
training/SGD/add_1Addtraining/SGD/ReadVariableOp_6training/SGD/mul_4*
T0*&
_output_shapes
:
Ю
training/SGD/mul_5Multraining/SGD/mul_1>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
r
training/SGD/sub_1Subtraining/SGD/add_1training/SGD/mul_5*
T0*&
_output_shapes
:
c
training/SGD/AssignVariableOp_1AssignVariableOpconv2d/kerneltraining/SGD/sub_1*
dtype0
Х
training/SGD/ReadVariableOp_7ReadVariableOpconv2d/kernel ^training/SGD/AssignVariableOp_1*
dtype0*&
_output_shapes
:
b
training/SGD/ReadVariableOp_8ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
u
!training/SGD/mul_6/ReadVariableOpReadVariableOptraining/SGD/Variable_1*
dtype0*
_output_shapes
:
А
training/SGD/mul_6Multraining/SGD/ReadVariableOp_8!training/SGD/mul_6/ReadVariableOp*
T0*
_output_shapes
:
К
training/SGD/mul_7Multraining/SGD/mul_16training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
f
training/SGD/sub_2Subtraining/SGD/mul_6training/SGD/mul_7*
_output_shapes
:*
T0
m
training/SGD/AssignVariableOp_2AssignVariableOptraining/SGD/Variable_1training/SGD/sub_2*
dtype0
У
training/SGD/ReadVariableOp_9ReadVariableOptraining/SGD/Variable_1 ^training/SGD/AssignVariableOp_2*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_10ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
r
training/SGD/mul_8Multraining/SGD/ReadVariableOp_10training/SGD/sub_2*
T0*
_output_shapes
:
f
training/SGD/ReadVariableOp_11ReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
r
training/SGD/add_2Addtraining/SGD/ReadVariableOp_11training/SGD/mul_8*
T0*
_output_shapes
:
К
training/SGD/mul_9Multraining/SGD/mul_16training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
f
training/SGD/sub_3Subtraining/SGD/add_2training/SGD/mul_9*
T0*
_output_shapes
:
a
training/SGD/AssignVariableOp_3AssignVariableOpconv2d/biastraining/SGD/sub_3*
dtype0
И
training/SGD/ReadVariableOp_12ReadVariableOpconv2d/bias ^training/SGD/AssignVariableOp_3*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_13ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_10/ReadVariableOpReadVariableOptraining/SGD/Variable_2*
dtype0*&
_output_shapes
:
П
training/SGD/mul_10Multraining/SGD/ReadVariableOp_13"training/SGD/mul_10/ReadVariableOp*
T0*&
_output_shapes
:
°
training/SGD/mul_11Multraining/SGD/mul_1@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
t
training/SGD/sub_4Subtraining/SGD/mul_10training/SGD/mul_11*
T0*&
_output_shapes
:
m
training/SGD/AssignVariableOp_4AssignVariableOptraining/SGD/Variable_2training/SGD/sub_4*
dtype0
†
training/SGD/ReadVariableOp_14ReadVariableOptraining/SGD/Variable_2 ^training/SGD/AssignVariableOp_4*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_15ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 

training/SGD/mul_12Multraining/SGD/ReadVariableOp_15training/SGD/sub_4*
T0*&
_output_shapes
:
v
training/SGD/ReadVariableOp_16ReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:

training/SGD/add_3Addtraining/SGD/ReadVariableOp_16training/SGD/mul_12*&
_output_shapes
:*
T0
°
training/SGD/mul_13Multraining/SGD/mul_1@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
s
training/SGD/sub_5Subtraining/SGD/add_3training/SGD/mul_13*&
_output_shapes
:*
T0
e
training/SGD/AssignVariableOp_5AssignVariableOpconv2d_1/kerneltraining/SGD/sub_5*
dtype0
Ш
training/SGD/ReadVariableOp_17ReadVariableOpconv2d_1/kernel ^training/SGD/AssignVariableOp_5*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_18ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_14/ReadVariableOpReadVariableOptraining/SGD/Variable_3*
dtype0*
_output_shapes
:
Г
training/SGD/mul_14Multraining/SGD/ReadVariableOp_18"training/SGD/mul_14/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_15Multraining/SGD/mul_18training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
h
training/SGD/sub_6Subtraining/SGD/mul_14training/SGD/mul_15*
T0*
_output_shapes
:
m
training/SGD/AssignVariableOp_6AssignVariableOptraining/SGD/Variable_3training/SGD/sub_6*
dtype0
Ф
training/SGD/ReadVariableOp_19ReadVariableOptraining/SGD/Variable_3 ^training/SGD/AssignVariableOp_6*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_20ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
s
training/SGD/mul_16Multraining/SGD/ReadVariableOp_20training/SGD/sub_6*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_21ReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
s
training/SGD/add_4Addtraining/SGD/ReadVariableOp_21training/SGD/mul_16*
T0*
_output_shapes
:
Н
training/SGD/mul_17Multraining/SGD/mul_18training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
g
training/SGD/sub_7Subtraining/SGD/add_4training/SGD/mul_17*
T0*
_output_shapes
:
c
training/SGD/AssignVariableOp_7AssignVariableOpconv2d_1/biastraining/SGD/sub_7*
dtype0
К
training/SGD/ReadVariableOp_22ReadVariableOpconv2d_1/bias ^training/SGD/AssignVariableOp_7*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_23ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_18/ReadVariableOpReadVariableOptraining/SGD/Variable_4*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_18Multraining/SGD/ReadVariableOp_23"training/SGD/mul_18/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_19Multraining/SGD/mul_1@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
t
training/SGD/sub_8Subtraining/SGD/mul_18training/SGD/mul_19*
T0*&
_output_shapes
:0
m
training/SGD/AssignVariableOp_8AssignVariableOptraining/SGD/Variable_4training/SGD/sub_8*
dtype0
†
training/SGD/ReadVariableOp_24ReadVariableOptraining/SGD/Variable_4 ^training/SGD/AssignVariableOp_8*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_25ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 

training/SGD/mul_20Multraining/SGD/ReadVariableOp_25training/SGD/sub_8*
T0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_26ReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0

training/SGD/add_5Addtraining/SGD/ReadVariableOp_26training/SGD/mul_20*
T0*&
_output_shapes
:0
°
training/SGD/mul_21Multraining/SGD/mul_1@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
s
training/SGD/sub_9Subtraining/SGD/add_5training/SGD/mul_21*
T0*&
_output_shapes
:0
e
training/SGD/AssignVariableOp_9AssignVariableOpconv2d_3/kerneltraining/SGD/sub_9*
dtype0
Ш
training/SGD/ReadVariableOp_27ReadVariableOpconv2d_3/kernel ^training/SGD/AssignVariableOp_9*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_28ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_22/ReadVariableOpReadVariableOptraining/SGD/Variable_5*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_22Multraining/SGD/ReadVariableOp_28"training/SGD/mul_22/ReadVariableOp*
T0*
_output_shapes
:0
Н
training/SGD/mul_23Multraining/SGD/mul_18training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_10Subtraining/SGD/mul_22training/SGD/mul_23*
T0*
_output_shapes
:0
o
 training/SGD/AssignVariableOp_10AssignVariableOptraining/SGD/Variable_5training/SGD/sub_10*
dtype0
Х
training/SGD/ReadVariableOp_29ReadVariableOptraining/SGD/Variable_5!^training/SGD/AssignVariableOp_10*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_30ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_24Multraining/SGD/ReadVariableOp_30training/SGD/sub_10*
_output_shapes
:0*
T0
h
training/SGD/ReadVariableOp_31ReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
s
training/SGD/add_6Addtraining/SGD/ReadVariableOp_31training/SGD/mul_24*
T0*
_output_shapes
:0
Н
training/SGD/mul_25Multraining/SGD/mul_18training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
h
training/SGD/sub_11Subtraining/SGD/add_6training/SGD/mul_25*
T0*
_output_shapes
:0
e
 training/SGD/AssignVariableOp_11AssignVariableOpconv2d_3/biastraining/SGD/sub_11*
dtype0
Л
training/SGD/ReadVariableOp_32ReadVariableOpconv2d_3/bias!^training/SGD/AssignVariableOp_11*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_33ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_26/ReadVariableOpReadVariableOptraining/SGD/Variable_6*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_26Multraining/SGD/ReadVariableOp_33"training/SGD/mul_26/ReadVariableOp*&
_output_shapes
:0*
T0
°
training/SGD/mul_27Multraining/SGD/mul_1@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_12Subtraining/SGD/mul_26training/SGD/mul_27*
T0*&
_output_shapes
:0
o
 training/SGD/AssignVariableOp_12AssignVariableOptraining/SGD/Variable_6training/SGD/sub_12*
dtype0
°
training/SGD/ReadVariableOp_34ReadVariableOptraining/SGD/Variable_6!^training/SGD/AssignVariableOp_12*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_35ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_28Multraining/SGD/ReadVariableOp_35training/SGD/sub_12*
T0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_36ReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0

training/SGD/add_7Addtraining/SGD/ReadVariableOp_36training/SGD/mul_28*&
_output_shapes
:0*
T0
°
training/SGD/mul_29Multraining/SGD/mul_1@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
t
training/SGD/sub_13Subtraining/SGD/add_7training/SGD/mul_29*
T0*&
_output_shapes
:0
g
 training/SGD/AssignVariableOp_13AssignVariableOpconv2d_2/kerneltraining/SGD/sub_13*
dtype0
Щ
training/SGD/ReadVariableOp_37ReadVariableOpconv2d_2/kernel!^training/SGD/AssignVariableOp_13*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_38ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_30/ReadVariableOpReadVariableOptraining/SGD/Variable_7*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_30Multraining/SGD/ReadVariableOp_38"training/SGD/mul_30/ReadVariableOp*
T0*
_output_shapes
:0
Н
training/SGD/mul_31Multraining/SGD/mul_18training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
i
training/SGD/sub_14Subtraining/SGD/mul_30training/SGD/mul_31*
_output_shapes
:0*
T0
o
 training/SGD/AssignVariableOp_14AssignVariableOptraining/SGD/Variable_7training/SGD/sub_14*
dtype0
Х
training/SGD/ReadVariableOp_39ReadVariableOptraining/SGD/Variable_7!^training/SGD/AssignVariableOp_14*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_40ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_32Multraining/SGD/ReadVariableOp_40training/SGD/sub_14*
_output_shapes
:0*
T0
h
training/SGD/ReadVariableOp_41ReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
s
training/SGD/add_8Addtraining/SGD/ReadVariableOp_41training/SGD/mul_32*
T0*
_output_shapes
:0
Н
training/SGD/mul_33Multraining/SGD/mul_18training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
h
training/SGD/sub_15Subtraining/SGD/add_8training/SGD/mul_33*
_output_shapes
:0*
T0
e
 training/SGD/AssignVariableOp_15AssignVariableOpconv2d_2/biastraining/SGD/sub_15*
dtype0
Л
training/SGD/ReadVariableOp_42ReadVariableOpconv2d_2/bias!^training/SGD/AssignVariableOp_15*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_43ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_34/ReadVariableOpReadVariableOptraining/SGD/Variable_8*
dtype0*&
_output_shapes
:00
П
training/SGD/mul_34Multraining/SGD/ReadVariableOp_43"training/SGD/mul_34/ReadVariableOp*
T0*&
_output_shapes
:00
°
training/SGD/mul_35Multraining/SGD/mul_1@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
u
training/SGD/sub_16Subtraining/SGD/mul_34training/SGD/mul_35*
T0*&
_output_shapes
:00
o
 training/SGD/AssignVariableOp_16AssignVariableOptraining/SGD/Variable_8training/SGD/sub_16*
dtype0
°
training/SGD/ReadVariableOp_44ReadVariableOptraining/SGD/Variable_8!^training/SGD/AssignVariableOp_16*
dtype0*&
_output_shapes
:00
c
training/SGD/ReadVariableOp_45ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_36Multraining/SGD/ReadVariableOp_45training/SGD/sub_16*
T0*&
_output_shapes
:00
v
training/SGD/ReadVariableOp_46ReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00

training/SGD/add_9Addtraining/SGD/ReadVariableOp_46training/SGD/mul_36*
T0*&
_output_shapes
:00
°
training/SGD/mul_37Multraining/SGD/mul_1@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
t
training/SGD/sub_17Subtraining/SGD/add_9training/SGD/mul_37*
T0*&
_output_shapes
:00
g
 training/SGD/AssignVariableOp_17AssignVariableOpconv2d_4/kerneltraining/SGD/sub_17*
dtype0
Щ
training/SGD/ReadVariableOp_47ReadVariableOpconv2d_4/kernel!^training/SGD/AssignVariableOp_17*
dtype0*&
_output_shapes
:00
c
training/SGD/ReadVariableOp_48ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_38/ReadVariableOpReadVariableOptraining/SGD/Variable_9*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_38Multraining/SGD/ReadVariableOp_48"training/SGD/mul_38/ReadVariableOp*
T0*
_output_shapes
:0
Н
training/SGD/mul_39Multraining/SGD/mul_18training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_18Subtraining/SGD/mul_38training/SGD/mul_39*
_output_shapes
:0*
T0
o
 training/SGD/AssignVariableOp_18AssignVariableOptraining/SGD/Variable_9training/SGD/sub_18*
dtype0
Х
training/SGD/ReadVariableOp_49ReadVariableOptraining/SGD/Variable_9!^training/SGD/AssignVariableOp_18*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_50ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_40Multraining/SGD/ReadVariableOp_50training/SGD/sub_18*
T0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_51ReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
t
training/SGD/add_10Addtraining/SGD/ReadVariableOp_51training/SGD/mul_40*
T0*
_output_shapes
:0
Н
training/SGD/mul_41Multraining/SGD/mul_18training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_19Subtraining/SGD/add_10training/SGD/mul_41*
_output_shapes
:0*
T0
e
 training/SGD/AssignVariableOp_19AssignVariableOpconv2d_4/biastraining/SGD/sub_19*
dtype0
Л
training/SGD/ReadVariableOp_52ReadVariableOpconv2d_4/bias!^training/SGD/AssignVariableOp_19*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_53ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_42/ReadVariableOpReadVariableOptraining/SGD/Variable_10*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_42Multraining/SGD/ReadVariableOp_53"training/SGD/mul_42/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_43Multraining/SGD/mul_1@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_20Subtraining/SGD/mul_42training/SGD/mul_43*
T0*&
_output_shapes
:0
p
 training/SGD/AssignVariableOp_20AssignVariableOptraining/SGD/Variable_10training/SGD/sub_20*
dtype0
Ґ
training/SGD/ReadVariableOp_54ReadVariableOptraining/SGD/Variable_10!^training/SGD/AssignVariableOp_20*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_55ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_44Multraining/SGD/ReadVariableOp_55training/SGD/sub_20*
T0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_56ReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0
А
training/SGD/add_11Addtraining/SGD/ReadVariableOp_56training/SGD/mul_44*&
_output_shapes
:0*
T0
°
training/SGD/mul_45Multraining/SGD/mul_1@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_21Subtraining/SGD/add_11training/SGD/mul_45*&
_output_shapes
:0*
T0
g
 training/SGD/AssignVariableOp_21AssignVariableOpconv2d_6/kerneltraining/SGD/sub_21*
dtype0
Щ
training/SGD/ReadVariableOp_57ReadVariableOpconv2d_6/kernel!^training/SGD/AssignVariableOp_21*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_58ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_46/ReadVariableOpReadVariableOptraining/SGD/Variable_11*
dtype0*
_output_shapes
:
Г
training/SGD/mul_46Multraining/SGD/ReadVariableOp_58"training/SGD/mul_46/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_47Multraining/SGD/mul_18training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_22Subtraining/SGD/mul_46training/SGD/mul_47*
_output_shapes
:*
T0
p
 training/SGD/AssignVariableOp_22AssignVariableOptraining/SGD/Variable_11training/SGD/sub_22*
dtype0
Ц
training/SGD/ReadVariableOp_59ReadVariableOptraining/SGD/Variable_11!^training/SGD/AssignVariableOp_22*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_60ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_48Multraining/SGD/ReadVariableOp_60training/SGD/sub_22*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_61ReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:
t
training/SGD/add_12Addtraining/SGD/ReadVariableOp_61training/SGD/mul_48*
T0*
_output_shapes
:
Н
training/SGD/mul_49Multraining/SGD/mul_18training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_23Subtraining/SGD/add_12training/SGD/mul_49*
T0*
_output_shapes
:
e
 training/SGD/AssignVariableOp_23AssignVariableOpconv2d_6/biastraining/SGD/sub_23*
dtype0
Л
training/SGD/ReadVariableOp_62ReadVariableOpconv2d_6/bias!^training/SGD/AssignVariableOp_23*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_63ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_50/ReadVariableOpReadVariableOptraining/SGD/Variable_12*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_50Multraining/SGD/ReadVariableOp_63"training/SGD/mul_50/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_51Multraining/SGD/mul_1@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
u
training/SGD/sub_24Subtraining/SGD/mul_50training/SGD/mul_51*
T0*&
_output_shapes
:0
p
 training/SGD/AssignVariableOp_24AssignVariableOptraining/SGD/Variable_12training/SGD/sub_24*
dtype0
Ґ
training/SGD/ReadVariableOp_64ReadVariableOptraining/SGD/Variable_12!^training/SGD/AssignVariableOp_24*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_65ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_52Multraining/SGD/ReadVariableOp_65training/SGD/sub_24*
T0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_66ReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0
А
training/SGD/add_13Addtraining/SGD/ReadVariableOp_66training/SGD/mul_52*
T0*&
_output_shapes
:0
°
training/SGD/mul_53Multraining/SGD/mul_1@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_25Subtraining/SGD/add_13training/SGD/mul_53*
T0*&
_output_shapes
:0
g
 training/SGD/AssignVariableOp_25AssignVariableOpconv2d_5/kerneltraining/SGD/sub_25*
dtype0
Щ
training/SGD/ReadVariableOp_67ReadVariableOpconv2d_5/kernel!^training/SGD/AssignVariableOp_25*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_68ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_54/ReadVariableOpReadVariableOptraining/SGD/Variable_13*
dtype0*
_output_shapes
:
Г
training/SGD/mul_54Multraining/SGD/ReadVariableOp_68"training/SGD/mul_54/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_55Multraining/SGD/mul_18training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_26Subtraining/SGD/mul_54training/SGD/mul_55*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_26AssignVariableOptraining/SGD/Variable_13training/SGD/sub_26*
dtype0
Ц
training/SGD/ReadVariableOp_69ReadVariableOptraining/SGD/Variable_13!^training/SGD/AssignVariableOp_26*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_70ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_56Multraining/SGD/ReadVariableOp_70training/SGD/sub_26*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_71ReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:
t
training/SGD/add_14Addtraining/SGD/ReadVariableOp_71training/SGD/mul_56*
T0*
_output_shapes
:
Н
training/SGD/mul_57Multraining/SGD/mul_18training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_27Subtraining/SGD/add_14training/SGD/mul_57*
_output_shapes
:*
T0
e
 training/SGD/AssignVariableOp_27AssignVariableOpconv2d_5/biastraining/SGD/sub_27*
dtype0
Л
training/SGD/ReadVariableOp_72ReadVariableOpconv2d_5/bias!^training/SGD/AssignVariableOp_27*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_73ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_58/ReadVariableOpReadVariableOptraining/SGD/Variable_14*
dtype0*&
_output_shapes
:
П
training/SGD/mul_58Multraining/SGD/ReadVariableOp_73"training/SGD/mul_58/ReadVariableOp*
T0*&
_output_shapes
:
°
training/SGD/mul_59Multraining/SGD/mul_1@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_28Subtraining/SGD/mul_58training/SGD/mul_59*
T0*&
_output_shapes
:
p
 training/SGD/AssignVariableOp_28AssignVariableOptraining/SGD/Variable_14training/SGD/sub_28*
dtype0
Ґ
training/SGD/ReadVariableOp_74ReadVariableOptraining/SGD/Variable_14!^training/SGD/AssignVariableOp_28*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_75ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_60Multraining/SGD/ReadVariableOp_75training/SGD/sub_28*
T0*&
_output_shapes
:
v
training/SGD/ReadVariableOp_76ReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:
А
training/SGD/add_15Addtraining/SGD/ReadVariableOp_76training/SGD/mul_60*
T0*&
_output_shapes
:
°
training/SGD/mul_61Multraining/SGD/mul_1@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_29Subtraining/SGD/add_15training/SGD/mul_61*
T0*&
_output_shapes
:
g
 training/SGD/AssignVariableOp_29AssignVariableOpconv2d_7/kerneltraining/SGD/sub_29*
dtype0
Щ
training/SGD/ReadVariableOp_77ReadVariableOpconv2d_7/kernel!^training/SGD/AssignVariableOp_29*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_78ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_62/ReadVariableOpReadVariableOptraining/SGD/Variable_15*
dtype0*
_output_shapes
:
Г
training/SGD/mul_62Multraining/SGD/ReadVariableOp_78"training/SGD/mul_62/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_63Multraining/SGD/mul_18training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_30Subtraining/SGD/mul_62training/SGD/mul_63*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_30AssignVariableOptraining/SGD/Variable_15training/SGD/sub_30*
dtype0
Ц
training/SGD/ReadVariableOp_79ReadVariableOptraining/SGD/Variable_15!^training/SGD/AssignVariableOp_30*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_80ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_64Multraining/SGD/ReadVariableOp_80training/SGD/sub_30*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_81ReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:
t
training/SGD/add_16Addtraining/SGD/ReadVariableOp_81training/SGD/mul_64*
T0*
_output_shapes
:
Н
training/SGD/mul_65Multraining/SGD/mul_18training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_31Subtraining/SGD/add_16training/SGD/mul_65*
T0*
_output_shapes
:
e
 training/SGD/AssignVariableOp_31AssignVariableOpconv2d_7/biastraining/SGD/sub_31*
dtype0
Л
training/SGD/ReadVariableOp_82ReadVariableOpconv2d_7/bias!^training/SGD/AssignVariableOp_31*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_83ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_66/ReadVariableOpReadVariableOptraining/SGD/Variable_16*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_66Multraining/SGD/ReadVariableOp_83"training/SGD/mul_66/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_67Multraining/SGD/mul_1@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_32Subtraining/SGD/mul_66training/SGD/mul_67*
T0*&
_output_shapes
:0
p
 training/SGD/AssignVariableOp_32AssignVariableOptraining/SGD/Variable_16training/SGD/sub_32*
dtype0
Ґ
training/SGD/ReadVariableOp_84ReadVariableOptraining/SGD/Variable_16!^training/SGD/AssignVariableOp_32*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_85ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_68Multraining/SGD/ReadVariableOp_85training/SGD/sub_32*&
_output_shapes
:0*
T0
v
training/SGD/ReadVariableOp_86ReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0
А
training/SGD/add_17Addtraining/SGD/ReadVariableOp_86training/SGD/mul_68*&
_output_shapes
:0*
T0
°
training/SGD/mul_69Multraining/SGD/mul_1@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_33Subtraining/SGD/add_17training/SGD/mul_69*
T0*&
_output_shapes
:0
g
 training/SGD/AssignVariableOp_33AssignVariableOpconv2d_8/kerneltraining/SGD/sub_33*
dtype0
Щ
training/SGD/ReadVariableOp_87ReadVariableOpconv2d_8/kernel!^training/SGD/AssignVariableOp_33*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_88ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_70/ReadVariableOpReadVariableOptraining/SGD/Variable_17*
dtype0*
_output_shapes
:
Г
training/SGD/mul_70Multraining/SGD/ReadVariableOp_88"training/SGD/mul_70/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_71Multraining/SGD/mul_18training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_34Subtraining/SGD/mul_70training/SGD/mul_71*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_34AssignVariableOptraining/SGD/Variable_17training/SGD/sub_34*
dtype0
Ц
training/SGD/ReadVariableOp_89ReadVariableOptraining/SGD/Variable_17!^training/SGD/AssignVariableOp_34*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_90ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_72Multraining/SGD/ReadVariableOp_90training/SGD/sub_34*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_91ReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:
t
training/SGD/add_18Addtraining/SGD/ReadVariableOp_91training/SGD/mul_72*
_output_shapes
:*
T0
Н
training/SGD/mul_73Multraining/SGD/mul_18training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_35Subtraining/SGD/add_18training/SGD/mul_73*
T0*
_output_shapes
:
e
 training/SGD/AssignVariableOp_35AssignVariableOpconv2d_8/biastraining/SGD/sub_35*
dtype0
Л
training/SGD/ReadVariableOp_92ReadVariableOpconv2d_8/bias!^training/SGD/AssignVariableOp_35*
dtype0*
_output_shapes
:
Ы

training_1/group_depsNoOp	^loss/mul^metrics/psnr/div_no_nan^metrics/ssim/div_no_nan^training/SGD/ReadVariableOp^training/SGD/ReadVariableOp_12^training/SGD/ReadVariableOp_14^training/SGD/ReadVariableOp_17^training/SGD/ReadVariableOp_19^training/SGD/ReadVariableOp_22^training/SGD/ReadVariableOp_24^training/SGD/ReadVariableOp_27^training/SGD/ReadVariableOp_29^training/SGD/ReadVariableOp_32^training/SGD/ReadVariableOp_34^training/SGD/ReadVariableOp_37^training/SGD/ReadVariableOp_39^training/SGD/ReadVariableOp_4^training/SGD/ReadVariableOp_42^training/SGD/ReadVariableOp_44^training/SGD/ReadVariableOp_47^training/SGD/ReadVariableOp_49^training/SGD/ReadVariableOp_52^training/SGD/ReadVariableOp_54^training/SGD/ReadVariableOp_57^training/SGD/ReadVariableOp_59^training/SGD/ReadVariableOp_62^training/SGD/ReadVariableOp_64^training/SGD/ReadVariableOp_67^training/SGD/ReadVariableOp_69^training/SGD/ReadVariableOp_7^training/SGD/ReadVariableOp_72^training/SGD/ReadVariableOp_74^training/SGD/ReadVariableOp_77^training/SGD/ReadVariableOp_79^training/SGD/ReadVariableOp_82^training/SGD/ReadVariableOp_84^training/SGD/ReadVariableOp_87^training/SGD/ReadVariableOp_89^training/SGD/ReadVariableOp_9^training/SGD/ReadVariableOp_92
O
VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
K
VarIsInitializedOp_1VarIsInitializedOpcount_1*
_output_shapes
: 
\
VarIsInitializedOp_2VarIsInitializedOptraining/SGD/Variable_10*
_output_shapes
: 
\
VarIsInitializedOp_3VarIsInitializedOptraining/SGD/Variable_14*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
\
VarIsInitializedOp_5VarIsInitializedOptraining/SGD/Variable_13*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOpcount*
_output_shapes
: 
[
VarIsInitializedOp_7VarIsInitializedOptraining/SGD/Variable_3*
_output_shapes
: 
I
VarIsInitializedOp_8VarIsInitializedOptotal*
_output_shapes
: 
Q
VarIsInitializedOp_9VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
T
VarIsInitializedOp_10VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
\
VarIsInitializedOp_11VarIsInitializedOptraining/SGD/Variable_4*
_output_shapes
: 
L
VarIsInitializedOp_12VarIsInitializedOptotal_1*
_output_shapes
: 
R
VarIsInitializedOp_13VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
Z
VarIsInitializedOp_14VarIsInitializedOptraining/SGD/Variable*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
\
VarIsInitializedOp_16VarIsInitializedOptraining/SGD/Variable_6*
_output_shapes
: 
T
VarIsInitializedOp_17VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
\
VarIsInitializedOp_18VarIsInitializedOptraining/SGD/Variable_7*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOptraining/SGD/Variable_17*
_output_shapes
: 
R
VarIsInitializedOp_20VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
\
VarIsInitializedOp_21VarIsInitializedOptraining/SGD/Variable_1*
_output_shapes
: 
R
VarIsInitializedOp_22VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
\
VarIsInitializedOp_23VarIsInitializedOptraining/SGD/Variable_9*
_output_shapes
: 
T
VarIsInitializedOp_24VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
T
VarIsInitializedOp_25VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_26VarIsInitializedOpconv2d/bias*
_output_shapes
: 
]
VarIsInitializedOp_27VarIsInitializedOptraining/SGD/Variable_11*
_output_shapes
: 
R
VarIsInitializedOp_28VarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
R
VarIsInitializedOp_29VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
N
VarIsInitializedOp_30VarIsInitializedOp	SGD/decay*
_output_shapes
: 
]
VarIsInitializedOp_31VarIsInitializedOptraining/SGD/Variable_12*
_output_shapes
: 
]
VarIsInitializedOp_32VarIsInitializedOptraining/SGD/Variable_15*
_output_shapes
: 
]
VarIsInitializedOp_33VarIsInitializedOptraining/SGD/Variable_16*
_output_shapes
: 
R
VarIsInitializedOp_34VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
\
VarIsInitializedOp_35VarIsInitializedOptraining/SGD/Variable_2*
_output_shapes
: 
\
VarIsInitializedOp_36VarIsInitializedOptraining/SGD/Variable_5*
_output_shapes
: 
T
VarIsInitializedOp_37VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
R
VarIsInitializedOp_38VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
\
VarIsInitializedOp_39VarIsInitializedOptraining/SGD/Variable_8*
_output_shapes
: 
T
VarIsInitializedOp_40VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
S
VarIsInitializedOp_41VarIsInitializedOpSGD/iterations*
_output_shapes
: 
K
VarIsInitializedOp_42VarIsInitializedOpSGD/lr*
_output_shapes
: 
Q
VarIsInitializedOp_43VarIsInitializedOpSGD/momentum*
_output_shapes
: 
°	
initNoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^count/Assign^count_1/Assign^total/Assign^total_1/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign ^training/SGD/Variable_16/Assign ^training/SGD/Variable_17/Assign^training/SGD/Variable_2/Assign^training/SGD/Variable_3/Assign^training/SGD/Variable_4/Assign^training/SGD/Variable_5/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign"≠O2Уtk     Na`D	ѓ≠._O„AJз÷
©,Т,
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
м
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Ё
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
‘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
о
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
x
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2		"
align_cornersbool( 
p
ResizeNearestNeighborGrad

grads"T
size
output"T"
Ttype:

2"
align_cornersbool( 
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И*1.13.12
b'unknown'нЎ
z
input_1Placeholder*$
shape:€€€€€€€€€``*
dtype0*/
_output_shapes
:€€€€€€€€€``
z
input_2Placeholder*
dtype0*/
_output_shapes
:€€€€€€€€€``*$
shape:€€€€€€€€€``
_
subtract/subSubinput_2input_1*
T0*/
_output_shapes
:€€€€€€€€€``
©
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *р7'Њ* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *р7'>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
р
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*

seed *
T0* 
_class
loc:@conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
:
“
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
м
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0* 
_class
loc:@conv2d/kernel
ё
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0* 
_class
loc:@conv2d/kernel
±
conv2d/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
Р
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0
Щ
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
:
К
conv2d/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
Я
conv2d/biasVarHandleOp*
shared_nameconv2d/bias*
_class
loc:@conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
З
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
л
conv2d/Conv2DConv2Dsubtract/subconv2d/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
Ш
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``*
T0
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
≠
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *п[сљ*"
_class
loc:@conv2d_1/kernel
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *п[с=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
Џ
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ф
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_1/kernel
ж
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
Ј
conv2d_1/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
	container *
shape:
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
Ш
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0
Я
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
:
О
conv2d_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    * 
_class
loc:@conv2d_1/bias
•
conv2d_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
	container *
shape:
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
З
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_1/bias
Н
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d_1/bias
g
conv2d_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:
о
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
Ю
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``*
T0
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
e
add/addAddsubtract/subconv2d_1/Relu*/
_output_shapes
:€€€€€€€€€``*
T0
µ
max_pooling2d/MaxPoolMaxPooladd/add*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€00
≠
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЌУЊ*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *:ЌУ>*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
Џ
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
ф
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0
ж
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_2/kernel
Ј
conv2d_2/kernelVarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
Ш
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0
Я
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_2/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
•
conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
	container *
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
З
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_2/bias
Н
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
g
conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0
ш
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€000*
	dilations
*
T0
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€000*
T0
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€000
≠
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         0   *"
_class
loc:@conv2d_3/kernel
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *£≈љ*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *£≈=*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 
Џ
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_3/kernel
ф
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
ж
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
Ј
conv2d_3/kernelVarHandleOp* 
shared_nameconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: 
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
Ш
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_3/kernel
Я
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_3/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
•
conv2d_3/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
	container *
shape:0
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
З
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros* 
_class
loc:@conv2d_3/bias*
dtype0
Н
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0* 
_class
loc:@conv2d_3/bias
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0
ш
conv2d_3/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:€€€€€€€€€000*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€000
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€000
≠
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      0   0   *"
_class
loc:@conv2d_4/kernel
Ч
.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *Ђ™™љ*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *Ђ™™=*"
_class
loc:@conv2d_4/kernel
ц
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:00*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 
Џ
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_4/kernel
ф
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:00
ж
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_4/kernel
Ј
conv2d_4/kernelVarHandleOp*
shape:00*
dtype0*
_output_shapes
: * 
shared_nameconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
	container 
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
Ш
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_4/kernel*
dtype0
Я
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00*"
_class
loc:@conv2d_4/kernel
О
conv2d_4/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:0
•
conv2d_4/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
	container *
shape:0
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
З
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros* 
_class
loc:@conv2d_4/bias*
dtype0
Н
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0* 
_class
loc:@conv2d_4/bias
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00
р
conv2d_4/Conv2DConv2Dconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:€€€€€€€€€000*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€000
a
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€000
h
	add_1/addAddconv2d_2/Reluconv2d_4/Relu*
T0*/
_output_shapes
:€€€€€€€€€000
\
up_sampling2d/ShapeShape	add_1/add*
_output_shapes
:*
T0*
out_type0
k
!up_sampling2d/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
m
#up_sampling2d/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape!up_sampling2d/strided_slice/stack#up_sampling2d/strided_slice/stack_1#up_sampling2d/strided_slice/stack_2*
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
d
up_sampling2d/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
o
up_sampling2d/mulMulup_sampling2d/strided_sliceup_sampling2d/Const*
T0*
_output_shapes
:
©
#up_sampling2d/ResizeNearestNeighborResizeNearestNeighbor	add_1/addup_sampling2d/mul*
align_corners( *
T0*/
_output_shapes
:€€€€€€€€€``0
≠
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      0      *"
_class
loc:@conv2d_5/kernel
Ч
.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЌУЊ*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *:ЌУ>*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_5/kernel*
seed2 
Џ
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
ф
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_5/kernel
ж
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_5/kernel
Ј
conv2d_5/kernelVarHandleOp* 
shared_nameconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: 
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
Ш
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_5/kernel*
dtype0
Я
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_5/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
•
conv2d_5/biasVarHandleOp* 
_class
loc:@conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_5/bias
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
З
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros* 
_class
loc:@conv2d_5/bias*
dtype0
Н
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0
Ж
conv2d_5/Conv2DConv2D#up_sampling2d/ResizeNearestNeighborconv2d_5/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0
i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:
Ю
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``
a
conv2d_5/ReluReluconv2d_5/BiasAdd*/
_output_shapes
:€€€€€€€€€``*
T0
≠
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_6/kernel/Initializer/random_uniform/minConst*
valueB
 *£≈љ*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *£≈=*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_6/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
Џ
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
ф
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
ж
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
Ј
conv2d_6/kernelVarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
Ш
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_6/kernel
Я
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_6/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
•
conv2d_6/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
	container *
shape:
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
З
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros* 
_class
loc:@conv2d_6/bias*
dtype0
Н
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
g
conv2d_6/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0
Ж
conv2d_6/Conv2DConv2D#up_sampling2d/ResizeNearestNeighborconv2d_6/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:
Ю
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``*
T0
a
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
≠
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_7/kernel/Initializer/random_uniform/minConst*
valueB
 *п[сљ*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_7/kernel/Initializer/random_uniform/maxConst*
valueB
 *п[с=*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_7/kernel*
seed2 
Џ
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_7/kernel
ф
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:
ж
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:
Ј
conv2d_7/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: * 
shared_nameconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
Ш
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_7/kernel*
dtype0
Я
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*&
_output_shapes
:
О
conv2d_7/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:
•
conv2d_7/biasVarHandleOp*
shared_nameconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
З
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros* 
_class
loc:@conv2d_7/bias*
dtype0
Н
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:
g
conv2d_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:
р
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0
i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:
Ю
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``
a
conv2d_7/ReluReluconv2d_7/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
h
	add_2/addAddconv2d_5/Reluconv2d_7/Relu*
T0*/
_output_shapes
:€€€€€€€€€``
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
concatenate/concatConcatV2add/add	add_2/addconcatenate/concat/axis*

Tidx0*
T0*
N*/
_output_shapes
:€€€€€€€€€``0
≠
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      0      *"
_class
loc:@conv2d_8/kernel
Ч
.conv2d_8/kernel/Initializer/random_uniform/minConst*
valueB
 *•)≥Њ*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_8/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *•)≥>*"
_class
loc:@conv2d_8/kernel
ц
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_8/kernel*
seed2 
Џ
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
ф
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:0
ж
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:0
Ј
conv2d_8/kernelVarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
Ш
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_8/kernel*
dtype0
Я
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_8/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes
:
•
conv2d_8/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_8/bias* 
_class
loc:@conv2d_8/bias*
	container *
shape:
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
З
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros* 
_class
loc:@conv2d_8/bias*
dtype0
Н
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d_8/bias
g
conv2d_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0
х
conv2d_8/Conv2DConv2Dconcatenate/concatconv2d_8/Conv2D/ReadVariableOp*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:
Ю
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€``
a
conv2d_8/ReluReluconv2d_8/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€``
b
	add_3/addAddinput_1conv2d_8/Relu*
T0*/
_output_shapes
:€€€€€€€€€``
Н
(SGD/iterations/Initializer/initial_valueConst*
value	B	 R *!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
§
SGD/iterationsVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_nameSGD/iterations*!
_class
loc:@SGD/iterations
m
/SGD/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 
У
SGD/iterations/AssignAssignVariableOpSGD/iterations(SGD/iterations/Initializer/initial_value*
dtype0	*!
_class
loc:@SGD/iterations
М
"SGD/iterations/Read/ReadVariableOpReadVariableOpSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
А
 SGD/lr/Initializer/initial_valueConst*
valueB
 *
„#<*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 
М
SGD/lrVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameSGD/lr*
_class
loc:@SGD/lr*
	container *
shape: 
]
'SGD/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/lr*
_output_shapes
: 
s
SGD/lr/AssignAssignVariableOpSGD/lr SGD/lr/Initializer/initial_value*
_class
loc:@SGD/lr*
dtype0
t
SGD/lr/Read/ReadVariableOpReadVariableOpSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 
М
&SGD/momentum/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@SGD/momentum
Ю
SGD/momentumVarHandleOp*
shared_nameSGD/momentum*
_class
loc:@SGD/momentum*
	container *
shape: *
dtype0*
_output_shapes
: 
i
-SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/momentum*
_output_shapes
: 
Л
SGD/momentum/AssignAssignVariableOpSGD/momentum&SGD/momentum/Initializer/initial_value*
_class
loc:@SGD/momentum*
dtype0
Ж
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 
Ж
#SGD/decay/Initializer/initial_valueConst*
valueB
 *љ7Ж5*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
Х
	SGD/decayVarHandleOp*
_class
loc:@SGD/decay*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	SGD/decay
c
*SGD/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp	SGD/decay*
_output_shapes
: 

SGD/decay/AssignAssignVariableOp	SGD/decay#SGD/decay/Initializer/initial_value*
_class
loc:@SGD/decay*
dtype0
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
µ
add_3_targetPlaceholder*?
shape6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
Б
add_3_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
v
total/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class

loc:@total
Й
totalVarHandleOp*
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container *
shape: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
Й
countVarHandleOp*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: *
_class

loc:@count
z
total_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@total_1*
dtype0*
_output_shapes
: 
П
total_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	total_1*
_class
loc:@total_1*
	container *
shape: 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
z
count_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@count_1*
dtype0*
_output_shapes
: 
П
count_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	count_1*
_class
loc:@count_1*
	container *
shape: 
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
p
loss/add_3_loss/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Л
loss/add_3_loss/ReshapeReshapeadd_3_targetloss/add_3_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
r
loss/add_3_loss/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
М
loss/add_3_loss/Reshape_1Reshape	add_3/addloss/add_3_loss/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
|
loss/add_3_loss/mulMulloss/add_3_loss/Reshapeloss/add_3_loss/Reshape_1*
T0*#
_output_shapes
:€€€€€€€€€
_
loss/add_3_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Д
loss/add_3_loss/SumSumloss/add_3_loss/mulloss/add_3_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
\
loss/add_3_loss/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
k
loss/add_3_loss/mul_1Mulloss/add_3_loss/mul_1/xloss/add_3_loss/Sum*
T0*
_output_shapes
: 
Z
loss/add_3_loss/add/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
i
loss/add_3_loss/addAddloss/add_3_loss/mul_1loss/add_3_loss/add/y*
T0*
_output_shapes
: 
|
loss/add_3_loss/mul_2Mulloss/add_3_loss/Reshapeloss/add_3_loss/Reshape*
T0*#
_output_shapes
:€€€€€€€€€
a
loss/add_3_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
К
loss/add_3_loss/Sum_1Sumloss/add_3_loss/mul_2loss/add_3_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
А
loss/add_3_loss/mul_3Mulloss/add_3_loss/Reshape_1loss/add_3_loss/Reshape_1*
T0*#
_output_shapes
:€€€€€€€€€
a
loss/add_3_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
К
loss/add_3_loss/Sum_2Sumloss/add_3_loss/mul_3loss/add_3_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
loss/add_3_loss/add_1Addloss/add_3_loss/Sum_1loss/add_3_loss/Sum_2*
T0*
_output_shapes
: 
\
loss/add_3_loss/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
m
loss/add_3_loss/add_2Addloss/add_3_loss/add_1loss/add_3_loss/add_2/y*
T0*
_output_shapes
: 
o
loss/add_3_loss/truedivRealDivloss/add_3_loss/addloss/add_3_loss/add_2*
T0*
_output_shapes
: 
Z
loss/add_3_loss/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
k
loss/add_3_loss/subSubloss/add_3_loss/sub/xloss/add_3_loss/truediv*
T0*
_output_shapes
: 
y
loss/add_3_loss/SqueezeSqueezeadd_3_sample_weights*
_output_shapes
: *
squeeze_dims

€€€€€€€€€*
T0
k
loss/add_3_loss/Mul_4Mulloss/add_3_loss/subloss/add_3_loss/Squeeze*
T0*
_output_shapes
: 
Z
loss/add_3_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
К
loss/add_3_loss/Sum_3Sumloss/add_3_loss/Mul_4loss/add_3_loss/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Z
loss/add_3_loss/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
М
loss/add_3_loss/Sum_4Sumloss/add_3_loss/Squeezeloss/add_3_loss/Const_4*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
u
loss/add_3_loss/div_no_nanDivNoNanloss/add_3_loss/Sum_3loss/add_3_loss/Sum_4*
_output_shapes
: *
T0
Z
loss/add_3_loss/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
П
loss/add_3_loss/MeanMeanloss/add_3_loss/div_no_nanloss/add_3_loss/Const_5*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
R
loss/mulMul
loss/mul/xloss/add_3_loss/Mean*
T0*
_output_shapes
: 
s
metrics/psnr/subSub	add_3/addadd_3_target*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
r
metrics/psnr/SquareSquaremetrics/psnr/sub*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€*
T0
k
metrics/psnr/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
А
metrics/psnr/MeanMeanmetrics/psnr/Squaremetrics/psnr/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
K
metrics/psnr/LogLogmetrics/psnr/Mean*
_output_shapes
: *
T0
Y
metrics/psnr/Const_1Const*
valueB
 *   A*
dtype0*
_output_shapes
: 
P
metrics/psnr/Log_1Logmetrics/psnr/Const_1*
T0*
_output_shapes
: 
f
metrics/psnr/truedivRealDivmetrics/psnr/Logmetrics/psnr/Log_1*
T0*
_output_shapes
: 
W
metrics/psnr/mul/xConst*
valueB
 *   Ѕ*
dtype0*
_output_shapes
: 
b
metrics/psnr/mulMulmetrics/psnr/mul/xmetrics/psnr/truediv*
_output_shapes
: *
T0
S
metrics/psnr/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
l
metrics/psnr/CastCastmetrics/psnr/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
W
metrics/psnr/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
}
metrics/psnr/SumSummetrics/psnr/mulmetrics/psnr/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
]
 metrics/psnr/AssignAddVariableOpAssignAddVariableOptotalmetrics/psnr/Sum*
dtype0
|
metrics/psnr/ReadVariableOpReadVariableOptotal!^metrics/psnr/AssignAddVariableOp*
dtype0*
_output_shapes
: 
~
"metrics/psnr/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/psnr/Cast^metrics/psnr/ReadVariableOp*
dtype0
Ю
metrics/psnr/ReadVariableOp_1ReadVariableOpcount#^metrics/psnr/AssignAddVariableOp_1^metrics/psnr/ReadVariableOp*
dtype0*
_output_shapes
: 
Д
&metrics/psnr/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ж
(metrics/psnr/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ц
metrics/psnr/div_no_nanDivNoNan&metrics/psnr/div_no_nan/ReadVariableOp(metrics/psnr/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
u
metrics/psnr/sub_1Sub	add_3/addadd_3_target*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€*
T0
v
metrics/psnr/Square_1Squaremetrics/psnr/sub_1*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
m
metrics/psnr/Const_3Const*%
valueB"             *
dtype0*
_output_shapes
:
Ж
metrics/psnr/Mean_1Meanmetrics/psnr/Square_1metrics/psnr/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O
metrics/psnr/Log_2Logmetrics/psnr/Mean_1*
T0*
_output_shapes
: 
Y
metrics/psnr/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *   A
P
metrics/psnr/Log_3Logmetrics/psnr/Const_4*
T0*
_output_shapes
: 
j
metrics/psnr/truediv_1RealDivmetrics/psnr/Log_2metrics/psnr/Log_3*
T0*
_output_shapes
: 
Y
metrics/psnr/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   Ѕ
h
metrics/psnr/mul_1Mulmetrics/psnr/mul_1/xmetrics/psnr/truediv_1*
T0*
_output_shapes
: 
W
metrics/psnr/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
Г
metrics/psnr/Mean_2Meanmetrics/psnr/mul_1metrics/psnr/Const_5*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
z
metrics/ssim/ShapeNShapeNadd_3_target	add_3/add*
T0*
out_type0*
N* 
_output_shapes
::
S
metrics/ssim/SizeConst*
dtype0*
_output_shapes
: *
value	B :
]
metrics/ssim/GreaterEqual/yConst*
value	B :*
dtype0*
_output_shapes
: 
z
metrics/ssim/GreaterEqualGreaterEqualmetrics/ssim/Sizemetrics/ssim/GreaterEqual/y*
T0*
_output_shapes
: 
Й
metrics/ssim/Assert/AssertAssertmetrics/ssim/GreaterEqualmetrics/ssim/ShapeNmetrics/ssim/ShapeN:1*
T
2*
	summarize

s
 metrics/ssim/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
l
"metrics/ssim/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
l
"metrics/ssim/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
њ
metrics/ssim/strided_sliceStridedSlicemetrics/ssim/ShapeN metrics/ssim/strided_slice/stack"metrics/ssim/strided_slice/stack_1"metrics/ssim/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
u
"metrics/ssim/strided_slice_1/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
n
$metrics/ssim/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
…
metrics/ssim/strided_slice_1StridedSlicemetrics/ssim/ShapeN:1"metrics/ssim/strided_slice_1/stack$metrics/ssim/strided_slice_1/stack_1$metrics/ssim/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
z
metrics/ssim/EqualEqualmetrics/ssim/strided_slicemetrics/ssim/strided_slice_1*
T0*
_output_shapes
:
\
metrics/ssim/ConstConst*
valueB: *
dtype0*
_output_shapes
:
t
metrics/ssim/AllAllmetrics/ssim/Equalmetrics/ssim/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
В
metrics/ssim/Assert_1/AssertAssertmetrics/ssim/Allmetrics/ssim/ShapeNmetrics/ssim/ShapeN:1*
T
2*
	summarize

ј
metrics/ssim/IdentityIdentityadd_3_target^metrics/ssim/Assert/Assert^metrics/ssim/Assert_1/Assert*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
X
metrics/ssim/Cast/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Y
metrics/ssim/Identity_1Identitymetrics/ssim/Cast/x*
T0*
_output_shapes
: 
П
metrics/ssim/Identity_2Identitymetrics/ssim/Identity*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
h
metrics/ssim/Identity_3Identity	add_3/add*
T0*/
_output_shapes
:€€€€€€€€€``
V
metrics/ssim/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
Y
metrics/ssim/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  ј?
Х
metrics/ssim/ShapeN_1ShapeNmetrics/ssim/Identity_2metrics/ssim/Identity_3*
T0*
out_type0*
N* 
_output_shapes
::
u
"metrics/ssim/strided_slice_2/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_2/stack_1Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
…
metrics/ssim/strided_slice_2StridedSlicemetrics/ssim/ShapeN_1"metrics/ssim/strided_slice_2/stack$metrics/ssim/strided_slice_2/stack_1$metrics/ssim/strided_slice_2/stack_2*
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
Д
metrics/ssim/GreaterEqual_1GreaterEqualmetrics/ssim/strided_slice_2metrics/ssim/Const_1*
_output_shapes
:*
T0
^
metrics/ssim/Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
Б
metrics/ssim/All_1Allmetrics/ssim/GreaterEqual_1metrics/ssim/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0
Е
metrics/ssim/Assert_2/AssertAssertmetrics/ssim/All_1metrics/ssim/ShapeN_1metrics/ssim/Const_1*
T
2*
	summarize
u
"metrics/ssim/strided_slice_3/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
n
$metrics/ssim/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ћ
metrics/ssim/strided_slice_3StridedSlicemetrics/ssim/ShapeN_1:1"metrics/ssim/strided_slice_3/stack$metrics/ssim/strided_slice_3/stack_1$metrics/ssim/strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
Д
metrics/ssim/GreaterEqual_2GreaterEqualmetrics/ssim/strided_slice_3metrics/ssim/Const_1*
T0*
_output_shapes
:
^
metrics/ssim/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
Б
metrics/ssim/All_2Allmetrics/ssim/GreaterEqual_2metrics/ssim/Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0
З
metrics/ssim/Assert_3/AssertAssertmetrics/ssim/All_2metrics/ssim/ShapeN_1:1metrics/ssim/Const_1*
T
2*
	summarize
ѕ
metrics/ssim/Identity_4Identitymetrics/ssim/Identity_2^metrics/ssim/Assert_2/Assert^metrics/ssim/Assert_3/Assert*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Z
metrics/ssim/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Z
metrics/ssim/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Н
metrics/ssim/rangeRangemetrics/ssim/range/startmetrics/ssim/Const_1metrics/ssim/range/delta*
_output_shapes
:*

Tidx0
s
metrics/ssim/Cast_1Castmetrics/ssim/range*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0
T
metrics/ssim/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
b
metrics/ssim/subSubmetrics/ssim/Const_1metrics/ssim/sub/y*
T0*
_output_shapes
: 
m
metrics/ssim/Cast_2Castmetrics/ssim/sub*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
[
metrics/ssim/truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
m
metrics/ssim/truedivRealDivmetrics/ssim/Cast_2metrics/ssim/truediv/y*
T0*
_output_shapes
: 
i
metrics/ssim/sub_1Submetrics/ssim/Cast_1metrics/ssim/truediv*
_output_shapes
:*
T0
V
metrics/ssim/SquareSquaremetrics/ssim/sub_1*
T0*
_output_shapes
:
V
metrics/ssim/Square_1Squaremetrics/ssim/Const_2*
_output_shapes
: *
T0
]
metrics/ssim/truediv_1/xConst*
valueB
 *   њ*
dtype0*
_output_shapes
: 
s
metrics/ssim/truediv_1RealDivmetrics/ssim/truediv_1/xmetrics/ssim/Square_1*
T0*
_output_shapes
: 
i
metrics/ssim/mulMulmetrics/ssim/Squaremetrics/ssim/truediv_1*
T0*
_output_shapes
:
k
metrics/ssim/Reshape/shapeConst*
valueB"   €€€€*
dtype0*
_output_shapes
:
Д
metrics/ssim/ReshapeReshapemetrics/ssim/mulmetrics/ssim/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
m
metrics/ssim/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
И
metrics/ssim/Reshape_1Reshapemetrics/ssim/mulmetrics/ssim/Reshape_1/shape*
T0*
Tshape0*
_output_shapes

:
n
metrics/ssim/addAddmetrics/ssim/Reshapemetrics/ssim/Reshape_1*
T0*
_output_shapes

:
m
metrics/ssim/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"   €€€€
И
metrics/ssim/Reshape_2Reshapemetrics/ssim/addmetrics/ssim/Reshape_2/shape*
T0*
Tshape0*
_output_shapes

:y
`
metrics/ssim/SoftmaxSoftmaxmetrics/ssim/Reshape_2*
T0*
_output_shapes

:y
`
metrics/ssim/Reshape_3/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
`
metrics/ssim/Reshape_3/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
 
metrics/ssim/Reshape_3/shapePackmetrics/ssim/Const_1metrics/ssim/Const_1metrics/ssim/Reshape_3/shape/2metrics/ssim/Reshape_3/shape/3*
T0*

axis *
N*
_output_shapes
:
Ф
metrics/ssim/Reshape_3Reshapemetrics/ssim/Softmaxmetrics/ssim/Reshape_3/shape*
T0*
Tshape0*&
_output_shapes
:
u
"metrics/ssim/strided_slice_4/stackConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
n
$metrics/ssim/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
≈
metrics/ssim/strided_slice_4StridedSlicemetrics/ssim/ShapeN_1"metrics/ssim/strided_slice_4/stack$metrics/ssim/strided_slice_4/stack_1$metrics/ssim/strided_slice_4/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
_
metrics/ssim/Tile/multiples/0Const*
dtype0*
_output_shapes
: *
value	B :
_
metrics/ssim/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/Tile/multiples/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ў
metrics/ssim/Tile/multiplesPackmetrics/ssim/Tile/multiples/0metrics/ssim/Tile/multiples/1metrics/ssim/strided_slice_4metrics/ssim/Tile/multiples/3*
T0*

axis *
N*
_output_shapes
:
Ъ
metrics/ssim/TileTilemetrics/ssim/Reshape_3metrics/ssim/Tile/multiples*

Tmultiples0*
T0*/
_output_shapes
:€€€€€€€€€
Y
metrics/ssim/mul_1/xConst*
valueB
 *
„#<*
dtype0*
_output_shapes
: 
i
metrics/ssim/mul_1Mulmetrics/ssim/mul_1/xmetrics/ssim/Identity_1*
_output_shapes
: *
T0
W
metrics/ssim/pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
`
metrics/ssim/powPowmetrics/ssim/mul_1metrics/ssim/pow/y*
T0*
_output_shapes
: 
Y
metrics/ssim/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *П¬х<
i
metrics/ssim/mul_2Mulmetrics/ssim/mul_2/xmetrics/ssim/Identity_1*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
d
metrics/ssim/pow_1Powmetrics/ssim/mul_2metrics/ssim/pow_1/y*
T0*
_output_shapes
: 
i
metrics/ssim/ShapeShapemetrics/ssim/Identity_4*
T0*
out_type0*
_output_shapes
:
u
"metrics/ssim/strided_slice_5/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_5/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
n
$metrics/ssim/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
∆
metrics/ssim/strided_slice_5StridedSlicemetrics/ssim/Shape"metrics/ssim/strided_slice_5/stack$metrics/ssim/strided_slice_5/stack_1$metrics/ssim/strided_slice_5/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
o
metrics/ssim/concat/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Z
metrics/ssim/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ѓ
metrics/ssim/concatConcatV2metrics/ssim/concat/values_0metrics/ssim/strided_slice_5metrics/ssim/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
≤
metrics/ssim/Reshape_4Reshapemetrics/ssim/Identity_4metrics/ssim/concat*
T0*
Tshape0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
metrics/ssim/depthwise/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
u
$metrics/ssim/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ж
metrics/ssim/depthwiseDepthwiseConv2dNativemetrics/ssim/Reshape_4metrics/ssim/Tile*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
l
"metrics/ssim/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_6/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
∆
metrics/ssim/strided_slice_6StridedSlicemetrics/ssim/Shape"metrics/ssim/strided_slice_6/stack$metrics/ssim/strided_slice_6/stack_1$metrics/ssim/strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
j
metrics/ssim/Shape_1Shapemetrics/ssim/depthwise*
T0*
out_type0*
_output_shapes
:
l
"metrics/ssim/strided_slice_7/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_7/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_7/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
»
metrics/ssim/strided_slice_7StridedSlicemetrics/ssim/Shape_1"metrics/ssim/strided_slice_7/stack$metrics/ssim/strided_slice_7/stack_1$metrics/ssim/strided_slice_7/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
\
metrics/ssim/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
≥
metrics/ssim/concat_1ConcatV2metrics/ssim/strided_slice_6metrics/ssim/strided_slice_7metrics/ssim/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
≥
metrics/ssim/Reshape_5Reshapemetrics/ssim/depthwisemetrics/ssim/concat_1*
T0*
Tshape0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
k
metrics/ssim/Shape_2Shapemetrics/ssim/Identity_3*
_output_shapes
:*
T0*
out_type0
u
"metrics/ssim/strided_slice_8/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_8/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
»
metrics/ssim/strided_slice_8StridedSlicemetrics/ssim/Shape_2"metrics/ssim/strided_slice_8/stack$metrics/ssim/strided_slice_8/stack_1$metrics/ssim/strided_slice_8/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
q
metrics/ssim/concat_2/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
µ
metrics/ssim/concat_2ConcatV2metrics/ssim/concat_2/values_0metrics/ssim/strided_slice_8metrics/ssim/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
Щ
metrics/ssim/Reshape_6Reshapemetrics/ssim/Identity_3metrics/ssim/concat_2*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€``
o
metrics/ssim/depthwise_1/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
н
metrics/ssim/depthwise_1DepthwiseConv2dNativemetrics/ssim/Reshape_6metrics/ssim/Tile*
paddingVALID*/
_output_shapes
:€€€€€€€€€VV*
	dilations
*
T0*
data_formatNHWC*
strides

l
"metrics/ssim/strided_slice_9/stackConst*
dtype0*
_output_shapes
:*
valueB: 
w
$metrics/ssim/strided_slice_9/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
»
metrics/ssim/strided_slice_9StridedSlicemetrics/ssim/Shape_2"metrics/ssim/strided_slice_9/stack$metrics/ssim/strided_slice_9/stack_1$metrics/ssim/strided_slice_9/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
l
metrics/ssim/Shape_3Shapemetrics/ssim/depthwise_1*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_10/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_10/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_10StridedSlicemetrics/ssim/Shape_3#metrics/ssim/strided_slice_10/stack%metrics/ssim/strided_slice_10/stack_1%metrics/ssim/strided_slice_10/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_3/axisConst*
value	B : *
dtype0*
_output_shapes
: 
і
metrics/ssim/concat_3ConcatV2metrics/ssim/strided_slice_9metrics/ssim/strided_slice_10metrics/ssim/concat_3/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ъ
metrics/ssim/Reshape_7Reshapemetrics/ssim/depthwise_1metrics/ssim/concat_3*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€VV
М
metrics/ssim/mul_3Mulmetrics/ssim/Reshape_5metrics/ssim/Reshape_7*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Y
metrics/ssim/mul_4/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Ж
metrics/ssim/mul_4Mulmetrics/ssim/mul_3metrics/ssim/mul_4/y*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
М
metrics/ssim/Square_2Squaremetrics/ssim/Reshape_5*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
q
metrics/ssim/Square_3Squaremetrics/ssim/Reshape_7*
T0*/
_output_shapes
:€€€€€€€€€VV
К
metrics/ssim/add_1Addmetrics/ssim/Square_2metrics/ssim/Square_3*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
В
metrics/ssim/add_2Addmetrics/ssim/mul_4metrics/ssim/pow*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
В
metrics/ssim/add_3Addmetrics/ssim/add_1metrics/ssim/pow*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
М
metrics/ssim/truediv_2RealDivmetrics/ssim/add_2metrics/ssim/add_3*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
О
metrics/ssim/mul_5Mulmetrics/ssim/Identity_4metrics/ssim/Identity_3*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
f
metrics/ssim/Shape_4Shapemetrics/ssim/mul_5*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_11/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_11/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_11StridedSlicemetrics/ssim/Shape_4#metrics/ssim/strided_slice_11/stack%metrics/ssim/strided_slice_11/stack_1%metrics/ssim/strided_slice_11/stack_2*
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
q
metrics/ssim/concat_4/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ґ
metrics/ssim/concat_4ConcatV2metrics/ssim/concat_4/values_0metrics/ssim/strided_slice_11metrics/ssim/concat_4/axis*
T0*
N*
_output_shapes
:*

Tidx0
Э
metrics/ssim/Reshape_8Reshapemetrics/ssim/mul_5metrics/ssim/concat_4*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
o
metrics/ssim/depthwise_2/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ц
metrics/ssim/depthwise_2DepthwiseConv2dNativemetrics/ssim/Reshape_8metrics/ssim/Tile*
paddingVALID*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
	dilations
*
T0*
data_formatNHWC*
strides

m
#metrics/ssim/strided_slice_12/stackConst*
dtype0*
_output_shapes
:*
valueB: 
x
%metrics/ssim/strided_slice_12/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_12StridedSlicemetrics/ssim/Shape_4#metrics/ssim/strided_slice_12/stack%metrics/ssim/strided_slice_12/stack_1%metrics/ssim/strided_slice_12/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
l
metrics/ssim/Shape_5Shapemetrics/ssim/depthwise_2*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_13/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_13/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_13StridedSlicemetrics/ssim/Shape_5#metrics/ssim/strided_slice_13/stack%metrics/ssim/strided_slice_13/stack_1%metrics/ssim/strided_slice_13/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_5/axisConst*
dtype0*
_output_shapes
: *
value	B : 
µ
metrics/ssim/concat_5ConcatV2metrics/ssim/strided_slice_12metrics/ssim/strided_slice_13metrics/ssim/concat_5/axis*

Tidx0*
T0*
N*
_output_shapes
:
£
metrics/ssim/Reshape_9Reshapemetrics/ssim/depthwise_2metrics/ssim/concat_5*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Y
metrics/ssim/mul_6/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
К
metrics/ssim/mul_6Mulmetrics/ssim/Reshape_9metrics/ssim/mul_6/y*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Н
metrics/ssim/Square_4Squaremetrics/ssim/Identity_4*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
r
metrics/ssim/Square_5Squaremetrics/ssim/Identity_3*/
_output_shapes
:€€€€€€€€€``*
T0
К
metrics/ssim/add_4Addmetrics/ssim/Square_4metrics/ssim/Square_5*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
f
metrics/ssim/Shape_6Shapemetrics/ssim/add_4*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_14/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_14/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_14/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ћ
metrics/ssim/strided_slice_14StridedSlicemetrics/ssim/Shape_6#metrics/ssim/strided_slice_14/stack%metrics/ssim/strided_slice_14/stack_1%metrics/ssim/strided_slice_14/stack_2*
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
q
metrics/ssim/concat_6/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_6/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ґ
metrics/ssim/concat_6ConcatV2metrics/ssim/concat_6/values_0metrics/ssim/strided_slice_14metrics/ssim/concat_6/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ю
metrics/ssim/Reshape_10Reshapemetrics/ssim/add_4metrics/ssim/concat_6*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
o
metrics/ssim/depthwise_3/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ч
metrics/ssim/depthwise_3DepthwiseConv2dNativemetrics/ssim/Reshape_10metrics/ssim/Tile*
T0*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
	dilations

m
#metrics/ssim/strided_slice_15/stackConst*
dtype0*
_output_shapes
:*
valueB: 
x
%metrics/ssim/strided_slice_15/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_15StridedSlicemetrics/ssim/Shape_6#metrics/ssim/strided_slice_15/stack%metrics/ssim/strided_slice_15/stack_1%metrics/ssim/strided_slice_15/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
l
metrics/ssim/Shape_7Shapemetrics/ssim/depthwise_3*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_16/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_16/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_16StridedSlicemetrics/ssim/Shape_7#metrics/ssim/strided_slice_16/stack%metrics/ssim/strided_slice_16/stack_1%metrics/ssim/strided_slice_16/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
\
metrics/ssim/concat_7/axisConst*
value	B : *
dtype0*
_output_shapes
: 
µ
metrics/ssim/concat_7ConcatV2metrics/ssim/strided_slice_15metrics/ssim/strided_slice_16metrics/ssim/concat_7/axis*
T0*
N*
_output_shapes
:*

Tidx0
§
metrics/ssim/Reshape_11Reshapemetrics/ssim/depthwise_3metrics/ssim/concat_7*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Y
metrics/ssim/mul_7/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
d
metrics/ssim/mul_7Mulmetrics/ssim/pow_1metrics/ssim/mul_7/y*
_output_shapes
: *
T0
Д
metrics/ssim/sub_2Submetrics/ssim/mul_6metrics/ssim/mul_4*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Д
metrics/ssim/add_5Addmetrics/ssim/sub_2metrics/ssim/mul_7*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Й
metrics/ssim/sub_3Submetrics/ssim/Reshape_11metrics/ssim/add_1*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Д
metrics/ssim/add_6Addmetrics/ssim/sub_3metrics/ssim/mul_7*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
М
metrics/ssim/truediv_3RealDivmetrics/ssim/add_5metrics/ssim/add_6*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
e
metrics/ssim/Const_5Const*
valueB"э€€€ю€€€*
dtype0*
_output_shapes
:
М
metrics/ssim/mul_8Mulmetrics/ssim/truediv_2metrics/ssim/truediv_3*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Ы
metrics/ssim/MeanMeanmetrics/ssim/mul_8metrics/ssim/Const_5*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
	keep_dims( *

Tidx0*
T0
°
metrics/ssim/Mean_1Meanmetrics/ssim/truediv_3metrics/ssim/Const_5*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
	keep_dims( *

Tidx0
x
%metrics/ssim/Mean_2/reduction_indicesConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
†
metrics/ssim/Mean_2Meanmetrics/ssim/Mean%metrics/ssim/Mean_2/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*
	keep_dims( *

Tidx0
^
metrics/ssim/Const_6Const*
dtype0*
_output_shapes
:*
valueB: 
Д
metrics/ssim/Mean_3Meanmetrics/ssim/Mean_2metrics/ssim/Const_6*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
U
metrics/ssim/Size_1Const*
value	B :*
dtype0*
_output_shapes
: 
p
metrics/ssim/Cast_3Castmetrics/ssim/Size_1*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
W
metrics/ssim/Const_7Const*
valueB *
dtype0*
_output_shapes
: 
А
metrics/ssim/SumSummetrics/ssim/Mean_3metrics/ssim/Const_7*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
_
 metrics/ssim/AssignAddVariableOpAssignAddVariableOptotal_1metrics/ssim/Sum*
dtype0
~
metrics/ssim/ReadVariableOpReadVariableOptotal_1!^metrics/ssim/AssignAddVariableOp*
dtype0*
_output_shapes
: 
В
"metrics/ssim/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics/ssim/Cast_3^metrics/ssim/ReadVariableOp*
dtype0
†
metrics/ssim/ReadVariableOp_1ReadVariableOpcount_1#^metrics/ssim/AssignAddVariableOp_1^metrics/ssim/ReadVariableOp*
dtype0*
_output_shapes
: 
Ж
&metrics/ssim/div_no_nan/ReadVariableOpReadVariableOptotal_1^metrics/ssim/ReadVariableOp_1*
dtype0*
_output_shapes
: 
И
(metrics/ssim/div_no_nan/ReadVariableOp_1ReadVariableOpcount_1^metrics/ssim/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ц
metrics/ssim/div_no_nanDivNoNan&metrics/ssim/div_no_nan/ReadVariableOp(metrics/ssim/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
|
metrics/ssim/ShapeN_2ShapeNadd_3_target	add_3/add*
T0*
out_type0*
N* 
_output_shapes
::
U
metrics/ssim/Size_2Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/GreaterEqual_3/yConst*
value	B :*
dtype0*
_output_shapes
: 
А
metrics/ssim/GreaterEqual_3GreaterEqualmetrics/ssim/Size_2metrics/ssim/GreaterEqual_3/y*
T0*
_output_shapes
: 
С
metrics/ssim/Assert_4/AssertAssertmetrics/ssim/GreaterEqual_3metrics/ssim/ShapeN_2metrics/ssim/ShapeN_2:1*
T
2*
	summarize

v
#metrics/ssim/strided_slice_17/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_17/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_17StridedSlicemetrics/ssim/ShapeN_2#metrics/ssim/strided_slice_17/stack%metrics/ssim/strided_slice_17/stack_1%metrics/ssim/strided_slice_17/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
v
#metrics/ssim/strided_slice_18/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_18/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_18/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѕ
metrics/ssim/strided_slice_18StridedSlicemetrics/ssim/ShapeN_2:1#metrics/ssim/strided_slice_18/stack%metrics/ssim/strided_slice_18/stack_1%metrics/ssim/strided_slice_18/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
А
metrics/ssim/Equal_1Equalmetrics/ssim/strided_slice_17metrics/ssim/strided_slice_18*
T0*
_output_shapes
:
^
metrics/ssim/Const_8Const*
valueB: *
dtype0*
_output_shapes
:
z
metrics/ssim/All_3Allmetrics/ssim/Equal_1metrics/ssim/Const_8*
_output_shapes
: *
	keep_dims( *

Tidx0
И
metrics/ssim/Assert_5/AssertAssertmetrics/ssim/All_3metrics/ssim/ShapeN_2metrics/ssim/ShapeN_2:1*
T
2*
	summarize

ƒ
metrics/ssim/Identity_5Identityadd_3_target^metrics/ssim/Assert_4/Assert^metrics/ssim/Assert_5/Assert*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Z
metrics/ssim/Cast_4/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
[
metrics/ssim/Identity_6Identitymetrics/ssim/Cast_4/x*
_output_shapes
: *
T0
С
metrics/ssim/Identity_7Identitymetrics/ssim/Identity_5*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
h
metrics/ssim/Identity_8Identity	add_3/add*
T0*/
_output_shapes
:€€€€€€€€€``
V
metrics/ssim/Const_9Const*
value	B :*
dtype0*
_output_shapes
: 
Z
metrics/ssim/Const_10Const*
dtype0*
_output_shapes
: *
valueB
 *  ј?
Х
metrics/ssim/ShapeN_3ShapeNmetrics/ssim/Identity_7metrics/ssim/Identity_8*
N* 
_output_shapes
::*
T0*
out_type0
v
#metrics/ssim/strided_slice_19/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
x
%metrics/ssim/strided_slice_19/stack_1Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_19/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_19StridedSlicemetrics/ssim/ShapeN_3#metrics/ssim/strided_slice_19/stack%metrics/ssim/strided_slice_19/stack_1%metrics/ssim/strided_slice_19/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
Е
metrics/ssim/GreaterEqual_4GreaterEqualmetrics/ssim/strided_slice_19metrics/ssim/Const_9*
T0*
_output_shapes
:
_
metrics/ssim/Const_11Const*
valueB: *
dtype0*
_output_shapes
:
В
metrics/ssim/All_4Allmetrics/ssim/GreaterEqual_4metrics/ssim/Const_11*
_output_shapes
: *
	keep_dims( *

Tidx0
Е
metrics/ssim/Assert_6/AssertAssertmetrics/ssim/All_4metrics/ssim/ShapeN_3metrics/ssim/Const_9*
T
2*
	summarize
v
#metrics/ssim/strided_slice_20/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_20/stack_1Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_20/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѕ
metrics/ssim/strided_slice_20StridedSlicemetrics/ssim/ShapeN_3:1#metrics/ssim/strided_slice_20/stack%metrics/ssim/strided_slice_20/stack_1%metrics/ssim/strided_slice_20/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
Е
metrics/ssim/GreaterEqual_5GreaterEqualmetrics/ssim/strided_slice_20metrics/ssim/Const_9*
T0*
_output_shapes
:
_
metrics/ssim/Const_12Const*
dtype0*
_output_shapes
:*
valueB: 
В
metrics/ssim/All_5Allmetrics/ssim/GreaterEqual_5metrics/ssim/Const_12*
	keep_dims( *

Tidx0*
_output_shapes
: 
З
metrics/ssim/Assert_7/AssertAssertmetrics/ssim/All_5metrics/ssim/ShapeN_3:1metrics/ssim/Const_9*
T
2*
	summarize
ѕ
metrics/ssim/Identity_9Identitymetrics/ssim/Identity_7^metrics/ssim/Assert_6/Assert^metrics/ssim/Assert_7/Assert*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
\
metrics/ssim/range_1/startConst*
dtype0*
_output_shapes
: *
value	B : 
\
metrics/ssim/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
У
metrics/ssim/range_1Rangemetrics/ssim/range_1/startmetrics/ssim/Const_9metrics/ssim/range_1/delta*
_output_shapes
:*

Tidx0
u
metrics/ssim/Cast_5Castmetrics/ssim/range_1*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0
V
metrics/ssim/sub_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
f
metrics/ssim/sub_4Submetrics/ssim/Const_9metrics/ssim/sub_4/y*
T0*
_output_shapes
: 
o
metrics/ssim/Cast_6Castmetrics/ssim/sub_4*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
]
metrics/ssim/truediv_4/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
q
metrics/ssim/truediv_4RealDivmetrics/ssim/Cast_6metrics/ssim/truediv_4/y*
_output_shapes
: *
T0
k
metrics/ssim/sub_5Submetrics/ssim/Cast_5metrics/ssim/truediv_4*
T0*
_output_shapes
:
X
metrics/ssim/Square_6Squaremetrics/ssim/sub_5*
T0*
_output_shapes
:
W
metrics/ssim/Square_7Squaremetrics/ssim/Const_10*
T0*
_output_shapes
: 
]
metrics/ssim/truediv_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *   њ
s
metrics/ssim/truediv_5RealDivmetrics/ssim/truediv_5/xmetrics/ssim/Square_7*
_output_shapes
: *
T0
m
metrics/ssim/mul_9Mulmetrics/ssim/Square_6metrics/ssim/truediv_5*
T0*
_output_shapes
:
n
metrics/ssim/Reshape_12/shapeConst*
dtype0*
_output_shapes
:*
valueB"   €€€€
М
metrics/ssim/Reshape_12Reshapemetrics/ssim/mul_9metrics/ssim/Reshape_12/shape*
_output_shapes

:*
T0*
Tshape0
n
metrics/ssim/Reshape_13/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
М
metrics/ssim/Reshape_13Reshapemetrics/ssim/mul_9metrics/ssim/Reshape_13/shape*
T0*
Tshape0*
_output_shapes

:
t
metrics/ssim/add_7Addmetrics/ssim/Reshape_12metrics/ssim/Reshape_13*
T0*
_output_shapes

:
n
metrics/ssim/Reshape_14/shapeConst*
valueB"   €€€€*
dtype0*
_output_shapes
:
М
metrics/ssim/Reshape_14Reshapemetrics/ssim/add_7metrics/ssim/Reshape_14/shape*
T0*
Tshape0*
_output_shapes

:y
c
metrics/ssim/Softmax_1Softmaxmetrics/ssim/Reshape_14*
T0*
_output_shapes

:y
a
metrics/ssim/Reshape_15/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
a
metrics/ssim/Reshape_15/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ќ
metrics/ssim/Reshape_15/shapePackmetrics/ssim/Const_9metrics/ssim/Const_9metrics/ssim/Reshape_15/shape/2metrics/ssim/Reshape_15/shape/3*
T0*

axis *
N*
_output_shapes
:
Ш
metrics/ssim/Reshape_15Reshapemetrics/ssim/Softmax_1metrics/ssim/Reshape_15/shape*
T0*
Tshape0*&
_output_shapes
:
v
#metrics/ssim/strided_slice_21/stackConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_21/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_21/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
…
metrics/ssim/strided_slice_21StridedSlicemetrics/ssim/ShapeN_3#metrics/ssim/strided_slice_21/stack%metrics/ssim/strided_slice_21/stack_1%metrics/ssim/strided_slice_21/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
a
metrics/ssim/Tile_1/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
a
metrics/ssim/Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
a
metrics/ssim/Tile_1/multiples/3Const*
dtype0*
_output_shapes
: *
value	B :
б
metrics/ssim/Tile_1/multiplesPackmetrics/ssim/Tile_1/multiples/0metrics/ssim/Tile_1/multiples/1metrics/ssim/strided_slice_21metrics/ssim/Tile_1/multiples/3*
T0*

axis *
N*
_output_shapes
:
Я
metrics/ssim/Tile_1Tilemetrics/ssim/Reshape_15metrics/ssim/Tile_1/multiples*/
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0
Z
metrics/ssim/mul_10/xConst*
valueB
 *
„#<*
dtype0*
_output_shapes
: 
k
metrics/ssim/mul_10Mulmetrics/ssim/mul_10/xmetrics/ssim/Identity_6*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_2/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
e
metrics/ssim/pow_2Powmetrics/ssim/mul_10metrics/ssim/pow_2/y*
T0*
_output_shapes
: 
Z
metrics/ssim/mul_11/xConst*
valueB
 *П¬х<*
dtype0*
_output_shapes
: 
k
metrics/ssim/mul_11Mulmetrics/ssim/mul_11/xmetrics/ssim/Identity_6*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_3/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
e
metrics/ssim/pow_3Powmetrics/ssim/mul_11metrics/ssim/pow_3/y*
T0*
_output_shapes
: 
k
metrics/ssim/Shape_8Shapemetrics/ssim/Identity_9*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_22/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_22/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_22/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_22StridedSlicemetrics/ssim/Shape_8#metrics/ssim/strided_slice_22/stack%metrics/ssim/strided_slice_22/stack_1%metrics/ssim/strided_slice_22/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
q
metrics/ssim/concat_8/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_8/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ґ
metrics/ssim/concat_8ConcatV2metrics/ssim/concat_8/values_0metrics/ssim/strided_slice_22metrics/ssim/concat_8/axis*
T0*
N*
_output_shapes
:*

Tidx0
µ
metrics/ssim/Reshape_16Reshapemetrics/ssim/Identity_9metrics/ssim/concat_8*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
q
metrics/ssim/depthwise_4/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Л
metrics/ssim/depthwise_4DepthwiseConv2dNativemetrics/ssim/Reshape_16metrics/ssim/Tile_1*
paddingVALID*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
data_formatNHWC*
strides

m
#metrics/ssim/strided_slice_23/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_23/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_23/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_23StridedSlicemetrics/ssim/Shape_8#metrics/ssim/strided_slice_23/stack%metrics/ssim/strided_slice_23/stack_1%metrics/ssim/strided_slice_23/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
l
metrics/ssim/Shape_9Shapemetrics/ssim/depthwise_4*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_24/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_24/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_24/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
metrics/ssim/strided_slice_24StridedSlicemetrics/ssim/Shape_9#metrics/ssim/strided_slice_24/stack%metrics/ssim/strided_slice_24/stack_1%metrics/ssim/strided_slice_24/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
\
metrics/ssim/concat_9/axisConst*
value	B : *
dtype0*
_output_shapes
: 
µ
metrics/ssim/concat_9ConcatV2metrics/ssim/strided_slice_23metrics/ssim/strided_slice_24metrics/ssim/concat_9/axis*
N*
_output_shapes
:*

Tidx0*
T0
ґ
metrics/ssim/Reshape_17Reshapemetrics/ssim/depthwise_4metrics/ssim/concat_9*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
l
metrics/ssim/Shape_10Shapemetrics/ssim/Identity_8*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_25/stackConst*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_25/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_25/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_25StridedSlicemetrics/ssim/Shape_10#metrics/ssim/strided_slice_25/stack%metrics/ssim/strided_slice_25/stack_1%metrics/ssim/strided_slice_25/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
r
metrics/ssim/concat_10/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
]
metrics/ssim/concat_10/axisConst*
value	B : *
dtype0*
_output_shapes
: 
є
metrics/ssim/concat_10ConcatV2metrics/ssim/concat_10/values_0metrics/ssim/strided_slice_25metrics/ssim/concat_10/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ы
metrics/ssim/Reshape_18Reshapemetrics/ssim/Identity_8metrics/ssim/concat_10*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€``
q
metrics/ssim/depthwise_5/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
р
metrics/ssim/depthwise_5DepthwiseConv2dNativemetrics/ssim/Reshape_18metrics/ssim/Tile_1*
T0*
data_formatNHWC*
strides
*
paddingVALID*/
_output_shapes
:€€€€€€€€€VV*
	dilations

m
#metrics/ssim/strided_slice_26/stackConst*
dtype0*
_output_shapes
:*
valueB: 
x
%metrics/ssim/strided_slice_26/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_26/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_26StridedSlicemetrics/ssim/Shape_10#metrics/ssim/strided_slice_26/stack%metrics/ssim/strided_slice_26/stack_1%metrics/ssim/strided_slice_26/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
m
metrics/ssim/Shape_11Shapemetrics/ssim/depthwise_5*
_output_shapes
:*
T0*
out_type0
m
#metrics/ssim/strided_slice_27/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_27/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_27/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_27StridedSlicemetrics/ssim/Shape_11#metrics/ssim/strided_slice_27/stack%metrics/ssim/strided_slice_27/stack_1%metrics/ssim/strided_slice_27/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
]
metrics/ssim/concat_11/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ј
metrics/ssim/concat_11ConcatV2metrics/ssim/strided_slice_26metrics/ssim/strided_slice_27metrics/ssim/concat_11/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ь
metrics/ssim/Reshape_19Reshapemetrics/ssim/depthwise_5metrics/ssim/concat_11*/
_output_shapes
:€€€€€€€€€VV*
T0*
Tshape0
П
metrics/ssim/mul_12Mulmetrics/ssim/Reshape_17metrics/ssim/Reshape_19*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Z
metrics/ssim/mul_13/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Й
metrics/ssim/mul_13Mulmetrics/ssim/mul_12metrics/ssim/mul_13/y*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Н
metrics/ssim/Square_8Squaremetrics/ssim/Reshape_17*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
r
metrics/ssim/Square_9Squaremetrics/ssim/Reshape_19*
T0*/
_output_shapes
:€€€€€€€€€VV
К
metrics/ssim/add_8Addmetrics/ssim/Square_8metrics/ssim/Square_9*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
Е
metrics/ssim/add_9Addmetrics/ssim/mul_13metrics/ssim/pow_2*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Е
metrics/ssim/add_10Addmetrics/ssim/add_8metrics/ssim/pow_2*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
Н
metrics/ssim/truediv_6RealDivmetrics/ssim/add_9metrics/ssim/add_10*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
П
metrics/ssim/mul_14Mulmetrics/ssim/Identity_9metrics/ssim/Identity_8*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
h
metrics/ssim/Shape_12Shapemetrics/ssim/mul_14*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_28/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_28/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_28/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ќ
metrics/ssim/strided_slice_28StridedSlicemetrics/ssim/Shape_12#metrics/ssim/strided_slice_28/stack%metrics/ssim/strided_slice_28/stack_1%metrics/ssim/strided_slice_28/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
r
metrics/ssim/concat_12/values_0Const*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
]
metrics/ssim/concat_12/axisConst*
value	B : *
dtype0*
_output_shapes
: 
є
metrics/ssim/concat_12ConcatV2metrics/ssim/concat_12/values_0metrics/ssim/strided_slice_28metrics/ssim/concat_12/axis*
T0*
N*
_output_shapes
:*

Tidx0
†
metrics/ssim/Reshape_20Reshapemetrics/ssim/mul_14metrics/ssim/concat_12*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
q
metrics/ssim/depthwise_6/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
щ
metrics/ssim/depthwise_6DepthwiseConv2dNativemetrics/ssim/Reshape_20metrics/ssim/Tile_1*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
m
#metrics/ssim/strided_slice_29/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_29/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_29/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_29StridedSlicemetrics/ssim/Shape_12#metrics/ssim/strided_slice_29/stack%metrics/ssim/strided_slice_29/stack_1%metrics/ssim/strided_slice_29/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
m
metrics/ssim/Shape_13Shapemetrics/ssim/depthwise_6*
_output_shapes
:*
T0*
out_type0
m
#metrics/ssim/strided_slice_30/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_30/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_30/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_30StridedSlicemetrics/ssim/Shape_13#metrics/ssim/strided_slice_30/stack%metrics/ssim/strided_slice_30/stack_1%metrics/ssim/strided_slice_30/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
]
metrics/ssim/concat_13/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ј
metrics/ssim/concat_13ConcatV2metrics/ssim/strided_slice_29metrics/ssim/strided_slice_30metrics/ssim/concat_13/axis*
N*
_output_shapes
:*

Tidx0*
T0
•
metrics/ssim/Reshape_21Reshapemetrics/ssim/depthwise_6metrics/ssim/concat_13*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Z
metrics/ssim/mul_15/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Н
metrics/ssim/mul_15Mulmetrics/ssim/Reshape_21metrics/ssim/mul_15/y*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
О
metrics/ssim/Square_10Squaremetrics/ssim/Identity_9*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
s
metrics/ssim/Square_11Squaremetrics/ssim/Identity_8*
T0*/
_output_shapes
:€€€€€€€€€``
Н
metrics/ssim/add_11Addmetrics/ssim/Square_10metrics/ssim/Square_11*
T0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
h
metrics/ssim/Shape_14Shapemetrics/ssim/add_11*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_31/stackConst*
dtype0*
_output_shapes
:*
valueB:
э€€€€€€€€
o
%metrics/ssim/strided_slice_31/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_31/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_31StridedSlicemetrics/ssim/Shape_14#metrics/ssim/strided_slice_31/stack%metrics/ssim/strided_slice_31/stack_1%metrics/ssim/strided_slice_31/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 
r
metrics/ssim/concat_14/values_0Const*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
]
metrics/ssim/concat_14/axisConst*
dtype0*
_output_shapes
: *
value	B : 
є
metrics/ssim/concat_14ConcatV2metrics/ssim/concat_14/values_0metrics/ssim/strided_slice_31metrics/ssim/concat_14/axis*
T0*
N*
_output_shapes
:*

Tidx0
†
metrics/ssim/Reshape_22Reshapemetrics/ssim/add_11metrics/ssim/concat_14*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€``€€€€€€€€€
q
metrics/ssim/depthwise_7/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
щ
metrics/ssim/depthwise_7DepthwiseConv2dNativemetrics/ssim/Reshape_22metrics/ssim/Tile_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
m
#metrics/ssim/strided_slice_32/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_32/stack_1Const*
valueB:
э€€€€€€€€*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_32/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
metrics/ssim/strided_slice_32StridedSlicemetrics/ssim/Shape_14#metrics/ssim/strided_slice_32/stack%metrics/ssim/strided_slice_32/stack_1%metrics/ssim/strided_slice_32/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
m
metrics/ssim/Shape_15Shapemetrics/ssim/depthwise_7*
_output_shapes
:*
T0*
out_type0
m
#metrics/ssim/strided_slice_33/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_33/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_33/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ќ
metrics/ssim/strided_slice_33StridedSlicemetrics/ssim/Shape_15#metrics/ssim/strided_slice_33/stack%metrics/ssim/strided_slice_33/stack_1%metrics/ssim/strided_slice_33/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
]
metrics/ssim/concat_15/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ј
metrics/ssim/concat_15ConcatV2metrics/ssim/strided_slice_32metrics/ssim/strided_slice_33metrics/ssim/concat_15/axis*
T0*
N*
_output_shapes
:*

Tidx0
•
metrics/ssim/Reshape_23Reshapemetrics/ssim/depthwise_7metrics/ssim/concat_15*
T0*
Tshape0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Z
metrics/ssim/mul_16/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
metrics/ssim/mul_16Mulmetrics/ssim/pow_3metrics/ssim/mul_16/y*
T0*
_output_shapes
: 
Ж
metrics/ssim/sub_6Submetrics/ssim/mul_15metrics/ssim/mul_13*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Ж
metrics/ssim/add_12Addmetrics/ssim/sub_6metrics/ssim/mul_16*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Й
metrics/ssim/sub_7Submetrics/ssim/Reshape_23metrics/ssim/add_8*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Ж
metrics/ssim/add_13Addmetrics/ssim/sub_7metrics/ssim/mul_16*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
О
metrics/ssim/truediv_7RealDivmetrics/ssim/add_12metrics/ssim/add_13*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€*
T0
f
metrics/ssim/Const_13Const*
valueB"э€€€ю€€€*
dtype0*
_output_shapes
:
Н
metrics/ssim/mul_17Mulmetrics/ssim/truediv_6metrics/ssim/truediv_7*
T0*8
_output_shapes&
$:"€€€€€€€€€VV€€€€€€€€€
Я
metrics/ssim/Mean_4Meanmetrics/ssim/mul_17metrics/ssim/Const_13*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
	keep_dims( *

Tidx0*
T0
Ґ
metrics/ssim/Mean_5Meanmetrics/ssim/truediv_7metrics/ssim/Const_13*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
	keep_dims( *

Tidx0
x
%metrics/ssim/Mean_6/reduction_indicesConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ґ
metrics/ssim/Mean_6Meanmetrics/ssim/Mean_4%metrics/ssim/Mean_6/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:€€€€€€€€€
_
metrics/ssim/Const_14Const*
valueB: *
dtype0*
_output_shapes
:
Е
metrics/ssim/Mean_7Meanmetrics/ssim/Mean_6metrics/ssim/Const_14*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
metrics/ssim/Const_15Const*
valueB *
dtype0*
_output_shapes
: 
Е
metrics/ssim/Mean_8Meanmetrics/ssim/Mean_7metrics/ssim/Const_15*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
shape: *
dtype0
*
_output_shapes
: 
|
training/SGD/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@loss/mul
В
 training/SGD/gradients/grad_ys_0Const*
valueB
 *  А?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
≥
training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
†
(training/SGD/gradients/loss/mul_grad/MulMultraining/SGD/gradients/Fillloss/add_3_loss/Mean*
_output_shapes
: *
T0*
_class
loc:@loss/mul
Ш
*training/SGD/gradients/loss/mul_grad/Mul_1Multraining/SGD/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
™
>training/SGD/gradients/loss/add_3_loss/Mean_grad/Reshape/shapeConst*
valueB *'
_class
loc:@loss/add_3_loss/Mean*
dtype0*
_output_shapes
: 
З
8training/SGD/gradients/loss/add_3_loss/Mean_grad/ReshapeReshape*training/SGD/gradients/loss/mul_grad/Mul_1>training/SGD/gradients/loss/add_3_loss/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0*'
_class
loc:@loss/add_3_loss/Mean
Ґ
6training/SGD/gradients/loss/add_3_loss/Mean_grad/ConstConst*
valueB *'
_class
loc:@loss/add_3_loss/Mean*
dtype0*
_output_shapes
: 
Л
5training/SGD/gradients/loss/add_3_loss/Mean_grad/TileTile8training/SGD/gradients/loss/add_3_loss/Mean_grad/Reshape6training/SGD/gradients/loss/add_3_loss/Mean_grad/Const*
T0*'
_class
loc:@loss/add_3_loss/Mean*
_output_shapes
: *

Tmultiples0
¶
8training/SGD/gradients/loss/add_3_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  А?*'
_class
loc:@loss/add_3_loss/Mean
ю
8training/SGD/gradients/loss/add_3_loss/Mean_grad/truedivRealDiv5training/SGD/gradients/loss/add_3_loss/Mean_grad/Tile8training/SGD/gradients/loss/add_3_loss/Mean_grad/Const_1*
T0*'
_class
loc:@loss/add_3_loss/Mean*
_output_shapes
: 
Ѓ
<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB *-
_class#
!loc:@loss/add_3_loss/div_no_nan
∞
>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1Const*
valueB *-
_class#
!loc:@loss/add_3_loss/div_no_nan*
dtype0*
_output_shapes
: 
ѕ
Ltraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgs<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
о
Atraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nanDivNoNan8training/SGD/gradients/loss/add_3_loss/Mean_grad/truedivloss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
њ
:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/SumSumAtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nanLtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
°
>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/ReshapeReshape:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Sum<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
®
:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/NegNegloss/add_3_loss/Sum_3*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
т
Ctraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_1DivNoNan:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Negloss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
ы
Ctraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_2DivNoNanCtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_1loss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
Р
:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/mulMul8training/SGD/gradients/loss/add_3_loss/Mean_grad/truedivCtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_2*
_output_shapes
: *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
Љ
<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Sum_1Sum:training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/mulNtraining/SGD/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
І
@training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Reshape_1Reshape<training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Sum_1>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
ђ
?training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB *(
_class
loc:@loss/add_3_loss/Sum_3
Ю
9training/SGD/gradients/loss/add_3_loss/Sum_3_grad/ReshapeReshape>training/SGD/gradients/loss/add_3_loss/div_no_nan_grad/Reshape?training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Reshape/shape*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/Sum_3*
_output_shapes
: 
§
7training/SGD/gradients/loss/add_3_loss/Sum_3_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB *(
_class
loc:@loss/add_3_loss/Sum_3
П
6training/SGD/gradients/loss/add_3_loss/Sum_3_grad/TileTile9training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Reshape7training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Const*

Tmultiples0*
T0*(
_class
loc:@loss/add_3_loss/Sum_3*
_output_shapes
: 
Ў
5training/SGD/gradients/loss/add_3_loss/Mul_4_grad/MulMul6training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Tileloss/add_3_loss/Squeeze*
T0*(
_class
loc:@loss/add_3_loss/Mul_4*
_output_shapes
: 
÷
7training/SGD/gradients/loss/add_3_loss/Mul_4_grad/Mul_1Mul6training/SGD/gradients/loss/add_3_loss/Sum_3_grad/Tileloss/add_3_loss/sub*
T0*(
_class
loc:@loss/add_3_loss/Mul_4*
_output_shapes
: 
Ї
3training/SGD/gradients/loss/add_3_loss/sub_grad/NegNeg5training/SGD/gradients/loss/add_3_loss/Mul_4_grad/Mul*
T0*&
_class
loc:@loss/add_3_loss/sub*
_output_shapes
: 
®
9training/SGD/gradients/loss/add_3_loss/truediv_grad/ShapeConst*
valueB **
_class 
loc:@loss/add_3_loss/truediv*
dtype0*
_output_shapes
: 
™
;training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape_1Const*
valueB **
_class 
loc:@loss/add_3_loss/truediv*
dtype0*
_output_shapes
: 
√
Itraining/SGD/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs9training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape;training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape_1*
T0**
_class 
loc:@loss/add_3_loss/truediv*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
я
;training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDivRealDiv3training/SGD/gradients/loss/add_3_loss/sub_grad/Negloss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
∞
7training/SGD/gradients/loss/add_3_loss/truediv_grad/SumSum;training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDivItraining/SGD/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
Х
;training/SGD/gradients/loss/add_3_loss/truediv_grad/ReshapeReshape7training/SGD/gradients/loss/add_3_loss/truediv_grad/Sum9training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
†
7training/SGD/gradients/loss/add_3_loss/truediv_grad/NegNegloss/add_3_loss/add*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
е
=training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDiv_1RealDiv7training/SGD/gradients/loss/add_3_loss/truediv_grad/Negloss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
л
=training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDiv_2RealDiv=training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDiv_1loss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
€
7training/SGD/gradients/loss/add_3_loss/truediv_grad/mulMul3training/SGD/gradients/loss/add_3_loss/sub_grad/Neg=training/SGD/gradients/loss/add_3_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0**
_class 
loc:@loss/add_3_loss/truediv
∞
9training/SGD/gradients/loss/add_3_loss/truediv_grad/Sum_1Sum7training/SGD/gradients/loss/add_3_loss/truediv_grad/mulKtraining/SGD/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
Ы
=training/SGD/gradients/loss/add_3_loss/truediv_grad/Reshape_1Reshape9training/SGD/gradients/loss/add_3_loss/truediv_grad/Sum_1;training/SGD/gradients/loss/add_3_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0**
_class 
loc:@loss/add_3_loss/truediv
ў
5training/SGD/gradients/loss/add_3_loss/mul_1_grad/MulMul;training/SGD/gradients/loss/add_3_loss/truediv_grad/Reshapeloss/add_3_loss/Sum*
T0*(
_class
loc:@loss/add_3_loss/mul_1*
_output_shapes
: 
я
7training/SGD/gradients/loss/add_3_loss/mul_1_grad/Mul_1Mul;training/SGD/gradients/loss/add_3_loss/truediv_grad/Reshapeloss/add_3_loss/mul_1/x*
T0*(
_class
loc:@loss/add_3_loss/mul_1*
_output_shapes
: 
ѓ
=training/SGD/gradients/loss/add_3_loss/Sum_grad/Reshape/shapeConst*
valueB:*&
_class
loc:@loss/add_3_loss/Sum*
dtype0*
_output_shapes
:
Х
7training/SGD/gradients/loss/add_3_loss/Sum_grad/ReshapeReshape7training/SGD/gradients/loss/add_3_loss/mul_1_grad/Mul_1=training/SGD/gradients/loss/add_3_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/Sum*
_output_shapes
:
∞
5training/SGD/gradients/loss/add_3_loss/Sum_grad/ShapeShapeloss/add_3_loss/mul*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/Sum*
_output_shapes
:
Ф
4training/SGD/gradients/loss/add_3_loss/Sum_grad/TileTile7training/SGD/gradients/loss/add_3_loss/Sum_grad/Reshape5training/SGD/gradients/loss/add_3_loss/Sum_grad/Shape*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0*&
_class
loc:@loss/add_3_loss/Sum
≥
?training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Reshape/shapeConst*
valueB:*(
_class
loc:@loss/add_3_loss/Sum_2*
dtype0*
_output_shapes
:
°
9training/SGD/gradients/loss/add_3_loss/Sum_2_grad/ReshapeReshape=training/SGD/gradients/loss/add_3_loss/truediv_grad/Reshape_1?training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Reshape/shape*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/Sum_2*
_output_shapes
:
ґ
7training/SGD/gradients/loss/add_3_loss/Sum_2_grad/ShapeShapeloss/add_3_loss/mul_3*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/Sum_2*
_output_shapes
:
Ь
6training/SGD/gradients/loss/add_3_loss/Sum_2_grad/TileTile9training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Reshape7training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Shape*
T0*(
_class
loc:@loss/add_3_loss/Sum_2*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
і
5training/SGD/gradients/loss/add_3_loss/mul_grad/ShapeShapeloss/add_3_loss/Reshape*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:
Є
7training/SGD/gradients/loss/add_3_loss/mul_grad/Shape_1Shapeloss/add_3_loss/Reshape_1*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/mul
≥
Etraining/SGD/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/SGD/gradients/loss/add_3_loss/mul_grad/Shape7training/SGD/gradients/loss/add_3_loss/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*&
_class
loc:@loss/add_3_loss/mul
б
3training/SGD/gradients/loss/add_3_loss/mul_grad/MulMul4training/SGD/gradients/loss/add_3_loss/Sum_grad/Tileloss/add_3_loss/Reshape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:€€€€€€€€€
Ю
3training/SGD/gradients/loss/add_3_loss/mul_grad/SumSum3training/SGD/gradients/loss/add_3_loss/mul_grad/MulEtraining/SGD/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgs*
T0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Т
7training/SGD/gradients/loss/add_3_loss/mul_grad/ReshapeReshape3training/SGD/gradients/loss/add_3_loss/mul_grad/Sum5training/SGD/gradients/loss/add_3_loss/mul_grad/Shape*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:€€€€€€€€€
б
5training/SGD/gradients/loss/add_3_loss/mul_grad/Mul_1Mulloss/add_3_loss/Reshape4training/SGD/gradients/loss/add_3_loss/Sum_grad/Tile*#
_output_shapes
:€€€€€€€€€*
T0*&
_class
loc:@loss/add_3_loss/mul
§
5training/SGD/gradients/loss/add_3_loss/mul_grad/Sum_1Sum5training/SGD/gradients/loss/add_3_loss/mul_grad/Mul_1Gtraining/SGD/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:
Ш
9training/SGD/gradients/loss/add_3_loss/mul_grad/Reshape_1Reshape5training/SGD/gradients/loss/add_3_loss/mul_grad/Sum_17training/SGD/gradients/loss/add_3_loss/mul_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/mul
Ї
7training/SGD/gradients/loss/add_3_loss/mul_3_grad/ShapeShapeloss/add_3_loss/Reshape_1*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
Љ
9training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape_1Shapeloss/add_3_loss/Reshape_1*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
ї
Gtraining/SGD/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape9training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape_1*
T0*(
_class
loc:@loss/add_3_loss/mul_3*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
з
5training/SGD/gradients/loss/add_3_loss/mul_3_grad/MulMul6training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Tileloss/add_3_loss/Reshape_1*
T0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:€€€€€€€€€
¶
5training/SGD/gradients/loss/add_3_loss/mul_3_grad/SumSum5training/SGD/gradients/loss/add_3_loss/mul_3_grad/MulGtraining/SGD/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ъ
9training/SGD/gradients/loss/add_3_loss/mul_3_grad/ReshapeReshape5training/SGD/gradients/loss/add_3_loss/mul_3_grad/Sum7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/mul_3
й
7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Mul_1Mulloss/add_3_loss/Reshape_16training/SGD/gradients/loss/add_3_loss/Sum_2_grad/Tile*
T0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:€€€€€€€€€
ђ
7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Sum_1Sum7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Mul_1Itraining/SGD/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
†
;training/SGD/gradients/loss/add_3_loss/mul_3_grad/Reshape_1Reshape7training/SGD/gradients/loss/add_3_loss/mul_3_grad/Sum_19training/SGD/gradients/loss/add_3_loss/mul_3_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/mul_3
µ
training/SGD/gradients/AddNAddN9training/SGD/gradients/loss/add_3_loss/mul_grad/Reshape_19training/SGD/gradients/loss/add_3_loss/mul_3_grad/Reshape;training/SGD/gradients/loss/add_3_loss/mul_3_grad/Reshape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*
N*#
_output_shapes
:€€€€€€€€€
≤
;training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/ShapeShape	add_3/add*
T0*
out_type0*,
_class"
 loc:@loss/add_3_loss/Reshape_1*
_output_shapes
:
Ш
=training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/ReshapeReshapetraining/SGD/gradients/AddN;training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/Shape*/
_output_shapes
:€€€€€€€€€``*
T0*
Tshape0*,
_class"
 loc:@loss/add_3_loss/Reshape_1
Р
+training/SGD/gradients/add_3/add_grad/ShapeShapeinput_1*
T0*
out_type0*
_class
loc:@add_3/add*
_output_shapes
:
Ш
-training/SGD/gradients/add_3/add_grad/Shape_1Shapeconv2d_8/Relu*
T0*
out_type0*
_class
loc:@add_3/add*
_output_shapes
:
Л
;training/SGD/gradients/add_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_3/add_grad/Shape-training/SGD/gradients/add_3/add_grad/Shape_1*
T0*
_class
loc:@add_3/add*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
К
)training/SGD/gradients/add_3/add_grad/SumSum=training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/Reshape;training/SGD/gradients/add_3/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_3/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
-training/SGD/gradients/add_3/add_grad/ReshapeReshape)training/SGD/gradients/add_3/add_grad/Sum+training/SGD/gradients/add_3/add_grad/Shape*/
_output_shapes
:€€€€€€€€€``*
T0*
Tshape0*
_class
loc:@add_3/add
О
+training/SGD/gradients/add_3/add_grad/Sum_1Sum=training/SGD/gradients/loss/add_3_loss/Reshape_1_grad/Reshape=training/SGD/gradients/add_3/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_3/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ь
/training/SGD/gradients/add_3/add_grad/Reshape_1Reshape+training/SGD/gradients/add_3/add_grad/Sum_1-training/SGD/gradients/add_3/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_3/add*/
_output_shapes
:€€€€€€€€€``
Џ
2training/SGD/gradients/conv2d_8/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_3/add_grad/Reshape_1conv2d_8/Relu*
T0* 
_class
loc:@conv2d_8/Relu*/
_output_shapes
:€€€€€€€€€``
№
8training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_8/BiasAdd*
data_formatNHWC*
_output_shapes
:
Ў
2training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeNShapeNconcatenate/concatconv2d_8/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_8/Conv2D
™
?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeNconv2d_8/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€``0*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D
Щ
@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate/concat4training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D
Ь
3training/SGD/gradients/concatenate/concat_grad/RankConst*
value	B :*%
_class
loc:@concatenate/concat*
dtype0*
_output_shapes
: 
‘
2training/SGD/gradients/concatenate/concat_grad/modFloorModconcatenate/concat/axis3training/SGD/gradients/concatenate/concat_grad/Rank*
_output_shapes
: *
T0*%
_class
loc:@concatenate/concat
Ґ
4training/SGD/gradients/concatenate/concat_grad/ShapeShapeadd/add*
T0*
out_type0*%
_class
loc:@concatenate/concat*
_output_shapes
:
Њ
5training/SGD/gradients/concatenate/concat_grad/ShapeNShapeNadd/add	add_2/add*
T0*
out_type0*%
_class
loc:@concatenate/concat*
N* 
_output_shapes
::
Ѕ
;training/SGD/gradients/concatenate/concat_grad/ConcatOffsetConcatOffset2training/SGD/gradients/concatenate/concat_grad/mod5training/SGD/gradients/concatenate/concat_grad/ShapeN7training/SGD/gradients/concatenate/concat_grad/ShapeN:1*%
_class
loc:@concatenate/concat*
N* 
_output_shapes
::
а
4training/SGD/gradients/concatenate/concat_grad/SliceSlice?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput;training/SGD/gradients/concatenate/concat_grad/ConcatOffset5training/SGD/gradients/concatenate/concat_grad/ShapeN*
T0*
Index0*%
_class
loc:@concatenate/concat*/
_output_shapes
:€€€€€€€€€``
ж
6training/SGD/gradients/concatenate/concat_grad/Slice_1Slice?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput=training/SGD/gradients/concatenate/concat_grad/ConcatOffset:17training/SGD/gradients/concatenate/concat_grad/ShapeN:1*/
_output_shapes
:€€€€€€€€€``*
T0*
Index0*%
_class
loc:@concatenate/concat
Ц
+training/SGD/gradients/add_2/add_grad/ShapeShapeconv2d_5/Relu*
T0*
out_type0*
_class
loc:@add_2/add*
_output_shapes
:
Ш
-training/SGD/gradients/add_2/add_grad/Shape_1Shapeconv2d_7/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_2/add
Л
;training/SGD/gradients/add_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_2/add_grad/Shape-training/SGD/gradients/add_2/add_grad/Shape_1*
T0*
_class
loc:@add_2/add*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Г
)training/SGD/gradients/add_2/add_grad/SumSum6training/SGD/gradients/concatenate/concat_grad/Slice_1;training/SGD/gradients/add_2/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_2/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
-training/SGD/gradients/add_2/add_grad/ReshapeReshape)training/SGD/gradients/add_2/add_grad/Sum+training/SGD/gradients/add_2/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_2/add*/
_output_shapes
:€€€€€€€€€``
З
+training/SGD/gradients/add_2/add_grad/Sum_1Sum6training/SGD/gradients/concatenate/concat_grad/Slice_1=training/SGD/gradients/add_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_2/add*
_output_shapes
:
ь
/training/SGD/gradients/add_2/add_grad/Reshape_1Reshape+training/SGD/gradients/add_2/add_grad/Sum_1-training/SGD/gradients/add_2/add_grad/Shape_1*/
_output_shapes
:€€€€€€€€€``*
T0*
Tshape0*
_class
loc:@add_2/add
Ў
2training/SGD/gradients/conv2d_5/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_2/add_grad/Reshapeconv2d_5/Relu*
T0* 
_class
loc:@conv2d_5/Relu*/
_output_shapes
:€€€€€€€€€``
Џ
2training/SGD/gradients/conv2d_7/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_2/add_grad/Reshape_1conv2d_7/Relu*/
_output_shapes
:€€€€€€€€€``*
T0* 
_class
loc:@conv2d_7/Relu
№
8training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_5/BiasAdd*
data_formatNHWC*
_output_shapes
:
№
8training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*#
_class
loc:@conv2d_7/BiasAdd
й
2training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighborconv2d_5/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_5/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€``0*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
™
@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#up_sampling2d/ResizeNearestNeighbor4training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
”
2training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_7/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ф
@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_6/Relu4training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D
к
2training/SGD/gradients/conv2d_6/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputconv2d_6/Relu*
T0* 
_class
loc:@conv2d_6/Relu*/
_output_shapes
:€€€€€€€€€``
№
8training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_6/BiasAdd*
data_formatNHWC*
_output_shapes
:
й
2training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighborconv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_6/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€``0*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
™
@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#up_sampling2d/ResizeNearestNeighbor4training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0
О
training/SGD/gradients/AddN_1AddN?training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_5/Conv2D*
N*/
_output_shapes
:€€€€€€€€€``0
з
^training/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
valueB"0   0   *6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor*
dtype0*
_output_shapes
:
ь
Ytraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGradtraining/SGD/gradients/AddN_1^training/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*/
_output_shapes
:€€€€€€€€€000*
align_corners( *
T0*6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor
Ц
+training/SGD/gradients/add_1/add_grad/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:
Ш
-training/SGD/gradients/add_1/add_grad/Shape_1Shapeconv2d_4/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_1/add
Л
;training/SGD/gradients/add_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_1/add_grad/Shape-training/SGD/gradients/add_1/add_grad/Shape_1*
T0*
_class
loc:@add_1/add*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¶
)training/SGD/gradients/add_1/add_grad/SumSumYtraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/SGD/gradients/add_1/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_1/add
ц
-training/SGD/gradients/add_1/add_grad/ReshapeReshape)training/SGD/gradients/add_1/add_grad/Sum+training/SGD/gradients/add_1/add_grad/Shape*/
_output_shapes
:€€€€€€€€€000*
T0*
Tshape0*
_class
loc:@add_1/add
™
+training/SGD/gradients/add_1/add_grad/Sum_1SumYtraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad=training/SGD/gradients/add_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_1/add*
_output_shapes
:
ь
/training/SGD/gradients/add_1/add_grad/Reshape_1Reshape+training/SGD/gradients/add_1/add_grad/Sum_1-training/SGD/gradients/add_1/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_1/add*/
_output_shapes
:€€€€€€€€€000
Ў
2training/SGD/gradients/conv2d_2/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_1/add_grad/Reshapeconv2d_2/Relu*
T0* 
_class
loc:@conv2d_2/Relu*/
_output_shapes
:€€€€€€€€€000
Џ
2training/SGD/gradients/conv2d_4/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_1/add_grad/Reshape_1conv2d_4/Relu*/
_output_shapes
:€€€€€€€€€000*
T0* 
_class
loc:@conv2d_4/Relu
№
8training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_2/BiasAdd*
data_formatNHWC*
_output_shapes
:0
№
8training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_4/BiasAdd*
data_formatNHWC*
_output_shapes
:0
џ
2training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_2/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:€€€€€€€€€00*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ь
@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool4training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0
”
2training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeNShapeNconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_4/Conv2D*
N* 
_output_shapes
::
™
?training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€000
Ф
@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_3/Relu4training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:00*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
к
2training/SGD/gradients/conv2d_3/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputconv2d_3/Relu*/
_output_shapes
:€€€€€€€€€000*
T0* 
_class
loc:@conv2d_3/Relu
№
8training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:0*
T0*#
_class
loc:@conv2d_3/BiasAdd
џ
2training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_3/Conv2D
™
?training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€00*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ь
@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool4training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
О
training/SGD/gradients/AddN_2AddN?training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_2/Conv2D*
N*/
_output_shapes
:€€€€€€€€€00
Ѕ
=training/SGD/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradadd/addmax_pooling2d/MaxPooltraining/SGD/gradients/AddN_2*
T0*(
_class
loc:@max_pooling2d/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€``
Д
training/SGD/gradients/AddN_3AddN4training/SGD/gradients/concatenate/concat_grad/Slice=training/SGD/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad*
T0*%
_class
loc:@concatenate/concat*
N*/
_output_shapes
:€€€€€€€€€``
С
)training/SGD/gradients/add/add_grad/ShapeShapesubtract/sub*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add/add
Ф
+training/SGD/gradients/add/add_grad/Shape_1Shapeconv2d_1/Relu*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:
Г
9training/SGD/gradients/add/add_grad/BroadcastGradientArgsBroadcastGradientArgs)training/SGD/gradients/add/add_grad/Shape+training/SGD/gradients/add/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*
_class
loc:@add/add
д
'training/SGD/gradients/add/add_grad/SumSumtraining/SGD/gradients/AddN_39training/SGD/gradients/add/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add/add
о
+training/SGD/gradients/add/add_grad/ReshapeReshape'training/SGD/gradients/add/add_grad/Sum)training/SGD/gradients/add/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add/add*/
_output_shapes
:€€€€€€€€€``
и
)training/SGD/gradients/add/add_grad/Sum_1Sumtraining/SGD/gradients/AddN_3;training/SGD/gradients/add/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ф
-training/SGD/gradients/add/add_grad/Reshape_1Reshape)training/SGD/gradients/add/add_grad/Sum_1+training/SGD/gradients/add/add_grad/Shape_1*/
_output_shapes
:€€€€€€€€€``*
T0*
Tshape0*
_class
loc:@add/add
Ў
2training/SGD/gradients/conv2d_1/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add/add_grad/Reshape_1conv2d_1/Relu*
T0* 
_class
loc:@conv2d_1/Relu*/
_output_shapes
:€€€€€€€€€``
№
8training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
—
2training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_1/Conv2D
™
?training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Т
@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu4training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

д
0training/SGD/gradients/conv2d/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputconv2d/Relu*
T0*
_class
loc:@conv2d/Relu*/
_output_shapes
:€€€€€€€€€``
÷
6training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
T0*!
_class
loc:@conv2d/BiasAdd*
data_formatNHWC*
_output_shapes
:
ћ
0training/SGD/gradients/conv2d/Conv2D_grad/ShapeNShapeNsubtract/subconv2d/Conv2D/ReadVariableOp*
T0*
out_type0* 
_class
loc:@conv2d/Conv2D*
N* 
_output_shapes
::
†
=training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0training/SGD/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp0training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:€€€€€€€€€``*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Л
>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltersubtract/sub2training/SGD/gradients/conv2d/Conv2D_grad/ShapeN:10training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
T0* 
_class
loc:@conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

T
training/SGD/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
h
 training/SGD/AssignAddVariableOpAssignAddVariableOpSGD/iterationstraining/SGD/Const*
dtype0	
Е
training/SGD/ReadVariableOpReadVariableOpSGD/iterations!^training/SGD/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
g
 training/SGD/Cast/ReadVariableOpReadVariableOpSGD/iterations*
dtype0	*
_output_shapes
: 
{
training/SGD/CastCast training/SGD/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
_
training/SGD/ReadVariableOp_1ReadVariableOp	SGD/decay*
dtype0*
_output_shapes
: 
j
training/SGD/mulMultraining/SGD/ReadVariableOp_1training/SGD/Cast*
_output_shapes
: *
T0
W
training/SGD/add/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
^
training/SGD/addAddtraining/SGD/add/xtraining/SGD/mul*
T0*
_output_shapes
: 
[
training/SGD/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
j
training/SGD/truedivRealDivtraining/SGD/truediv/xtraining/SGD/add*
T0*
_output_shapes
: 
\
training/SGD/ReadVariableOp_2ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
o
training/SGD/mul_1Multraining/SGD/ReadVariableOp_2training/SGD/truediv*
T0*
_output_shapes
: 
w
training/SGD/zerosConst*%
valueB*    *
dtype0*&
_output_shapes
:
…
training/SGD/VariableVarHandleOp*(
_class
loc:@training/SGD/Variable*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining/SGD/Variable
{
6training/SGD/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable*
_output_shapes
: 
Т
training/SGD/Variable/AssignAssignVariableOptraining/SGD/Variabletraining/SGD/zeros*(
_class
loc:@training/SGD/Variable*
dtype0
±
)training/SGD/Variable/Read/ReadVariableOpReadVariableOptraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
dtype0*&
_output_shapes
:
a
training/SGD/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
√
training/SGD/Variable_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1

8training/SGD/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_1*
_output_shapes
: 
Ъ
training/SGD/Variable_1/AssignAssignVariableOptraining/SGD/Variable_1training/SGD/zeros_1**
_class 
loc:@training/SGD/Variable_1*
dtype0
Ђ
+training/SGD/Variable_1/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
dtype0*
_output_shapes
:
}
$training/SGD/zeros_2/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
_
training/SGD/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
training/SGD/zeros_2Fill$training/SGD/zeros_2/shape_as_tensortraining/SGD/zeros_2/Const*&
_output_shapes
:*
T0*

index_type0
ѕ
training/SGD/Variable_2VarHandleOp**
_class 
loc:@training/SGD/Variable_2*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_2

8training/SGD/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_2*
_output_shapes
: 
Ъ
training/SGD/Variable_2/AssignAssignVariableOptraining/SGD/Variable_2training/SGD/zeros_2*
dtype0**
_class 
loc:@training/SGD/Variable_2
Ј
+training/SGD/Variable_2/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_2*
dtype0*&
_output_shapes
:**
_class 
loc:@training/SGD/Variable_2
a
training/SGD/zeros_3Const*
dtype0*
_output_shapes
:*
valueB*    
√
training/SGD/Variable_3VarHandleOp**
_class 
loc:@training/SGD/Variable_3*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_3

8training/SGD/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_3*
_output_shapes
: 
Ъ
training/SGD/Variable_3/AssignAssignVariableOptraining/SGD/Variable_3training/SGD/zeros_3**
_class 
loc:@training/SGD/Variable_3*
dtype0
Ђ
+training/SGD/Variable_3/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
dtype0*
_output_shapes
:
}
$training/SGD/zeros_4/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
training/SGD/zeros_4Fill$training/SGD/zeros_4/shape_as_tensortraining/SGD/zeros_4/Const*
T0*

index_type0*&
_output_shapes
:0
ѕ
training/SGD/Variable_4VarHandleOp*(
shared_nametraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
	container *
shape:0*
dtype0*
_output_shapes
: 

8training/SGD/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_4*
_output_shapes
: 
Ъ
training/SGD/Variable_4/AssignAssignVariableOptraining/SGD/Variable_4training/SGD/zeros_4**
_class 
loc:@training/SGD/Variable_4*
dtype0
Ј
+training/SGD/Variable_4/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
dtype0*&
_output_shapes
:0
a
training/SGD/zeros_5Const*
dtype0*
_output_shapes
:0*
valueB0*    
√
training/SGD/Variable_5VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
	container *
shape:0

8training/SGD/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_5*
_output_shapes
: 
Ъ
training/SGD/Variable_5/AssignAssignVariableOptraining/SGD/Variable_5training/SGD/zeros_5**
_class 
loc:@training/SGD/Variable_5*
dtype0
Ђ
+training/SGD/Variable_5/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
dtype0*
_output_shapes
:0
}
$training/SGD/zeros_6/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         0   
_
training/SGD/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
training/SGD/zeros_6Fill$training/SGD/zeros_6/shape_as_tensortraining/SGD/zeros_6/Const*
T0*

index_type0*&
_output_shapes
:0
ѕ
training/SGD/Variable_6VarHandleOp*(
shared_nametraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
	container *
shape:0*
dtype0*
_output_shapes
: 

8training/SGD/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_6*
_output_shapes
: 
Ъ
training/SGD/Variable_6/AssignAssignVariableOptraining/SGD/Variable_6training/SGD/zeros_6**
_class 
loc:@training/SGD/Variable_6*
dtype0
Ј
+training/SGD/Variable_6/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
dtype0*&
_output_shapes
:0
a
training/SGD/zeros_7Const*
valueB0*    *
dtype0*
_output_shapes
:0
√
training/SGD/Variable_7VarHandleOp**
_class 
loc:@training/SGD/Variable_7*
	container *
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_7

8training/SGD/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_7*
_output_shapes
: 
Ъ
training/SGD/Variable_7/AssignAssignVariableOptraining/SGD/Variable_7training/SGD/zeros_7**
_class 
loc:@training/SGD/Variable_7*
dtype0
Ђ
+training/SGD/Variable_7/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
dtype0*
_output_shapes
:0
}
$training/SGD/zeros_8/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_8/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
°
training/SGD/zeros_8Fill$training/SGD/zeros_8/shape_as_tensortraining/SGD/zeros_8/Const*
T0*

index_type0*&
_output_shapes
:00
ѕ
training/SGD/Variable_8VarHandleOp*
	container *
shape:00*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8

8training/SGD/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_8*
_output_shapes
: 
Ъ
training/SGD/Variable_8/AssignAssignVariableOptraining/SGD/Variable_8training/SGD/zeros_8**
_class 
loc:@training/SGD/Variable_8*
dtype0
Ј
+training/SGD/Variable_8/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
dtype0*&
_output_shapes
:00
a
training/SGD/zeros_9Const*
dtype0*
_output_shapes
:0*
valueB0*    
√
training/SGD/Variable_9VarHandleOp*(
shared_nametraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
	container *
shape:0*
dtype0*
_output_shapes
: 

8training/SGD/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_9*
_output_shapes
: 
Ъ
training/SGD/Variable_9/AssignAssignVariableOptraining/SGD/Variable_9training/SGD/zeros_9*
dtype0**
_class 
loc:@training/SGD/Variable_9
Ђ
+training/SGD/Variable_9/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
dtype0*
_output_shapes
:0
~
%training/SGD/zeros_10/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_10/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
§
training/SGD/zeros_10Fill%training/SGD/zeros_10/shape_as_tensortraining/SGD/zeros_10/Const*
T0*

index_type0*&
_output_shapes
:0
“
training/SGD/Variable_10VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
	container *
shape:0
Б
9training/SGD/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_10*
_output_shapes
: 
Ю
training/SGD/Variable_10/AssignAssignVariableOptraining/SGD/Variable_10training/SGD/zeros_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0
Ї
,training/SGD/Variable_10/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0*&
_output_shapes
:0
b
training/SGD/zeros_11Const*
valueB*    *
dtype0*
_output_shapes
:
∆
training/SGD/Variable_11VarHandleOp*+
_class!
loc:@training/SGD/Variable_11*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_11
Б
9training/SGD/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_11*
_output_shapes
: 
Ю
training/SGD/Variable_11/AssignAssignVariableOptraining/SGD/Variable_11training/SGD/zeros_11*+
_class!
loc:@training/SGD/Variable_11*
dtype0
Ѓ
,training/SGD/Variable_11/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_11*
dtype0*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_11
~
%training/SGD/zeros_12/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/SGD/zeros_12Fill%training/SGD/zeros_12/shape_as_tensortraining/SGD/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:0
“
training/SGD/Variable_12VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
	container *
shape:0
Б
9training/SGD/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_12*
_output_shapes
: 
Ю
training/SGD/Variable_12/AssignAssignVariableOptraining/SGD/Variable_12training/SGD/zeros_12*
dtype0*+
_class!
loc:@training/SGD/Variable_12
Ї
,training/SGD/Variable_12/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
dtype0*&
_output_shapes
:0
b
training/SGD/zeros_13Const*
valueB*    *
dtype0*
_output_shapes
:
∆
training/SGD/Variable_13VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
	container 
Б
9training/SGD/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_13*
_output_shapes
: 
Ю
training/SGD/Variable_13/AssignAssignVariableOptraining/SGD/Variable_13training/SGD/zeros_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0
Ѓ
,training/SGD/Variable_13/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0*
_output_shapes
:
~
%training/SGD/zeros_14/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
`
training/SGD/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/SGD/zeros_14Fill%training/SGD/zeros_14/shape_as_tensortraining/SGD/zeros_14/Const*
T0*

index_type0*&
_output_shapes
:
“
training/SGD/Variable_14VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14
Б
9training/SGD/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_14*
_output_shapes
: 
Ю
training/SGD/Variable_14/AssignAssignVariableOptraining/SGD/Variable_14training/SGD/zeros_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0
Ї
,training/SGD/Variable_14/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0*&
_output_shapes
:
b
training/SGD/zeros_15Const*
dtype0*
_output_shapes
:*
valueB*    
∆
training/SGD/Variable_15VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
	container *
shape:
Б
9training/SGD/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_15*
_output_shapes
: 
Ю
training/SGD/Variable_15/AssignAssignVariableOptraining/SGD/Variable_15training/SGD/zeros_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0
Ѓ
,training/SGD/Variable_15/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_15*
dtype0*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_15
z
training/SGD/zeros_16Const*
dtype0*&
_output_shapes
:0*%
valueB0*    
“
training/SGD/Variable_16VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_16*+
_class!
loc:@training/SGD/Variable_16*
	container *
shape:0
Б
9training/SGD/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_16*
_output_shapes
: 
Ю
training/SGD/Variable_16/AssignAssignVariableOptraining/SGD/Variable_16training/SGD/zeros_16*+
_class!
loc:@training/SGD/Variable_16*
dtype0
Ї
,training/SGD/Variable_16/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_16*+
_class!
loc:@training/SGD/Variable_16*
dtype0*&
_output_shapes
:0
b
training/SGD/zeros_17Const*
valueB*    *
dtype0*
_output_shapes
:
∆
training/SGD/Variable_17VarHandleOp*)
shared_nametraining/SGD/Variable_17*+
_class!
loc:@training/SGD/Variable_17*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_17*
_output_shapes
: 
Ю
training/SGD/Variable_17/AssignAssignVariableOptraining/SGD/Variable_17training/SGD/zeros_17*
dtype0*+
_class!
loc:@training/SGD/Variable_17
Ѓ
,training/SGD/Variable_17/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_17*+
_class!
loc:@training/SGD/Variable_17*
dtype0*
_output_shapes
:
b
training/SGD/ReadVariableOp_3ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 

!training/SGD/mul_2/ReadVariableOpReadVariableOptraining/SGD/Variable*
dtype0*&
_output_shapes
:
М
training/SGD/mul_2Multraining/SGD/ReadVariableOp_3!training/SGD/mul_2/ReadVariableOp*
T0*&
_output_shapes
:
Ю
training/SGD/mul_3Multraining/SGD/mul_1>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
p
training/SGD/subSubtraining/SGD/mul_2training/SGD/mul_3*
T0*&
_output_shapes
:
g
training/SGD/AssignVariableOpAssignVariableOptraining/SGD/Variabletraining/SGD/sub*
dtype0
Ы
training/SGD/ReadVariableOp_4ReadVariableOptraining/SGD/Variable^training/SGD/AssignVariableOp*
dtype0*&
_output_shapes
:
b
training/SGD/ReadVariableOp_5ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
{
training/SGD/mul_4Multraining/SGD/ReadVariableOp_5training/SGD/sub*
T0*&
_output_shapes
:
s
training/SGD/ReadVariableOp_6ReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
}
training/SGD/add_1Addtraining/SGD/ReadVariableOp_6training/SGD/mul_4*
T0*&
_output_shapes
:
Ю
training/SGD/mul_5Multraining/SGD/mul_1>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
r
training/SGD/sub_1Subtraining/SGD/add_1training/SGD/mul_5*
T0*&
_output_shapes
:
c
training/SGD/AssignVariableOp_1AssignVariableOpconv2d/kerneltraining/SGD/sub_1*
dtype0
Х
training/SGD/ReadVariableOp_7ReadVariableOpconv2d/kernel ^training/SGD/AssignVariableOp_1*
dtype0*&
_output_shapes
:
b
training/SGD/ReadVariableOp_8ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
u
!training/SGD/mul_6/ReadVariableOpReadVariableOptraining/SGD/Variable_1*
dtype0*
_output_shapes
:
А
training/SGD/mul_6Multraining/SGD/ReadVariableOp_8!training/SGD/mul_6/ReadVariableOp*
T0*
_output_shapes
:
К
training/SGD/mul_7Multraining/SGD/mul_16training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
f
training/SGD/sub_2Subtraining/SGD/mul_6training/SGD/mul_7*
T0*
_output_shapes
:
m
training/SGD/AssignVariableOp_2AssignVariableOptraining/SGD/Variable_1training/SGD/sub_2*
dtype0
У
training/SGD/ReadVariableOp_9ReadVariableOptraining/SGD/Variable_1 ^training/SGD/AssignVariableOp_2*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_10ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
r
training/SGD/mul_8Multraining/SGD/ReadVariableOp_10training/SGD/sub_2*
T0*
_output_shapes
:
f
training/SGD/ReadVariableOp_11ReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
r
training/SGD/add_2Addtraining/SGD/ReadVariableOp_11training/SGD/mul_8*
_output_shapes
:*
T0
К
training/SGD/mul_9Multraining/SGD/mul_16training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
f
training/SGD/sub_3Subtraining/SGD/add_2training/SGD/mul_9*
T0*
_output_shapes
:
a
training/SGD/AssignVariableOp_3AssignVariableOpconv2d/biastraining/SGD/sub_3*
dtype0
И
training/SGD/ReadVariableOp_12ReadVariableOpconv2d/bias ^training/SGD/AssignVariableOp_3*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_13ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_10/ReadVariableOpReadVariableOptraining/SGD/Variable_2*
dtype0*&
_output_shapes
:
П
training/SGD/mul_10Multraining/SGD/ReadVariableOp_13"training/SGD/mul_10/ReadVariableOp*
T0*&
_output_shapes
:
°
training/SGD/mul_11Multraining/SGD/mul_1@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
t
training/SGD/sub_4Subtraining/SGD/mul_10training/SGD/mul_11*
T0*&
_output_shapes
:
m
training/SGD/AssignVariableOp_4AssignVariableOptraining/SGD/Variable_2training/SGD/sub_4*
dtype0
†
training/SGD/ReadVariableOp_14ReadVariableOptraining/SGD/Variable_2 ^training/SGD/AssignVariableOp_4*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_15ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 

training/SGD/mul_12Multraining/SGD/ReadVariableOp_15training/SGD/sub_4*
T0*&
_output_shapes
:
v
training/SGD/ReadVariableOp_16ReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:

training/SGD/add_3Addtraining/SGD/ReadVariableOp_16training/SGD/mul_12*
T0*&
_output_shapes
:
°
training/SGD/mul_13Multraining/SGD/mul_1@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
s
training/SGD/sub_5Subtraining/SGD/add_3training/SGD/mul_13*
T0*&
_output_shapes
:
e
training/SGD/AssignVariableOp_5AssignVariableOpconv2d_1/kerneltraining/SGD/sub_5*
dtype0
Ш
training/SGD/ReadVariableOp_17ReadVariableOpconv2d_1/kernel ^training/SGD/AssignVariableOp_5*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_18ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_14/ReadVariableOpReadVariableOptraining/SGD/Variable_3*
dtype0*
_output_shapes
:
Г
training/SGD/mul_14Multraining/SGD/ReadVariableOp_18"training/SGD/mul_14/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_15Multraining/SGD/mul_18training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
h
training/SGD/sub_6Subtraining/SGD/mul_14training/SGD/mul_15*
T0*
_output_shapes
:
m
training/SGD/AssignVariableOp_6AssignVariableOptraining/SGD/Variable_3training/SGD/sub_6*
dtype0
Ф
training/SGD/ReadVariableOp_19ReadVariableOptraining/SGD/Variable_3 ^training/SGD/AssignVariableOp_6*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_20ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
s
training/SGD/mul_16Multraining/SGD/ReadVariableOp_20training/SGD/sub_6*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_21ReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
s
training/SGD/add_4Addtraining/SGD/ReadVariableOp_21training/SGD/mul_16*
_output_shapes
:*
T0
Н
training/SGD/mul_17Multraining/SGD/mul_18training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
g
training/SGD/sub_7Subtraining/SGD/add_4training/SGD/mul_17*
_output_shapes
:*
T0
c
training/SGD/AssignVariableOp_7AssignVariableOpconv2d_1/biastraining/SGD/sub_7*
dtype0
К
training/SGD/ReadVariableOp_22ReadVariableOpconv2d_1/bias ^training/SGD/AssignVariableOp_7*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_23ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_18/ReadVariableOpReadVariableOptraining/SGD/Variable_4*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_18Multraining/SGD/ReadVariableOp_23"training/SGD/mul_18/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_19Multraining/SGD/mul_1@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
t
training/SGD/sub_8Subtraining/SGD/mul_18training/SGD/mul_19*&
_output_shapes
:0*
T0
m
training/SGD/AssignVariableOp_8AssignVariableOptraining/SGD/Variable_4training/SGD/sub_8*
dtype0
†
training/SGD/ReadVariableOp_24ReadVariableOptraining/SGD/Variable_4 ^training/SGD/AssignVariableOp_8*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_25ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 

training/SGD/mul_20Multraining/SGD/ReadVariableOp_25training/SGD/sub_8*
T0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_26ReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0

training/SGD/add_5Addtraining/SGD/ReadVariableOp_26training/SGD/mul_20*
T0*&
_output_shapes
:0
°
training/SGD/mul_21Multraining/SGD/mul_1@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
s
training/SGD/sub_9Subtraining/SGD/add_5training/SGD/mul_21*&
_output_shapes
:0*
T0
e
training/SGD/AssignVariableOp_9AssignVariableOpconv2d_3/kerneltraining/SGD/sub_9*
dtype0
Ш
training/SGD/ReadVariableOp_27ReadVariableOpconv2d_3/kernel ^training/SGD/AssignVariableOp_9*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_28ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_22/ReadVariableOpReadVariableOptraining/SGD/Variable_5*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_22Multraining/SGD/ReadVariableOp_28"training/SGD/mul_22/ReadVariableOp*
T0*
_output_shapes
:0
Н
training/SGD/mul_23Multraining/SGD/mul_18training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_10Subtraining/SGD/mul_22training/SGD/mul_23*
T0*
_output_shapes
:0
o
 training/SGD/AssignVariableOp_10AssignVariableOptraining/SGD/Variable_5training/SGD/sub_10*
dtype0
Х
training/SGD/ReadVariableOp_29ReadVariableOptraining/SGD/Variable_5!^training/SGD/AssignVariableOp_10*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_30ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_24Multraining/SGD/ReadVariableOp_30training/SGD/sub_10*
T0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_31ReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
s
training/SGD/add_6Addtraining/SGD/ReadVariableOp_31training/SGD/mul_24*
_output_shapes
:0*
T0
Н
training/SGD/mul_25Multraining/SGD/mul_18training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
h
training/SGD/sub_11Subtraining/SGD/add_6training/SGD/mul_25*
T0*
_output_shapes
:0
e
 training/SGD/AssignVariableOp_11AssignVariableOpconv2d_3/biastraining/SGD/sub_11*
dtype0
Л
training/SGD/ReadVariableOp_32ReadVariableOpconv2d_3/bias!^training/SGD/AssignVariableOp_11*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_33ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_26/ReadVariableOpReadVariableOptraining/SGD/Variable_6*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_26Multraining/SGD/ReadVariableOp_33"training/SGD/mul_26/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_27Multraining/SGD/mul_1@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_12Subtraining/SGD/mul_26training/SGD/mul_27*&
_output_shapes
:0*
T0
o
 training/SGD/AssignVariableOp_12AssignVariableOptraining/SGD/Variable_6training/SGD/sub_12*
dtype0
°
training/SGD/ReadVariableOp_34ReadVariableOptraining/SGD/Variable_6!^training/SGD/AssignVariableOp_12*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_35ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_28Multraining/SGD/ReadVariableOp_35training/SGD/sub_12*
T0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_36ReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0

training/SGD/add_7Addtraining/SGD/ReadVariableOp_36training/SGD/mul_28*&
_output_shapes
:0*
T0
°
training/SGD/mul_29Multraining/SGD/mul_1@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
t
training/SGD/sub_13Subtraining/SGD/add_7training/SGD/mul_29*
T0*&
_output_shapes
:0
g
 training/SGD/AssignVariableOp_13AssignVariableOpconv2d_2/kerneltraining/SGD/sub_13*
dtype0
Щ
training/SGD/ReadVariableOp_37ReadVariableOpconv2d_2/kernel!^training/SGD/AssignVariableOp_13*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_38ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_30/ReadVariableOpReadVariableOptraining/SGD/Variable_7*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_30Multraining/SGD/ReadVariableOp_38"training/SGD/mul_30/ReadVariableOp*
T0*
_output_shapes
:0
Н
training/SGD/mul_31Multraining/SGD/mul_18training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_14Subtraining/SGD/mul_30training/SGD/mul_31*
_output_shapes
:0*
T0
o
 training/SGD/AssignVariableOp_14AssignVariableOptraining/SGD/Variable_7training/SGD/sub_14*
dtype0
Х
training/SGD/ReadVariableOp_39ReadVariableOptraining/SGD/Variable_7!^training/SGD/AssignVariableOp_14*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_40ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_32Multraining/SGD/ReadVariableOp_40training/SGD/sub_14*
_output_shapes
:0*
T0
h
training/SGD/ReadVariableOp_41ReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
s
training/SGD/add_8Addtraining/SGD/ReadVariableOp_41training/SGD/mul_32*
T0*
_output_shapes
:0
Н
training/SGD/mul_33Multraining/SGD/mul_18training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
h
training/SGD/sub_15Subtraining/SGD/add_8training/SGD/mul_33*
T0*
_output_shapes
:0
e
 training/SGD/AssignVariableOp_15AssignVariableOpconv2d_2/biastraining/SGD/sub_15*
dtype0
Л
training/SGD/ReadVariableOp_42ReadVariableOpconv2d_2/bias!^training/SGD/AssignVariableOp_15*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_43ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_34/ReadVariableOpReadVariableOptraining/SGD/Variable_8*
dtype0*&
_output_shapes
:00
П
training/SGD/mul_34Multraining/SGD/ReadVariableOp_43"training/SGD/mul_34/ReadVariableOp*
T0*&
_output_shapes
:00
°
training/SGD/mul_35Multraining/SGD/mul_1@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
u
training/SGD/sub_16Subtraining/SGD/mul_34training/SGD/mul_35*&
_output_shapes
:00*
T0
o
 training/SGD/AssignVariableOp_16AssignVariableOptraining/SGD/Variable_8training/SGD/sub_16*
dtype0
°
training/SGD/ReadVariableOp_44ReadVariableOptraining/SGD/Variable_8!^training/SGD/AssignVariableOp_16*
dtype0*&
_output_shapes
:00
c
training/SGD/ReadVariableOp_45ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_36Multraining/SGD/ReadVariableOp_45training/SGD/sub_16*
T0*&
_output_shapes
:00
v
training/SGD/ReadVariableOp_46ReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00

training/SGD/add_9Addtraining/SGD/ReadVariableOp_46training/SGD/mul_36*
T0*&
_output_shapes
:00
°
training/SGD/mul_37Multraining/SGD/mul_1@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
t
training/SGD/sub_17Subtraining/SGD/add_9training/SGD/mul_37*
T0*&
_output_shapes
:00
g
 training/SGD/AssignVariableOp_17AssignVariableOpconv2d_4/kerneltraining/SGD/sub_17*
dtype0
Щ
training/SGD/ReadVariableOp_47ReadVariableOpconv2d_4/kernel!^training/SGD/AssignVariableOp_17*
dtype0*&
_output_shapes
:00
c
training/SGD/ReadVariableOp_48ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_38/ReadVariableOpReadVariableOptraining/SGD/Variable_9*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_38Multraining/SGD/ReadVariableOp_48"training/SGD/mul_38/ReadVariableOp*
T0*
_output_shapes
:0
Н
training/SGD/mul_39Multraining/SGD/mul_18training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_18Subtraining/SGD/mul_38training/SGD/mul_39*
T0*
_output_shapes
:0
o
 training/SGD/AssignVariableOp_18AssignVariableOptraining/SGD/Variable_9training/SGD/sub_18*
dtype0
Х
training/SGD/ReadVariableOp_49ReadVariableOptraining/SGD/Variable_9!^training/SGD/AssignVariableOp_18*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_50ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_40Multraining/SGD/ReadVariableOp_50training/SGD/sub_18*
T0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_51ReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
t
training/SGD/add_10Addtraining/SGD/ReadVariableOp_51training/SGD/mul_40*
_output_shapes
:0*
T0
Н
training/SGD/mul_41Multraining/SGD/mul_18training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_19Subtraining/SGD/add_10training/SGD/mul_41*
T0*
_output_shapes
:0
e
 training/SGD/AssignVariableOp_19AssignVariableOpconv2d_4/biastraining/SGD/sub_19*
dtype0
Л
training/SGD/ReadVariableOp_52ReadVariableOpconv2d_4/bias!^training/SGD/AssignVariableOp_19*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_53ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_42/ReadVariableOpReadVariableOptraining/SGD/Variable_10*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_42Multraining/SGD/ReadVariableOp_53"training/SGD/mul_42/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_43Multraining/SGD/mul_1@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
u
training/SGD/sub_20Subtraining/SGD/mul_42training/SGD/mul_43*
T0*&
_output_shapes
:0
p
 training/SGD/AssignVariableOp_20AssignVariableOptraining/SGD/Variable_10training/SGD/sub_20*
dtype0
Ґ
training/SGD/ReadVariableOp_54ReadVariableOptraining/SGD/Variable_10!^training/SGD/AssignVariableOp_20*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_55ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_44Multraining/SGD/ReadVariableOp_55training/SGD/sub_20*
T0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_56ReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0
А
training/SGD/add_11Addtraining/SGD/ReadVariableOp_56training/SGD/mul_44*
T0*&
_output_shapes
:0
°
training/SGD/mul_45Multraining/SGD/mul_1@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_21Subtraining/SGD/add_11training/SGD/mul_45*
T0*&
_output_shapes
:0
g
 training/SGD/AssignVariableOp_21AssignVariableOpconv2d_6/kerneltraining/SGD/sub_21*
dtype0
Щ
training/SGD/ReadVariableOp_57ReadVariableOpconv2d_6/kernel!^training/SGD/AssignVariableOp_21*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_58ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_46/ReadVariableOpReadVariableOptraining/SGD/Variable_11*
dtype0*
_output_shapes
:
Г
training/SGD/mul_46Multraining/SGD/ReadVariableOp_58"training/SGD/mul_46/ReadVariableOp*
_output_shapes
:*
T0
Н
training/SGD/mul_47Multraining/SGD/mul_18training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_22Subtraining/SGD/mul_46training/SGD/mul_47*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_22AssignVariableOptraining/SGD/Variable_11training/SGD/sub_22*
dtype0
Ц
training/SGD/ReadVariableOp_59ReadVariableOptraining/SGD/Variable_11!^training/SGD/AssignVariableOp_22*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_60ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_48Multraining/SGD/ReadVariableOp_60training/SGD/sub_22*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_61ReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:
t
training/SGD/add_12Addtraining/SGD/ReadVariableOp_61training/SGD/mul_48*
T0*
_output_shapes
:
Н
training/SGD/mul_49Multraining/SGD/mul_18training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_23Subtraining/SGD/add_12training/SGD/mul_49*
T0*
_output_shapes
:
e
 training/SGD/AssignVariableOp_23AssignVariableOpconv2d_6/biastraining/SGD/sub_23*
dtype0
Л
training/SGD/ReadVariableOp_62ReadVariableOpconv2d_6/bias!^training/SGD/AssignVariableOp_23*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_63ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_50/ReadVariableOpReadVariableOptraining/SGD/Variable_12*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_50Multraining/SGD/ReadVariableOp_63"training/SGD/mul_50/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_51Multraining/SGD/mul_1@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_24Subtraining/SGD/mul_50training/SGD/mul_51*
T0*&
_output_shapes
:0
p
 training/SGD/AssignVariableOp_24AssignVariableOptraining/SGD/Variable_12training/SGD/sub_24*
dtype0
Ґ
training/SGD/ReadVariableOp_64ReadVariableOptraining/SGD/Variable_12!^training/SGD/AssignVariableOp_24*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_65ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_52Multraining/SGD/ReadVariableOp_65training/SGD/sub_24*&
_output_shapes
:0*
T0
v
training/SGD/ReadVariableOp_66ReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0
А
training/SGD/add_13Addtraining/SGD/ReadVariableOp_66training/SGD/mul_52*&
_output_shapes
:0*
T0
°
training/SGD/mul_53Multraining/SGD/mul_1@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_25Subtraining/SGD/add_13training/SGD/mul_53*&
_output_shapes
:0*
T0
g
 training/SGD/AssignVariableOp_25AssignVariableOpconv2d_5/kerneltraining/SGD/sub_25*
dtype0
Щ
training/SGD/ReadVariableOp_67ReadVariableOpconv2d_5/kernel!^training/SGD/AssignVariableOp_25*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_68ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_54/ReadVariableOpReadVariableOptraining/SGD/Variable_13*
dtype0*
_output_shapes
:
Г
training/SGD/mul_54Multraining/SGD/ReadVariableOp_68"training/SGD/mul_54/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_55Multraining/SGD/mul_18training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_26Subtraining/SGD/mul_54training/SGD/mul_55*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_26AssignVariableOptraining/SGD/Variable_13training/SGD/sub_26*
dtype0
Ц
training/SGD/ReadVariableOp_69ReadVariableOptraining/SGD/Variable_13!^training/SGD/AssignVariableOp_26*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_70ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_56Multraining/SGD/ReadVariableOp_70training/SGD/sub_26*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_71ReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:
t
training/SGD/add_14Addtraining/SGD/ReadVariableOp_71training/SGD/mul_56*
_output_shapes
:*
T0
Н
training/SGD/mul_57Multraining/SGD/mul_18training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_27Subtraining/SGD/add_14training/SGD/mul_57*
T0*
_output_shapes
:
e
 training/SGD/AssignVariableOp_27AssignVariableOpconv2d_5/biastraining/SGD/sub_27*
dtype0
Л
training/SGD/ReadVariableOp_72ReadVariableOpconv2d_5/bias!^training/SGD/AssignVariableOp_27*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_73ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_58/ReadVariableOpReadVariableOptraining/SGD/Variable_14*
dtype0*&
_output_shapes
:
П
training/SGD/mul_58Multraining/SGD/ReadVariableOp_73"training/SGD/mul_58/ReadVariableOp*
T0*&
_output_shapes
:
°
training/SGD/mul_59Multraining/SGD/mul_1@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_28Subtraining/SGD/mul_58training/SGD/mul_59*
T0*&
_output_shapes
:
p
 training/SGD/AssignVariableOp_28AssignVariableOptraining/SGD/Variable_14training/SGD/sub_28*
dtype0
Ґ
training/SGD/ReadVariableOp_74ReadVariableOptraining/SGD/Variable_14!^training/SGD/AssignVariableOp_28*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_75ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_60Multraining/SGD/ReadVariableOp_75training/SGD/sub_28*&
_output_shapes
:*
T0
v
training/SGD/ReadVariableOp_76ReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:
А
training/SGD/add_15Addtraining/SGD/ReadVariableOp_76training/SGD/mul_60*
T0*&
_output_shapes
:
°
training/SGD/mul_61Multraining/SGD/mul_1@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_29Subtraining/SGD/add_15training/SGD/mul_61*&
_output_shapes
:*
T0
g
 training/SGD/AssignVariableOp_29AssignVariableOpconv2d_7/kerneltraining/SGD/sub_29*
dtype0
Щ
training/SGD/ReadVariableOp_77ReadVariableOpconv2d_7/kernel!^training/SGD/AssignVariableOp_29*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_78ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_62/ReadVariableOpReadVariableOptraining/SGD/Variable_15*
dtype0*
_output_shapes
:
Г
training/SGD/mul_62Multraining/SGD/ReadVariableOp_78"training/SGD/mul_62/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_63Multraining/SGD/mul_18training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_30Subtraining/SGD/mul_62training/SGD/mul_63*
_output_shapes
:*
T0
p
 training/SGD/AssignVariableOp_30AssignVariableOptraining/SGD/Variable_15training/SGD/sub_30*
dtype0
Ц
training/SGD/ReadVariableOp_79ReadVariableOptraining/SGD/Variable_15!^training/SGD/AssignVariableOp_30*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_80ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_64Multraining/SGD/ReadVariableOp_80training/SGD/sub_30*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_81ReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:
t
training/SGD/add_16Addtraining/SGD/ReadVariableOp_81training/SGD/mul_64*
T0*
_output_shapes
:
Н
training/SGD/mul_65Multraining/SGD/mul_18training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_31Subtraining/SGD/add_16training/SGD/mul_65*
T0*
_output_shapes
:
e
 training/SGD/AssignVariableOp_31AssignVariableOpconv2d_7/biastraining/SGD/sub_31*
dtype0
Л
training/SGD/ReadVariableOp_82ReadVariableOpconv2d_7/bias!^training/SGD/AssignVariableOp_31*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_83ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_66/ReadVariableOpReadVariableOptraining/SGD/Variable_16*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_66Multraining/SGD/ReadVariableOp_83"training/SGD/mul_66/ReadVariableOp*
T0*&
_output_shapes
:0
°
training/SGD/mul_67Multraining/SGD/mul_1@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/SGD/sub_32Subtraining/SGD/mul_66training/SGD/mul_67*
T0*&
_output_shapes
:0
p
 training/SGD/AssignVariableOp_32AssignVariableOptraining/SGD/Variable_16training/SGD/sub_32*
dtype0
Ґ
training/SGD/ReadVariableOp_84ReadVariableOptraining/SGD/Variable_16!^training/SGD/AssignVariableOp_32*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_85ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
А
training/SGD/mul_68Multraining/SGD/ReadVariableOp_85training/SGD/sub_32*
T0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_86ReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0
А
training/SGD/add_17Addtraining/SGD/ReadVariableOp_86training/SGD/mul_68*
T0*&
_output_shapes
:0
°
training/SGD/mul_69Multraining/SGD/mul_1@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
u
training/SGD/sub_33Subtraining/SGD/add_17training/SGD/mul_69*
T0*&
_output_shapes
:0
g
 training/SGD/AssignVariableOp_33AssignVariableOpconv2d_8/kerneltraining/SGD/sub_33*
dtype0
Щ
training/SGD/ReadVariableOp_87ReadVariableOpconv2d_8/kernel!^training/SGD/AssignVariableOp_33*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_88ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_70/ReadVariableOpReadVariableOptraining/SGD/Variable_17*
dtype0*
_output_shapes
:
Г
training/SGD/mul_70Multraining/SGD/ReadVariableOp_88"training/SGD/mul_70/ReadVariableOp*
T0*
_output_shapes
:
Н
training/SGD/mul_71Multraining/SGD/mul_18training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_34Subtraining/SGD/mul_70training/SGD/mul_71*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_34AssignVariableOptraining/SGD/Variable_17training/SGD/sub_34*
dtype0
Ц
training/SGD/ReadVariableOp_89ReadVariableOptraining/SGD/Variable_17!^training/SGD/AssignVariableOp_34*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_90ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
t
training/SGD/mul_72Multraining/SGD/ReadVariableOp_90training/SGD/sub_34*
T0*
_output_shapes
:
h
training/SGD/ReadVariableOp_91ReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:
t
training/SGD/add_18Addtraining/SGD/ReadVariableOp_91training/SGD/mul_72*
T0*
_output_shapes
:
Н
training/SGD/mul_73Multraining/SGD/mul_18training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_35Subtraining/SGD/add_18training/SGD/mul_73*
T0*
_output_shapes
:
e
 training/SGD/AssignVariableOp_35AssignVariableOpconv2d_8/biastraining/SGD/sub_35*
dtype0
Л
training/SGD/ReadVariableOp_92ReadVariableOpconv2d_8/bias!^training/SGD/AssignVariableOp_35*
dtype0*
_output_shapes
:
Ы

training_1/group_depsNoOp	^loss/mul^metrics/psnr/div_no_nan^metrics/ssim/div_no_nan^training/SGD/ReadVariableOp^training/SGD/ReadVariableOp_12^training/SGD/ReadVariableOp_14^training/SGD/ReadVariableOp_17^training/SGD/ReadVariableOp_19^training/SGD/ReadVariableOp_22^training/SGD/ReadVariableOp_24^training/SGD/ReadVariableOp_27^training/SGD/ReadVariableOp_29^training/SGD/ReadVariableOp_32^training/SGD/ReadVariableOp_34^training/SGD/ReadVariableOp_37^training/SGD/ReadVariableOp_39^training/SGD/ReadVariableOp_4^training/SGD/ReadVariableOp_42^training/SGD/ReadVariableOp_44^training/SGD/ReadVariableOp_47^training/SGD/ReadVariableOp_49^training/SGD/ReadVariableOp_52^training/SGD/ReadVariableOp_54^training/SGD/ReadVariableOp_57^training/SGD/ReadVariableOp_59^training/SGD/ReadVariableOp_62^training/SGD/ReadVariableOp_64^training/SGD/ReadVariableOp_67^training/SGD/ReadVariableOp_69^training/SGD/ReadVariableOp_7^training/SGD/ReadVariableOp_72^training/SGD/ReadVariableOp_74^training/SGD/ReadVariableOp_77^training/SGD/ReadVariableOp_79^training/SGD/ReadVariableOp_82^training/SGD/ReadVariableOp_84^training/SGD/ReadVariableOp_87^training/SGD/ReadVariableOp_89^training/SGD/ReadVariableOp_9^training/SGD/ReadVariableOp_92
O
VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
K
VarIsInitializedOp_1VarIsInitializedOpcount_1*
_output_shapes
: 
\
VarIsInitializedOp_2VarIsInitializedOptraining/SGD/Variable_10*
_output_shapes
: 
\
VarIsInitializedOp_3VarIsInitializedOptraining/SGD/Variable_14*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
\
VarIsInitializedOp_5VarIsInitializedOptraining/SGD/Variable_13*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOpcount*
_output_shapes
: 
[
VarIsInitializedOp_7VarIsInitializedOptraining/SGD/Variable_3*
_output_shapes
: 
I
VarIsInitializedOp_8VarIsInitializedOptotal*
_output_shapes
: 
Q
VarIsInitializedOp_9VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
T
VarIsInitializedOp_10VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
\
VarIsInitializedOp_11VarIsInitializedOptraining/SGD/Variable_4*
_output_shapes
: 
L
VarIsInitializedOp_12VarIsInitializedOptotal_1*
_output_shapes
: 
R
VarIsInitializedOp_13VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
Z
VarIsInitializedOp_14VarIsInitializedOptraining/SGD/Variable*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
\
VarIsInitializedOp_16VarIsInitializedOptraining/SGD/Variable_6*
_output_shapes
: 
T
VarIsInitializedOp_17VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
\
VarIsInitializedOp_18VarIsInitializedOptraining/SGD/Variable_7*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOptraining/SGD/Variable_17*
_output_shapes
: 
R
VarIsInitializedOp_20VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
\
VarIsInitializedOp_21VarIsInitializedOptraining/SGD/Variable_1*
_output_shapes
: 
R
VarIsInitializedOp_22VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
\
VarIsInitializedOp_23VarIsInitializedOptraining/SGD/Variable_9*
_output_shapes
: 
T
VarIsInitializedOp_24VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
T
VarIsInitializedOp_25VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_26VarIsInitializedOpconv2d/bias*
_output_shapes
: 
]
VarIsInitializedOp_27VarIsInitializedOptraining/SGD/Variable_11*
_output_shapes
: 
R
VarIsInitializedOp_28VarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
R
VarIsInitializedOp_29VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
N
VarIsInitializedOp_30VarIsInitializedOp	SGD/decay*
_output_shapes
: 
]
VarIsInitializedOp_31VarIsInitializedOptraining/SGD/Variable_12*
_output_shapes
: 
]
VarIsInitializedOp_32VarIsInitializedOptraining/SGD/Variable_15*
_output_shapes
: 
]
VarIsInitializedOp_33VarIsInitializedOptraining/SGD/Variable_16*
_output_shapes
: 
R
VarIsInitializedOp_34VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
\
VarIsInitializedOp_35VarIsInitializedOptraining/SGD/Variable_2*
_output_shapes
: 
\
VarIsInitializedOp_36VarIsInitializedOptraining/SGD/Variable_5*
_output_shapes
: 
T
VarIsInitializedOp_37VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
R
VarIsInitializedOp_38VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
\
VarIsInitializedOp_39VarIsInitializedOptraining/SGD/Variable_8*
_output_shapes
: 
T
VarIsInitializedOp_40VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
S
VarIsInitializedOp_41VarIsInitializedOpSGD/iterations*
_output_shapes
: 
K
VarIsInitializedOp_42VarIsInitializedOpSGD/lr*
_output_shapes
: 
Q
VarIsInitializedOp_43VarIsInitializedOpSGD/momentum*
_output_shapes
: 
°	
initNoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^count/Assign^count_1/Assign^total/Assign^total_1/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign ^training/SGD/Variable_16/Assign ^training/SGD/Variable_17/Assign^training/SGD/Variable_2/Assign^training/SGD/Variable_3/Assign^training/SGD/Variable_4/Assign^training/SGD/Variable_5/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign""з(
trainable_variablesѕ(ћ(
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
Д
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
Д
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
Д
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
Д
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
Д
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
Д
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08

SGD/iterations:0SGD/iterations/Assign$SGD/iterations/Read/ReadVariableOp:0(2*SGD/iterations/Initializer/initial_value:08
_
SGD/lr:0SGD/lr/AssignSGD/lr/Read/ReadVariableOp:0(2"SGD/lr/Initializer/initial_value:08
w
SGD/momentum:0SGD/momentum/Assign"SGD/momentum/Read/ReadVariableOp:0(2(SGD/momentum/Initializer/initial_value:08
k
SGD/decay:0SGD/decay/AssignSGD/decay/Read/ReadVariableOp:0(2%SGD/decay/Initializer/initial_value:08
~
training/SGD/Variable:0training/SGD/Variable/Assign+training/SGD/Variable/Read/ReadVariableOp:0(2training/SGD/zeros:08
Ж
training/SGD/Variable_1:0training/SGD/Variable_1/Assign-training/SGD/Variable_1/Read/ReadVariableOp:0(2training/SGD/zeros_1:08
Ж
training/SGD/Variable_2:0training/SGD/Variable_2/Assign-training/SGD/Variable_2/Read/ReadVariableOp:0(2training/SGD/zeros_2:08
Ж
training/SGD/Variable_3:0training/SGD/Variable_3/Assign-training/SGD/Variable_3/Read/ReadVariableOp:0(2training/SGD/zeros_3:08
Ж
training/SGD/Variable_4:0training/SGD/Variable_4/Assign-training/SGD/Variable_4/Read/ReadVariableOp:0(2training/SGD/zeros_4:08
Ж
training/SGD/Variable_5:0training/SGD/Variable_5/Assign-training/SGD/Variable_5/Read/ReadVariableOp:0(2training/SGD/zeros_5:08
Ж
training/SGD/Variable_6:0training/SGD/Variable_6/Assign-training/SGD/Variable_6/Read/ReadVariableOp:0(2training/SGD/zeros_6:08
Ж
training/SGD/Variable_7:0training/SGD/Variable_7/Assign-training/SGD/Variable_7/Read/ReadVariableOp:0(2training/SGD/zeros_7:08
Ж
training/SGD/Variable_8:0training/SGD/Variable_8/Assign-training/SGD/Variable_8/Read/ReadVariableOp:0(2training/SGD/zeros_8:08
Ж
training/SGD/Variable_9:0training/SGD/Variable_9/Assign-training/SGD/Variable_9/Read/ReadVariableOp:0(2training/SGD/zeros_9:08
К
training/SGD/Variable_10:0training/SGD/Variable_10/Assign.training/SGD/Variable_10/Read/ReadVariableOp:0(2training/SGD/zeros_10:08
К
training/SGD/Variable_11:0training/SGD/Variable_11/Assign.training/SGD/Variable_11/Read/ReadVariableOp:0(2training/SGD/zeros_11:08
К
training/SGD/Variable_12:0training/SGD/Variable_12/Assign.training/SGD/Variable_12/Read/ReadVariableOp:0(2training/SGD/zeros_12:08
К
training/SGD/Variable_13:0training/SGD/Variable_13/Assign.training/SGD/Variable_13/Read/ReadVariableOp:0(2training/SGD/zeros_13:08
К
training/SGD/Variable_14:0training/SGD/Variable_14/Assign.training/SGD/Variable_14/Read/ReadVariableOp:0(2training/SGD/zeros_14:08
К
training/SGD/Variable_15:0training/SGD/Variable_15/Assign.training/SGD/Variable_15/Read/ReadVariableOp:0(2training/SGD/zeros_15:08
К
training/SGD/Variable_16:0training/SGD/Variable_16/Assign.training/SGD/Variable_16/Read/ReadVariableOp:0(2training/SGD/zeros_16:08
К
training/SGD/Variable_17:0training/SGD/Variable_17/Assign.training/SGD/Variable_17/Read/ReadVariableOp:0(2training/SGD/zeros_17:08"Ё(
	variablesѕ(ћ(
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
Д
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
Д
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
Д
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
Д
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
Д
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
Д
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08

SGD/iterations:0SGD/iterations/Assign$SGD/iterations/Read/ReadVariableOp:0(2*SGD/iterations/Initializer/initial_value:08
_
SGD/lr:0SGD/lr/AssignSGD/lr/Read/ReadVariableOp:0(2"SGD/lr/Initializer/initial_value:08
w
SGD/momentum:0SGD/momentum/Assign"SGD/momentum/Read/ReadVariableOp:0(2(SGD/momentum/Initializer/initial_value:08
k
SGD/decay:0SGD/decay/AssignSGD/decay/Read/ReadVariableOp:0(2%SGD/decay/Initializer/initial_value:08
~
training/SGD/Variable:0training/SGD/Variable/Assign+training/SGD/Variable/Read/ReadVariableOp:0(2training/SGD/zeros:08
Ж
training/SGD/Variable_1:0training/SGD/Variable_1/Assign-training/SGD/Variable_1/Read/ReadVariableOp:0(2training/SGD/zeros_1:08
Ж
training/SGD/Variable_2:0training/SGD/Variable_2/Assign-training/SGD/Variable_2/Read/ReadVariableOp:0(2training/SGD/zeros_2:08
Ж
training/SGD/Variable_3:0training/SGD/Variable_3/Assign-training/SGD/Variable_3/Read/ReadVariableOp:0(2training/SGD/zeros_3:08
Ж
training/SGD/Variable_4:0training/SGD/Variable_4/Assign-training/SGD/Variable_4/Read/ReadVariableOp:0(2training/SGD/zeros_4:08
Ж
training/SGD/Variable_5:0training/SGD/Variable_5/Assign-training/SGD/Variable_5/Read/ReadVariableOp:0(2training/SGD/zeros_5:08
Ж
training/SGD/Variable_6:0training/SGD/Variable_6/Assign-training/SGD/Variable_6/Read/ReadVariableOp:0(2training/SGD/zeros_6:08
Ж
training/SGD/Variable_7:0training/SGD/Variable_7/Assign-training/SGD/Variable_7/Read/ReadVariableOp:0(2training/SGD/zeros_7:08
Ж
training/SGD/Variable_8:0training/SGD/Variable_8/Assign-training/SGD/Variable_8/Read/ReadVariableOp:0(2training/SGD/zeros_8:08
Ж
training/SGD/Variable_9:0training/SGD/Variable_9/Assign-training/SGD/Variable_9/Read/ReadVariableOp:0(2training/SGD/zeros_9:08
К
training/SGD/Variable_10:0training/SGD/Variable_10/Assign.training/SGD/Variable_10/Read/ReadVariableOp:0(2training/SGD/zeros_10:08
К
training/SGD/Variable_11:0training/SGD/Variable_11/Assign.training/SGD/Variable_11/Read/ReadVariableOp:0(2training/SGD/zeros_11:08
К
training/SGD/Variable_12:0training/SGD/Variable_12/Assign.training/SGD/Variable_12/Read/ReadVariableOp:0(2training/SGD/zeros_12:08
К
training/SGD/Variable_13:0training/SGD/Variable_13/Assign.training/SGD/Variable_13/Read/ReadVariableOp:0(2training/SGD/zeros_13:08
К
training/SGD/Variable_14:0training/SGD/Variable_14/Assign.training/SGD/Variable_14/Read/ReadVariableOp:0(2training/SGD/zeros_14:08
К
training/SGD/Variable_15:0training/SGD/Variable_15/Assign.training/SGD/Variable_15/Read/ReadVariableOp:0(2training/SGD/zeros_15:08
К
training/SGD/Variable_16:0training/SGD/Variable_16/Assign.training/SGD/Variable_16/Read/ReadVariableOp:0(2training/SGD/zeros_16:08
К
training/SGD/Variable_17:0training/SGD/Variable_17/Assign.training/SGD/Variable_17/Read/ReadVariableOp:0(2training/SGD/zeros_17:08“bЧњ       ў№2	>≤_cO„A*


epoch_lossќў>|КBЪ       ў№2	B≥_cO„A*


epoch_psnr}w`APЬ а       ў№2	Е≥_cO„A*


epoch_ssim†и=Ьd-”"       x=э	њ≥_cO„A*

epoch_val_lossЧ∆ћ>&б„"       x=э	ц≥_cO„A*

epoch_val_psnr…lpA7Ji"       x=э	-і_cO„A*

epoch_val_ssimП	п=ќQ¬        )н©P	ЮрсfO„A*


epoch_lossю—ў>JЪ≈Y        )н©P	ЭссfO„A*


epoch_psnr≈µaAЯУR&        )н©P	тсfO„A*


epoch_ssimy~>KыS$       B+АM	MтсfO„A*

epoch_val_loss…ќ>ƒу$       B+АM	АтсfO„A*

epoch_val_psnrМTkAѕe•r$       B+АM	ЈтсfO„A*

epoch_val_ssimчdя=l!Р        )н©P	†ЅЗjO„A*


epoch_loss:Ч‘>cRчи        )н©P	z¬ЗjO„A*


epoch_psnrІЊcA?“        )н©P	Ћ¬ЗjO„A*


epoch_ssim§(щ=»дa$       B+АM	√ЗjO„A*

epoch_val_loss~ї—>sК™б$       B+АM	M√ЗjO„A*

epoch_val_psnr`edAї}hg$       B+АM	З√ЗjO„A*

epoch_val_ssim№Џ=„ќњя