��8
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
$
DisableCopyOnRead
resource�
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
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
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
�
TopKV2

input"T
k"Tk
values"T
indices"
index_type"
sortedbool("
Ttype:
2	"
Tktype0:
2	"

index_typetype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��3
�
0bidirectional_90/backward_lstm_90/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20bidirectional_90/backward_lstm_90/lstm_cell/bias
�
Dbidirectional_90/backward_lstm_90/lstm_cell/bias/Read/ReadVariableOpReadVariableOp0bidirectional_90/backward_lstm_90/lstm_cell/bias*
_output_shapes
: *
dtype0
�
<bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel
�
Pbidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp<bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel*
_output_shapes

: *
dtype0
�
2bidirectional_90/backward_lstm_90/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *C
shared_name42bidirectional_90/backward_lstm_90/lstm_cell/kernel
�
Fbidirectional_90/backward_lstm_90/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp2bidirectional_90/backward_lstm_90/lstm_cell/kernel*
_output_shapes

: *
dtype0
�
/bidirectional_90/forward_lstm_90/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/bidirectional_90/forward_lstm_90/lstm_cell/bias
�
Cbidirectional_90/forward_lstm_90/lstm_cell/bias/Read/ReadVariableOpReadVariableOp/bidirectional_90/forward_lstm_90/lstm_cell/bias*
_output_shapes
: *
dtype0
�
;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *L
shared_name=;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel
�
Obidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel*
_output_shapes

: *
dtype0
�
1bidirectional_90/forward_lstm_90/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *B
shared_name31bidirectional_90/forward_lstm_90/lstm_cell/kernel
�
Ebidirectional_90/forward_lstm_90/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp1bidirectional_90/forward_lstm_90/lstm_cell/kernel*
_output_shapes

: *
dtype0
t
dense_556/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_556/bias
m
"dense_556/bias/Read/ReadVariableOpReadVariableOpdense_556/bias*
_output_shapes
:*
dtype0
|
dense_556/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_556/kernel
u
$dense_556/kernel/Read/ReadVariableOpReadVariableOpdense_556/kernel*
_output_shapes

:*
dtype0
t
dense_551/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_551/bias
m
"dense_551/bias/Read/ReadVariableOpReadVariableOpdense_551/bias*
_output_shapes
:*
dtype0
|
dense_551/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_551/kernel
u
$dense_551/kernel/Read/ReadVariableOpReadVariableOpdense_551/kernel*
_output_shapes

:*
dtype0
t
dense_546/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_546/bias
m
"dense_546/bias/Read/ReadVariableOpReadVariableOpdense_546/bias*
_output_shapes
:*
dtype0
|
dense_546/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_546/kernel
u
$dense_546/kernel/Read/ReadVariableOpReadVariableOpdense_546/kernel*
_output_shapes

:*
dtype0
t
dense_541/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_541/bias
m
"dense_541/bias/Read/ReadVariableOpReadVariableOpdense_541/bias*
_output_shapes
:*
dtype0
|
dense_541/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_541/kernel
u
$dense_541/kernel/Read/ReadVariableOpReadVariableOpdense_541/kernel*
_output_shapes

:*
dtype0
t
dense_557/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_557/bias
m
"dense_557/bias/Read/ReadVariableOpReadVariableOpdense_557/bias*
_output_shapes
:*
dtype0
}
dense_557/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_namedense_557/kernel
v
$dense_557/kernel/Read/ReadVariableOpReadVariableOpdense_557/kernel*
_output_shapes
:	�*
dtype0
t
dense_540/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_540/bias
m
"dense_540/bias/Read/ReadVariableOpReadVariableOpdense_540/bias*
_output_shapes
:*
dtype0
|
dense_540/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_540/kernel
u
$dense_540/kernel/Read/ReadVariableOpReadVariableOpdense_540/kernel*
_output_shapes

:*
dtype0
p
serving_default_input_1Placeholder*"
_output_shapes
:*
dtype0*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense_540/kerneldense_540/biasdense_541/kerneldense_541/biasdense_546/kerneldense_546/biasdense_551/kerneldense_551/biasdense_556/kerneldense_556/bias1bidirectional_90/forward_lstm_90/lstm_cell/kernel;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel/bidirectional_90/forward_lstm_90/lstm_cell/bias2bidirectional_90/backward_lstm_90/lstm_cell/kernel<bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel0bidirectional_90/backward_lstm_90/lstm_cell/biasdense_557/kerneldense_557/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_46106995

NoOpNoOp
�z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�y
value�yB�y B�y
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias*

"	keras_api* 

#	keras_api* 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 

0	keras_api* 
�
1layer_with_weights-0
1layer-0
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses*
�
8layer_with_weights-0
8layer-0
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses*
�
?layer_with_weights-0
?layer-0
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
�
Flayer_with_weights-0
Flayer-0
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses*

M	keras_api* 
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zforward_layer
[backward_layer*
�
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b_random_generator* 
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses* 
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias*
�
 0
!1
q2
r3
s4
t5
u6
v7
w8
x9
y10
z11
{12
|13
}14
~15
o16
p17*
�
 0
!1
q2
r3
s4
t5
u6
v7
w8
x9
y10
z11
{12
|13
}14
~15
o16
p17*
* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�serving_default* 

 0
!1*

 0
!1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_540/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_540/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias*

q0
r1*

q0
r1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias*

s0
t1*

s0
t1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ukernel
vbias*

u0
v1*

u0
v1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

wkernel
xbias*

w0
x1*

w0
x1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
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

�trace_0
�trace_1* 

�trace_0
�trace_1* 
.
y0
z1
{2
|3
}4
~5*
.
y0
z1
{2
|3
}4
~5*
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
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
	�cell
�
state_spec*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
	�cell
�
state_spec*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

o0
p1*

o0
p1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_557/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_557/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_541/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_541/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_546/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_546/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_551/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_551/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_556/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_556/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1bidirectional_90/forward_lstm_90/lstm_cell/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/bidirectional_90/forward_lstm_90/lstm_cell/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2bidirectional_90/backward_lstm_90/lstm_cell/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0bidirectional_90/backward_lstm_90/lstm_cell/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*
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

q0
r1*

q0
r1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

10*
* 
* 
* 
* 
* 
* 
* 

s0
t1*

s0
t1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

80*
* 
* 
* 
* 
* 
* 
* 

u0
v1*

u0
v1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

?0*
* 
* 
* 
* 
* 
* 
* 

w0
x1*

w0
x1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

F0*
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

Z0
[1*
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

y0
z1
{2*

y0
z1
{2*
* 
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�
state_size

ykernel
zrecurrent_kernel
{bias*
* 

|0
}1
~2*

|0
}1
~2*
* 
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�
state_size

|kernel
}recurrent_kernel
~bias*
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

�0*
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

y0
z1
{2*

y0
z1
{2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 

�0*
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

|0
}1
~2*

|0
}1
~2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_540/kerneldense_540/biasdense_557/kerneldense_557/biasdense_541/kerneldense_541/biasdense_546/kerneldense_546/biasdense_551/kerneldense_551/biasdense_556/kerneldense_556/bias1bidirectional_90/forward_lstm_90/lstm_cell/kernel;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel/bidirectional_90/forward_lstm_90/lstm_cell/bias2bidirectional_90/backward_lstm_90/lstm_cell/kernel<bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel0bidirectional_90/backward_lstm_90/lstm_cell/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_save_46110094
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_540/kerneldense_540/biasdense_557/kerneldense_557/biasdense_541/kerneldense_541/biasdense_546/kerneldense_546/biasdense_551/kerneldense_551/biasdense_556/kerneldense_556/bias1bidirectional_90/forward_lstm_90/lstm_cell/kernel;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel/bidirectional_90/forward_lstm_90/lstm_cell/bias2bidirectional_90/backward_lstm_90/lstm_cell/kernel<bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel0bidirectional_90/backward_lstm_90/lstm_cell/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference__traced_restore_46110157��2
�L
�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105889

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46105805*
condR
while_cond_46105804*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�8
�
while_body_46105495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�8
�
while_body_46109249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
1__inference_sequential_370_layer_call_fn_46104494
dense_551_input
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_551_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104476s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_551_input:($
"
_user_specified_name
46104488:($
"
_user_specified_name
46104490
�Y
�
$__inference__traced_restore_46110157
file_prefix3
!assignvariableop_dense_540_kernel:/
!assignvariableop_1_dense_540_bias:6
#assignvariableop_2_dense_557_kernel:	�/
!assignvariableop_3_dense_557_bias:5
#assignvariableop_4_dense_541_kernel:/
!assignvariableop_5_dense_541_bias:5
#assignvariableop_6_dense_546_kernel:/
!assignvariableop_7_dense_546_bias:5
#assignvariableop_8_dense_551_kernel:/
!assignvariableop_9_dense_551_bias:6
$assignvariableop_10_dense_556_kernel:0
"assignvariableop_11_dense_556_bias:W
Eassignvariableop_12_bidirectional_90_forward_lstm_90_lstm_cell_kernel: a
Oassignvariableop_13_bidirectional_90_forward_lstm_90_lstm_cell_recurrent_kernel: Q
Cassignvariableop_14_bidirectional_90_forward_lstm_90_lstm_cell_bias: X
Fassignvariableop_15_bidirectional_90_backward_lstm_90_lstm_cell_kernel: b
Passignvariableop_16_bidirectional_90_backward_lstm_90_lstm_cell_recurrent_kernel: R
Dassignvariableop_17_bidirectional_90_backward_lstm_90_lstm_cell_bias: 
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_dense_540_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_540_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_557_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_557_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_541_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_541_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_546_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_546_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_551_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_551_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_556_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_556_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpEassignvariableop_12_bidirectional_90_forward_lstm_90_lstm_cell_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpOassignvariableop_13_bidirectional_90_forward_lstm_90_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpCassignvariableop_14_bidirectional_90_forward_lstm_90_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpFassignvariableop_15_bidirectional_90_backward_lstm_90_lstm_cell_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpPassignvariableop_16_bidirectional_90_backward_lstm_90_lstm_cell_recurrent_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpDassignvariableop_17_bidirectional_90_backward_lstm_90_lstm_cell_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
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
_user_specified_namefile_prefix:0,
*
_user_specified_namedense_540/kernel:.*
(
_user_specified_namedense_540/bias:0,
*
_user_specified_namedense_557/kernel:.*
(
_user_specified_namedense_557/bias:0,
*
_user_specified_namedense_541/kernel:.*
(
_user_specified_namedense_541/bias:0,
*
_user_specified_namedense_546/kernel:.*
(
_user_specified_namedense_546/bias:0	,
*
_user_specified_namedense_551/kernel:.
*
(
_user_specified_namedense_551/bias:0,
*
_user_specified_namedense_556/kernel:.*
(
_user_specified_namedense_556/bias:QM
K
_user_specified_name31bidirectional_90/forward_lstm_90/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_90/forward_lstm_90/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_90/backward_lstm_90/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_90/backward_lstm_90/lstm_cell/bias
�
s
G__inference_lambda_92_layer_call_and_return_conditional_losses_46107091
inputs_0
inputs_1
identity~
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::P L
&
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
�G
�
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106768
input_1$
dense_540_46106396: 
dense_540_46106398:)
sequential_360_46106426:%
sequential_360_46106428:)
sequential_365_46106431:%
sequential_365_46106433:)
sequential_370_46106436:%
sequential_370_46106438:)
sequential_375_46106441:%
sequential_375_46106443:+
bidirectional_90_46106742: +
bidirectional_90_46106744: '
bidirectional_90_46106746: +
bidirectional_90_46106748: +
bidirectional_90_46106750: '
bidirectional_90_46106752: %
dense_557_46106762:	� 
dense_557_46106764:
identity��(bidirectional_90/StatefulPartitionedCall�!dense_540/StatefulPartitionedCall�!dense_557/StatefulPartitionedCall�&sequential_360/StatefulPartitionedCall�&sequential_365/StatefulPartitionedCall�&sequential_370/StatefulPartitionedCall�&sequential_375/StatefulPartitionedCall�
!dense_540/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_540_46106396dense_540_46106398*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_540_layer_call_and_return_conditional_losses_46105997X
tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :�
tf.math.top_k/TopKV2TopKV2*dense_540/StatefulPartitionedCall:output:0tf.math.top_k/TopKV2/k:output:0*
T0*0
_output_shapes
::`
tf.one_hot/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
tf.one_hot/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Z
tf.one_hot/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :�
tf.one_hot/one_hotOneHottf.math.top_k/TopKV2:indices:0!tf.one_hot/one_hot/depth:output:0$tf.one_hot/one_hot/on_value:output:0%tf.one_hot/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:�
lambda_90/PartitionedCallPartitionedCalltf.math.top_k/TopKV2:values:0tf.one_hot/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_90_layer_call_and_return_conditional_losses_46106413�
lambda_91/PartitionedCallPartitionedCallinput_1"lambda_90/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_91_layer_call_and_return_conditional_losses_46106420�
tf.unstack/unstackUnpack"lambda_91/PartitionedCall:output:0*
T0*L
_output_shapes:
8::::*	
num�
&sequential_360/StatefulPartitionedCallStatefulPartitionedCalltf.unstack/unstack:output:0sequential_360_46106426sequential_360_46106428*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104310�
&sequential_365/StatefulPartitionedCallStatefulPartitionedCalltf.unstack/unstack:output:1sequential_365_46106431sequential_365_46106433*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104393�
&sequential_370/StatefulPartitionedCallStatefulPartitionedCalltf.unstack/unstack:output:2sequential_370_46106436sequential_370_46106438*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104476�
&sequential_375/StatefulPartitionedCallStatefulPartitionedCalltf.unstack/unstack:output:3sequential_375_46106441sequential_375_46106443*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104559�
tf.stack_91/stackPack/sequential_360/StatefulPartitionedCall:output:0/sequential_365/StatefulPartitionedCall:output:0/sequential_370/StatefulPartitionedCall:output:0/sequential_375/StatefulPartitionedCall:output:0*
N*
T0*&
_output_shapes
:*

axis�
lambda_92/PartitionedCallPartitionedCalltf.stack_91/stack:output:0"lambda_90/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_92_layer_call_and_return_conditional_losses_46106452�
(bidirectional_90/StatefulPartitionedCallStatefulPartitionedCall"lambda_92/PartitionedCall:output:0bidirectional_90_46106742bidirectional_90_46106744bidirectional_90_46106746bidirectional_90_46106748bidirectional_90_46106750bidirectional_90_46106752*
Tin
	2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46106741�
dropout_90/PartitionedCallPartitionedCall1bidirectional_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_90_layer_call_and_return_conditional_losses_46106759�
flatten_90/PartitionedCallPartitionedCall#dropout_90/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_90_layer_call_and_return_conditional_losses_46106375�
!dense_557/StatefulPartitionedCallStatefulPartitionedCall#flatten_90/PartitionedCall:output:0dense_557_46106762dense_557_46106764*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_557_layer_call_and_return_conditional_losses_46106386p
IdentityIdentity*dense_557/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp)^bidirectional_90/StatefulPartitionedCall"^dense_540/StatefulPartitionedCall"^dense_557/StatefulPartitionedCall'^sequential_360/StatefulPartitionedCall'^sequential_365/StatefulPartitionedCall'^sequential_370/StatefulPartitionedCall'^sequential_375/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2T
(bidirectional_90/StatefulPartitionedCall(bidirectional_90/StatefulPartitionedCall2F
!dense_540/StatefulPartitionedCall!dense_540/StatefulPartitionedCall2F
!dense_557/StatefulPartitionedCall!dense_557/StatefulPartitionedCall2P
&sequential_360/StatefulPartitionedCall&sequential_360/StatefulPartitionedCall2P
&sequential_365/StatefulPartitionedCall&sequential_365/StatefulPartitionedCall2P
&sequential_370/StatefulPartitionedCall&sequential_370/StatefulPartitionedCall2P
&sequential_375/StatefulPartitionedCall&sequential_375/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:($
"
_user_specified_name
46106396:($
"
_user_specified_name
46106398:($
"
_user_specified_name
46106426:($
"
_user_specified_name
46106428:($
"
_user_specified_name
46106431:($
"
_user_specified_name
46106433:($
"
_user_specified_name
46106436:($
"
_user_specified_name
46106438:(	$
"
_user_specified_name
46106441:(
$
"
_user_specified_name
46106443:($
"
_user_specified_name
46106742:($
"
_user_specified_name
46106744:($
"
_user_specified_name
46106746:($
"
_user_specified_name
46106748:($
"
_user_specified_name
46106750:($
"
_user_specified_name
46106752:($
"
_user_specified_name
46106762:($
"
_user_specified_name
46106764
�

g
H__inference_dropout_90_layer_call_and_return_conditional_losses_46108333

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
G__inference_dense_540_layer_call_and_return_conditional_losses_46107019

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Q
SoftmaxSoftmaxBiasAdd:output:0*
T0*"
_output_shapes
:[
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*"
_output_shapes
:V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
2__inference_forward_lstm_90_layer_call_fn_46108561

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46105427|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46108553:($
"
_user_specified_name
46108555:($
"
_user_specified_name
46108557
�J
�
#forward_lstm_90_while_body_46106114<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3;
7forward_lstm_90_while_forward_lstm_90_strided_slice_1_0w
sforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_90_while_identity$
 forward_lstm_90_while_identity_1$
 forward_lstm_90_while_identity_2$
 forward_lstm_90_while_identity_3$
 forward_lstm_90_while_identity_4$
 forward_lstm_90_while_identity_59
5forward_lstm_90_while_forward_lstm_90_strided_slice_1u
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
9forward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_90_while_placeholderPforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
&forward_lstm_90/while/lstm_cell/MatMulMatMul@forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
(forward_lstm_90/while/lstm_cell/MatMul_1MatMul#forward_lstm_90_while_placeholder_2?forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
#forward_lstm_90/while/lstm_cell/addAddV20forward_lstm_90/while/lstm_cell/MatMul:product:02forward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
'forward_lstm_90/while/lstm_cell/BiasAddBiasAdd'forward_lstm_90/while/lstm_cell/add:z:0>forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_90/while/lstm_cell/splitSplit8forward_lstm_90/while/lstm_cell/split/split_dim:output:00forward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
'forward_lstm_90/while/lstm_cell/SigmoidSigmoid.forward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
)forward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
#forward_lstm_90/while/lstm_cell/mulMul-forward_lstm_90/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
$forward_lstm_90/while/lstm_cell/ReluRelu.forward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/mul_1Mul+forward_lstm_90/while/lstm_cell/Sigmoid:y:02forward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/add_1AddV2'forward_lstm_90/while/lstm_cell/mul:z:0)forward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
)forward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
&forward_lstm_90/while/lstm_cell/Relu_1Relu)forward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/mul_2Mul-forward_lstm_90/while/lstm_cell/Sigmoid_2:y:04forward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
:forward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_90_while_placeholder_1!forward_lstm_90_while_placeholder)forward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/addAddV2!forward_lstm_90_while_placeholder$forward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/add_1AddV28forward_lstm_90_while_forward_lstm_90_while_loop_counter&forward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_1Identity>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_2Identityforward_lstm_90/while/add:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_3IdentityJforward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_4Identity)forward_lstm_90/while/lstm_cell/mul_2:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
 forward_lstm_90/while/Identity_5Identity)forward_lstm_90/while/lstm_cell/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
forward_lstm_90/while/NoOpNoOp7^forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_90_while_forward_lstm_90_strided_slice_17forward_lstm_90_while_forward_lstm_90_strided_slice_1_0"I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0"M
 forward_lstm_90_while_identity_1)forward_lstm_90/while/Identity_1:output:0"M
 forward_lstm_90_while_identity_2)forward_lstm_90/while/Identity_2:output:0"M
 forward_lstm_90_while_identity_3)forward_lstm_90/while/Identity_3:output:0"M
 forward_lstm_90_while_identity_4)forward_lstm_90/while/Identity_4:output:0"M
 forward_lstm_90_while_identity_5)forward_lstm_90/while/Identity_5:output:0"�
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46105592

inputs*
forward_lstm_90_46105428: *
forward_lstm_90_46105430: &
forward_lstm_90_46105432: +
backward_lstm_90_46105580: +
backward_lstm_90_46105582: '
backward_lstm_90_46105584: 
identity��(backward_lstm_90/StatefulPartitionedCall�'forward_lstm_90/StatefulPartitionedCall�
'forward_lstm_90/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_90_46105428forward_lstm_90_46105430forward_lstm_90_46105432*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46105427�
(backward_lstm_90/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_90_46105580backward_lstm_90_46105582backward_lstm_90_46105584*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105579X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
	ReverseV2	ReverseV21backward_lstm_90/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :������������������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV20forward_lstm_90/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :������������������k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :������������������w
NoOpNoOp)^backward_lstm_90/StatefulPartitionedCall(^forward_lstm_90/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 2T
(backward_lstm_90/StatefulPartitionedCall(backward_lstm_90/StatefulPartitionedCall2R
'forward_lstm_90/StatefulPartitionedCall'forward_lstm_90/StatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46105428:($
"
_user_specified_name
46105430:($
"
_user_specified_name
46105432:($
"
_user_specified_name
46105580:($
"
_user_specified_name
46105582:($
"
_user_specified_name
46105584
��
�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46106343

inputsJ
8forward_lstm_90_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_90_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource: 
identity��1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_90/while�0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_90/whilej
forward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_sliceStridedSliceforward_lstm_90/Shape:output:0,forward_lstm_90/strided_slice/stack:output:0.forward_lstm_90/strided_slice/stack_1:output:0.forward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros/packedPack&forward_lstm_90/strided_slice:output:0'forward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zerosFill%forward_lstm_90/zeros/packed:output:0$forward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros_1/packedPack&forward_lstm_90/strided_slice:output:0)forward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zeros_1Fill'forward_lstm_90/zeros_1/packed:output:0&forward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose	Transposeinputs'forward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_1StridedSlice forward_lstm_90/Shape_1:output:0.forward_lstm_90/strided_slice_1/stack:output:00forward_lstm_90/strided_slice_1/stack_1:output:00forward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_90/TensorArrayV2TensorListReserve4forward_lstm_90/TensorArrayV2/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
7forward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_90/transpose:y:0Nforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_2StridedSliceforward_lstm_90/transpose:y:0.forward_lstm_90/strided_slice_2/stack:output:00forward_lstm_90/strided_slice_2/stack_1:output:00forward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
 forward_lstm_90/lstm_cell/MatMulMatMul(forward_lstm_90/strided_slice_2:output:07forward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
"forward_lstm_90/lstm_cell/MatMul_1MatMulforward_lstm_90/zeros:output:09forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
forward_lstm_90/lstm_cell/addAddV2*forward_lstm_90/lstm_cell/MatMul:product:0,forward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!forward_lstm_90/lstm_cell/BiasAddBiasAdd!forward_lstm_90/lstm_cell/add:z:08forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/lstm_cell/splitSplit2forward_lstm_90/lstm_cell/split/split_dim:output:0*forward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_90/lstm_cell/SigmoidSigmoid(forward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
#forward_lstm_90/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mulMul'forward_lstm_90/lstm_cell/Sigmoid_1:y:0 forward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_90/lstm_cell/ReluRelu(forward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mul_1Mul%forward_lstm_90/lstm_cell/Sigmoid:y:0,forward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/add_1AddV2!forward_lstm_90/lstm_cell/mul:z:0#forward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
#forward_lstm_90/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_90/lstm_cell/Relu_1Relu#forward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mul_2Mul'forward_lstm_90/lstm_cell/Sigmoid_2:y:0.forward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_lstm_90/TensorArrayV2_1TensorListReserve6forward_lstm_90/TensorArrayV2_1/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_90/whileWhile+forward_lstm_90/while/loop_counter:output:01forward_lstm_90/while/maximum_iterations:output:0forward_lstm_90/time:output:0(forward_lstm_90/TensorArrayV2_1:handle:0forward_lstm_90/zeros:output:0 forward_lstm_90/zeros_1:output:0(forward_lstm_90/strided_slice_1:output:0Gforward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_90_lstm_cell_matmul_readvariableop_resource:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_90_while_body_46106114*/
cond'R%
#forward_lstm_90_while_cond_46106113*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
@forward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
2forward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_90/while:output:3Iforward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_3StridedSlice;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_90/strided_slice_3/stack:output:00forward_lstm_90/strided_slice_3/stack_1:output:00forward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose_1	Transpose;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_90/strided_sliceStridedSlicebackward_lstm_90/Shape:output:0-backward_lstm_90/strided_slice/stack:output:0/backward_lstm_90/strided_slice/stack_1:output:0/backward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros/packedPack'backward_lstm_90/strided_slice:output:0(backward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zerosFill&backward_lstm_90/zeros/packed:output:0%backward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros_1/packedPack'backward_lstm_90/strided_slice:output:0*backward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zeros_1Fill(backward_lstm_90/zeros_1/packed:output:0'backward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose	Transposeinputs(backward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_1StridedSlice!backward_lstm_90/Shape_1:output:0/backward_lstm_90/strided_slice_1/stack:output:01backward_lstm_90/strided_slice_1/stack_1:output:01backward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_90/TensorArrayV2TensorListReserve5backward_lstm_90/TensorArrayV2/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_90/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_90/ReverseV2	ReverseV2backward_lstm_90/transpose:y:0(backward_lstm_90/ReverseV2/axis:output:0*
T0*"
_output_shapes
:�
Fbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
8backward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_90/ReverseV2:output:0Obackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_2StridedSlicebackward_lstm_90/transpose:y:0/backward_lstm_90/strided_slice_2/stack:output:01backward_lstm_90/strided_slice_2/stack_1:output:01backward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
!backward_lstm_90/lstm_cell/MatMulMatMul)backward_lstm_90/strided_slice_2:output:08backward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
#backward_lstm_90/lstm_cell/MatMul_1MatMulbackward_lstm_90/zeros:output:0:backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
backward_lstm_90/lstm_cell/addAddV2+backward_lstm_90/lstm_cell/MatMul:product:0-backward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
"backward_lstm_90/lstm_cell/BiasAddBiasAdd"backward_lstm_90/lstm_cell/add:z:09backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_90/lstm_cell/splitSplit3backward_lstm_90/lstm_cell/split/split_dim:output:0+backward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
"backward_lstm_90/lstm_cell/SigmoidSigmoid)backward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
$backward_lstm_90/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
backward_lstm_90/lstm_cell/mulMul(backward_lstm_90/lstm_cell/Sigmoid_1:y:0!backward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_90/lstm_cell/ReluRelu)backward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/mul_1Mul&backward_lstm_90/lstm_cell/Sigmoid:y:0-backward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/add_1AddV2"backward_lstm_90/lstm_cell/mul:z:0$backward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
$backward_lstm_90/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_90/lstm_cell/Relu_1Relu$backward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/mul_2Mul(backward_lstm_90/lstm_cell/Sigmoid_2:y:0/backward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
 backward_lstm_90/TensorArrayV2_1TensorListReserve7backward_lstm_90/TensorArrayV2_1/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_90/whileWhile,backward_lstm_90/while/loop_counter:output:02backward_lstm_90/while/maximum_iterations:output:0backward_lstm_90/time:output:0)backward_lstm_90/TensorArrayV2_1:handle:0backward_lstm_90/zeros:output:0!backward_lstm_90/zeros_1:output:0)backward_lstm_90/strided_slice_1:output:0Hbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_90_lstm_cell_matmul_readvariableop_resource;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_90_while_body_46106255*0
cond(R&
$backward_lstm_90_while_cond_46106254*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
Abackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
3backward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_90/while:output:3Jbackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_3StridedSlice<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_90/strided_slice_3/stack:output:01backward_lstm_90/strided_slice_3/stack_1:output:01backward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose_1	Transpose<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:~
	ReverseV2	ReverseV2 backward_lstm_90/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2forward_lstm_90/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp2^backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_90/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_90/while1^forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_90/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_90/whilebackward_lstm_90/while2d
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_90/whileforward_lstm_90/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�$
�
while_body_46105157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_46105181_0: ,
while_lstm_cell_46105183_0: (
while_lstm_cell_46105185_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_46105181: *
while_lstm_cell_46105183: &
while_lstm_cell_46105185: ��'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46105181_0while_lstm_cell_46105183_0while_lstm_cell_46105185_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46105143�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_46105181while_lstm_cell_46105181_0"6
while_lstm_cell_46105183while_lstm_cell_46105183_0"6
while_lstm_cell_46105185while_lstm_cell_46105185_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
46105181:(	$
"
_user_specified_name
46105183:(
$
"
_user_specified_name
46105185
�
�
$backward_lstm_90_while_cond_46106254>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3@
<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46106254___redundant_placeholder0X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46106254___redundant_placeholder1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46106254___redundant_placeholder2X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46106254___redundant_placeholder3#
backward_lstm_90_while_identity
�
backward_lstm_90/while/LessLess"backward_lstm_90_while_placeholder<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_90/while/IdentityIdentitybackward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:

_output_shapes
:
�
�
$backward_lstm_90_while_cond_46107358>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3@
<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107358___redundant_placeholder0X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107358___redundant_placeholder1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107358___redundant_placeholder2X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107358___redundant_placeholder3#
backward_lstm_90_while_identity
�
backward_lstm_90/while/LessLess"backward_lstm_90_while_placeholder<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_90/while/IdentityIdentitybackward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:

_output_shapes
:
�	
�
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104393
dense_546_input$
dense_546_46104387: 
dense_546_46104389:
identity��!dense_546/StatefulPartitionedCall�
!dense_546/StatefulPartitionedCallStatefulPartitionedCalldense_546_inputdense_546_46104387dense_546_46104389*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_546_layer_call_and_return_conditional_losses_46104372}
IdentityIdentity*dense_546/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������F
NoOpNoOp"^dense_546/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2F
!dense_546/StatefulPartitionedCall!dense_546/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_546_input:($
"
_user_specified_name
46104387:($
"
_user_specified_name
46104389
�
s
G__inference_lambda_91_layer_call_and_return_conditional_losses_46107061
inputs_0
inputs_1
identity�
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc]
IdentityIdentityeinsum/Einsum:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
�8
�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46104876

inputs$
lstm_cell_46104794: $
lstm_cell_46104796:  
lstm_cell_46104798: 
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46104794lstm_cell_46104796lstm_cell_46104798*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104793n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46104794lstm_cell_46104796lstm_cell_46104798*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46104807*
condR
while_cond_46104806*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46104794:($
"
_user_specified_name
46104796:($
"
_user_specified_name
46104798
�8
�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46104731

inputs$
lstm_cell_46104649: $
lstm_cell_46104651:  
lstm_cell_46104653: 
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46104649lstm_cell_46104651lstm_cell_46104653*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104648n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46104649lstm_cell_46104651lstm_cell_46104653*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46104662*
condR
while_cond_46104661*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46104649:($
"
_user_specified_name
46104651:($
"
_user_specified_name
46104653
�L
�
#forward_lstm_90_while_body_46107506<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3;
7forward_lstm_90_while_forward_lstm_90_strided_slice_1_0w
sforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_90_while_identity$
 forward_lstm_90_while_identity_1$
 forward_lstm_90_while_identity_2$
 forward_lstm_90_while_identity_3$
 forward_lstm_90_while_identity_4$
 forward_lstm_90_while_identity_59
5forward_lstm_90_while_forward_lstm_90_strided_slice_1u
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
9forward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_90_while_placeholderPforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
&forward_lstm_90/while/lstm_cell/MatMulMatMul@forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
(forward_lstm_90/while/lstm_cell/MatMul_1MatMul#forward_lstm_90_while_placeholder_2?forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
#forward_lstm_90/while/lstm_cell/addAddV20forward_lstm_90/while/lstm_cell/MatMul:product:02forward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
'forward_lstm_90/while/lstm_cell/BiasAddBiasAdd'forward_lstm_90/while/lstm_cell/add:z:0>forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� q
/forward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_90/while/lstm_cell/splitSplit8forward_lstm_90/while/lstm_cell/split/split_dim:output:00forward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
'forward_lstm_90/while/lstm_cell/SigmoidSigmoid.forward_lstm_90/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:����������
)forward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_90/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
#forward_lstm_90/while/lstm_cell/mulMul-forward_lstm_90/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_90_while_placeholder_3*
T0*'
_output_shapes
:����������
$forward_lstm_90/while/lstm_cell/ReluRelu.forward_lstm_90/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
%forward_lstm_90/while/lstm_cell/mul_1Mul+forward_lstm_90/while/lstm_cell/Sigmoid:y:02forward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
%forward_lstm_90/while/lstm_cell/add_1AddV2'forward_lstm_90/while/lstm_cell/mul:z:0)forward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:����������
)forward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_90/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:����������
&forward_lstm_90/while/lstm_cell/Relu_1Relu)forward_lstm_90/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
%forward_lstm_90/while/lstm_cell/mul_2Mul-forward_lstm_90/while/lstm_cell/Sigmoid_2:y:04forward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
:forward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_90_while_placeholder_1!forward_lstm_90_while_placeholder)forward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/addAddV2!forward_lstm_90_while_placeholder$forward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/add_1AddV28forward_lstm_90_while_forward_lstm_90_while_loop_counter&forward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_1Identity>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_2Identityforward_lstm_90/while/add:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_3IdentityJforward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_4Identity)forward_lstm_90/while/lstm_cell/mul_2:z:0^forward_lstm_90/while/NoOp*
T0*'
_output_shapes
:����������
 forward_lstm_90/while/Identity_5Identity)forward_lstm_90/while/lstm_cell/add_1:z:0^forward_lstm_90/while/NoOp*
T0*'
_output_shapes
:����������
forward_lstm_90/while/NoOpNoOp7^forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_90_while_forward_lstm_90_strided_slice_17forward_lstm_90_while_forward_lstm_90_strided_slice_1_0"I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0"M
 forward_lstm_90_while_identity_1)forward_lstm_90/while/Identity_1:output:0"M
 forward_lstm_90_while_identity_2)forward_lstm_90/while/Identity_2:output:0"M
 forward_lstm_90_while_identity_3)forward_lstm_90/while/Identity_3:output:0"M
 forward_lstm_90_while_identity_4)forward_lstm_90/while/Identity_4:output:0"M
 forward_lstm_90_while_identity_5)forward_lstm_90/while/Identity_5:output:0"�
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2p
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�J
�
#forward_lstm_90_while_body_46106512<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3;
7forward_lstm_90_while_forward_lstm_90_strided_slice_1_0w
sforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_90_while_identity$
 forward_lstm_90_while_identity_1$
 forward_lstm_90_while_identity_2$
 forward_lstm_90_while_identity_3$
 forward_lstm_90_while_identity_4$
 forward_lstm_90_while_identity_59
5forward_lstm_90_while_forward_lstm_90_strided_slice_1u
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
9forward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_90_while_placeholderPforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
&forward_lstm_90/while/lstm_cell/MatMulMatMul@forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
(forward_lstm_90/while/lstm_cell/MatMul_1MatMul#forward_lstm_90_while_placeholder_2?forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
#forward_lstm_90/while/lstm_cell/addAddV20forward_lstm_90/while/lstm_cell/MatMul:product:02forward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
'forward_lstm_90/while/lstm_cell/BiasAddBiasAdd'forward_lstm_90/while/lstm_cell/add:z:0>forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_90/while/lstm_cell/splitSplit8forward_lstm_90/while/lstm_cell/split/split_dim:output:00forward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
'forward_lstm_90/while/lstm_cell/SigmoidSigmoid.forward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
)forward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
#forward_lstm_90/while/lstm_cell/mulMul-forward_lstm_90/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
$forward_lstm_90/while/lstm_cell/ReluRelu.forward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/mul_1Mul+forward_lstm_90/while/lstm_cell/Sigmoid:y:02forward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/add_1AddV2'forward_lstm_90/while/lstm_cell/mul:z:0)forward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
)forward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
&forward_lstm_90/while/lstm_cell/Relu_1Relu)forward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/mul_2Mul-forward_lstm_90/while/lstm_cell/Sigmoid_2:y:04forward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
:forward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_90_while_placeholder_1!forward_lstm_90_while_placeholder)forward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/addAddV2!forward_lstm_90_while_placeholder$forward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/add_1AddV28forward_lstm_90_while_forward_lstm_90_while_loop_counter&forward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_1Identity>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_2Identityforward_lstm_90/while/add:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_3IdentityJforward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_4Identity)forward_lstm_90/while/lstm_cell/mul_2:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
 forward_lstm_90/while/Identity_5Identity)forward_lstm_90/while/lstm_cell/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
forward_lstm_90/while/NoOpNoOp7^forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_90_while_forward_lstm_90_strided_slice_17forward_lstm_90_while_forward_lstm_90_strided_slice_1_0"I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0"M
 forward_lstm_90_while_identity_1)forward_lstm_90/while/Identity_1:output:0"M
 forward_lstm_90_while_identity_2)forward_lstm_90/while/Identity_2:output:0"M
 forward_lstm_90_while_identity_3)forward_lstm_90/while/Identity_3:output:0"M
 forward_lstm_90_while_identity_4)forward_lstm_90/while/Identity_4:output:0"M
 forward_lstm_90_while_identity_5)forward_lstm_90/while/Identity_5:output:0"�
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�$
�
while_body_46104807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_46104831_0: ,
while_lstm_cell_46104833_0: (
while_lstm_cell_46104835_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_46104831: *
while_lstm_cell_46104833: &
while_lstm_cell_46104835: ��'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46104831_0while_lstm_cell_46104833_0while_lstm_cell_46104835_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104793�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_46104831while_lstm_cell_46104831_0"6
while_lstm_cell_46104833while_lstm_cell_46104833_0"6
while_lstm_cell_46104835while_lstm_cell_46104835_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
46104831:(	$
"
_user_specified_name
46104833:(
$
"
_user_specified_name
46104835
�

�
3__inference_bidirectional_90_layer_call_fn_46107142

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46106343j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
46107128:($
"
_user_specified_name
46107130:($
"
_user_specified_name
46107132:($
"
_user_specified_name
46107134:($
"
_user_specified_name
46107136:($
"
_user_specified_name
46107138
�
X
,__inference_lambda_91_layer_call_fn_46107049
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_91_layer_call_and_return_conditional_losses_46106022_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
�
�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104996

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�M
�
$backward_lstm_90_while_body_46107647>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3=
9backward_lstm_90_while_backward_lstm_90_strided_slice_1_0y
ubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_90_while_identity%
!backward_lstm_90_while_identity_1%
!backward_lstm_90_while_identity_2%
!backward_lstm_90_while_identity_3%
!backward_lstm_90_while_identity_4%
!backward_lstm_90_while_identity_5;
7backward_lstm_90_while_backward_lstm_90_strided_slice_1w
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
:backward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_90_while_placeholderQbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
'backward_lstm_90/while/lstm_cell/MatMulMatMulAbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
)backward_lstm_90/while/lstm_cell/MatMul_1MatMul$backward_lstm_90_while_placeholder_2@backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
$backward_lstm_90/while/lstm_cell/addAddV21backward_lstm_90/while/lstm_cell/MatMul:product:03backward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
(backward_lstm_90/while/lstm_cell/BiasAddBiasAdd(backward_lstm_90/while/lstm_cell/add:z:0?backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
0backward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_90/while/lstm_cell/splitSplit9backward_lstm_90/while/lstm_cell/split/split_dim:output:01backward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
(backward_lstm_90/while/lstm_cell/SigmoidSigmoid/backward_lstm_90/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:����������
*backward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_90/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
$backward_lstm_90/while/lstm_cell/mulMul.backward_lstm_90/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_90_while_placeholder_3*
T0*'
_output_shapes
:����������
%backward_lstm_90/while/lstm_cell/ReluRelu/backward_lstm_90/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
&backward_lstm_90/while/lstm_cell/mul_1Mul,backward_lstm_90/while/lstm_cell/Sigmoid:y:03backward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
&backward_lstm_90/while/lstm_cell/add_1AddV2(backward_lstm_90/while/lstm_cell/mul:z:0*backward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:����������
*backward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_90/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:����������
'backward_lstm_90/while/lstm_cell/Relu_1Relu*backward_lstm_90/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
&backward_lstm_90/while/lstm_cell/mul_2Mul.backward_lstm_90/while/lstm_cell/Sigmoid_2:y:05backward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
;backward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_90_while_placeholder_1"backward_lstm_90_while_placeholder*backward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/addAddV2"backward_lstm_90_while_placeholder%backward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/add_1AddV2:backward_lstm_90_while_backward_lstm_90_while_loop_counter'backward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_90/while/IdentityIdentity backward_lstm_90/while/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_1Identity@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_2Identitybackward_lstm_90/while/add:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_3IdentityKbackward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_4Identity*backward_lstm_90/while/lstm_cell/mul_2:z:0^backward_lstm_90/while/NoOp*
T0*'
_output_shapes
:����������
!backward_lstm_90/while/Identity_5Identity*backward_lstm_90/while/lstm_cell/add_1:z:0^backward_lstm_90/while/NoOp*
T0*'
_output_shapes
:����������
backward_lstm_90/while/NoOpNoOp8^backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_90_while_backward_lstm_90_strided_slice_19backward_lstm_90_while_backward_lstm_90_strided_slice_1_0"K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0"O
!backward_lstm_90_while_identity_1*backward_lstm_90/while/Identity_1:output:0"O
!backward_lstm_90_while_identity_2*backward_lstm_90/while/Identity_2:output:0"O
!backward_lstm_90_while_identity_3*backward_lstm_90/while/Identity_3:output:0"O
!backward_lstm_90_while_identity_4*backward_lstm_90/while/Identity_4:output:0"O
!backward_lstm_90_while_identity_5*backward_lstm_90/while/Identity_5:output:0"�
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2r
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
1__inference_sequential_370_layer_call_fn_46104485
dense_551_input
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_551_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104467s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_551_input:($
"
_user_specified_name
46104479:($
"
_user_specified_name
46104481
�	
�
while_cond_46108630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46108630___redundant_placeholder06
2while_while_cond_46108630___redundant_placeholder16
2while_while_cond_46108630___redundant_placeholder26
2while_while_cond_46108630___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
d
H__inference_flatten_90_layer_call_and_return_conditional_losses_46106375

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	�P
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
1__inference_sequential_365_layer_call_fn_46104402
dense_546_input
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_546_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104384s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_546_input:($
"
_user_specified_name
46104396:($
"
_user_specified_name
46104398
�s
�
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_body_46104157�
|topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_loop_counter�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_maximum_iterationsG
Ctopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholderI
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_1I
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_2I
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_3
{topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_strided_slice_1_0�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0t
btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: v
dtopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: q
ctopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: D
@topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identityF
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_1F
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_2F
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_3F
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_4F
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_5}
ytopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_strided_slice_1�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorr
`topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: t
btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: o
atopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��Xtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�Wtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�Ytopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
itopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
[topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0Ctopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholderrtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
Wtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpbtopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
Htopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMulMatMulbtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0_topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Ytopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpdtopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
Jtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul_1MatMulEtopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_2atopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Etopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/addAddV2Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul:product:0Ttopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
Xtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpctopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/BiasAddBiasAddItopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/add:z:0`topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Qtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/splitSplitZtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/split/split_dim:output:0Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/SigmoidSigmoidPtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/Sigmoid_1SigmoidPtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
Etopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/mulMulOtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/Sigmoid_1:y:0Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
Ftopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/ReluReluPtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/mul_1MulMtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/Sigmoid:y:0Ttopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/add_1AddV2Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/mul:z:0Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/Sigmoid_2SigmoidPtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
Htopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/Relu_1ReluKtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/mul_2MulOtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/Sigmoid_2:y:0Vtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
\topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemEtopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_1Ctopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholderKtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���
=topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
;topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/addAddV2Ctopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholderFtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: �
?topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
=topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/add_1AddV2|topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_loop_counterHtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
@topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/IdentityIdentityAtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/add_1:z:0=^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_1Identity�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_maximum_iterations=^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_2Identity?topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/add:z:0=^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_3Identityltopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_4IdentityKtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/mul_2:z:0=^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_5IdentityKtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/add_1:z:0=^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
<topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/NoOpNoOpY^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpX^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpZ^topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "�
@topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identityItopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity:output:0"�
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_1Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_1:output:0"�
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_2Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_2:output:0"�
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_3Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_3:output:0"�
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_4Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_4:output:0"�
Btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity_5Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity_5:output:0"�
atopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourcectopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
btopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourcedtopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
`topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_readvariableop_resourcebtopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0"�
ytopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_strided_slice_1{topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_strided_slice_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2�
Xtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpXtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2�
Wtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpWtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2�
Ytopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpYtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:| x

_output_shapes
: 
^
_user_specified_nameFDtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/loop_counter:�~

_output_shapes
: 
d
_user_specified_nameLJtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::yu

_output_shapes
: 
[
_user_specified_nameCAtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1:��

_output_shapes
: 
s
_user_specified_name[Ytopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
X
,__inference_lambda_90_layer_call_fn_46107025
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_90_layer_call_and_return_conditional_losses_46106015[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:PL
&
_output_shapes
:
"
_user_specified_name
inputs_1
�
�
G__inference_dense_546_layer_call_and_return_conditional_losses_46108448

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_dense_540_layer_call_and_return_conditional_losses_46105997

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Q
SoftmaxSoftmaxBiasAdd:output:0*
T0*"
_output_shapes
:[
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*"
_output_shapes
:V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104648

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
while_cond_46109393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46109393___redundant_placeholder06
2while_while_cond_46109393___redundant_placeholder16
2while_while_cond_46109393___redundant_placeholder26
2while_while_cond_46109393___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104559
dense_556_input$
dense_556_46104553: 
dense_556_46104555:
identity��!dense_556/StatefulPartitionedCall�
!dense_556/StatefulPartitionedCallStatefulPartitionedCalldense_556_inputdense_556_46104553dense_556_46104555*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_556_layer_call_and_return_conditional_losses_46104538}
IdentityIdentity*dense_556/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������F
NoOpNoOp"^dense_556/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2F
!dense_556/StatefulPartitionedCall!dense_556/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_556_input:($
"
_user_specified_name
46104553:($
"
_user_specified_name
46104555
�
�
,__inference_lstm_cell_layer_call_fn_46109883

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104996o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states_0:QM
'
_output_shapes
:���������
"
_user_specified_name
states_1:($
"
_user_specified_name
46109871:($
"
_user_specified_name
46109873:($
"
_user_specified_name
46109875
�	
�
2__inference_forward_lstm_90_layer_call_fn_46108539
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46104731|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
46108531:($
"
_user_specified_name
46108533:($
"
_user_specified_name
46108535
�K
�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109478
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46109394*
condR
while_cond_46109393*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
q
G__inference_lambda_90_layer_call_and_return_conditional_losses_46106413

inputs
inputs_1
identity|
einsum/EinsumEinsuminputsinputs_1*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::J F
"
_output_shapes
:
 
_user_specified_nameinputs:NJ
&
_output_shapes
:
 
_user_specified_nameinputs
�
X
,__inference_lambda_92_layer_call_fn_46107079
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_92_layer_call_and_return_conditional_losses_46106452[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::P L
&
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
ٖ
�
!__inference__traced_save_46110094
file_prefix9
'read_disablecopyonread_dense_540_kernel:5
'read_1_disablecopyonread_dense_540_bias:<
)read_2_disablecopyonread_dense_557_kernel:	�5
'read_3_disablecopyonread_dense_557_bias:;
)read_4_disablecopyonread_dense_541_kernel:5
'read_5_disablecopyonread_dense_541_bias:;
)read_6_disablecopyonread_dense_546_kernel:5
'read_7_disablecopyonread_dense_546_bias:;
)read_8_disablecopyonread_dense_551_kernel:5
'read_9_disablecopyonread_dense_551_bias:<
*read_10_disablecopyonread_dense_556_kernel:6
(read_11_disablecopyonread_dense_556_bias:]
Kread_12_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_kernel: g
Uread_13_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_recurrent_kernel: W
Iread_14_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_bias: ^
Lread_15_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_kernel: h
Vread_16_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_recurrent_kernel: X
Jread_17_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_bias: 
savev2_const
identity_37��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_dense_540_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_dense_540_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_540_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_540_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_dense_557_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_dense_557_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	�{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_557_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_557_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_dense_541_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_dense_541_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_dense_541_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_dense_541_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_dense_546_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_dense_546_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_dense_546_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_dense_546_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_dense_551_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_dense_551_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_dense_551_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_dense_551_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_dense_556_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_dense_556_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_dense_556_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_dense_556_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnReadKread_12_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpKread_12_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_13/DisableCopyOnReadDisableCopyOnReadUread_13_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOpUread_13_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_14/DisableCopyOnReadDisableCopyOnReadIread_14_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOpIread_14_disablecopyonread_bidirectional_90_forward_lstm_90_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnReadLread_15_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOpLread_15_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_16/DisableCopyOnReadDisableCopyOnReadVread_16_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOpVread_16_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_recurrent_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_17/DisableCopyOnReadDisableCopyOnReadJread_17_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOpJread_17_disablecopyonread_bidirectional_90_backward_lstm_90_lstm_cell_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_36Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_37IdentityIdentity_36:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_namedense_540/kernel:.*
(
_user_specified_namedense_540/bias:0,
*
_user_specified_namedense_557/kernel:.*
(
_user_specified_namedense_557/bias:0,
*
_user_specified_namedense_541/kernel:.*
(
_user_specified_namedense_541/bias:0,
*
_user_specified_namedense_546/kernel:.*
(
_user_specified_namedense_546/bias:0	,
*
_user_specified_namedense_551/kernel:.
*
(
_user_specified_namedense_551/bias:0,
*
_user_specified_namedense_556/kernel:.*
(
_user_specified_namedense_556/bias:QM
K
_user_specified_name31bidirectional_90/forward_lstm_90/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_90/forward_lstm_90/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_90/backward_lstm_90/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_90/backward_lstm_90/lstm_cell/bias:=9

_output_shapes
: 

_user_specified_nameConst
�8
�
while_body_46105343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�	
�
while_cond_46109248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46109248___redundant_placeholder06
2while_while_cond_46109248___redundant_placeholder16
2while_while_cond_46109248___redundant_placeholder26
2while_while_cond_46109248___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
,__inference_lstm_cell_layer_call_fn_46109802

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104793o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states_0:QM
'
_output_shapes
:���������
"
_user_specified_name
states_1:($
"
_user_specified_name
46109790:($
"
_user_specified_name
46109792:($
"
_user_specified_name
46109794
�M
�
$backward_lstm_90_while_body_46107359>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3=
9backward_lstm_90_while_backward_lstm_90_strided_slice_1_0y
ubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_90_while_identity%
!backward_lstm_90_while_identity_1%
!backward_lstm_90_while_identity_2%
!backward_lstm_90_while_identity_3%
!backward_lstm_90_while_identity_4%
!backward_lstm_90_while_identity_5;
7backward_lstm_90_while_backward_lstm_90_strided_slice_1w
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
:backward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_90_while_placeholderQbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
'backward_lstm_90/while/lstm_cell/MatMulMatMulAbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
)backward_lstm_90/while/lstm_cell/MatMul_1MatMul$backward_lstm_90_while_placeholder_2@backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
$backward_lstm_90/while/lstm_cell/addAddV21backward_lstm_90/while/lstm_cell/MatMul:product:03backward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
(backward_lstm_90/while/lstm_cell/BiasAddBiasAdd(backward_lstm_90/while/lstm_cell/add:z:0?backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
0backward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_90/while/lstm_cell/splitSplit9backward_lstm_90/while/lstm_cell/split/split_dim:output:01backward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
(backward_lstm_90/while/lstm_cell/SigmoidSigmoid/backward_lstm_90/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:����������
*backward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_90/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
$backward_lstm_90/while/lstm_cell/mulMul.backward_lstm_90/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_90_while_placeholder_3*
T0*'
_output_shapes
:����������
%backward_lstm_90/while/lstm_cell/ReluRelu/backward_lstm_90/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
&backward_lstm_90/while/lstm_cell/mul_1Mul,backward_lstm_90/while/lstm_cell/Sigmoid:y:03backward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
&backward_lstm_90/while/lstm_cell/add_1AddV2(backward_lstm_90/while/lstm_cell/mul:z:0*backward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:����������
*backward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_90/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:����������
'backward_lstm_90/while/lstm_cell/Relu_1Relu*backward_lstm_90/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
&backward_lstm_90/while/lstm_cell/mul_2Mul.backward_lstm_90/while/lstm_cell/Sigmoid_2:y:05backward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
;backward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_90_while_placeholder_1"backward_lstm_90_while_placeholder*backward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/addAddV2"backward_lstm_90_while_placeholder%backward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/add_1AddV2:backward_lstm_90_while_backward_lstm_90_while_loop_counter'backward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_90/while/IdentityIdentity backward_lstm_90/while/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_1Identity@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_2Identitybackward_lstm_90/while/add:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_3IdentityKbackward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_4Identity*backward_lstm_90/while/lstm_cell/mul_2:z:0^backward_lstm_90/while/NoOp*
T0*'
_output_shapes
:����������
!backward_lstm_90/while/Identity_5Identity*backward_lstm_90/while/lstm_cell/add_1:z:0^backward_lstm_90/while/NoOp*
T0*'
_output_shapes
:����������
backward_lstm_90/while/NoOpNoOp8^backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_90_while_backward_lstm_90_strided_slice_19backward_lstm_90_while_backward_lstm_90_strided_slice_1_0"K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0"O
!backward_lstm_90_while_identity_1*backward_lstm_90/while/Identity_1:output:0"O
!backward_lstm_90_while_identity_2*backward_lstm_90/while/Identity_2:output:0"O
!backward_lstm_90_while_identity_3*backward_lstm_90/while/Identity_3:output:0"O
!backward_lstm_90_while_identity_4*backward_lstm_90/while/Identity_4:output:0"O
!backward_lstm_90_while_identity_5*backward_lstm_90/while/Identity_5:output:0"�
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2r
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
f
H__inference_dropout_90_layer_call_and_return_conditional_losses_46108338

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�	
�
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104384
dense_546_input$
dense_546_46104378: 
dense_546_46104380:
identity��!dense_546/StatefulPartitionedCall�
!dense_546/StatefulPartitionedCallStatefulPartitionedCalldense_546_inputdense_546_46104378dense_546_46104380*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_546_layer_call_and_return_conditional_losses_46104372}
IdentityIdentity*dense_546/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������F
NoOpNoOp"^dense_546/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2F
!dense_546/StatefulPartitionedCall!dense_546/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_546_input:($
"
_user_specified_name
46104378:($
"
_user_specified_name
46104380
�
�
G__inference_dense_556_layer_call_and_return_conditional_losses_46108528

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
q
G__inference_lambda_90_layer_call_and_return_conditional_losses_46106015

inputs
inputs_1
identity|
einsum/EinsumEinsuminputsinputs_1*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::J F
"
_output_shapes
:
 
_user_specified_nameinputs:NJ
&
_output_shapes
:
 
_user_specified_nameinputs
�
d
H__inference_flatten_90_layer_call_and_return_conditional_losses_46108349

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	�P
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�	
�
while_cond_46109059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46109059___redundant_placeholder06
2while_while_cond_46109059___redundant_placeholder16
2while_while_cond_46109059___redundant_placeholder26
2while_while_cond_46109059___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
while_cond_46105494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46105494___redundant_placeholder06
2while_while_cond_46105494___redundant_placeholder16
2while_while_cond_46105494___redundant_placeholder26
2while_while_cond_46105494___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�8
�
while_body_46109394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�	
�
G__inference_dense_557_layer_call_and_return_conditional_losses_46108368

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�J
�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46105427

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46105343*
condR
while_cond_46105342*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
1__inference_sequential_375_layer_call_fn_46104577
dense_556_input
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_556_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104559s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_556_input:($
"
_user_specified_name
46104571:($
"
_user_specified_name
46104573
�	
�
while_cond_46105156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46105156___redundant_placeholder06
2while_while_cond_46105156___redundant_placeholder16
2while_while_cond_46105156___redundant_placeholder26
2while_while_cond_46105156___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
1__inference_sequential_360_layer_call_fn_46104319
dense_541_input
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_541_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104301s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_541_input:($
"
_user_specified_name
46104313:($
"
_user_specified_name
46104315
�:
�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105226

inputs$
lstm_cell_46105144: $
lstm_cell_46105146:  
lstm_cell_46105148: 
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46105144lstm_cell_46105146lstm_cell_46105148*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46105143n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46105144lstm_cell_46105146lstm_cell_46105148*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46105157*
condR
while_cond_46105156*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46105144:($
"
_user_specified_name
46105146:($
"
_user_specified_name
46105148
�
�
,__inference_dense_556_layer_call_fn_46108497

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_556_layer_call_and_return_conditional_losses_46104538s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
46108491:($
"
_user_specified_name
46108493
�
�
$backward_lstm_90_while_cond_46107646>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3@
<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107646___redundant_placeholder0X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107646___redundant_placeholder1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107646___redundant_placeholder2X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107646___redundant_placeholder3#
backward_lstm_90_while_identity
�
backward_lstm_90/while/LessLess"backward_lstm_90_while_placeholder<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_90/while/IdentityIdentitybackward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:

_output_shapes
:
�8
�
while_body_46109060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109964

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states_0:QM
'
_output_shapes
:���������
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
q
G__inference_lambda_91_layer_call_and_return_conditional_losses_46106420

inputs
inputs_1
identity�
einsum/EinsumEinsuminputsinputs_1*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc]
IdentityIdentityeinsum/Einsum:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::J F
"
_output_shapes
:
 
_user_specified_nameinputs:JF
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
#forward_lstm_90_while_cond_46108081<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3>
:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46108081___redundant_placeholder0V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46108081___redundant_placeholder1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46108081___redundant_placeholder2V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46108081___redundant_placeholder3"
forward_lstm_90_while_identity
�
forward_lstm_90/while/LessLess!forward_lstm_90_while_placeholder:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:

_output_shapes
:
�	
�
while_cond_46109538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46109538___redundant_placeholder06
2while_while_cond_46109538___redundant_placeholder16
2while_while_cond_46109538___redundant_placeholder26
2while_while_cond_46109538___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
q
G__inference_lambda_91_layer_call_and_return_conditional_losses_46106022

inputs
inputs_1
identity�
einsum/EinsumEinsuminputsinputs_1*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc]
IdentityIdentityeinsum/Einsum:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::J F
"
_output_shapes
:
 
_user_specified_nameinputs:JF
"
_output_shapes
:
 
_user_specified_nameinputs
�
I
-__inference_dropout_90_layer_call_fn_46108321

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_90_layer_call_and_return_conditional_losses_46106759[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
G__inference_dense_551_layer_call_and_return_conditional_losses_46104455

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
2__inference_forward_lstm_90_layer_call_fn_46108572

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46105737|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46108564:($
"
_user_specified_name
46108566:($
"
_user_specified_name
46108568
�
�
#forward_lstm_90_while_cond_46107505<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3>
:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107505___redundant_placeholder0V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107505___redundant_placeholder1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107505___redundant_placeholder2V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107505___redundant_placeholder3"
forward_lstm_90_while_identity
�
forward_lstm_90/while/LessLess!forward_lstm_90_while_placeholder:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:

_output_shapes
:
�:
�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105079

inputs$
lstm_cell_46104997: $
lstm_cell_46104999:  
lstm_cell_46105001: 
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46104997lstm_cell_46104999lstm_cell_46105001*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104996n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46104997lstm_cell_46104999lstm_cell_46105001*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46105010*
condR
while_cond_46105009*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46104997:($
"
_user_specified_name
46104999:($
"
_user_specified_name
46105001
�	
�
while_cond_46108773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46108773___redundant_placeholder06
2while_while_cond_46108773___redundant_placeholder16
2while_while_cond_46108773___redundant_placeholder26
2while_while_cond_46108773___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
1__inference_sequential_365_layer_call_fn_46104411
dense_546_input
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_546_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104393s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_546_input:($
"
_user_specified_name
46104405:($
"
_user_specified_name
46104407
�
�
$backward_lstm_90_while_cond_46108222>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3@
<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46108222___redundant_placeholder0X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46108222___redundant_placeholder1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46108222___redundant_placeholder2X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46108222___redundant_placeholder3#
backward_lstm_90_while_identity
�
backward_lstm_90/while/LessLess"backward_lstm_90_while_placeholder<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_90/while/IdentityIdentitybackward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:

_output_shapes
:
�
�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109834

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states_0:QM
'
_output_shapes
:���������
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
3__inference_bidirectional_90_layer_call_fn_46107159

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46106741j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
46107145:($
"
_user_specified_name
46107147:($
"
_user_specified_name
46107149:($
"
_user_specified_name
46107151:($
"
_user_specified_name
46107153:($
"
_user_specified_name
46107155
�J
�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46109001

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46108917*
condR
while_cond_46108916*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
2__inference_topk_bilstm_moe_layer_call_fn_46106850
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15:	�

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106768f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:($
"
_user_specified_name
46106812:($
"
_user_specified_name
46106814:($
"
_user_specified_name
46106816:($
"
_user_specified_name
46106818:($
"
_user_specified_name
46106820:($
"
_user_specified_name
46106822:($
"
_user_specified_name
46106824:($
"
_user_specified_name
46106826:(	$
"
_user_specified_name
46106828:(
$
"
_user_specified_name
46106830:($
"
_user_specified_name
46106832:($
"
_user_specified_name
46106834:($
"
_user_specified_name
46106836:($
"
_user_specified_name
46106838:($
"
_user_specified_name
46106840:($
"
_user_specified_name
46106842:($
"
_user_specified_name
46106844:($
"
_user_specified_name
46106846
�
�
$backward_lstm_90_while_cond_46106652>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3@
<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46106652___redundant_placeholder0X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46106652___redundant_placeholder1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46106652___redundant_placeholder2X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46106652___redundant_placeholder3#
backward_lstm_90_while_identity
�
backward_lstm_90/while/LessLess"backward_lstm_90_while_placeholder<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_90/while/IdentityIdentitybackward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:

_output_shapes
:
�J
�
#forward_lstm_90_while_body_46107794<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3;
7forward_lstm_90_while_forward_lstm_90_strided_slice_1_0w
sforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_90_while_identity$
 forward_lstm_90_while_identity_1$
 forward_lstm_90_while_identity_2$
 forward_lstm_90_while_identity_3$
 forward_lstm_90_while_identity_4$
 forward_lstm_90_while_identity_59
5forward_lstm_90_while_forward_lstm_90_strided_slice_1u
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
9forward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_90_while_placeholderPforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
&forward_lstm_90/while/lstm_cell/MatMulMatMul@forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
(forward_lstm_90/while/lstm_cell/MatMul_1MatMul#forward_lstm_90_while_placeholder_2?forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
#forward_lstm_90/while/lstm_cell/addAddV20forward_lstm_90/while/lstm_cell/MatMul:product:02forward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
'forward_lstm_90/while/lstm_cell/BiasAddBiasAdd'forward_lstm_90/while/lstm_cell/add:z:0>forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_90/while/lstm_cell/splitSplit8forward_lstm_90/while/lstm_cell/split/split_dim:output:00forward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
'forward_lstm_90/while/lstm_cell/SigmoidSigmoid.forward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
)forward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
#forward_lstm_90/while/lstm_cell/mulMul-forward_lstm_90/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
$forward_lstm_90/while/lstm_cell/ReluRelu.forward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/mul_1Mul+forward_lstm_90/while/lstm_cell/Sigmoid:y:02forward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/add_1AddV2'forward_lstm_90/while/lstm_cell/mul:z:0)forward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
)forward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
&forward_lstm_90/while/lstm_cell/Relu_1Relu)forward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/mul_2Mul-forward_lstm_90/while/lstm_cell/Sigmoid_2:y:04forward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
:forward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_90_while_placeholder_1!forward_lstm_90_while_placeholder)forward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/addAddV2!forward_lstm_90_while_placeholder$forward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/add_1AddV28forward_lstm_90_while_forward_lstm_90_while_loop_counter&forward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_1Identity>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_2Identityforward_lstm_90/while/add:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_3IdentityJforward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_4Identity)forward_lstm_90/while/lstm_cell/mul_2:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
 forward_lstm_90/while/Identity_5Identity)forward_lstm_90/while/lstm_cell/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
forward_lstm_90/while/NoOpNoOp7^forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_90_while_forward_lstm_90_strided_slice_17forward_lstm_90_while_forward_lstm_90_strided_slice_1_0"I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0"M
 forward_lstm_90_while_identity_1)forward_lstm_90/while/Identity_1:output:0"M
 forward_lstm_90_while_identity_2)forward_lstm_90/while/Identity_2:output:0"M
 forward_lstm_90_while_identity_3)forward_lstm_90/while/Identity_3:output:0"M
 forward_lstm_90_while_identity_4)forward_lstm_90/while/Identity_4:output:0"M
 forward_lstm_90_while_identity_5)forward_lstm_90/while/Identity_5:output:0"�
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
&__inference_signature_wrapper_46106995
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15:	�

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_46104254f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:($
"
_user_specified_name
46106957:($
"
_user_specified_name
46106959:($
"
_user_specified_name
46106961:($
"
_user_specified_name
46106963:($
"
_user_specified_name
46106965:($
"
_user_specified_name
46106967:($
"
_user_specified_name
46106969:($
"
_user_specified_name
46106971:(	$
"
_user_specified_name
46106973:(
$
"
_user_specified_name
46106975:($
"
_user_specified_name
46106977:($
"
_user_specified_name
46106979:($
"
_user_specified_name
46106981:($
"
_user_specified_name
46106983:($
"
_user_specified_name
46106985:($
"
_user_specified_name
46106987:($
"
_user_specified_name
46106989:($
"
_user_specified_name
46106991
�8
�
while_body_46105805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�

g
H__inference_dropout_90_layer_call_and_return_conditional_losses_46106368

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�	
�
while_cond_46105009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46105009___redundant_placeholder06
2while_while_cond_46105009___redundant_placeholder16
2while_while_cond_46105009___redundant_placeholder26
2while_while_cond_46105009___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
while_cond_46105342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46105342___redundant_placeholder06
2while_while_cond_46105342___redundant_placeholder16
2while_while_cond_46105342___redundant_placeholder26
2while_while_cond_46105342___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
#forward_lstm_90_while_cond_46106511<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3>
:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46106511___redundant_placeholder0V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46106511___redundant_placeholder1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46106511___redundant_placeholder2V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46106511___redundant_placeholder3"
forward_lstm_90_while_identity
�
forward_lstm_90/while/LessLess!forward_lstm_90_while_placeholder:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:

_output_shapes
:
�
�
3__inference_bidirectional_90_layer_call_fn_46107125
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46105902|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'���������������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
46107111:($
"
_user_specified_name
46107113:($
"
_user_specified_name
46107115:($
"
_user_specified_name
46107117:($
"
_user_specified_name
46107119:($
"
_user_specified_name
46107121
�
q
G__inference_lambda_92_layer_call_and_return_conditional_losses_46106452

inputs
inputs_1
identity|
einsum/EinsumEinsuminputsinputs_1*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::N J
&
_output_shapes
:
 
_user_specified_nameinputs:JF
"
_output_shapes
:
 
_user_specified_nameinputs
�L
�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109768

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46109684*
condR
while_cond_46109683*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
q
G__inference_lambda_92_layer_call_and_return_conditional_losses_46106054

inputs
inputs_1
identity|
einsum/EinsumEinsuminputsinputs_1*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::N J
&
_output_shapes
:
 
_user_specified_nameinputs:JF
"
_output_shapes
:
 
_user_specified_nameinputs
��
�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46108311

inputsJ
8forward_lstm_90_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_90_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource: 
identity��1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_90/while�0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_90/whilej
forward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_sliceStridedSliceforward_lstm_90/Shape:output:0,forward_lstm_90/strided_slice/stack:output:0.forward_lstm_90/strided_slice/stack_1:output:0.forward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros/packedPack&forward_lstm_90/strided_slice:output:0'forward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zerosFill%forward_lstm_90/zeros/packed:output:0$forward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros_1/packedPack&forward_lstm_90/strided_slice:output:0)forward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zeros_1Fill'forward_lstm_90/zeros_1/packed:output:0&forward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose	Transposeinputs'forward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_1StridedSlice forward_lstm_90/Shape_1:output:0.forward_lstm_90/strided_slice_1/stack:output:00forward_lstm_90/strided_slice_1/stack_1:output:00forward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_90/TensorArrayV2TensorListReserve4forward_lstm_90/TensorArrayV2/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
7forward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_90/transpose:y:0Nforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_2StridedSliceforward_lstm_90/transpose:y:0.forward_lstm_90/strided_slice_2/stack:output:00forward_lstm_90/strided_slice_2/stack_1:output:00forward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
 forward_lstm_90/lstm_cell/MatMulMatMul(forward_lstm_90/strided_slice_2:output:07forward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
"forward_lstm_90/lstm_cell/MatMul_1MatMulforward_lstm_90/zeros:output:09forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
forward_lstm_90/lstm_cell/addAddV2*forward_lstm_90/lstm_cell/MatMul:product:0,forward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!forward_lstm_90/lstm_cell/BiasAddBiasAdd!forward_lstm_90/lstm_cell/add:z:08forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/lstm_cell/splitSplit2forward_lstm_90/lstm_cell/split/split_dim:output:0*forward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_90/lstm_cell/SigmoidSigmoid(forward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
#forward_lstm_90/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mulMul'forward_lstm_90/lstm_cell/Sigmoid_1:y:0 forward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_90/lstm_cell/ReluRelu(forward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mul_1Mul%forward_lstm_90/lstm_cell/Sigmoid:y:0,forward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/add_1AddV2!forward_lstm_90/lstm_cell/mul:z:0#forward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
#forward_lstm_90/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_90/lstm_cell/Relu_1Relu#forward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mul_2Mul'forward_lstm_90/lstm_cell/Sigmoid_2:y:0.forward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_lstm_90/TensorArrayV2_1TensorListReserve6forward_lstm_90/TensorArrayV2_1/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_90/whileWhile+forward_lstm_90/while/loop_counter:output:01forward_lstm_90/while/maximum_iterations:output:0forward_lstm_90/time:output:0(forward_lstm_90/TensorArrayV2_1:handle:0forward_lstm_90/zeros:output:0 forward_lstm_90/zeros_1:output:0(forward_lstm_90/strided_slice_1:output:0Gforward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_90_lstm_cell_matmul_readvariableop_resource:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_90_while_body_46108082*/
cond'R%
#forward_lstm_90_while_cond_46108081*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
@forward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
2forward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_90/while:output:3Iforward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_3StridedSlice;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_90/strided_slice_3/stack:output:00forward_lstm_90/strided_slice_3/stack_1:output:00forward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose_1	Transpose;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_90/strided_sliceStridedSlicebackward_lstm_90/Shape:output:0-backward_lstm_90/strided_slice/stack:output:0/backward_lstm_90/strided_slice/stack_1:output:0/backward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros/packedPack'backward_lstm_90/strided_slice:output:0(backward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zerosFill&backward_lstm_90/zeros/packed:output:0%backward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros_1/packedPack'backward_lstm_90/strided_slice:output:0*backward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zeros_1Fill(backward_lstm_90/zeros_1/packed:output:0'backward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose	Transposeinputs(backward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_1StridedSlice!backward_lstm_90/Shape_1:output:0/backward_lstm_90/strided_slice_1/stack:output:01backward_lstm_90/strided_slice_1/stack_1:output:01backward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_90/TensorArrayV2TensorListReserve5backward_lstm_90/TensorArrayV2/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_90/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_90/ReverseV2	ReverseV2backward_lstm_90/transpose:y:0(backward_lstm_90/ReverseV2/axis:output:0*
T0*"
_output_shapes
:�
Fbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
8backward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_90/ReverseV2:output:0Obackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_2StridedSlicebackward_lstm_90/transpose:y:0/backward_lstm_90/strided_slice_2/stack:output:01backward_lstm_90/strided_slice_2/stack_1:output:01backward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
!backward_lstm_90/lstm_cell/MatMulMatMul)backward_lstm_90/strided_slice_2:output:08backward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
#backward_lstm_90/lstm_cell/MatMul_1MatMulbackward_lstm_90/zeros:output:0:backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
backward_lstm_90/lstm_cell/addAddV2+backward_lstm_90/lstm_cell/MatMul:product:0-backward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
"backward_lstm_90/lstm_cell/BiasAddBiasAdd"backward_lstm_90/lstm_cell/add:z:09backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_90/lstm_cell/splitSplit3backward_lstm_90/lstm_cell/split/split_dim:output:0+backward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
"backward_lstm_90/lstm_cell/SigmoidSigmoid)backward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
$backward_lstm_90/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
backward_lstm_90/lstm_cell/mulMul(backward_lstm_90/lstm_cell/Sigmoid_1:y:0!backward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_90/lstm_cell/ReluRelu)backward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/mul_1Mul&backward_lstm_90/lstm_cell/Sigmoid:y:0-backward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/add_1AddV2"backward_lstm_90/lstm_cell/mul:z:0$backward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
$backward_lstm_90/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_90/lstm_cell/Relu_1Relu$backward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/mul_2Mul(backward_lstm_90/lstm_cell/Sigmoid_2:y:0/backward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
 backward_lstm_90/TensorArrayV2_1TensorListReserve7backward_lstm_90/TensorArrayV2_1/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_90/whileWhile,backward_lstm_90/while/loop_counter:output:02backward_lstm_90/while/maximum_iterations:output:0backward_lstm_90/time:output:0)backward_lstm_90/TensorArrayV2_1:handle:0backward_lstm_90/zeros:output:0!backward_lstm_90/zeros_1:output:0)backward_lstm_90/strided_slice_1:output:0Hbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_90_lstm_cell_matmul_readvariableop_resource;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_90_while_body_46108223*0
cond(R&
$backward_lstm_90_while_cond_46108222*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
Abackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
3backward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_90/while:output:3Jbackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_3StridedSlice<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_90/strided_slice_3/stack:output:01backward_lstm_90/strided_slice_3/stack_1:output:01backward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose_1	Transpose<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:~
	ReverseV2	ReverseV2 backward_lstm_90/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2forward_lstm_90/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp2^backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_90/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_90/while1^forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_90/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_90/whilebackward_lstm_90/while2d
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_90/whileforward_lstm_90/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104476
dense_551_input$
dense_551_46104470: 
dense_551_46104472:
identity��!dense_551/StatefulPartitionedCall�
!dense_551/StatefulPartitionedCallStatefulPartitionedCalldense_551_inputdense_551_46104470dense_551_46104472*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_551_layer_call_and_return_conditional_losses_46104455}
IdentityIdentity*dense_551/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������F
NoOpNoOp"^dense_551/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2F
!dense_551/StatefulPartitionedCall!dense_551/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_551_input:($
"
_user_specified_name
46104470:($
"
_user_specified_name
46104472
�
s
G__inference_lambda_91_layer_call_and_return_conditional_losses_46107067
inputs_0
inputs_1
identity�
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc]
IdentityIdentityeinsum/Einsum:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
�
X
,__inference_lambda_90_layer_call_fn_46107031
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_90_layer_call_and_return_conditional_losses_46106413[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:PL
&
_output_shapes
:
"
_user_specified_name
inputs_1
�	
�
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104310
dense_541_input$
dense_541_46104304: 
dense_541_46104306:
identity��!dense_541/StatefulPartitionedCall�
!dense_541/StatefulPartitionedCallStatefulPartitionedCalldense_541_inputdense_541_46104304dense_541_46104306*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_541_layer_call_and_return_conditional_losses_46104289}
IdentityIdentity*dense_541/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������F
NoOpNoOp"^dense_541/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2F
!dense_541/StatefulPartitionedCall!dense_541/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_541_input:($
"
_user_specified_name
46104304:($
"
_user_specified_name
46104306
�
�
G__inference_dense_551_layer_call_and_return_conditional_losses_46108488

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
while_cond_46105652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46105652___redundant_placeholder06
2while_while_cond_46105652___redundant_placeholder16
2while_while_cond_46105652___redundant_placeholder26
2while_while_cond_46105652___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
s
G__inference_lambda_90_layer_call_and_return_conditional_losses_46107043
inputs_0
inputs_1
identity~
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:PL
&
_output_shapes
:
"
_user_specified_name
inputs_1
�
�
,__inference_dense_551_layer_call_fn_46108457

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_551_layer_call_and_return_conditional_losses_46104455s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
46108451:($
"
_user_specified_name
46108453
�
�
G__inference_dense_556_layer_call_and_return_conditional_losses_46104538

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104550
dense_556_input$
dense_556_46104544: 
dense_556_46104546:
identity��!dense_556/StatefulPartitionedCall�
!dense_556/StatefulPartitionedCallStatefulPartitionedCalldense_556_inputdense_556_46104544dense_556_46104546*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_556_layer_call_and_return_conditional_losses_46104538}
IdentityIdentity*dense_556/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������F
NoOpNoOp"^dense_556/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2F
!dense_556/StatefulPartitionedCall!dense_556/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_556_input:($
"
_user_specified_name
46104544:($
"
_user_specified_name
46104546
�
�
,__inference_dense_540_layer_call_fn_46107004

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_540_layer_call_and_return_conditional_losses_46105997j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
46106998:($
"
_user_specified_name
46107000
�
�
G__inference_dense_546_layer_call_and_return_conditional_losses_46104372

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�K
�
$backward_lstm_90_while_body_46107935>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3=
9backward_lstm_90_while_backward_lstm_90_strided_slice_1_0y
ubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_90_while_identity%
!backward_lstm_90_while_identity_1%
!backward_lstm_90_while_identity_2%
!backward_lstm_90_while_identity_3%
!backward_lstm_90_while_identity_4%
!backward_lstm_90_while_identity_5;
7backward_lstm_90_while_backward_lstm_90_strided_slice_1w
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
:backward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_90_while_placeholderQbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
'backward_lstm_90/while/lstm_cell/MatMulMatMulAbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
)backward_lstm_90/while/lstm_cell/MatMul_1MatMul$backward_lstm_90_while_placeholder_2@backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
$backward_lstm_90/while/lstm_cell/addAddV21backward_lstm_90/while/lstm_cell/MatMul:product:03backward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
(backward_lstm_90/while/lstm_cell/BiasAddBiasAdd(backward_lstm_90/while/lstm_cell/add:z:0?backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_90/while/lstm_cell/splitSplit9backward_lstm_90/while/lstm_cell/split/split_dim:output:01backward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
(backward_lstm_90/while/lstm_cell/SigmoidSigmoid/backward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
*backward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
$backward_lstm_90/while/lstm_cell/mulMul.backward_lstm_90/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
%backward_lstm_90/while/lstm_cell/ReluRelu/backward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/mul_1Mul,backward_lstm_90/while/lstm_cell/Sigmoid:y:03backward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/add_1AddV2(backward_lstm_90/while/lstm_cell/mul:z:0*backward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
*backward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
'backward_lstm_90/while/lstm_cell/Relu_1Relu*backward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/mul_2Mul.backward_lstm_90/while/lstm_cell/Sigmoid_2:y:05backward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
;backward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_90_while_placeholder_1"backward_lstm_90_while_placeholder*backward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/addAddV2"backward_lstm_90_while_placeholder%backward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/add_1AddV2:backward_lstm_90_while_backward_lstm_90_while_loop_counter'backward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_90/while/IdentityIdentity backward_lstm_90/while/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_1Identity@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_2Identitybackward_lstm_90/while/add:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_3IdentityKbackward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_4Identity*backward_lstm_90/while/lstm_cell/mul_2:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
!backward_lstm_90/while/Identity_5Identity*backward_lstm_90/while/lstm_cell/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
backward_lstm_90/while/NoOpNoOp8^backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_90_while_backward_lstm_90_strided_slice_19backward_lstm_90_while_backward_lstm_90_strided_slice_1_0"K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0"O
!backward_lstm_90_while_identity_1*backward_lstm_90/while/Identity_1:output:0"O
!backward_lstm_90_while_identity_2*backward_lstm_90/while/Identity_2:output:0"O
!backward_lstm_90_while_identity_3*backward_lstm_90/while/Identity_3:output:0"O
!backward_lstm_90_while_identity_4*backward_lstm_90/while/Identity_4:output:0"O
!backward_lstm_90_while_identity_5*backward_lstm_90/while/Identity_5:output:0"�
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�	
�
while_cond_46104661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46104661___redundant_placeholder06
2while_while_cond_46104661___redundant_placeholder16
2while_while_cond_46104661___redundant_placeholder26
2while_while_cond_46104661___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
3__inference_backward_lstm_90_layer_call_fn_46109166
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105226|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
46109158:($
"
_user_specified_name
46109160:($
"
_user_specified_name
46109162
�K
�
$backward_lstm_90_while_body_46106255>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3=
9backward_lstm_90_while_backward_lstm_90_strided_slice_1_0y
ubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_90_while_identity%
!backward_lstm_90_while_identity_1%
!backward_lstm_90_while_identity_2%
!backward_lstm_90_while_identity_3%
!backward_lstm_90_while_identity_4%
!backward_lstm_90_while_identity_5;
7backward_lstm_90_while_backward_lstm_90_strided_slice_1w
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
:backward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_90_while_placeholderQbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
'backward_lstm_90/while/lstm_cell/MatMulMatMulAbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
)backward_lstm_90/while/lstm_cell/MatMul_1MatMul$backward_lstm_90_while_placeholder_2@backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
$backward_lstm_90/while/lstm_cell/addAddV21backward_lstm_90/while/lstm_cell/MatMul:product:03backward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
(backward_lstm_90/while/lstm_cell/BiasAddBiasAdd(backward_lstm_90/while/lstm_cell/add:z:0?backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_90/while/lstm_cell/splitSplit9backward_lstm_90/while/lstm_cell/split/split_dim:output:01backward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
(backward_lstm_90/while/lstm_cell/SigmoidSigmoid/backward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
*backward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
$backward_lstm_90/while/lstm_cell/mulMul.backward_lstm_90/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
%backward_lstm_90/while/lstm_cell/ReluRelu/backward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/mul_1Mul,backward_lstm_90/while/lstm_cell/Sigmoid:y:03backward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/add_1AddV2(backward_lstm_90/while/lstm_cell/mul:z:0*backward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
*backward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
'backward_lstm_90/while/lstm_cell/Relu_1Relu*backward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/mul_2Mul.backward_lstm_90/while/lstm_cell/Sigmoid_2:y:05backward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
;backward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_90_while_placeholder_1"backward_lstm_90_while_placeholder*backward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/addAddV2"backward_lstm_90_while_placeholder%backward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/add_1AddV2:backward_lstm_90_while_backward_lstm_90_while_loop_counter'backward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_90/while/IdentityIdentity backward_lstm_90/while/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_1Identity@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_2Identitybackward_lstm_90/while/add:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_3IdentityKbackward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_4Identity*backward_lstm_90/while/lstm_cell/mul_2:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
!backward_lstm_90/while/Identity_5Identity*backward_lstm_90/while/lstm_cell/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
backward_lstm_90/while/NoOpNoOp8^backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_90_while_backward_lstm_90_strided_slice_19backward_lstm_90_while_backward_lstm_90_strided_slice_1_0"K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0"O
!backward_lstm_90_while_identity_1*backward_lstm_90/while/Identity_1:output:0"O
!backward_lstm_90_while_identity_2*backward_lstm_90/while/Identity_2:output:0"O
!backward_lstm_90_while_identity_3*backward_lstm_90/while/Identity_3:output:0"O
!backward_lstm_90_while_identity_4*backward_lstm_90/while/Identity_4:output:0"O
!backward_lstm_90_while_identity_5*backward_lstm_90/while/Identity_5:output:0"�
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�L
�
#forward_lstm_90_while_body_46107218<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3;
7forward_lstm_90_while_forward_lstm_90_strided_slice_1_0w
sforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_90_while_identity$
 forward_lstm_90_while_identity_1$
 forward_lstm_90_while_identity_2$
 forward_lstm_90_while_identity_3$
 forward_lstm_90_while_identity_4$
 forward_lstm_90_while_identity_59
5forward_lstm_90_while_forward_lstm_90_strided_slice_1u
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
9forward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_90_while_placeholderPforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
&forward_lstm_90/while/lstm_cell/MatMulMatMul@forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
(forward_lstm_90/while/lstm_cell/MatMul_1MatMul#forward_lstm_90_while_placeholder_2?forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
#forward_lstm_90/while/lstm_cell/addAddV20forward_lstm_90/while/lstm_cell/MatMul:product:02forward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
'forward_lstm_90/while/lstm_cell/BiasAddBiasAdd'forward_lstm_90/while/lstm_cell/add:z:0>forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� q
/forward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_90/while/lstm_cell/splitSplit8forward_lstm_90/while/lstm_cell/split/split_dim:output:00forward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
'forward_lstm_90/while/lstm_cell/SigmoidSigmoid.forward_lstm_90/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:����������
)forward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_90/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
#forward_lstm_90/while/lstm_cell/mulMul-forward_lstm_90/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_90_while_placeholder_3*
T0*'
_output_shapes
:����������
$forward_lstm_90/while/lstm_cell/ReluRelu.forward_lstm_90/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
%forward_lstm_90/while/lstm_cell/mul_1Mul+forward_lstm_90/while/lstm_cell/Sigmoid:y:02forward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
%forward_lstm_90/while/lstm_cell/add_1AddV2'forward_lstm_90/while/lstm_cell/mul:z:0)forward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:����������
)forward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_90/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:����������
&forward_lstm_90/while/lstm_cell/Relu_1Relu)forward_lstm_90/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
%forward_lstm_90/while/lstm_cell/mul_2Mul-forward_lstm_90/while/lstm_cell/Sigmoid_2:y:04forward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
:forward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_90_while_placeholder_1!forward_lstm_90_while_placeholder)forward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/addAddV2!forward_lstm_90_while_placeholder$forward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/add_1AddV28forward_lstm_90_while_forward_lstm_90_while_loop_counter&forward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_1Identity>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_2Identityforward_lstm_90/while/add:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_3IdentityJforward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_4Identity)forward_lstm_90/while/lstm_cell/mul_2:z:0^forward_lstm_90/while/NoOp*
T0*'
_output_shapes
:����������
 forward_lstm_90/while/Identity_5Identity)forward_lstm_90/while/lstm_cell/add_1:z:0^forward_lstm_90/while/NoOp*
T0*'
_output_shapes
:����������
forward_lstm_90/while/NoOpNoOp7^forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_90_while_forward_lstm_90_strided_slice_17forward_lstm_90_while_forward_lstm_90_strided_slice_1_0"I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0"M
 forward_lstm_90_while_identity_1)forward_lstm_90/while/Identity_1:output:0"M
 forward_lstm_90_while_identity_2)forward_lstm_90/while/Identity_2:output:0"M
 forward_lstm_90_while_identity_3)forward_lstm_90/while/Identity_3:output:0"M
 forward_lstm_90_while_identity_4)forward_lstm_90/while/Identity_4:output:0"M
 forward_lstm_90_while_identity_5)forward_lstm_90/while/Identity_5:output:0"�
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2p
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
��
�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46106741

inputsJ
8forward_lstm_90_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_90_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource: 
identity��1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_90/while�0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_90/whilej
forward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_sliceStridedSliceforward_lstm_90/Shape:output:0,forward_lstm_90/strided_slice/stack:output:0.forward_lstm_90/strided_slice/stack_1:output:0.forward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros/packedPack&forward_lstm_90/strided_slice:output:0'forward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zerosFill%forward_lstm_90/zeros/packed:output:0$forward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros_1/packedPack&forward_lstm_90/strided_slice:output:0)forward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zeros_1Fill'forward_lstm_90/zeros_1/packed:output:0&forward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose	Transposeinputs'forward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_1StridedSlice forward_lstm_90/Shape_1:output:0.forward_lstm_90/strided_slice_1/stack:output:00forward_lstm_90/strided_slice_1/stack_1:output:00forward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_90/TensorArrayV2TensorListReserve4forward_lstm_90/TensorArrayV2/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
7forward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_90/transpose:y:0Nforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_2StridedSliceforward_lstm_90/transpose:y:0.forward_lstm_90/strided_slice_2/stack:output:00forward_lstm_90/strided_slice_2/stack_1:output:00forward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
 forward_lstm_90/lstm_cell/MatMulMatMul(forward_lstm_90/strided_slice_2:output:07forward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
"forward_lstm_90/lstm_cell/MatMul_1MatMulforward_lstm_90/zeros:output:09forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
forward_lstm_90/lstm_cell/addAddV2*forward_lstm_90/lstm_cell/MatMul:product:0,forward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!forward_lstm_90/lstm_cell/BiasAddBiasAdd!forward_lstm_90/lstm_cell/add:z:08forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/lstm_cell/splitSplit2forward_lstm_90/lstm_cell/split/split_dim:output:0*forward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_90/lstm_cell/SigmoidSigmoid(forward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
#forward_lstm_90/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mulMul'forward_lstm_90/lstm_cell/Sigmoid_1:y:0 forward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_90/lstm_cell/ReluRelu(forward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mul_1Mul%forward_lstm_90/lstm_cell/Sigmoid:y:0,forward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/add_1AddV2!forward_lstm_90/lstm_cell/mul:z:0#forward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
#forward_lstm_90/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_90/lstm_cell/Relu_1Relu#forward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mul_2Mul'forward_lstm_90/lstm_cell/Sigmoid_2:y:0.forward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_lstm_90/TensorArrayV2_1TensorListReserve6forward_lstm_90/TensorArrayV2_1/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_90/whileWhile+forward_lstm_90/while/loop_counter:output:01forward_lstm_90/while/maximum_iterations:output:0forward_lstm_90/time:output:0(forward_lstm_90/TensorArrayV2_1:handle:0forward_lstm_90/zeros:output:0 forward_lstm_90/zeros_1:output:0(forward_lstm_90/strided_slice_1:output:0Gforward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_90_lstm_cell_matmul_readvariableop_resource:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_90_while_body_46106512*/
cond'R%
#forward_lstm_90_while_cond_46106511*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
@forward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
2forward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_90/while:output:3Iforward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_3StridedSlice;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_90/strided_slice_3/stack:output:00forward_lstm_90/strided_slice_3/stack_1:output:00forward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose_1	Transpose;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_90/strided_sliceStridedSlicebackward_lstm_90/Shape:output:0-backward_lstm_90/strided_slice/stack:output:0/backward_lstm_90/strided_slice/stack_1:output:0/backward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros/packedPack'backward_lstm_90/strided_slice:output:0(backward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zerosFill&backward_lstm_90/zeros/packed:output:0%backward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros_1/packedPack'backward_lstm_90/strided_slice:output:0*backward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zeros_1Fill(backward_lstm_90/zeros_1/packed:output:0'backward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose	Transposeinputs(backward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_1StridedSlice!backward_lstm_90/Shape_1:output:0/backward_lstm_90/strided_slice_1/stack:output:01backward_lstm_90/strided_slice_1/stack_1:output:01backward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_90/TensorArrayV2TensorListReserve5backward_lstm_90/TensorArrayV2/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_90/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_90/ReverseV2	ReverseV2backward_lstm_90/transpose:y:0(backward_lstm_90/ReverseV2/axis:output:0*
T0*"
_output_shapes
:�
Fbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
8backward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_90/ReverseV2:output:0Obackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_2StridedSlicebackward_lstm_90/transpose:y:0/backward_lstm_90/strided_slice_2/stack:output:01backward_lstm_90/strided_slice_2/stack_1:output:01backward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
!backward_lstm_90/lstm_cell/MatMulMatMul)backward_lstm_90/strided_slice_2:output:08backward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
#backward_lstm_90/lstm_cell/MatMul_1MatMulbackward_lstm_90/zeros:output:0:backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
backward_lstm_90/lstm_cell/addAddV2+backward_lstm_90/lstm_cell/MatMul:product:0-backward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
"backward_lstm_90/lstm_cell/BiasAddBiasAdd"backward_lstm_90/lstm_cell/add:z:09backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_90/lstm_cell/splitSplit3backward_lstm_90/lstm_cell/split/split_dim:output:0+backward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
"backward_lstm_90/lstm_cell/SigmoidSigmoid)backward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
$backward_lstm_90/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
backward_lstm_90/lstm_cell/mulMul(backward_lstm_90/lstm_cell/Sigmoid_1:y:0!backward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_90/lstm_cell/ReluRelu)backward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/mul_1Mul&backward_lstm_90/lstm_cell/Sigmoid:y:0-backward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/add_1AddV2"backward_lstm_90/lstm_cell/mul:z:0$backward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
$backward_lstm_90/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_90/lstm_cell/Relu_1Relu$backward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/mul_2Mul(backward_lstm_90/lstm_cell/Sigmoid_2:y:0/backward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
 backward_lstm_90/TensorArrayV2_1TensorListReserve7backward_lstm_90/TensorArrayV2_1/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_90/whileWhile,backward_lstm_90/while/loop_counter:output:02backward_lstm_90/while/maximum_iterations:output:0backward_lstm_90/time:output:0)backward_lstm_90/TensorArrayV2_1:handle:0backward_lstm_90/zeros:output:0!backward_lstm_90/zeros_1:output:0)backward_lstm_90/strided_slice_1:output:0Hbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_90_lstm_cell_matmul_readvariableop_resource;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_90_while_body_46106653*0
cond(R&
$backward_lstm_90_while_cond_46106652*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
Abackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
3backward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_90/while:output:3Jbackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_3StridedSlice<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_90/strided_slice_3/stack:output:01backward_lstm_90/strided_slice_3/stack_1:output:01backward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose_1	Transpose<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:~
	ReverseV2	ReverseV2 backward_lstm_90/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2forward_lstm_90/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp2^backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_90/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_90/while1^forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_90/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_90/whilebackward_lstm_90/while2d
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_90/whileforward_lstm_90/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
1__inference_sequential_360_layer_call_fn_46104328
dense_541_input
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_541_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104310s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_541_input:($
"
_user_specified_name
46104322:($
"
_user_specified_name
46104324
�
X
,__inference_lambda_92_layer_call_fn_46107073
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_92_layer_call_and_return_conditional_losses_46106054[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::P L
&
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
�	
�
2__inference_forward_lstm_90_layer_call_fn_46108550
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46104876|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
46108542:($
"
_user_specified_name
46108544:($
"
_user_specified_name
46108546
��
�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46107447
inputs_0J
8forward_lstm_90_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_90_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource: 
identity��1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_90/while�0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_90/while[
forward_lstm_90/ShapeShapeinputs_0*
T0*
_output_shapes
::��m
#forward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_sliceStridedSliceforward_lstm_90/Shape:output:0,forward_lstm_90/strided_slice/stack:output:0.forward_lstm_90/strided_slice/stack_1:output:0.forward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros/packedPack&forward_lstm_90/strided_slice:output:0'forward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zerosFill%forward_lstm_90/zeros/packed:output:0$forward_lstm_90/zeros/Const:output:0*
T0*'
_output_shapes
:���������b
 forward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros_1/packedPack&forward_lstm_90/strided_slice:output:0)forward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zeros_1Fill'forward_lstm_90/zeros_1/packed:output:0&forward_lstm_90/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������s
forward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose	Transposeinputs_0'forward_lstm_90/transpose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������r
forward_lstm_90/Shape_1Shapeforward_lstm_90/transpose:y:0*
T0*
_output_shapes
::��o
%forward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_1StridedSlice forward_lstm_90/Shape_1:output:0.forward_lstm_90/strided_slice_1/stack:output:00forward_lstm_90/strided_slice_1/stack_1:output:00forward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_90/TensorArrayV2TensorListReserve4forward_lstm_90/TensorArrayV2/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
7forward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_90/transpose:y:0Nforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_2StridedSliceforward_lstm_90/transpose:y:0.forward_lstm_90/strided_slice_2/stack:output:00forward_lstm_90/strided_slice_2/stack_1:output:00forward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
 forward_lstm_90/lstm_cell/MatMulMatMul(forward_lstm_90/strided_slice_2:output:07forward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
"forward_lstm_90/lstm_cell/MatMul_1MatMulforward_lstm_90/zeros:output:09forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
forward_lstm_90/lstm_cell/addAddV2*forward_lstm_90/lstm_cell/MatMul:product:0,forward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!forward_lstm_90/lstm_cell/BiasAddBiasAdd!forward_lstm_90/lstm_cell/add:z:08forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� k
)forward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/lstm_cell/splitSplit2forward_lstm_90/lstm_cell/split/split_dim:output:0*forward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
!forward_lstm_90/lstm_cell/SigmoidSigmoid(forward_lstm_90/lstm_cell/split:output:0*
T0*'
_output_shapes
:����������
#forward_lstm_90/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_90/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/mulMul'forward_lstm_90/lstm_cell/Sigmoid_1:y:0 forward_lstm_90/zeros_1:output:0*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/ReluRelu(forward_lstm_90/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/mul_1Mul%forward_lstm_90/lstm_cell/Sigmoid:y:0,forward_lstm_90/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/add_1AddV2!forward_lstm_90/lstm_cell/mul:z:0#forward_lstm_90/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:����������
#forward_lstm_90/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_90/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������
 forward_lstm_90/lstm_cell/Relu_1Relu#forward_lstm_90/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/mul_2Mul'forward_lstm_90/lstm_cell/Sigmoid_2:y:0.forward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������~
-forward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
forward_lstm_90/TensorArrayV2_1TensorListReserve6forward_lstm_90/TensorArrayV2_1/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_90/whileWhile+forward_lstm_90/while/loop_counter:output:01forward_lstm_90/while/maximum_iterations:output:0forward_lstm_90/time:output:0(forward_lstm_90/TensorArrayV2_1:handle:0forward_lstm_90/zeros:output:0 forward_lstm_90/zeros_1:output:0(forward_lstm_90/strided_slice_1:output:0Gforward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_90_lstm_cell_matmul_readvariableop_resource:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_90_while_body_46107218*/
cond'R%
#forward_lstm_90_while_cond_46107217*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
@forward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2forward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_90/while:output:3Iforward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0x
%forward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_3StridedSlice;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_90/strided_slice_3/stack:output:00forward_lstm_90/strided_slice_3/stack_1:output:00forward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_masku
 forward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose_1	Transpose;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_90/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������k
forward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_90/ShapeShapeinputs_0*
T0*
_output_shapes
::��n
$backward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_90/strided_sliceStridedSlicebackward_lstm_90/Shape:output:0-backward_lstm_90/strided_slice/stack:output:0/backward_lstm_90/strided_slice/stack_1:output:0/backward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros/packedPack'backward_lstm_90/strided_slice:output:0(backward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zerosFill&backward_lstm_90/zeros/packed:output:0%backward_lstm_90/zeros/Const:output:0*
T0*'
_output_shapes
:���������c
!backward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros_1/packedPack'backward_lstm_90/strided_slice:output:0*backward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zeros_1Fill(backward_lstm_90/zeros_1/packed:output:0'backward_lstm_90/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������t
backward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose	Transposeinputs_0(backward_lstm_90/transpose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������t
backward_lstm_90/Shape_1Shapebackward_lstm_90/transpose:y:0*
T0*
_output_shapes
::��p
&backward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_1StridedSlice!backward_lstm_90/Shape_1:output:0/backward_lstm_90/strided_slice_1/stack:output:01backward_lstm_90/strided_slice_1/stack_1:output:01backward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_90/TensorArrayV2TensorListReserve5backward_lstm_90/TensorArrayV2/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_90/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_90/ReverseV2	ReverseV2backward_lstm_90/transpose:y:0(backward_lstm_90/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
Fbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
8backward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_90/ReverseV2:output:0Obackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_2StridedSlicebackward_lstm_90/transpose:y:0/backward_lstm_90/strided_slice_2/stack:output:01backward_lstm_90/strided_slice_2/stack_1:output:01backward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
!backward_lstm_90/lstm_cell/MatMulMatMul)backward_lstm_90/strided_slice_2:output:08backward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
#backward_lstm_90/lstm_cell/MatMul_1MatMulbackward_lstm_90/zeros:output:0:backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
backward_lstm_90/lstm_cell/addAddV2+backward_lstm_90/lstm_cell/MatMul:product:0-backward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
"backward_lstm_90/lstm_cell/BiasAddBiasAdd"backward_lstm_90/lstm_cell/add:z:09backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� l
*backward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_90/lstm_cell/splitSplit3backward_lstm_90/lstm_cell/split/split_dim:output:0+backward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
"backward_lstm_90/lstm_cell/SigmoidSigmoid)backward_lstm_90/lstm_cell/split:output:0*
T0*'
_output_shapes
:����������
$backward_lstm_90/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_90/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
backward_lstm_90/lstm_cell/mulMul(backward_lstm_90/lstm_cell/Sigmoid_1:y:0!backward_lstm_90/zeros_1:output:0*
T0*'
_output_shapes
:����������
backward_lstm_90/lstm_cell/ReluRelu)backward_lstm_90/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
 backward_lstm_90/lstm_cell/mul_1Mul&backward_lstm_90/lstm_cell/Sigmoid:y:0-backward_lstm_90/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
 backward_lstm_90/lstm_cell/add_1AddV2"backward_lstm_90/lstm_cell/mul:z:0$backward_lstm_90/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:����������
$backward_lstm_90/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_90/lstm_cell/split:output:3*
T0*'
_output_shapes
:����������
!backward_lstm_90/lstm_cell/Relu_1Relu$backward_lstm_90/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
 backward_lstm_90/lstm_cell/mul_2Mul(backward_lstm_90/lstm_cell/Sigmoid_2:y:0/backward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������
.backward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
 backward_lstm_90/TensorArrayV2_1TensorListReserve7backward_lstm_90/TensorArrayV2_1/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_90/whileWhile,backward_lstm_90/while/loop_counter:output:02backward_lstm_90/while/maximum_iterations:output:0backward_lstm_90/time:output:0)backward_lstm_90/TensorArrayV2_1:handle:0backward_lstm_90/zeros:output:0!backward_lstm_90/zeros_1:output:0)backward_lstm_90/strided_slice_1:output:0Hbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_90_lstm_cell_matmul_readvariableop_resource;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_90_while_body_46107359*0
cond(R&
$backward_lstm_90_while_cond_46107358*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
Abackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3backward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_90/while:output:3Jbackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0y
&backward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_3StridedSlice<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_90/strided_slice_3/stack:output:01backward_lstm_90/strided_slice_3/stack_1:output:01backward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskv
!backward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose_1	Transpose<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_90/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������l
backward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
	ReverseV2	ReverseV2 backward_lstm_90/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :������������������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2forward_lstm_90/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :������������������k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp2^backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_90/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_90/while1^forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_90/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 2f
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_90/whilebackward_lstm_90/while2d
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_90/whileforward_lstm_90/while:g c
=
_output_shapes+
):'���������������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
,__inference_lstm_cell_layer_call_fn_46109900

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46105143o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states_0:QM
'
_output_shapes
:���������
"
_user_specified_name
states_1:($
"
_user_specified_name
46109888:($
"
_user_specified_name
46109890:($
"
_user_specified_name
46109892
�K
�
$backward_lstm_90_while_body_46106653>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3=
9backward_lstm_90_while_backward_lstm_90_strided_slice_1_0y
ubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_90_while_identity%
!backward_lstm_90_while_identity_1%
!backward_lstm_90_while_identity_2%
!backward_lstm_90_while_identity_3%
!backward_lstm_90_while_identity_4%
!backward_lstm_90_while_identity_5;
7backward_lstm_90_while_backward_lstm_90_strided_slice_1w
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
:backward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_90_while_placeholderQbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
'backward_lstm_90/while/lstm_cell/MatMulMatMulAbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
)backward_lstm_90/while/lstm_cell/MatMul_1MatMul$backward_lstm_90_while_placeholder_2@backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
$backward_lstm_90/while/lstm_cell/addAddV21backward_lstm_90/while/lstm_cell/MatMul:product:03backward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
(backward_lstm_90/while/lstm_cell/BiasAddBiasAdd(backward_lstm_90/while/lstm_cell/add:z:0?backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_90/while/lstm_cell/splitSplit9backward_lstm_90/while/lstm_cell/split/split_dim:output:01backward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
(backward_lstm_90/while/lstm_cell/SigmoidSigmoid/backward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
*backward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
$backward_lstm_90/while/lstm_cell/mulMul.backward_lstm_90/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
%backward_lstm_90/while/lstm_cell/ReluRelu/backward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/mul_1Mul,backward_lstm_90/while/lstm_cell/Sigmoid:y:03backward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/add_1AddV2(backward_lstm_90/while/lstm_cell/mul:z:0*backward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
*backward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
'backward_lstm_90/while/lstm_cell/Relu_1Relu*backward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/mul_2Mul.backward_lstm_90/while/lstm_cell/Sigmoid_2:y:05backward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
;backward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_90_while_placeholder_1"backward_lstm_90_while_placeholder*backward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/addAddV2"backward_lstm_90_while_placeholder%backward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/add_1AddV2:backward_lstm_90_while_backward_lstm_90_while_loop_counter'backward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_90/while/IdentityIdentity backward_lstm_90/while/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_1Identity@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_2Identitybackward_lstm_90/while/add:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_3IdentityKbackward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_4Identity*backward_lstm_90/while/lstm_cell/mul_2:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
!backward_lstm_90/while/Identity_5Identity*backward_lstm_90/while/lstm_cell/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
backward_lstm_90/while/NoOpNoOp8^backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_90_while_backward_lstm_90_strided_slice_19backward_lstm_90_while_backward_lstm_90_strided_slice_1_0"K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0"O
!backward_lstm_90_while_identity_1*backward_lstm_90/while/Identity_1:output:0"O
!backward_lstm_90_while_identity_2*backward_lstm_90/while/Identity_2:output:0"O
!backward_lstm_90_while_identity_3*backward_lstm_90/while/Identity_3:output:0"O
!backward_lstm_90_while_identity_4*backward_lstm_90/while/Identity_4:output:0"O
!backward_lstm_90_while_identity_5*backward_lstm_90/while/Identity_5:output:0"�
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�	
�
3__inference_backward_lstm_90_layer_call_fn_46109177

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105579|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46109169:($
"
_user_specified_name
46109171:($
"
_user_specified_name
46109173
�
�
3__inference_bidirectional_90_layer_call_fn_46107108
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46105592|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'���������������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
46107094:($
"
_user_specified_name
46107096:($
"
_user_specified_name
46107098:($
"
_user_specified_name
46107100:($
"
_user_specified_name
46107102:($
"
_user_specified_name
46107104
�8
�
while_body_46105653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�	
�
while_cond_46105804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46105804___redundant_placeholder06
2while_while_cond_46105804___redundant_placeholder16
2while_while_cond_46105804___redundant_placeholder26
2while_while_cond_46105804___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
while_cond_46104806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46104806___redundant_placeholder06
2while_while_cond_46104806___redundant_placeholder16
2while_while_cond_46104806___redundant_placeholder26
2while_while_cond_46104806___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104793

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
,__inference_dense_557_layer_call_fn_46108358

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_557_layer_call_and_return_conditional_losses_46106386f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	�
 
_user_specified_nameinputs:($
"
_user_specified_name
46108352:($
"
_user_specified_name
46108354
�8
�
while_body_46108917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�J
�
#forward_lstm_90_while_body_46108082<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3;
7forward_lstm_90_while_forward_lstm_90_strided_slice_1_0w
sforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_90_while_identity$
 forward_lstm_90_while_identity_1$
 forward_lstm_90_while_identity_2$
 forward_lstm_90_while_identity_3$
 forward_lstm_90_while_identity_4$
 forward_lstm_90_while_identity_59
5forward_lstm_90_while_forward_lstm_90_strided_slice_1u
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
9forward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_90_while_placeholderPforward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
&forward_lstm_90/while/lstm_cell/MatMulMatMul@forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
(forward_lstm_90/while/lstm_cell/MatMul_1MatMul#forward_lstm_90_while_placeholder_2?forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
#forward_lstm_90/while/lstm_cell/addAddV20forward_lstm_90/while/lstm_cell/MatMul:product:02forward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
'forward_lstm_90/while/lstm_cell/BiasAddBiasAdd'forward_lstm_90/while/lstm_cell/add:z:0>forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_90/while/lstm_cell/splitSplit8forward_lstm_90/while/lstm_cell/split/split_dim:output:00forward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
'forward_lstm_90/while/lstm_cell/SigmoidSigmoid.forward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
)forward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
#forward_lstm_90/while/lstm_cell/mulMul-forward_lstm_90/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
$forward_lstm_90/while/lstm_cell/ReluRelu.forward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/mul_1Mul+forward_lstm_90/while/lstm_cell/Sigmoid:y:02forward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/add_1AddV2'forward_lstm_90/while/lstm_cell/mul:z:0)forward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
)forward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
&forward_lstm_90/while/lstm_cell/Relu_1Relu)forward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
%forward_lstm_90/while/lstm_cell/mul_2Mul-forward_lstm_90/while/lstm_cell/Sigmoid_2:y:04forward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
:forward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_90_while_placeholder_1!forward_lstm_90_while_placeholder)forward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/addAddV2!forward_lstm_90_while_placeholder$forward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/while/add_1AddV28forward_lstm_90_while_forward_lstm_90_while_loop_counter&forward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_1Identity>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_2Identityforward_lstm_90/while/add:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_3IdentityJforward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_90/while/Identity_4Identity)forward_lstm_90/while/lstm_cell/mul_2:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
 forward_lstm_90/while/Identity_5Identity)forward_lstm_90/while/lstm_cell/add_1:z:0^forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
forward_lstm_90/while/NoOpNoOp7^forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_90_while_forward_lstm_90_strided_slice_17forward_lstm_90_while_forward_lstm_90_strided_slice_1_0"I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0"M
 forward_lstm_90_while_identity_1)forward_lstm_90/while/Identity_1:output:0"M
 forward_lstm_90_while_identity_2)forward_lstm_90/while/Identity_2:output:0"M
 forward_lstm_90_while_identity_3)forward_lstm_90/while/Identity_3:output:0"M
 forward_lstm_90_while_identity_4)forward_lstm_90/while/Identity_4:output:0"M
 forward_lstm_90_while_identity_5)forward_lstm_90/while/Identity_5:output:0"�
?forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorsforward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
I
-__inference_flatten_90_layer_call_fn_46108343

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_90_layer_call_and_return_conditional_losses_46106375X
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�L
�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109623

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46109539*
condR
while_cond_46109538*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
1__inference_sequential_375_layer_call_fn_46104568
dense_556_input
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_556_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104550s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_556_input:($
"
_user_specified_name
46104562:($
"
_user_specified_name
46104564
�$
�
while_body_46104662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_46104686_0: ,
while_lstm_cell_46104688_0: (
while_lstm_cell_46104690_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_46104686: *
while_lstm_cell_46104688: &
while_lstm_cell_46104690: ��'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46104686_0while_lstm_cell_46104688_0while_lstm_cell_46104690_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104648�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_46104686while_lstm_cell_46104686_0"6
while_lstm_cell_46104688while_lstm_cell_46104688_0"6
while_lstm_cell_46104690while_lstm_cell_46104690_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
46104686:(	$
"
_user_specified_name
46104688:(
$
"
_user_specified_name
46104690
�L
�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105579

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46105495*
condR
while_cond_46105494*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
s
G__inference_lambda_90_layer_call_and_return_conditional_losses_46107037
inputs_0
inputs_1
identity~
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:PL
&
_output_shapes
:
"
_user_specified_name
inputs_1
�
f
-__inference_dropout_90_layer_call_fn_46108316

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_90_layer_call_and_return_conditional_losses_46106368j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109866

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states_0:QM
'
_output_shapes
:���������
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
while_cond_46109683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46109683___redundant_placeholder06
2while_while_cond_46109683___redundant_placeholder16
2while_while_cond_46109683___redundant_placeholder26
2while_while_cond_46109683___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
#forward_lstm_90_while_cond_46106113<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3>
:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46106113___redundant_placeholder0V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46106113___redundant_placeholder1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46106113___redundant_placeholder2V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46106113___redundant_placeholder3"
forward_lstm_90_while_identity
�
forward_lstm_90/while/LessLess!forward_lstm_90_while_placeholder:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:

_output_shapes
:
�	
�
3__inference_backward_lstm_90_layer_call_fn_46109155
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105079|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
46109147:($
"
_user_specified_name
46109149:($
"
_user_specified_name
46109151
�
�
#forward_lstm_90_while_cond_46107793<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3>
:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107793___redundant_placeholder0V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107793___redundant_placeholder1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107793___redundant_placeholder2V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107793___redundant_placeholder3"
forward_lstm_90_while_identity
�
forward_lstm_90/while/LessLess!forward_lstm_90_while_placeholder:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:

_output_shapes
:
�K
�
$backward_lstm_90_while_body_46108223>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3=
9backward_lstm_90_while_backward_lstm_90_strided_slice_1_0y
ubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_90_while_identity%
!backward_lstm_90_while_identity_1%
!backward_lstm_90_while_identity_2%
!backward_lstm_90_while_identity_3%
!backward_lstm_90_while_identity_4%
!backward_lstm_90_while_identity_5;
7backward_lstm_90_while_backward_lstm_90_strided_slice_1w
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
:backward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_90_while_placeholderQbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
'backward_lstm_90/while/lstm_cell/MatMulMatMulAbackward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
)backward_lstm_90/while/lstm_cell/MatMul_1MatMul$backward_lstm_90_while_placeholder_2@backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
$backward_lstm_90/while/lstm_cell/addAddV21backward_lstm_90/while/lstm_cell/MatMul:product:03backward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
(backward_lstm_90/while/lstm_cell/BiasAddBiasAdd(backward_lstm_90/while/lstm_cell/add:z:0?backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_90/while/lstm_cell/splitSplit9backward_lstm_90/while/lstm_cell/split/split_dim:output:01backward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
(backward_lstm_90/while/lstm_cell/SigmoidSigmoid/backward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
*backward_lstm_90/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
$backward_lstm_90/while/lstm_cell/mulMul.backward_lstm_90/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
%backward_lstm_90/while/lstm_cell/ReluRelu/backward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/mul_1Mul,backward_lstm_90/while/lstm_cell/Sigmoid:y:03backward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/add_1AddV2(backward_lstm_90/while/lstm_cell/mul:z:0*backward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
*backward_lstm_90/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
'backward_lstm_90/while/lstm_cell/Relu_1Relu*backward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
&backward_lstm_90/while/lstm_cell/mul_2Mul.backward_lstm_90/while/lstm_cell/Sigmoid_2:y:05backward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
;backward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_90_while_placeholder_1"backward_lstm_90_while_placeholder*backward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/addAddV2"backward_lstm_90_while_placeholder%backward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/while/add_1AddV2:backward_lstm_90_while_backward_lstm_90_while_loop_counter'backward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_90/while/IdentityIdentity backward_lstm_90/while/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_1Identity@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_2Identitybackward_lstm_90/while/add:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_3IdentityKbackward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_90/while/Identity_4Identity*backward_lstm_90/while/lstm_cell/mul_2:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
!backward_lstm_90/while/Identity_5Identity*backward_lstm_90/while/lstm_cell/add_1:z:0^backward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
backward_lstm_90/while/NoOpNoOp8^backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_90_while_backward_lstm_90_strided_slice_19backward_lstm_90_while_backward_lstm_90_strided_slice_1_0"K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0"O
!backward_lstm_90_while_identity_1*backward_lstm_90/while/Identity_1:output:0"O
!backward_lstm_90_while_identity_2*backward_lstm_90/while/Identity_2:output:0"O
!backward_lstm_90_while_identity_3*backward_lstm_90/while/Identity_3:output:0"O
!backward_lstm_90_while_identity_4*backward_lstm_90/while/Identity_4:output:0"O
!backward_lstm_90_while_identity_5*backward_lstm_90/while/Identity_5:output:0"�
@backward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_90_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensorubackward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
��
�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46107735
inputs_0J
8forward_lstm_90_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_90_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource: 
identity��1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_90/while�0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_90/while[
forward_lstm_90/ShapeShapeinputs_0*
T0*
_output_shapes
::��m
#forward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_sliceStridedSliceforward_lstm_90/Shape:output:0,forward_lstm_90/strided_slice/stack:output:0.forward_lstm_90/strided_slice/stack_1:output:0.forward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros/packedPack&forward_lstm_90/strided_slice:output:0'forward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zerosFill%forward_lstm_90/zeros/packed:output:0$forward_lstm_90/zeros/Const:output:0*
T0*'
_output_shapes
:���������b
 forward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros_1/packedPack&forward_lstm_90/strided_slice:output:0)forward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zeros_1Fill'forward_lstm_90/zeros_1/packed:output:0&forward_lstm_90/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������s
forward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose	Transposeinputs_0'forward_lstm_90/transpose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������r
forward_lstm_90/Shape_1Shapeforward_lstm_90/transpose:y:0*
T0*
_output_shapes
::��o
%forward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_1StridedSlice forward_lstm_90/Shape_1:output:0.forward_lstm_90/strided_slice_1/stack:output:00forward_lstm_90/strided_slice_1/stack_1:output:00forward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_90/TensorArrayV2TensorListReserve4forward_lstm_90/TensorArrayV2/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
7forward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_90/transpose:y:0Nforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_2StridedSliceforward_lstm_90/transpose:y:0.forward_lstm_90/strided_slice_2/stack:output:00forward_lstm_90/strided_slice_2/stack_1:output:00forward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
 forward_lstm_90/lstm_cell/MatMulMatMul(forward_lstm_90/strided_slice_2:output:07forward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
"forward_lstm_90/lstm_cell/MatMul_1MatMulforward_lstm_90/zeros:output:09forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
forward_lstm_90/lstm_cell/addAddV2*forward_lstm_90/lstm_cell/MatMul:product:0,forward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!forward_lstm_90/lstm_cell/BiasAddBiasAdd!forward_lstm_90/lstm_cell/add:z:08forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� k
)forward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/lstm_cell/splitSplit2forward_lstm_90/lstm_cell/split/split_dim:output:0*forward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
!forward_lstm_90/lstm_cell/SigmoidSigmoid(forward_lstm_90/lstm_cell/split:output:0*
T0*'
_output_shapes
:����������
#forward_lstm_90/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_90/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/mulMul'forward_lstm_90/lstm_cell/Sigmoid_1:y:0 forward_lstm_90/zeros_1:output:0*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/ReluRelu(forward_lstm_90/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/mul_1Mul%forward_lstm_90/lstm_cell/Sigmoid:y:0,forward_lstm_90/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/add_1AddV2!forward_lstm_90/lstm_cell/mul:z:0#forward_lstm_90/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:����������
#forward_lstm_90/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_90/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������
 forward_lstm_90/lstm_cell/Relu_1Relu#forward_lstm_90/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
forward_lstm_90/lstm_cell/mul_2Mul'forward_lstm_90/lstm_cell/Sigmoid_2:y:0.forward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������~
-forward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
forward_lstm_90/TensorArrayV2_1TensorListReserve6forward_lstm_90/TensorArrayV2_1/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_90/whileWhile+forward_lstm_90/while/loop_counter:output:01forward_lstm_90/while/maximum_iterations:output:0forward_lstm_90/time:output:0(forward_lstm_90/TensorArrayV2_1:handle:0forward_lstm_90/zeros:output:0 forward_lstm_90/zeros_1:output:0(forward_lstm_90/strided_slice_1:output:0Gforward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_90_lstm_cell_matmul_readvariableop_resource:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_90_while_body_46107506*/
cond'R%
#forward_lstm_90_while_cond_46107505*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
@forward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2forward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_90/while:output:3Iforward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0x
%forward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_3StridedSlice;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_90/strided_slice_3/stack:output:00forward_lstm_90/strided_slice_3/stack_1:output:00forward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_masku
 forward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose_1	Transpose;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_90/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������k
forward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_90/ShapeShapeinputs_0*
T0*
_output_shapes
::��n
$backward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_90/strided_sliceStridedSlicebackward_lstm_90/Shape:output:0-backward_lstm_90/strided_slice/stack:output:0/backward_lstm_90/strided_slice/stack_1:output:0/backward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros/packedPack'backward_lstm_90/strided_slice:output:0(backward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zerosFill&backward_lstm_90/zeros/packed:output:0%backward_lstm_90/zeros/Const:output:0*
T0*'
_output_shapes
:���������c
!backward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros_1/packedPack'backward_lstm_90/strided_slice:output:0*backward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zeros_1Fill(backward_lstm_90/zeros_1/packed:output:0'backward_lstm_90/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������t
backward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose	Transposeinputs_0(backward_lstm_90/transpose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������t
backward_lstm_90/Shape_1Shapebackward_lstm_90/transpose:y:0*
T0*
_output_shapes
::��p
&backward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_1StridedSlice!backward_lstm_90/Shape_1:output:0/backward_lstm_90/strided_slice_1/stack:output:01backward_lstm_90/strided_slice_1/stack_1:output:01backward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_90/TensorArrayV2TensorListReserve5backward_lstm_90/TensorArrayV2/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_90/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_90/ReverseV2	ReverseV2backward_lstm_90/transpose:y:0(backward_lstm_90/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
Fbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
8backward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_90/ReverseV2:output:0Obackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_2StridedSlicebackward_lstm_90/transpose:y:0/backward_lstm_90/strided_slice_2/stack:output:01backward_lstm_90/strided_slice_2/stack_1:output:01backward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
!backward_lstm_90/lstm_cell/MatMulMatMul)backward_lstm_90/strided_slice_2:output:08backward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
#backward_lstm_90/lstm_cell/MatMul_1MatMulbackward_lstm_90/zeros:output:0:backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
backward_lstm_90/lstm_cell/addAddV2+backward_lstm_90/lstm_cell/MatMul:product:0-backward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
"backward_lstm_90/lstm_cell/BiasAddBiasAdd"backward_lstm_90/lstm_cell/add:z:09backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� l
*backward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_90/lstm_cell/splitSplit3backward_lstm_90/lstm_cell/split/split_dim:output:0+backward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
"backward_lstm_90/lstm_cell/SigmoidSigmoid)backward_lstm_90/lstm_cell/split:output:0*
T0*'
_output_shapes
:����������
$backward_lstm_90/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_90/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
backward_lstm_90/lstm_cell/mulMul(backward_lstm_90/lstm_cell/Sigmoid_1:y:0!backward_lstm_90/zeros_1:output:0*
T0*'
_output_shapes
:����������
backward_lstm_90/lstm_cell/ReluRelu)backward_lstm_90/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
 backward_lstm_90/lstm_cell/mul_1Mul&backward_lstm_90/lstm_cell/Sigmoid:y:0-backward_lstm_90/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
 backward_lstm_90/lstm_cell/add_1AddV2"backward_lstm_90/lstm_cell/mul:z:0$backward_lstm_90/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:����������
$backward_lstm_90/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_90/lstm_cell/split:output:3*
T0*'
_output_shapes
:����������
!backward_lstm_90/lstm_cell/Relu_1Relu$backward_lstm_90/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
 backward_lstm_90/lstm_cell/mul_2Mul(backward_lstm_90/lstm_cell/Sigmoid_2:y:0/backward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������
.backward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
 backward_lstm_90/TensorArrayV2_1TensorListReserve7backward_lstm_90/TensorArrayV2_1/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_90/whileWhile,backward_lstm_90/while/loop_counter:output:02backward_lstm_90/while/maximum_iterations:output:0backward_lstm_90/time:output:0)backward_lstm_90/TensorArrayV2_1:handle:0backward_lstm_90/zeros:output:0!backward_lstm_90/zeros_1:output:0)backward_lstm_90/strided_slice_1:output:0Hbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_90_lstm_cell_matmul_readvariableop_resource;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_90_while_body_46107647*0
cond(R&
$backward_lstm_90_while_cond_46107646*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
Abackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3backward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_90/while:output:3Jbackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0y
&backward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_3StridedSlice<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_90/strided_slice_3/stack:output:01backward_lstm_90/strided_slice_3/stack_1:output:01backward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskv
!backward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose_1	Transpose<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_90/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������l
backward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
	ReverseV2	ReverseV2 backward_lstm_90/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :������������������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2forward_lstm_90/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :������������������k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp2^backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_90/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_90/while1^forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_90/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 2f
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_90/whilebackward_lstm_90/while2d
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_90/whileforward_lstm_90/while:g c
=
_output_shapes+
):'���������������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
X
,__inference_lambda_91_layer_call_fn_46107055
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_91_layer_call_and_return_conditional_losses_46106420_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
�
�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46105143

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46108023

inputsJ
8forward_lstm_90_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_90_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource: 
identity��1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_90/while�0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_90/whilej
forward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_sliceStridedSliceforward_lstm_90/Shape:output:0,forward_lstm_90/strided_slice/stack:output:0.forward_lstm_90/strided_slice/stack_1:output:0.forward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros/packedPack&forward_lstm_90/strided_slice:output:0'forward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zerosFill%forward_lstm_90/zeros/packed:output:0$forward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/zeros_1/packedPack&forward_lstm_90/strided_slice:output:0)forward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_90/zeros_1Fill'forward_lstm_90/zeros_1/packed:output:0&forward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose	Transposeinputs'forward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_1StridedSlice forward_lstm_90/Shape_1:output:0.forward_lstm_90/strided_slice_1/stack:output:00forward_lstm_90/strided_slice_1/stack_1:output:00forward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_90/TensorArrayV2TensorListReserve4forward_lstm_90/TensorArrayV2/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
7forward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_90/transpose:y:0Nforward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_2StridedSliceforward_lstm_90/transpose:y:0.forward_lstm_90/strided_slice_2/stack:output:00forward_lstm_90/strided_slice_2/stack_1:output:00forward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
 forward_lstm_90/lstm_cell/MatMulMatMul(forward_lstm_90/strided_slice_2:output:07forward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
"forward_lstm_90/lstm_cell/MatMul_1MatMulforward_lstm_90/zeros:output:09forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
forward_lstm_90/lstm_cell/addAddV2*forward_lstm_90/lstm_cell/MatMul:product:0,forward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!forward_lstm_90/lstm_cell/BiasAddBiasAdd!forward_lstm_90/lstm_cell/add:z:08forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_90/lstm_cell/splitSplit2forward_lstm_90/lstm_cell/split/split_dim:output:0*forward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_90/lstm_cell/SigmoidSigmoid(forward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
#forward_lstm_90/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mulMul'forward_lstm_90/lstm_cell/Sigmoid_1:y:0 forward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_90/lstm_cell/ReluRelu(forward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mul_1Mul%forward_lstm_90/lstm_cell/Sigmoid:y:0,forward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/add_1AddV2!forward_lstm_90/lstm_cell/mul:z:0#forward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
#forward_lstm_90/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_90/lstm_cell/Relu_1Relu#forward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
forward_lstm_90/lstm_cell/mul_2Mul'forward_lstm_90/lstm_cell/Sigmoid_2:y:0.forward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_lstm_90/TensorArrayV2_1TensorListReserve6forward_lstm_90/TensorArrayV2_1/element_shape:output:0(forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_90/whileWhile+forward_lstm_90/while/loop_counter:output:01forward_lstm_90/while/maximum_iterations:output:0forward_lstm_90/time:output:0(forward_lstm_90/TensorArrayV2_1:handle:0forward_lstm_90/zeros:output:0 forward_lstm_90/zeros_1:output:0(forward_lstm_90/strided_slice_1:output:0Gforward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_90_lstm_cell_matmul_readvariableop_resource:forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_90_while_body_46107794*/
cond'R%
#forward_lstm_90_while_cond_46107793*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
@forward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
2forward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_90/while:output:3Iforward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_90/strided_slice_3StridedSlice;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_90/strided_slice_3/stack:output:00forward_lstm_90/strided_slice_3/stack_1:output:00forward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_90/transpose_1	Transpose;forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_90/strided_sliceStridedSlicebackward_lstm_90/Shape:output:0-backward_lstm_90/strided_slice/stack:output:0/backward_lstm_90/strided_slice/stack_1:output:0/backward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros/packedPack'backward_lstm_90/strided_slice:output:0(backward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zerosFill&backward_lstm_90/zeros/packed:output:0%backward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_90/zeros_1/packedPack'backward_lstm_90/strided_slice:output:0*backward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_90/zeros_1Fill(backward_lstm_90/zeros_1/packed:output:0'backward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose	Transposeinputs(backward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_1StridedSlice!backward_lstm_90/Shape_1:output:0/backward_lstm_90/strided_slice_1/stack:output:01backward_lstm_90/strided_slice_1/stack_1:output:01backward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_90/TensorArrayV2TensorListReserve5backward_lstm_90/TensorArrayV2/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_90/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_90/ReverseV2	ReverseV2backward_lstm_90/transpose:y:0(backward_lstm_90/ReverseV2/axis:output:0*
T0*"
_output_shapes
:�
Fbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
8backward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_90/ReverseV2:output:0Obackward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_2StridedSlicebackward_lstm_90/transpose:y:0/backward_lstm_90/strided_slice_2/stack:output:01backward_lstm_90/strided_slice_2/stack_1:output:01backward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
!backward_lstm_90/lstm_cell/MatMulMatMul)backward_lstm_90/strided_slice_2:output:08backward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
#backward_lstm_90/lstm_cell/MatMul_1MatMulbackward_lstm_90/zeros:output:0:backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
backward_lstm_90/lstm_cell/addAddV2+backward_lstm_90/lstm_cell/MatMul:product:0-backward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
"backward_lstm_90/lstm_cell/BiasAddBiasAdd"backward_lstm_90/lstm_cell/add:z:09backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_90/lstm_cell/splitSplit3backward_lstm_90/lstm_cell/split/split_dim:output:0+backward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
"backward_lstm_90/lstm_cell/SigmoidSigmoid)backward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
$backward_lstm_90/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
backward_lstm_90/lstm_cell/mulMul(backward_lstm_90/lstm_cell/Sigmoid_1:y:0!backward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_90/lstm_cell/ReluRelu)backward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/mul_1Mul&backward_lstm_90/lstm_cell/Sigmoid:y:0-backward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/add_1AddV2"backward_lstm_90/lstm_cell/mul:z:0$backward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
$backward_lstm_90/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_90/lstm_cell/Relu_1Relu$backward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
 backward_lstm_90/lstm_cell/mul_2Mul(backward_lstm_90/lstm_cell/Sigmoid_2:y:0/backward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
 backward_lstm_90/TensorArrayV2_1TensorListReserve7backward_lstm_90/TensorArrayV2_1/element_shape:output:0)backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_90/whileWhile,backward_lstm_90/while/loop_counter:output:02backward_lstm_90/while/maximum_iterations:output:0backward_lstm_90/time:output:0)backward_lstm_90/TensorArrayV2_1:handle:0backward_lstm_90/zeros:output:0!backward_lstm_90/zeros_1:output:0)backward_lstm_90/strided_slice_1:output:0Hbackward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_90_lstm_cell_matmul_readvariableop_resource;backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_90_while_body_46107935*0
cond(R&
$backward_lstm_90_while_cond_46107934*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
Abackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
3backward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_90/while:output:3Jbackward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_90/strided_slice_3StridedSlice<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_90/strided_slice_3/stack:output:01backward_lstm_90/strided_slice_3/stack_1:output:01backward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_90/transpose_1	Transpose<backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:~
	ReverseV2	ReverseV2 backward_lstm_90/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2forward_lstm_90/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp2^backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_90/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_90/while1^forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_90/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp0backward_lstm_90/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_90/whilebackward_lstm_90/while2d
0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_90/whileforward_lstm_90/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�r
�
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_body_46104016~
ztopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_loop_counter�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_maximum_iterationsF
Btopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholderH
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_1H
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_2H
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_3}
ytopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_strided_slice_1_0�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0s
atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0: u
ctopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0: p
btopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0: C
?topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identityE
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_1E
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_2E
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_3E
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_4E
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_5{
wtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_strided_slice_1�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_forward_lstm_90_tensorarrayunstack_tensorlistfromtensorq
_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource: s
atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource: n
`topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource: ��Wtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp�Vtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp�Xtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp�
htopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Ztopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0Btopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholderqtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
Vtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpatopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
Gtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMulMatMulatopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/TensorArrayV2Read/TensorListGetItem:item:0^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Xtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpctopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
Itopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul_1MatMulDtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_2`topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Dtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/addAddV2Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul:product:0Stopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
Wtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpbtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/BiasAddBiasAddHtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/add:z:0_topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Ptopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/splitSplitYtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/split/split_dim:output:0Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/SigmoidSigmoidOtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/split:output:0*
T0*
_output_shapes

:�
Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/Sigmoid_1SigmoidOtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/split:output:1*
T0*
_output_shapes

:�
Dtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/mulMulNtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/Sigmoid_1:y:0Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_3*
T0*
_output_shapes

:�
Etopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/ReluReluOtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/split:output:2*
T0*
_output_shapes

:�
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/mul_1MulLtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/Sigmoid:y:0Stopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/add_1AddV2Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/mul:z:0Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/Sigmoid_2SigmoidOtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/split:output:3*
T0*
_output_shapes

:�
Gtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/Relu_1ReluJtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/mul_2MulNtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/Sigmoid_2:y:0Utopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
[topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemDtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_1Btopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholderJtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���~
<topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
:topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/addAddV2Btopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholderEtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/add/y:output:0*
T0*
_output_shapes
: �
>topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
<topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/add_1AddV2ztopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_loop_counterGtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/add_1/y:output:0*
T0*
_output_shapes
: �
?topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/IdentityIdentity@topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/add_1:z:0<^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_1Identity�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_maximum_iterations<^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_2Identity>topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/add:z:0<^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_3Identityktopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/NoOp*
T0*
_output_shapes
: �
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_4IdentityJtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/mul_2:z:0<^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_5IdentityJtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/add_1:z:0<^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/NoOp*
T0*
_output_shapes

:�
;topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/NoOpNoOpX^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpW^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpY^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "�
?topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identityHtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity:output:0"�
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_1Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_1:output:0"�
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_2Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_2:output:0"�
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_3Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_3:output:0"�
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_4Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_4:output:0"�
Atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity_5Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity_5:output:0"�
`topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resourcebtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_biasadd_readvariableop_resource_0"�
atopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resourcectopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_1_readvariableop_resource_0"�
_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_readvariableop_resourceatopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_lstm_cell_matmul_readvariableop_resource_0"�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_90_forward_lstm_90_tensorarrayunstack_tensorlistfromtensor_0"�
wtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_strided_slice_1ytopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_strided_slice_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2�
Wtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOpWtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/BiasAdd/ReadVariableOp2�
Vtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOpVtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul/ReadVariableOp2�
Xtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOpXtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/lstm_cell/MatMul_1/ReadVariableOp:{ w

_output_shapes
: 
]
_user_specified_nameECtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/loop_counter:�}

_output_shapes
: 
c
_user_specified_nameKItopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::xt

_output_shapes
: 
Z
_user_specified_nameB@topk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1:��

_output_shapes
: 
r
_user_specified_nameZXtopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�$
�
while_body_46105010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_46105034_0: ,
while_lstm_cell_46105036_0: (
while_lstm_cell_46105038_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_46105034: *
while_lstm_cell_46105036: &
while_lstm_cell_46105038: ��'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46105034_0while_lstm_cell_46105036_0while_lstm_cell_46105038_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104996�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_46105034while_lstm_cell_46105034_0"6
while_lstm_cell_46105036while_lstm_cell_46105036_0"6
while_lstm_cell_46105038while_lstm_cell_46105038_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
46105034:(	$
"
_user_specified_name
46105036:(
$
"
_user_specified_name
46105038
�
�
,__inference_dense_541_layer_call_fn_46108377

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_541_layer_call_and_return_conditional_losses_46104289s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
46108371:($
"
_user_specified_name
46108373
�
�
#forward_lstm_90_while_cond_46107217<
8forward_lstm_90_while_forward_lstm_90_while_loop_counterB
>forward_lstm_90_while_forward_lstm_90_while_maximum_iterations%
!forward_lstm_90_while_placeholder'
#forward_lstm_90_while_placeholder_1'
#forward_lstm_90_while_placeholder_2'
#forward_lstm_90_while_placeholder_3>
:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107217___redundant_placeholder0V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107217___redundant_placeholder1V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107217___redundant_placeholder2V
Rforward_lstm_90_while_forward_lstm_90_while_cond_46107217___redundant_placeholder3"
forward_lstm_90_while_identity
�
forward_lstm_90/while/LessLess!forward_lstm_90_while_placeholder:forward_lstm_90_while_less_forward_lstm_90_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_90/while/IdentityIdentityforward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_90_while_identity'forward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_90/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_90/strided_slice_1:

_output_shapes
:
�8
�
while_body_46109539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
G__inference_dense_541_layer_call_and_return_conditional_losses_46104289

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_cond_46104015~
ztopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_loop_counter�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_maximum_iterationsF
Btopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholderH
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_1H
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_2H
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder_3�
|topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_less_topk_bilstm_moe_bidirectional_90_forward_lstm_90_strided_slice_1�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_cond_46104015___redundant_placeholder0�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_cond_46104015___redundant_placeholder1�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_cond_46104015___redundant_placeholder2�
�topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_cond_46104015___redundant_placeholder3C
?topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identity
�
;topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/LessLessBtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_placeholder|topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_less_topk_bilstm_moe_bidirectional_90_forward_lstm_90_strided_slice_1*
T0*
_output_shapes
: �
?topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/IdentityIdentity?topk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "�
?topk_bilstm_moe_bidirectional_90_forward_lstm_90_while_identityHtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::{ w

_output_shapes
: 
]
_user_specified_nameECtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/loop_counter:�}

_output_shapes
: 
c
_user_specified_nameKItopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::xt

_output_shapes
: 
Z
_user_specified_nameB@topk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1:

_output_shapes
:
�H
�	
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106393
input_1$
dense_540_46105998: 
dense_540_46106000:)
sequential_360_46106028:%
sequential_360_46106030:)
sequential_365_46106033:%
sequential_365_46106035:)
sequential_370_46106038:%
sequential_370_46106040:)
sequential_375_46106043:%
sequential_375_46106045:+
bidirectional_90_46106344: +
bidirectional_90_46106346: '
bidirectional_90_46106348: +
bidirectional_90_46106350: +
bidirectional_90_46106352: '
bidirectional_90_46106354: %
dense_557_46106387:	� 
dense_557_46106389:
identity��(bidirectional_90/StatefulPartitionedCall�!dense_540/StatefulPartitionedCall�!dense_557/StatefulPartitionedCall�"dropout_90/StatefulPartitionedCall�&sequential_360/StatefulPartitionedCall�&sequential_365/StatefulPartitionedCall�&sequential_370/StatefulPartitionedCall�&sequential_375/StatefulPartitionedCall�
!dense_540/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_540_46105998dense_540_46106000*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_540_layer_call_and_return_conditional_losses_46105997X
tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :�
tf.math.top_k/TopKV2TopKV2*dense_540/StatefulPartitionedCall:output:0tf.math.top_k/TopKV2/k:output:0*
T0*0
_output_shapes
::`
tf.one_hot/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
tf.one_hot/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Z
tf.one_hot/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :�
tf.one_hot/one_hotOneHottf.math.top_k/TopKV2:indices:0!tf.one_hot/one_hot/depth:output:0$tf.one_hot/one_hot/on_value:output:0%tf.one_hot/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:�
lambda_90/PartitionedCallPartitionedCalltf.math.top_k/TopKV2:values:0tf.one_hot/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_90_layer_call_and_return_conditional_losses_46106015�
lambda_91/PartitionedCallPartitionedCallinput_1"lambda_90/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_91_layer_call_and_return_conditional_losses_46106022�
tf.unstack/unstackUnpack"lambda_91/PartitionedCall:output:0*
T0*L
_output_shapes:
8::::*	
num�
&sequential_360/StatefulPartitionedCallStatefulPartitionedCalltf.unstack/unstack:output:0sequential_360_46106028sequential_360_46106030*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104301�
&sequential_365/StatefulPartitionedCallStatefulPartitionedCalltf.unstack/unstack:output:1sequential_365_46106033sequential_365_46106035*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104384�
&sequential_370/StatefulPartitionedCallStatefulPartitionedCalltf.unstack/unstack:output:2sequential_370_46106038sequential_370_46106040*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104467�
&sequential_375/StatefulPartitionedCallStatefulPartitionedCalltf.unstack/unstack:output:3sequential_375_46106043sequential_375_46106045*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104550�
tf.stack_91/stackPack/sequential_360/StatefulPartitionedCall:output:0/sequential_365/StatefulPartitionedCall:output:0/sequential_370/StatefulPartitionedCall:output:0/sequential_375/StatefulPartitionedCall:output:0*
N*
T0*&
_output_shapes
:*

axis�
lambda_92/PartitionedCallPartitionedCalltf.stack_91/stack:output:0"lambda_90/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_92_layer_call_and_return_conditional_losses_46106054�
(bidirectional_90/StatefulPartitionedCallStatefulPartitionedCall"lambda_92/PartitionedCall:output:0bidirectional_90_46106344bidirectional_90_46106346bidirectional_90_46106348bidirectional_90_46106350bidirectional_90_46106352bidirectional_90_46106354*
Tin
	2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46106343�
"dropout_90/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_90_layer_call_and_return_conditional_losses_46106368�
flatten_90/PartitionedCallPartitionedCall+dropout_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_90_layer_call_and_return_conditional_losses_46106375�
!dense_557/StatefulPartitionedCallStatefulPartitionedCall#flatten_90/PartitionedCall:output:0dense_557_46106387dense_557_46106389*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_557_layer_call_and_return_conditional_losses_46106386p
IdentityIdentity*dense_557/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp)^bidirectional_90/StatefulPartitionedCall"^dense_540/StatefulPartitionedCall"^dense_557/StatefulPartitionedCall#^dropout_90/StatefulPartitionedCall'^sequential_360/StatefulPartitionedCall'^sequential_365/StatefulPartitionedCall'^sequential_370/StatefulPartitionedCall'^sequential_375/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2T
(bidirectional_90/StatefulPartitionedCall(bidirectional_90/StatefulPartitionedCall2F
!dense_540/StatefulPartitionedCall!dense_540/StatefulPartitionedCall2F
!dense_557/StatefulPartitionedCall!dense_557/StatefulPartitionedCall2H
"dropout_90/StatefulPartitionedCall"dropout_90/StatefulPartitionedCall2P
&sequential_360/StatefulPartitionedCall&sequential_360/StatefulPartitionedCall2P
&sequential_365/StatefulPartitionedCall&sequential_365/StatefulPartitionedCall2P
&sequential_370/StatefulPartitionedCall&sequential_370/StatefulPartitionedCall2P
&sequential_375/StatefulPartitionedCall&sequential_375/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:($
"
_user_specified_name
46105998:($
"
_user_specified_name
46106000:($
"
_user_specified_name
46106028:($
"
_user_specified_name
46106030:($
"
_user_specified_name
46106033:($
"
_user_specified_name
46106035:($
"
_user_specified_name
46106038:($
"
_user_specified_name
46106040:(	$
"
_user_specified_name
46106043:(
$
"
_user_specified_name
46106045:($
"
_user_specified_name
46106344:($
"
_user_specified_name
46106346:($
"
_user_specified_name
46106348:($
"
_user_specified_name
46106350:($
"
_user_specified_name
46106352:($
"
_user_specified_name
46106354:($
"
_user_specified_name
46106387:($
"
_user_specified_name
46106389
�J
�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46109144

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46109060*
condR
while_cond_46109059*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�J
�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46108715
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46108631*
condR
while_cond_46108630*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�8
�
while_body_46109684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
#__inference__wrapped_model_46104254
input_1M
;topk_bilstm_moe_dense_540_tensordot_readvariableop_resource:G
9topk_bilstm_moe_dense_540_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_360_dense_541_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_360_dense_541_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_365_dense_546_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_365_dense_546_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_370_dense_551_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_370_dense_551_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_375_dense_556_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_375_dense_556_biasadd_readvariableop_resource:k
Ytopk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_matmul_readvariableop_resource: m
[topk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: h
Ztopk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_biasadd_readvariableop_resource: l
Ztopk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_matmul_readvariableop_resource: n
\topk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource: i
[topk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_biasadd_readvariableop_resource: K
8topk_bilstm_moe_dense_557_matmul_readvariableop_resource:	�G
9topk_bilstm_moe_dense_557_biasadd_readvariableop_resource:
identity��Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�Qtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul/ReadVariableOp�Stopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�7topk_bilstm_moe/bidirectional_90/backward_lstm_90/while�Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp�Ptopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp�Rtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp�6topk_bilstm_moe/bidirectional_90/forward_lstm_90/while�0topk_bilstm_moe/dense_540/BiasAdd/ReadVariableOp�2topk_bilstm_moe/dense_540/Tensordot/ReadVariableOp�0topk_bilstm_moe/dense_557/BiasAdd/ReadVariableOp�/topk_bilstm_moe/dense_557/MatMul/ReadVariableOp�?topk_bilstm_moe/sequential_360/dense_541/BiasAdd/ReadVariableOp�Atopk_bilstm_moe/sequential_360/dense_541/Tensordot/ReadVariableOp�?topk_bilstm_moe/sequential_365/dense_546/BiasAdd/ReadVariableOp�Atopk_bilstm_moe/sequential_365/dense_546/Tensordot/ReadVariableOp�?topk_bilstm_moe/sequential_370/dense_551/BiasAdd/ReadVariableOp�Atopk_bilstm_moe/sequential_370/dense_551/Tensordot/ReadVariableOp�?topk_bilstm_moe/sequential_375/dense_556/BiasAdd/ReadVariableOp�Atopk_bilstm_moe/sequential_375/dense_556/Tensordot/ReadVariableOp�
2topk_bilstm_moe/dense_540/Tensordot/ReadVariableOpReadVariableOp;topk_bilstm_moe_dense_540_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0�
1topk_bilstm_moe/dense_540/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
+topk_bilstm_moe/dense_540/Tensordot/ReshapeReshapeinput_1:topk_bilstm_moe/dense_540/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
*topk_bilstm_moe/dense_540/Tensordot/MatMulMatMul4topk_bilstm_moe/dense_540/Tensordot/Reshape:output:0:topk_bilstm_moe/dense_540/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�~
)topk_bilstm_moe/dense_540/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
#topk_bilstm_moe/dense_540/TensordotReshape4topk_bilstm_moe/dense_540/Tensordot/MatMul:product:02topk_bilstm_moe/dense_540/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
0topk_bilstm_moe/dense_540/BiasAdd/ReadVariableOpReadVariableOp9topk_bilstm_moe_dense_540_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!topk_bilstm_moe/dense_540/BiasAddBiasAdd,topk_bilstm_moe/dense_540/Tensordot:output:08topk_bilstm_moe/dense_540/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
!topk_bilstm_moe/dense_540/SoftmaxSoftmax*topk_bilstm_moe/dense_540/BiasAdd:output:0*
T0*"
_output_shapes
:h
&topk_bilstm_moe/tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :�
$topk_bilstm_moe/tf.math.top_k/TopKV2TopKV2+topk_bilstm_moe/dense_540/Softmax:softmax:0/topk_bilstm_moe/tf.math.top_k/TopKV2/k:output:0*
T0*0
_output_shapes
::p
+topk_bilstm_moe/tf.one_hot/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
,topk_bilstm_moe/tf.one_hot/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    j
(topk_bilstm_moe/tf.one_hot/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :�
"topk_bilstm_moe/tf.one_hot/one_hotOneHot.topk_bilstm_moe/tf.math.top_k/TopKV2:indices:01topk_bilstm_moe/tf.one_hot/one_hot/depth:output:04topk_bilstm_moe/tf.one_hot/one_hot/on_value:output:05topk_bilstm_moe/tf.one_hot/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:�
'topk_bilstm_moe/lambda_90/einsum/EinsumEinsum-topk_bilstm_moe/tf.math.top_k/TopKV2:values:0+topk_bilstm_moe/tf.one_hot/one_hot:output:0*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abd�
'topk_bilstm_moe/lambda_91/einsum/EinsumEinsuminput_10topk_bilstm_moe/lambda_90/einsum/Einsum:output:0*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc�
"topk_bilstm_moe/tf.unstack/unstackUnpack0topk_bilstm_moe/lambda_91/einsum/Einsum:output:0*
T0*L
_output_shapes:
8::::*	
num�
Atopk_bilstm_moe/sequential_360/dense_541/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_360_dense_541_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0�
@topk_bilstm_moe/sequential_360/dense_541/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
:topk_bilstm_moe/sequential_360/dense_541/Tensordot/ReshapeReshape+topk_bilstm_moe/tf.unstack/unstack:output:0Itopk_bilstm_moe/sequential_360/dense_541/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
9topk_bilstm_moe/sequential_360/dense_541/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_360/dense_541/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_360/dense_541/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
8topk_bilstm_moe/sequential_360/dense_541/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
2topk_bilstm_moe/sequential_360/dense_541/TensordotReshapeCtopk_bilstm_moe/sequential_360/dense_541/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_360/dense_541/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
?topk_bilstm_moe/sequential_360/dense_541/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_360_dense_541_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
0topk_bilstm_moe/sequential_360/dense_541/BiasAddBiasAdd;topk_bilstm_moe/sequential_360/dense_541/Tensordot:output:0Gtopk_bilstm_moe/sequential_360/dense_541/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
-topk_bilstm_moe/sequential_360/dense_541/ReluRelu9topk_bilstm_moe/sequential_360/dense_541/BiasAdd:output:0*
T0*"
_output_shapes
:�
Atopk_bilstm_moe/sequential_365/dense_546/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_365_dense_546_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0�
@topk_bilstm_moe/sequential_365/dense_546/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
:topk_bilstm_moe/sequential_365/dense_546/Tensordot/ReshapeReshape+topk_bilstm_moe/tf.unstack/unstack:output:1Itopk_bilstm_moe/sequential_365/dense_546/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
9topk_bilstm_moe/sequential_365/dense_546/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_365/dense_546/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_365/dense_546/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
8topk_bilstm_moe/sequential_365/dense_546/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
2topk_bilstm_moe/sequential_365/dense_546/TensordotReshapeCtopk_bilstm_moe/sequential_365/dense_546/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_365/dense_546/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
?topk_bilstm_moe/sequential_365/dense_546/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_365_dense_546_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
0topk_bilstm_moe/sequential_365/dense_546/BiasAddBiasAdd;topk_bilstm_moe/sequential_365/dense_546/Tensordot:output:0Gtopk_bilstm_moe/sequential_365/dense_546/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
-topk_bilstm_moe/sequential_365/dense_546/ReluRelu9topk_bilstm_moe/sequential_365/dense_546/BiasAdd:output:0*
T0*"
_output_shapes
:�
Atopk_bilstm_moe/sequential_370/dense_551/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_370_dense_551_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0�
@topk_bilstm_moe/sequential_370/dense_551/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
:topk_bilstm_moe/sequential_370/dense_551/Tensordot/ReshapeReshape+topk_bilstm_moe/tf.unstack/unstack:output:2Itopk_bilstm_moe/sequential_370/dense_551/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
9topk_bilstm_moe/sequential_370/dense_551/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_370/dense_551/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_370/dense_551/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
8topk_bilstm_moe/sequential_370/dense_551/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
2topk_bilstm_moe/sequential_370/dense_551/TensordotReshapeCtopk_bilstm_moe/sequential_370/dense_551/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_370/dense_551/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
?topk_bilstm_moe/sequential_370/dense_551/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_370_dense_551_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
0topk_bilstm_moe/sequential_370/dense_551/BiasAddBiasAdd;topk_bilstm_moe/sequential_370/dense_551/Tensordot:output:0Gtopk_bilstm_moe/sequential_370/dense_551/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
-topk_bilstm_moe/sequential_370/dense_551/ReluRelu9topk_bilstm_moe/sequential_370/dense_551/BiasAdd:output:0*
T0*"
_output_shapes
:�
Atopk_bilstm_moe/sequential_375/dense_556/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_375_dense_556_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0�
@topk_bilstm_moe/sequential_375/dense_556/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
:topk_bilstm_moe/sequential_375/dense_556/Tensordot/ReshapeReshape+topk_bilstm_moe/tf.unstack/unstack:output:3Itopk_bilstm_moe/sequential_375/dense_556/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
9topk_bilstm_moe/sequential_375/dense_556/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_375/dense_556/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_375/dense_556/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
8topk_bilstm_moe/sequential_375/dense_556/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
2topk_bilstm_moe/sequential_375/dense_556/TensordotReshapeCtopk_bilstm_moe/sequential_375/dense_556/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_375/dense_556/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
?topk_bilstm_moe/sequential_375/dense_556/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_375_dense_556_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
0topk_bilstm_moe/sequential_375/dense_556/BiasAddBiasAdd;topk_bilstm_moe/sequential_375/dense_556/Tensordot:output:0Gtopk_bilstm_moe/sequential_375/dense_556/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
-topk_bilstm_moe/sequential_375/dense_556/ReluRelu9topk_bilstm_moe/sequential_375/dense_556/BiasAdd:output:0*
T0*"
_output_shapes
:�
!topk_bilstm_moe/tf.stack_91/stackPack;topk_bilstm_moe/sequential_360/dense_541/Relu:activations:0;topk_bilstm_moe/sequential_365/dense_546/Relu:activations:0;topk_bilstm_moe/sequential_370/dense_551/Relu:activations:0;topk_bilstm_moe/sequential_375/dense_556/Relu:activations:0*
N*
T0*&
_output_shapes
:*

axis�
'topk_bilstm_moe/lambda_92/einsum/EinsumEinsum*topk_bilstm_moe/tf.stack_91/stack:output:00topk_bilstm_moe/lambda_90/einsum/Einsum:output:0*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acd�
6topk_bilstm_moe/bidirectional_90/forward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
Dtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
>topk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_sliceStridedSlice?topk_bilstm_moe/bidirectional_90/forward_lstm_90/Shape:output:0Mtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice/stack:output:0Otopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice/stack_1:output:0Otopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?topk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
=topk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros/packedPackGtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice:output:0Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:�
<topk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
6topk_bilstm_moe/bidirectional_90/forward_lstm_90/zerosFillFtopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros/packed:output:0Etopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:�
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
?topk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1/packedPackGtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice:output:0Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
>topk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
8topk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1FillHtopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1/packed:output:0Gtopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:�
?topk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
:topk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose	Transpose0topk_bilstm_moe/lambda_92/einsum/Einsum:output:0Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:�
8topk_bilstm_moe/bidirectional_90/forward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         �
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@topk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1StridedSliceAtopk_bilstm_moe/bidirectional_90/forward_lstm_90/Shape_1:output:0Otopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1/stack:output:0Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1/stack_1:output:0Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Ltopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
>topk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2TensorListReserveUtopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2/element_shape:output:0Itopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Xtopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor>topk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose:y:0otopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@topk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_2StridedSlice>topk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose:y:0Otopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_2/stack:output:0Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_2/stack_1:output:0Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
Ptopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOpYtopk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMulMatMulItopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_2:output:0Xtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Rtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp[topk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
Ctopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul_1MatMul?topk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros:output:0Ztopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
>topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/addAddV2Ktopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul:product:0Mtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpZtopk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Btopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/BiasAddBiasAddBtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/add:z:0Ytopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
@topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/splitSplitStopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/split/split_dim:output:0Ktopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
Btopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/SigmoidSigmoidItopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
Dtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/Sigmoid_1SigmoidItopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
>topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/mulMulHtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/Sigmoid_1:y:0Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:�
?topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/ReluReluItopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
@topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/mul_1MulFtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/Sigmoid:y:0Mtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
@topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/add_1AddV2Btopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/mul:z:0Dtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
Dtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/Sigmoid_2SigmoidItopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:�
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/Relu_1ReluDtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
@topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/mul_2MulHtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/Sigmoid_2:y:0Otopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
Ntopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
@topk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2_1TensorListReserveWtopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2_1/element_shape:output:0Itopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
5topk_bilstm_moe/bidirectional_90/forward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : �
Itopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
����������
Ctopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

6topk_bilstm_moe/bidirectional_90/forward_lstm_90/whileWhileLtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/loop_counter:output:0Rtopk_bilstm_moe/bidirectional_90/forward_lstm_90/while/maximum_iterations:output:0>topk_bilstm_moe/bidirectional_90/forward_lstm_90/time:output:0Itopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2_1:handle:0?topk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros:output:0Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/zeros_1:output:0Itopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_1:output:0htopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ytopk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_matmul_readvariableop_resource[topk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_matmul_1_readvariableop_resourceZtopk_bilstm_moe_bidirectional_90_forward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*P
bodyHRF
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_body_46104016*P
condHRF
Dtopk_bilstm_moe_bidirectional_90_forward_lstm_90_while_cond_46104015*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
atopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Stopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStack?topk_bilstm_moe/bidirectional_90/forward_lstm_90/while:output:3jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0�
Ftopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Htopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@topk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_3StridedSlice\topk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0Otopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_3/stack:output:0Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_3/stack_1:output:0Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
Atopk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
<topk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose_1	Transpose\topk_bilstm_moe/bidirectional_90/forward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0Jtopk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:�
8topk_bilstm_moe/bidirectional_90/forward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
7topk_bilstm_moe/bidirectional_90/backward_lstm_90/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
Etopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?topk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_sliceStridedSlice@topk_bilstm_moe/bidirectional_90/backward_lstm_90/Shape:output:0Ntopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice/stack:output:0Ptopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice/stack_1:output:0Ptopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
@topk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
>topk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros/packedPackHtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice:output:0Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:�
=topk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7topk_bilstm_moe/bidirectional_90/backward_lstm_90/zerosFillGtopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros/packed:output:0Ftopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros/Const:output:0*
T0*
_output_shapes

:�
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
@topk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1/packedPackHtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice:output:0Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
?topk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
9topk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1FillItopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1/packed:output:0Htopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1/Const:output:0*
T0*
_output_shapes

:�
@topk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
;topk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose	Transpose0topk_bilstm_moe/lambda_92/einsum/Einsum:output:0Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose/perm:output:0*
T0*"
_output_shapes
:�
9topk_bilstm_moe/bidirectional_90/backward_lstm_90/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         �
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1StridedSliceBtopk_bilstm_moe/bidirectional_90/backward_lstm_90/Shape_1:output:0Ptopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1/stack:output:0Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1/stack_1:output:0Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Mtopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
?topk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2TensorListReserveVtopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2/element_shape:output:0Jtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
@topk_bilstm_moe/bidirectional_90/backward_lstm_90/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
;topk_bilstm_moe/bidirectional_90/backward_lstm_90/ReverseV2	ReverseV2?topk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose:y:0Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/ReverseV2/axis:output:0*
T0*"
_output_shapes
:�
gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Ytopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorDtopk_bilstm_moe/bidirectional_90/backward_lstm_90/ReverseV2:output:0ptopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_2StridedSlice?topk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose:y:0Ptopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_2/stack:output:0Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_2/stack_1:output:0Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
Qtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul/ReadVariableOpReadVariableOpZtopk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMulMatMulJtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_2:output:0Ytopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Stopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp\topk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
Dtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul_1MatMul@topk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros:output:0[topk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: �
?topk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/addAddV2Ltopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul:product:0Ntopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: �
Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp[topk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Ctopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/BiasAddBiasAddCtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/add:z:0Ztopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: �
Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/splitSplitTtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/split/split_dim:output:0Ltopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split�
Ctopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/SigmoidSigmoidJtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/split:output:0*
T0*
_output_shapes

:�
Etopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/Sigmoid_1SigmoidJtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/split:output:1*
T0*
_output_shapes

:�
?topk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/mulMulItopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/Sigmoid_1:y:0Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1:output:0*
T0*
_output_shapes

:�
@topk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/ReluReluJtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/split:output:2*
T0*
_output_shapes

:�
Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/mul_1MulGtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/Sigmoid:y:0Ntopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:�
Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/add_1AddV2Ctopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/mul:z:0Etopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:�
Etopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/Sigmoid_2SigmoidJtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/split:output:3*
T0*
_output_shapes

:�
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/Relu_1ReluEtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/add_1:z:0*
T0*
_output_shapes

:�
Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/mul_2MulItopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/Sigmoid_2:y:0Ptopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:�
Otopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2_1TensorListReserveXtopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2_1/element_shape:output:0Jtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���x
6topk_bilstm_moe/bidirectional_90/backward_lstm_90/timeConst*
_output_shapes
: *
dtype0*
value	B : �
Jtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
����������
Dtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

7topk_bilstm_moe/bidirectional_90/backward_lstm_90/whileWhileMtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/loop_counter:output:0Stopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/maximum_iterations:output:0?topk_bilstm_moe/bidirectional_90/backward_lstm_90/time:output:0Jtopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2_1:handle:0@topk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros:output:0Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/zeros_1:output:0Jtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1:output:0itopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ztopk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_matmul_readvariableop_resource\topk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_matmul_1_readvariableop_resource[topk_bilstm_moe_bidirectional_90_backward_lstm_90_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*Q
bodyIRG
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_body_46104157*Q
condIRG
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_cond_46104156*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations �
btopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Ttopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2Stack/TensorListStackTensorListStack@topk_bilstm_moe/bidirectional_90/backward_lstm_90/while:output:3ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0�
Gtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Itopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_3StridedSlice]topk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0Ptopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_3/stack:output:0Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_3/stack_1:output:0Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
Btopk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
=topk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose_1	Transpose]topk_bilstm_moe/bidirectional_90/backward_lstm_90/TensorArrayV2Stack/TensorListStack:tensor:0Ktopk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose_1/perm:output:0*
T0*"
_output_shapes
:�
9topk_bilstm_moe/bidirectional_90/backward_lstm_90/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    y
/topk_bilstm_moe/bidirectional_90/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*topk_bilstm_moe/bidirectional_90/ReverseV2	ReverseV2Atopk_bilstm_moe/bidirectional_90/backward_lstm_90/transpose_1:y:08topk_bilstm_moe/bidirectional_90/ReverseV2/axis:output:0*
T0*"
_output_shapes
:n
,topk_bilstm_moe/bidirectional_90/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
'topk_bilstm_moe/bidirectional_90/concatConcatV2@topk_bilstm_moe/bidirectional_90/forward_lstm_90/transpose_1:y:03topk_bilstm_moe/bidirectional_90/ReverseV2:output:05topk_bilstm_moe/bidirectional_90/concat/axis:output:0*
N*
T0*"
_output_shapes
:�
#topk_bilstm_moe/dropout_90/IdentityIdentity0topk_bilstm_moe/bidirectional_90/concat:output:0*
T0*"
_output_shapes
:q
 topk_bilstm_moe/flatten_90/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"topk_bilstm_moe/flatten_90/ReshapeReshape,topk_bilstm_moe/dropout_90/Identity:output:0)topk_bilstm_moe/flatten_90/Const:output:0*
T0*
_output_shapes
:	��
/topk_bilstm_moe/dense_557/MatMul/ReadVariableOpReadVariableOp8topk_bilstm_moe_dense_557_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 topk_bilstm_moe/dense_557/MatMulMatMul+topk_bilstm_moe/flatten_90/Reshape:output:07topk_bilstm_moe/dense_557/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
0topk_bilstm_moe/dense_557/BiasAdd/ReadVariableOpReadVariableOp9topk_bilstm_moe_dense_557_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!topk_bilstm_moe/dense_557/BiasAddBiasAdd*topk_bilstm_moe/dense_557/MatMul:product:08topk_bilstm_moe/dense_557/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:p
IdentityIdentity*topk_bilstm_moe/dense_557/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:�

NoOpNoOpS^topk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpR^topk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul/ReadVariableOpT^topk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp8^topk_bilstm_moe/bidirectional_90/backward_lstm_90/whileR^topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpQ^topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpS^topk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp7^topk_bilstm_moe/bidirectional_90/forward_lstm_90/while1^topk_bilstm_moe/dense_540/BiasAdd/ReadVariableOp3^topk_bilstm_moe/dense_540/Tensordot/ReadVariableOp1^topk_bilstm_moe/dense_557/BiasAdd/ReadVariableOp0^topk_bilstm_moe/dense_557/MatMul/ReadVariableOp@^topk_bilstm_moe/sequential_360/dense_541/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_360/dense_541/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_365/dense_546/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_365/dense_546/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_370/dense_551/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_370/dense_551/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_375/dense_556/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_375/dense_556/Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2�
Rtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpRtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2�
Qtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul/ReadVariableOpQtopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul/ReadVariableOp2�
Stopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpStopk_bilstm_moe/bidirectional_90/backward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2r
7topk_bilstm_moe/bidirectional_90/backward_lstm_90/while7topk_bilstm_moe/bidirectional_90/backward_lstm_90/while2�
Qtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOpQtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/BiasAdd/ReadVariableOp2�
Ptopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul/ReadVariableOpPtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul/ReadVariableOp2�
Rtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOpRtopk_bilstm_moe/bidirectional_90/forward_lstm_90/lstm_cell/MatMul_1/ReadVariableOp2p
6topk_bilstm_moe/bidirectional_90/forward_lstm_90/while6topk_bilstm_moe/bidirectional_90/forward_lstm_90/while2d
0topk_bilstm_moe/dense_540/BiasAdd/ReadVariableOp0topk_bilstm_moe/dense_540/BiasAdd/ReadVariableOp2h
2topk_bilstm_moe/dense_540/Tensordot/ReadVariableOp2topk_bilstm_moe/dense_540/Tensordot/ReadVariableOp2d
0topk_bilstm_moe/dense_557/BiasAdd/ReadVariableOp0topk_bilstm_moe/dense_557/BiasAdd/ReadVariableOp2b
/topk_bilstm_moe/dense_557/MatMul/ReadVariableOp/topk_bilstm_moe/dense_557/MatMul/ReadVariableOp2�
?topk_bilstm_moe/sequential_360/dense_541/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_360/dense_541/BiasAdd/ReadVariableOp2�
Atopk_bilstm_moe/sequential_360/dense_541/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_360/dense_541/Tensordot/ReadVariableOp2�
?topk_bilstm_moe/sequential_365/dense_546/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_365/dense_546/BiasAdd/ReadVariableOp2�
Atopk_bilstm_moe/sequential_365/dense_546/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_365/dense_546/Tensordot/ReadVariableOp2�
?topk_bilstm_moe/sequential_370/dense_551/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_370/dense_551/BiasAdd/ReadVariableOp2�
Atopk_bilstm_moe/sequential_370/dense_551/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_370/dense_551/Tensordot/ReadVariableOp2�
?topk_bilstm_moe/sequential_375/dense_556/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_375/dense_556/BiasAdd/ReadVariableOp2�
Atopk_bilstm_moe/sequential_375/dense_556/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_375/dense_556/Tensordot/ReadVariableOp:K G
"
_output_shapes
:
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�8
�
while_body_46108774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
s
G__inference_lambda_92_layer_call_and_return_conditional_losses_46107085
inputs_0
inputs_1
identity~
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::P L
&
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
�	
�
G__inference_dense_557_layer_call_and_return_conditional_losses_46106386

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46105902

inputs*
forward_lstm_90_46105738: *
forward_lstm_90_46105740: &
forward_lstm_90_46105742: +
backward_lstm_90_46105890: +
backward_lstm_90_46105892: '
backward_lstm_90_46105894: 
identity��(backward_lstm_90/StatefulPartitionedCall�'forward_lstm_90/StatefulPartitionedCall�
'forward_lstm_90/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_90_46105738forward_lstm_90_46105740forward_lstm_90_46105742*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46105737�
(backward_lstm_90/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_90_46105890backward_lstm_90_46105892backward_lstm_90_46105894*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105889X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
	ReverseV2	ReverseV21backward_lstm_90/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :������������������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV20forward_lstm_90/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :������������������k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :������������������w
NoOpNoOp)^backward_lstm_90/StatefulPartitionedCall(^forward_lstm_90/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 2T
(backward_lstm_90/StatefulPartitionedCall(backward_lstm_90/StatefulPartitionedCall2R
'forward_lstm_90/StatefulPartitionedCall'forward_lstm_90/StatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46105738:($
"
_user_specified_name
46105740:($
"
_user_specified_name
46105742:($
"
_user_specified_name
46105890:($
"
_user_specified_name
46105892:($
"
_user_specified_name
46105894
�
�
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_cond_46104156�
|topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_loop_counter�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_maximum_iterationsG
Ctopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholderI
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_1I
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_2I
Etopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder_3�
~topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_less_topk_bilstm_moe_bidirectional_90_backward_lstm_90_strided_slice_1�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_cond_46104156___redundant_placeholder0�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_cond_46104156___redundant_placeholder1�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_cond_46104156___redundant_placeholder2�
�topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_cond_46104156___redundant_placeholder3D
@topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identity
�
<topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/LessLessCtopk_bilstm_moe_bidirectional_90_backward_lstm_90_while_placeholder~topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_less_topk_bilstm_moe_bidirectional_90_backward_lstm_90_strided_slice_1*
T0*
_output_shapes
: �
@topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/IdentityIdentity@topk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "�
@topk_bilstm_moe_bidirectional_90_backward_lstm_90_while_identityItopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::| x

_output_shapes
: 
^
_user_specified_nameFDtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/loop_counter:�~

_output_shapes
: 
d
_user_specified_nameLJtopk_bilstm_moe/bidirectional_90/backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::yu

_output_shapes
: 
[
_user_specified_nameCAtopk_bilstm_moe/bidirectional_90/backward_lstm_90/strided_slice_1:

_output_shapes
:
�
�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109932

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states_0:QM
'
_output_shapes
:���������
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�J
�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46105737

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46105653*
condR
while_cond_46105652*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
2__inference_topk_bilstm_moe_layer_call_fn_46106809
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15:	�

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106393f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:($
"
_user_specified_name
46106771:($
"
_user_specified_name
46106773:($
"
_user_specified_name
46106775:($
"
_user_specified_name
46106777:($
"
_user_specified_name
46106779:($
"
_user_specified_name
46106781:($
"
_user_specified_name
46106783:($
"
_user_specified_name
46106785:(	$
"
_user_specified_name
46106787:(
$
"
_user_specified_name
46106789:($
"
_user_specified_name
46106791:($
"
_user_specified_name
46106793:($
"
_user_specified_name
46106795:($
"
_user_specified_name
46106797:($
"
_user_specified_name
46106799:($
"
_user_specified_name
46106801:($
"
_user_specified_name
46106803:($
"
_user_specified_name
46106805
�
�
,__inference_dense_546_layer_call_fn_46108417

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_546_layer_call_and_return_conditional_losses_46104372s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
46108411:($
"
_user_specified_name
46108413
�J
�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46108858
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46108774*
condR
while_cond_46108773*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
f
H__inference_dropout_90_layer_call_and_return_conditional_losses_46106759

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
$backward_lstm_90_while_cond_46107934>
:backward_lstm_90_while_backward_lstm_90_while_loop_counterD
@backward_lstm_90_while_backward_lstm_90_while_maximum_iterations&
"backward_lstm_90_while_placeholder(
$backward_lstm_90_while_placeholder_1(
$backward_lstm_90_while_placeholder_2(
$backward_lstm_90_while_placeholder_3@
<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107934___redundant_placeholder0X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107934___redundant_placeholder1X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107934___redundant_placeholder2X
Tbackward_lstm_90_while_backward_lstm_90_while_cond_46107934___redundant_placeholder3#
backward_lstm_90_while_identity
�
backward_lstm_90/while/LessLess"backward_lstm_90_while_placeholder<backward_lstm_90_while_less_backward_lstm_90_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_90/while/IdentityIdentitybackward_lstm_90/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_90_while_identity(backward_lstm_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_90/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_90/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_90/strided_slice_1:

_output_shapes
:
�
�
,__inference_lstm_cell_layer_call_fn_46109785

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46104648o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states_0:QM
'
_output_shapes
:���������
"
_user_specified_name
states_1:($
"
_user_specified_name
46109773:($
"
_user_specified_name
46109775:($
"
_user_specified_name
46109777
�
�
G__inference_dense_541_layer_call_and_return_conditional_losses_46108408

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104301
dense_541_input$
dense_541_46104295: 
dense_541_46104297:
identity��!dense_541/StatefulPartitionedCall�
!dense_541/StatefulPartitionedCallStatefulPartitionedCalldense_541_inputdense_541_46104295dense_541_46104297*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_541_layer_call_and_return_conditional_losses_46104289}
IdentityIdentity*dense_541/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������F
NoOpNoOp"^dense_541/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2F
!dense_541/StatefulPartitionedCall!dense_541/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_541_input:($
"
_user_specified_name
46104295:($
"
_user_specified_name
46104297
�	
�
3__inference_backward_lstm_90_layer_call_fn_46109188

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46105889|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
46109180:($
"
_user_specified_name
46109182:($
"
_user_specified_name
46109184
�	
�
while_cond_46108916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_46108916___redundant_placeholder06
2while_while_cond_46108916___redundant_placeholder16
2while_while_cond_46108916___redundant_placeholder26
2while_while_cond_46108916___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104467
dense_551_input$
dense_551_46104461: 
dense_551_46104463:
identity��!dense_551/StatefulPartitionedCall�
!dense_551/StatefulPartitionedCallStatefulPartitionedCalldense_551_inputdense_551_46104461dense_551_46104463*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_551_layer_call_and_return_conditional_losses_46104455}
IdentityIdentity*dense_551/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������F
NoOpNoOp"^dense_551/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2F
!dense_551/StatefulPartitionedCall!dense_551/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_namedense_551_input:($
"
_user_specified_name
46104461:($
"
_user_specified_name
46104463
�8
�
while_body_46108631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ��&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�K
�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109333
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_46109249*
condR
while_cond_46109248*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
6
input_1+
serving_default_input_1:04
	dense_557'
StatefulPartitionedCall:0tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias"
_tf_keras_layer
(
"	keras_api"
_tf_keras_layer
(
#	keras_api"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
(
0	keras_api"
_tf_keras_layer
�
1layer_with_weights-0
1layer-0
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
8layer_with_weights-0
8layer-0
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
?layer_with_weights-0
?layer-0
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
Flayer_with_weights-0
Flayer-0
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_sequential
(
M	keras_api"
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
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zforward_layer
[backward_layer"
_tf_keras_layer
�
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b_random_generator"
_tf_keras_layer
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias"
_tf_keras_layer
�
 0
!1
q2
r3
s4
t5
u6
v7
w8
x9
y10
z11
{12
|13
}14
~15
o16
p17"
trackable_list_wrapper
�
 0
!1
q2
r3
s4
t5
u6
v7
w8
x9
y10
z11
{12
|13
}14
~15
o16
p17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
2__inference_topk_bilstm_moe_layer_call_fn_46106809
2__inference_topk_bilstm_moe_layer_call_fn_46106850�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106393
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106768�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
#__inference__wrapped_model_46104254input_1"�
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
-
�serving_default"
signature_map
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_540_layer_call_fn_46107004�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_540_layer_call_and_return_conditional_losses_46107019�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
": 2dense_540/kernel
:2dense_540/bias
"
_generic_user_object
"
_generic_user_object
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
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_lambda_90_layer_call_fn_46107025
,__inference_lambda_90_layer_call_fn_46107031�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_lambda_90_layer_call_and_return_conditional_losses_46107037
G__inference_lambda_90_layer_call_and_return_conditional_losses_46107043�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
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
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_lambda_91_layer_call_fn_46107049
,__inference_lambda_91_layer_call_fn_46107055�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_lambda_91_layer_call_and_return_conditional_losses_46107061
G__inference_lambda_91_layer_call_and_return_conditional_losses_46107067�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias"
_tf_keras_layer
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
1__inference_sequential_360_layer_call_fn_46104319
1__inference_sequential_360_layer_call_fn_46104328�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104301
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104310�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias"
_tf_keras_layer
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
1__inference_sequential_365_layer_call_fn_46104402
1__inference_sequential_365_layer_call_fn_46104411�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104384
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104393�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ukernel
vbias"
_tf_keras_layer
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
1__inference_sequential_370_layer_call_fn_46104485
1__inference_sequential_370_layer_call_fn_46104494�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104467
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104476�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

wkernel
xbias"
_tf_keras_layer
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
1__inference_sequential_375_layer_call_fn_46104568
1__inference_sequential_375_layer_call_fn_46104577�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104550
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104559�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
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
�
�trace_0
�trace_12�
,__inference_lambda_92_layer_call_fn_46107073
,__inference_lambda_92_layer_call_fn_46107079�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_lambda_92_layer_call_and_return_conditional_losses_46107085
G__inference_lambda_92_layer_call_and_return_conditional_losses_46107091�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
J
y0
z1
{2
|3
}4
~5"
trackable_list_wrapper
J
y0
z1
{2
|3
}4
~5"
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
�
�trace_0
�trace_1
�trace_2
�trace_32�
3__inference_bidirectional_90_layer_call_fn_46107108
3__inference_bidirectional_90_layer_call_fn_46107125
3__inference_bidirectional_90_layer_call_fn_46107142
3__inference_bidirectional_90_layer_call_fn_46107159�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46107447
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46107735
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46108023
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46108311�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
	�cell
�
state_spec"
_tf_keras_rnn_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
	�cell
�
state_spec"
_tf_keras_rnn_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
-__inference_dropout_90_layer_call_fn_46108316
-__inference_dropout_90_layer_call_fn_46108321�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
H__inference_dropout_90_layer_call_and_return_conditional_losses_46108333
H__inference_dropout_90_layer_call_and_return_conditional_losses_46108338�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_flatten_90_layer_call_fn_46108343�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
H__inference_flatten_90_layer_call_and_return_conditional_losses_46108349�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_557_layer_call_fn_46108358�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_557_layer_call_and_return_conditional_losses_46108368�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
#:!	�2dense_557/kernel
:2dense_557/bias
": 2dense_541/kernel
:2dense_541/bias
": 2dense_546/kernel
:2dense_546/bias
": 2dense_551/kernel
:2dense_551/bias
": 2dense_556/kernel
:2dense_556/bias
C:A 21bidirectional_90/forward_lstm_90/lstm_cell/kernel
M:K 2;bidirectional_90/forward_lstm_90/lstm_cell/recurrent_kernel
=:; 2/bidirectional_90/forward_lstm_90/lstm_cell/bias
D:B 22bidirectional_90/backward_lstm_90/lstm_cell/kernel
N:L 2<bidirectional_90/backward_lstm_90/lstm_cell/recurrent_kernel
>:< 20bidirectional_90/backward_lstm_90/lstm_cell/bias
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_topk_bilstm_moe_layer_call_fn_46106809input_1"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
2__inference_topk_bilstm_moe_layer_call_fn_46106850input_1"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106393input_1"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106768input_1"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_46106995input_1"�
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
�B�
,__inference_dense_540_layer_call_fn_46107004inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_dense_540_layer_call_and_return_conditional_losses_46107019inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_lambda_90_layer_call_fn_46107025inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_lambda_90_layer_call_fn_46107031inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lambda_90_layer_call_and_return_conditional_losses_46107037inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lambda_90_layer_call_and_return_conditional_losses_46107043inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_lambda_91_layer_call_fn_46107049inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_lambda_91_layer_call_fn_46107055inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lambda_91_layer_call_and_return_conditional_losses_46107061inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lambda_91_layer_call_and_return_conditional_losses_46107067inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_541_layer_call_fn_46108377�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_541_layer_call_and_return_conditional_losses_46108408�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
'
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_sequential_360_layer_call_fn_46104319dense_541_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_sequential_360_layer_call_fn_46104328dense_541_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104301dense_541_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104310dense_541_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_546_layer_call_fn_46108417�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_546_layer_call_and_return_conditional_losses_46108448�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
'
80"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_sequential_365_layer_call_fn_46104402dense_546_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_sequential_365_layer_call_fn_46104411dense_546_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104384dense_546_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104393dense_546_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_551_layer_call_fn_46108457�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_551_layer_call_and_return_conditional_losses_46108488�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
'
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_sequential_370_layer_call_fn_46104485dense_551_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_sequential_370_layer_call_fn_46104494dense_551_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104467dense_551_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104476dense_551_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_556_layer_call_fn_46108497�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_556_layer_call_and_return_conditional_losses_46108528�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_sequential_375_layer_call_fn_46104568dense_556_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_sequential_375_layer_call_fn_46104577dense_556_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104550dense_556_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104559dense_556_input"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_lambda_92_layer_call_fn_46107073inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_lambda_92_layer_call_fn_46107079inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lambda_92_layer_call_and_return_conditional_losses_46107085inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lambda_92_layer_call_and_return_conditional_losses_46107091inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_bidirectional_90_layer_call_fn_46107108inputs_0"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_bidirectional_90_layer_call_fn_46107125inputs_0"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_bidirectional_90_layer_call_fn_46107142inputs"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_bidirectional_90_layer_call_fn_46107159inputs"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46107447inputs_0"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46107735inputs_0"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46108023inputs"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46108311inputs"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
y0
z1
{2"
trackable_list_wrapper
5
y0
z1
{2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
2__inference_forward_lstm_90_layer_call_fn_46108539
2__inference_forward_lstm_90_layer_call_fn_46108550
2__inference_forward_lstm_90_layer_call_fn_46108561
2__inference_forward_lstm_90_layer_call_fn_46108572�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46108715
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46108858
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46109001
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46109144�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
"
_generic_user_object
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�
state_size

ykernel
zrecurrent_kernel
{bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
|0
}1
~2"
trackable_list_wrapper
5
|0
}1
~2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
3__inference_backward_lstm_90_layer_call_fn_46109155
3__inference_backward_lstm_90_layer_call_fn_46109166
3__inference_backward_lstm_90_layer_call_fn_46109177
3__inference_backward_lstm_90_layer_call_fn_46109188�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109333
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109478
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109623
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109768�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
"
_generic_user_object
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�
state_size

|kernel
}recurrent_kernel
~bias"
_tf_keras_layer
 "
trackable_list_wrapper
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
�B�
-__inference_dropout_90_layer_call_fn_46108316inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_dropout_90_layer_call_fn_46108321inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dropout_90_layer_call_and_return_conditional_losses_46108333inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dropout_90_layer_call_and_return_conditional_losses_46108338inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_flatten_90_layer_call_fn_46108343inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
H__inference_flatten_90_layer_call_and_return_conditional_losses_46108349inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dense_557_layer_call_fn_46108358inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_dense_557_layer_call_and_return_conditional_losses_46108368inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dense_541_layer_call_fn_46108377inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_dense_541_layer_call_and_return_conditional_losses_46108408inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dense_546_layer_call_fn_46108417inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_dense_546_layer_call_and_return_conditional_losses_46108448inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dense_551_layer_call_fn_46108457inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_dense_551_layer_call_and_return_conditional_losses_46108488inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dense_556_layer_call_fn_46108497inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_dense_556_layer_call_and_return_conditional_losses_46108528inputs"�
���
FullArgSpec
args�

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
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_forward_lstm_90_layer_call_fn_46108539inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
2__inference_forward_lstm_90_layer_call_fn_46108550inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
2__inference_forward_lstm_90_layer_call_fn_46108561inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
2__inference_forward_lstm_90_layer_call_fn_46108572inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46108715inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46108858inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46109001inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46109144inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
y0
z1
{2"
trackable_list_wrapper
5
y0
z1
{2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_lstm_cell_layer_call_fn_46109785
,__inference_lstm_cell_layer_call_fn_46109802�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109834
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109866�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_backward_lstm_90_layer_call_fn_46109155inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_backward_lstm_90_layer_call_fn_46109166inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_backward_lstm_90_layer_call_fn_46109177inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_backward_lstm_90_layer_call_fn_46109188inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109333inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109478inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109623inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109768inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
|0
}1
~2"
trackable_list_wrapper
5
|0
}1
~2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_lstm_cell_layer_call_fn_46109883
,__inference_lstm_cell_layer_call_fn_46109900�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109932
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109964�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
�B�
,__inference_lstm_cell_layer_call_fn_46109785inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_lstm_cell_layer_call_fn_46109802inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109834inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109866inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_lstm_cell_layer_call_fn_46109883inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_lstm_cell_layer_call_fn_46109900inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109932inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109964inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
#__inference__wrapped_model_46104254o !qrstuvwxyz{|}~op+�(
!�
�
input_1
� ",�)
'
	dense_557�
	dense_557�
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109333�|}~O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� "9�6
/�,
tensor_0������������������
� �
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109478�|}~O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� "9�6
/�,
tensor_0������������������
� �
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109623�|}~Q�N
G�D
6�3
inputs'���������������������������

 
p

 
� "9�6
/�,
tensor_0������������������
� �
N__inference_backward_lstm_90_layer_call_and_return_conditional_losses_46109768�|}~Q�N
G�D
6�3
inputs'���������������������������

 
p 

 
� "9�6
/�,
tensor_0������������������
� �
3__inference_backward_lstm_90_layer_call_fn_46109155�|}~O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� ".�+
unknown�������������������
3__inference_backward_lstm_90_layer_call_fn_46109166�|}~O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� ".�+
unknown�������������������
3__inference_backward_lstm_90_layer_call_fn_46109177�|}~Q�N
G�D
6�3
inputs'���������������������������

 
p

 
� ".�+
unknown�������������������
3__inference_backward_lstm_90_layer_call_fn_46109188�|}~Q�N
G�D
6�3
inputs'���������������������������

 
p 

 
� ".�+
unknown�������������������
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46107447�yz{|}~\�Y
R�O
=�:
8�5
inputs_0'���������������������������
p

 

 

 
� "9�6
/�,
tensor_0������������������
� �
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46107735�yz{|}~\�Y
R�O
=�:
8�5
inputs_0'���������������������������
p 

 

 

 
� "9�6
/�,
tensor_0������������������
� �
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46108023myz{|}~:�7
0�-
�
inputs
p

 

 

 
� "'�$
�
tensor_0
� �
N__inference_bidirectional_90_layer_call_and_return_conditional_losses_46108311myz{|}~:�7
0�-
�
inputs
p 

 

 

 
� "'�$
�
tensor_0
� �
3__inference_bidirectional_90_layer_call_fn_46107108�yz{|}~\�Y
R�O
=�:
8�5
inputs_0'���������������������������
p

 

 

 
� ".�+
unknown�������������������
3__inference_bidirectional_90_layer_call_fn_46107125�yz{|}~\�Y
R�O
=�:
8�5
inputs_0'���������������������������
p 

 

 

 
� ".�+
unknown�������������������
3__inference_bidirectional_90_layer_call_fn_46107142byz{|}~:�7
0�-
�
inputs
p

 

 

 
� "�
unknown�
3__inference_bidirectional_90_layer_call_fn_46107159byz{|}~:�7
0�-
�
inputs
p 

 

 

 
� "�
unknown�
G__inference_dense_540_layer_call_and_return_conditional_losses_46107019Y !*�'
 �
�
inputs
� "'�$
�
tensor_0
� ~
,__inference_dense_540_layer_call_fn_46107004N !*�'
 �
�
inputs
� "�
unknown�
G__inference_dense_541_layer_call_and_return_conditional_losses_46108408kqr3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_dense_541_layer_call_fn_46108377`qr3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_dense_546_layer_call_and_return_conditional_losses_46108448kst3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_dense_546_layer_call_fn_46108417`st3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_dense_551_layer_call_and_return_conditional_losses_46108488kuv3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_dense_551_layer_call_fn_46108457`uv3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_dense_556_layer_call_and_return_conditional_losses_46108528kwx3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_dense_556_layer_call_fn_46108497`wx3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_dense_557_layer_call_and_return_conditional_losses_46108368Rop'�$
�
�
inputs	�
� "#� 
�
tensor_0
� w
,__inference_dense_557_layer_call_fn_46108358Gop'�$
�
�
inputs	�
� "�
unknown�
H__inference_dropout_90_layer_call_and_return_conditional_losses_46108333Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
H__inference_dropout_90_layer_call_and_return_conditional_losses_46108338Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� 
-__inference_dropout_90_layer_call_fn_46108316N.�+
$�!
�
inputs
p
� "�
unknown
-__inference_dropout_90_layer_call_fn_46108321N.�+
$�!
�
inputs
p 
� "�
unknown�
H__inference_flatten_90_layer_call_and_return_conditional_losses_46108349R*�'
 �
�
inputs
� "$�!
�
tensor_0	�
� x
-__inference_flatten_90_layer_call_fn_46108343G*�'
 �
�
inputs
� "�
unknown	��
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46108715�yz{O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� "9�6
/�,
tensor_0������������������
� �
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46108858�yz{O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� "9�6
/�,
tensor_0������������������
� �
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46109001�yz{Q�N
G�D
6�3
inputs'���������������������������

 
p

 
� "9�6
/�,
tensor_0������������������
� �
M__inference_forward_lstm_90_layer_call_and_return_conditional_losses_46109144�yz{Q�N
G�D
6�3
inputs'���������������������������

 
p 

 
� "9�6
/�,
tensor_0������������������
� �
2__inference_forward_lstm_90_layer_call_fn_46108539�yz{O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� ".�+
unknown�������������������
2__inference_forward_lstm_90_layer_call_fn_46108550�yz{O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� ".�+
unknown�������������������
2__inference_forward_lstm_90_layer_call_fn_46108561�yz{Q�N
G�D
6�3
inputs'���������������������������

 
p

 
� ".�+
unknown�������������������
2__inference_forward_lstm_90_layer_call_fn_46108572�yz{Q�N
G�D
6�3
inputs'���������������������������

 
p 

 
� ".�+
unknown�������������������
G__inference_lambda_90_layer_call_and_return_conditional_losses_46107037�\�Y
R�O
E�B
�
inputs_0
!�
inputs_1

 
p
� "'�$
�
tensor_0
� �
G__inference_lambda_90_layer_call_and_return_conditional_losses_46107043�\�Y
R�O
E�B
�
inputs_0
!�
inputs_1

 
p 
� "'�$
�
tensor_0
� �
,__inference_lambda_90_layer_call_fn_46107025|\�Y
R�O
E�B
�
inputs_0
!�
inputs_1

 
p
� "�
unknown�
,__inference_lambda_90_layer_call_fn_46107031|\�Y
R�O
E�B
�
inputs_0
!�
inputs_1

 
p 
� "�
unknown�
G__inference_lambda_91_layer_call_and_return_conditional_losses_46107061�X�U
N�K
A�>
�
inputs_0
�
inputs_1

 
p
� "+�(
!�
tensor_0
� �
G__inference_lambda_91_layer_call_and_return_conditional_losses_46107067�X�U
N�K
A�>
�
inputs_0
�
inputs_1

 
p 
� "+�(
!�
tensor_0
� �
,__inference_lambda_91_layer_call_fn_46107049|X�U
N�K
A�>
�
inputs_0
�
inputs_1

 
p
� " �
unknown�
,__inference_lambda_91_layer_call_fn_46107055|X�U
N�K
A�>
�
inputs_0
�
inputs_1

 
p 
� " �
unknown�
G__inference_lambda_92_layer_call_and_return_conditional_losses_46107085�\�Y
R�O
E�B
!�
inputs_0
�
inputs_1

 
p
� "'�$
�
tensor_0
� �
G__inference_lambda_92_layer_call_and_return_conditional_losses_46107091�\�Y
R�O
E�B
!�
inputs_0
�
inputs_1

 
p 
� "'�$
�
tensor_0
� �
,__inference_lambda_92_layer_call_fn_46107073|\�Y
R�O
E�B
!�
inputs_0
�
inputs_1

 
p
� "�
unknown�
,__inference_lambda_92_layer_call_fn_46107079|\�Y
R�O
E�B
!�
inputs_0
�
inputs_1

 
p 
� "�
unknown�
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109834�yz{��}
v�s
 �
inputs���������
K�H
"�
states_0���������
"�
states_1���������
p
� "���
~�{
$�!

tensor_0_0���������
S�P
&�#
tensor_0_1_0���������
&�#
tensor_0_1_1���������
� �
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109866�yz{��}
v�s
 �
inputs���������
K�H
"�
states_0���������
"�
states_1���������
p 
� "���
~�{
$�!

tensor_0_0���������
S�P
&�#
tensor_0_1_0���������
&�#
tensor_0_1_1���������
� �
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109932�|}~��}
v�s
 �
inputs���������
K�H
"�
states_0���������
"�
states_1���������
p
� "���
~�{
$�!

tensor_0_0���������
S�P
&�#
tensor_0_1_0���������
&�#
tensor_0_1_1���������
� �
G__inference_lstm_cell_layer_call_and_return_conditional_losses_46109964�|}~��}
v�s
 �
inputs���������
K�H
"�
states_0���������
"�
states_1���������
p 
� "���
~�{
$�!

tensor_0_0���������
S�P
&�#
tensor_0_1_0���������
&�#
tensor_0_1_1���������
� �
,__inference_lstm_cell_layer_call_fn_46109785�yz{��}
v�s
 �
inputs���������
K�H
"�
states_0���������
"�
states_1���������
p
� "x�u
"�
tensor_0���������
O�L
$�!

tensor_1_0���������
$�!

tensor_1_1����������
,__inference_lstm_cell_layer_call_fn_46109802�yz{��}
v�s
 �
inputs���������
K�H
"�
states_0���������
"�
states_1���������
p 
� "x�u
"�
tensor_0���������
O�L
$�!

tensor_1_0���������
$�!

tensor_1_1����������
,__inference_lstm_cell_layer_call_fn_46109883�|}~��}
v�s
 �
inputs���������
K�H
"�
states_0���������
"�
states_1���������
p
� "x�u
"�
tensor_0���������
O�L
$�!

tensor_1_0���������
$�!

tensor_1_1����������
,__inference_lstm_cell_layer_call_fn_46109900�|}~��}
v�s
 �
inputs���������
K�H
"�
states_0���������
"�
states_1���������
p 
� "x�u
"�
tensor_0���������
O�L
$�!

tensor_1_0���������
$�!

tensor_1_1����������
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104301|qrD�A
:�7
-�*
dense_541_input���������
p

 
� "0�-
&�#
tensor_0���������
� �
L__inference_sequential_360_layer_call_and_return_conditional_losses_46104310|qrD�A
:�7
-�*
dense_541_input���������
p 

 
� "0�-
&�#
tensor_0���������
� �
1__inference_sequential_360_layer_call_fn_46104319qqrD�A
:�7
-�*
dense_541_input���������
p

 
� "%�"
unknown����������
1__inference_sequential_360_layer_call_fn_46104328qqrD�A
:�7
-�*
dense_541_input���������
p 

 
� "%�"
unknown����������
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104384|stD�A
:�7
-�*
dense_546_input���������
p

 
� "0�-
&�#
tensor_0���������
� �
L__inference_sequential_365_layer_call_and_return_conditional_losses_46104393|stD�A
:�7
-�*
dense_546_input���������
p 

 
� "0�-
&�#
tensor_0���������
� �
1__inference_sequential_365_layer_call_fn_46104402qstD�A
:�7
-�*
dense_546_input���������
p

 
� "%�"
unknown����������
1__inference_sequential_365_layer_call_fn_46104411qstD�A
:�7
-�*
dense_546_input���������
p 

 
� "%�"
unknown����������
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104467|uvD�A
:�7
-�*
dense_551_input���������
p

 
� "0�-
&�#
tensor_0���������
� �
L__inference_sequential_370_layer_call_and_return_conditional_losses_46104476|uvD�A
:�7
-�*
dense_551_input���������
p 

 
� "0�-
&�#
tensor_0���������
� �
1__inference_sequential_370_layer_call_fn_46104485quvD�A
:�7
-�*
dense_551_input���������
p

 
� "%�"
unknown����������
1__inference_sequential_370_layer_call_fn_46104494quvD�A
:�7
-�*
dense_551_input���������
p 

 
� "%�"
unknown����������
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104550|wxD�A
:�7
-�*
dense_556_input���������
p

 
� "0�-
&�#
tensor_0���������
� �
L__inference_sequential_375_layer_call_and_return_conditional_losses_46104559|wxD�A
:�7
-�*
dense_556_input���������
p 

 
� "0�-
&�#
tensor_0���������
� �
1__inference_sequential_375_layer_call_fn_46104568qwxD�A
:�7
-�*
dense_556_input���������
p

 
� "%�"
unknown����������
1__inference_sequential_375_layer_call_fn_46104577qwxD�A
:�7
-�*
dense_556_input���������
p 

 
� "%�"
unknown����������
&__inference_signature_wrapper_46106995z !qrstuvwxyz{|}~op6�3
� 
,�)
'
input_1�
input_1",�)
'
	dense_557�
	dense_557�
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106393n !qrstuvwxyz{|}~op3�0
)�&
�
input_1
p

 
� "#� 
�
tensor_0
� �
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_46106768n !qrstuvwxyz{|}~op3�0
)�&
�
input_1
p 

 
� "#� 
�
tensor_0
� �
2__inference_topk_bilstm_moe_layer_call_fn_46106809c !qrstuvwxyz{|}~op3�0
)�&
�
input_1
p

 
� "�
unknown�
2__inference_topk_bilstm_moe_layer_call_fn_46106850c !qrstuvwxyz{|}~op3�0
)�&
�
input_1
p 

 
� "�
unknown