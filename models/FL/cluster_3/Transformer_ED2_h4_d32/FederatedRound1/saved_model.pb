��2
��
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
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
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
2
StopGradient

input"T
output"T"	
Ttype
L

StringJoin
inputs*N

output"

Nint("
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
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��)
�
-multi_head_attention_23/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_23/attention_output/bias
�
Amulti_head_attention_23/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_23/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_23/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_23/attention_output/kernel
�
Cmulti_head_attention_23/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_23/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_23/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_23/value/bias
�
6multi_head_attention_23/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_23/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_23/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_23/value/kernel
�
8multi_head_attention_23/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_23/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_23/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_23/key/bias
�
4multi_head_attention_23/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_23/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_23/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_23/key/kernel
�
6multi_head_attention_23/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_23/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_23/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_23/query/bias
�
6multi_head_attention_23/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_23/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_23/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_23/query/kernel
�
8multi_head_attention_23/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_23/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_22/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_22/attention_output/bias
�
Amulti_head_attention_22/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_22/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_22/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_22/attention_output/kernel
�
Cmulti_head_attention_22/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_22/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_22/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_22/value/bias
�
6multi_head_attention_22/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_22/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_22/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_22/value/kernel
�
8multi_head_attention_22/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_22/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_22/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_22/key/bias
�
4multi_head_attention_22/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_22/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_22/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_22/key/kernel
�
6multi_head_attention_22/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_22/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_22/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_22/query/bias
�
6multi_head_attention_22/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_22/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_22/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_22/query/kernel
�
8multi_head_attention_22/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_22/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_21/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_21/attention_output/bias
�
Amulti_head_attention_21/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_21/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_21/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_21/attention_output/kernel
�
Cmulti_head_attention_21/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_21/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_21/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_21/value/bias
�
6multi_head_attention_21/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_21/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_21/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_21/value/kernel
�
8multi_head_attention_21/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_21/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_21/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_21/key/bias
�
4multi_head_attention_21/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_21/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_21/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_21/key/kernel
�
6multi_head_attention_21/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_21/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_21/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_21/query/bias
�
6multi_head_attention_21/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_21/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_21/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_21/query/kernel
�
8multi_head_attention_21/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_21/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_20/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_20/attention_output/bias
�
Amulti_head_attention_20/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_20/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_20/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_20/attention_output/kernel
�
Cmulti_head_attention_20/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_20/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_20/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_20/value/bias
�
6multi_head_attention_20/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_20/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_20/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_20/value/kernel
�
8multi_head_attention_20/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_20/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_20/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_20/key/bias
�
4multi_head_attention_20/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_20/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_20/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_20/key/kernel
�
6multi_head_attention_20/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_20/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_20/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_20/query/bias
�
6multi_head_attention_20/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_20/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_20/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_20/query/kernel
�
8multi_head_attention_20/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_20/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_19/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_19/attention_output/bias
�
Amulti_head_attention_19/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_19/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_19/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_19/attention_output/kernel
�
Cmulti_head_attention_19/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_19/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_19/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_19/value/bias
�
6multi_head_attention_19/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_19/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_19/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_19/value/kernel
�
8multi_head_attention_19/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_19/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_19/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_19/key/bias
�
4multi_head_attention_19/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_19/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_19/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_19/key/kernel
�
6multi_head_attention_19/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_19/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_19/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_19/query/bias
�
6multi_head_attention_19/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_19/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_19/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_19/query/kernel
�
8multi_head_attention_19/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_19/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_18/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_18/attention_output/bias
�
Amulti_head_attention_18/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_18/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_18/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_18/attention_output/kernel
�
Cmulti_head_attention_18/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_18/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_18/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_18/value/bias
�
6multi_head_attention_18/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_18/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_18/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_18/value/kernel
�
8multi_head_attention_18/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_18/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_18/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_18/key/bias
�
4multi_head_attention_18/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_18/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_18/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_18/key/kernel
�
6multi_head_attention_18/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_18/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_18/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_18/query/bias
�
6multi_head_attention_18/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_18/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_18/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_18/query/kernel
�
8multi_head_attention_18/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_18/query/kernel*"
_output_shapes
:*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

: *
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
: *
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

: *
dtype0
�
layer_normalization_39/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_39/beta
�
/layer_normalization_39/beta/Read/ReadVariableOpReadVariableOplayer_normalization_39/beta*
_output_shapes
:*
dtype0
�
layer_normalization_39/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_39/gamma
�
0layer_normalization_39/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_39/gamma*
_output_shapes
:*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:*
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_38/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_38/beta
�
/layer_normalization_38/beta/Read/ReadVariableOpReadVariableOplayer_normalization_38/beta*
_output_shapes
:*
dtype0
�
layer_normalization_38/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_38/gamma
�
0layer_normalization_38/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_38/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_36/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_36/beta
�
/layer_normalization_36/beta/Read/ReadVariableOpReadVariableOplayer_normalization_36/beta*
_output_shapes
:*
dtype0
�
layer_normalization_36/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_36/gamma
�
0layer_normalization_36/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_36/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_37/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_37/beta
�
/layer_normalization_37/beta/Read/ReadVariableOpReadVariableOplayer_normalization_37/beta*
_output_shapes
:*
dtype0
�
layer_normalization_37/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_37/gamma
�
0layer_normalization_37/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_37/gamma*
_output_shapes
:*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:*
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_35/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_35/beta
�
/layer_normalization_35/beta/Read/ReadVariableOpReadVariableOplayer_normalization_35/beta*
_output_shapes
:*
dtype0
�
layer_normalization_35/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_35/gamma
�
0layer_normalization_35/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_35/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_33/beta
�
/layer_normalization_33/beta/Read/ReadVariableOpReadVariableOplayer_normalization_33/beta*
_output_shapes
:*
dtype0
�
layer_normalization_33/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_33/gamma
�
0layer_normalization_33/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_33/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_34/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_34/beta
�
/layer_normalization_34/beta/Read/ReadVariableOpReadVariableOplayer_normalization_34/beta*
_output_shapes
:*
dtype0
�
layer_normalization_34/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_34/gamma
�
0layer_normalization_34/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_34/gamma*
_output_shapes
:*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_32/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_32/beta
�
/layer_normalization_32/beta/Read/ReadVariableOpReadVariableOplayer_normalization_32/beta*
_output_shapes
:*
dtype0
�
layer_normalization_32/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_32/gamma
�
0layer_normalization_32/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_32/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_31/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_31/beta
�
/layer_normalization_31/beta/Read/ReadVariableOpReadVariableOplayer_normalization_31/beta*
_output_shapes
:*
dtype0
�
layer_normalization_31/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_31/gamma
�
0layer_normalization_31/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_31/gamma*
_output_shapes
:*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:*
dtype0
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_30/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_30/beta
�
/layer_normalization_30/beta/Read/ReadVariableOpReadVariableOplayer_normalization_30/beta*
_output_shapes
:*
dtype0
�
layer_normalization_30/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_30/gamma
�
0layer_normalization_30/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_30/gamma*
_output_shapes
:*
dtype0
p
serving_default_input_4Placeholder*"
_output_shapes
:*
dtype0*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4$multi_head_attention_18/query/kernel"multi_head_attention_18/query/bias"multi_head_attention_18/key/kernel multi_head_attention_18/key/bias$multi_head_attention_18/value/kernel"multi_head_attention_18/value/bias/multi_head_attention_18/attention_output/kernel-multi_head_attention_18/attention_output/biaslayer_normalization_30/gammalayer_normalization_30/betadense_18/kerneldense_18/biaslayer_normalization_31/gammalayer_normalization_31/beta$multi_head_attention_19/query/kernel"multi_head_attention_19/query/bias"multi_head_attention_19/key/kernel multi_head_attention_19/key/bias$multi_head_attention_19/value/kernel"multi_head_attention_19/value/bias/multi_head_attention_19/attention_output/kernel-multi_head_attention_19/attention_output/biaslayer_normalization_32/gammalayer_normalization_32/betadense_19/kerneldense_19/bias$multi_head_attention_20/query/kernel"multi_head_attention_20/query/bias"multi_head_attention_20/key/kernel multi_head_attention_20/key/bias$multi_head_attention_20/value/kernel"multi_head_attention_20/value/bias/multi_head_attention_20/attention_output/kernel-multi_head_attention_20/attention_output/biaslayer_normalization_34/gammalayer_normalization_34/betalayer_normalization_33/gammalayer_normalization_33/beta$multi_head_attention_21/query/kernel"multi_head_attention_21/query/bias"multi_head_attention_21/key/kernel multi_head_attention_21/key/bias$multi_head_attention_21/value/kernel"multi_head_attention_21/value/bias/multi_head_attention_21/attention_output/kernel-multi_head_attention_21/attention_output/biaslayer_normalization_35/gammalayer_normalization_35/betadense_20/kerneldense_20/bias$multi_head_attention_22/query/kernel"multi_head_attention_22/query/bias"multi_head_attention_22/key/kernel multi_head_attention_22/key/bias$multi_head_attention_22/value/kernel"multi_head_attention_22/value/bias/multi_head_attention_22/attention_output/kernel-multi_head_attention_22/attention_output/biaslayer_normalization_37/gammalayer_normalization_37/betalayer_normalization_36/gammalayer_normalization_36/beta$multi_head_attention_23/query/kernel"multi_head_attention_23/query/bias"multi_head_attention_23/key/kernel multi_head_attention_23/key/bias$multi_head_attention_23/value/kernel"multi_head_attention_23/value/bias/multi_head_attention_23/attention_output/kernel-multi_head_attention_23/attention_output/biaslayer_normalization_38/gammalayer_normalization_38/betadense_21/kerneldense_21/biaslayer_normalization_39/gammalayer_normalization_39/betadense_22/kerneldense_22/biasdense_23/kerneldense_23/bias*\
TinU
S2Q*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*r
_read_only_resource_inputsT
RP	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOP*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_2946280

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer-21
layer_with_weights-11
layer-22
layer_with_weights-12
layer-23
layer_with_weights-13
layer-24
layer-25
layer-26
layer-27
layer_with_weights-14
layer-28
layer_with_weights-15
layer-29
layer_with_weights-16
layer-30
 layer-31
!layer-32
"layer_with_weights-17
"layer-33
#layer_with_weights-18
#layer-34
$layer-35
%layer-36
&layer_with_weights-19
&layer-37
'layer-38
(layer_with_weights-20
(layer-39
)layer_with_weights-21
)layer-40
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_default_save_signature
1
signatures
#2_self_saveable_object_factories*
'
#3_self_saveable_object_factories* 
6
4	keras_api
#5_self_saveable_object_factories* 
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<_query_dense
=
_key_dense
>_value_dense
?_softmax
@_dropout_layer
A_output_dense
#B_self_saveable_object_factories*
6
C	keras_api
#D_self_saveable_object_factories* 
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
#N_self_saveable_object_factories*
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
#W_self_saveable_object_factories*
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator
#__self_saveable_object_factories* 
6
`	keras_api
#a_self_saveable_object_factories* 
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
haxis
	igamma
jbeta
#k_self_saveable_object_factories*
�
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
r_query_dense
s
_key_dense
t_value_dense
u_softmax
v_dropout_layer
w_output_dense
#x_self_saveable_object_factories*
6
y	keras_api
#z_self_saveable_object_factories* 
�
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
8
�	keras_api
$�_self_saveable_object_factories* 
8
�	keras_api
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
8
�	keras_api
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
8
�	keras_api
$�_self_saveable_object_factories* 
8
�	keras_api
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
8
�	keras_api
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
8
�	keras_api
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�0
�1
�2
�3
�4
�5
�6
�7
L8
M9
U10
V11
i12
j13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78
�79*
�
�0
�1
�2
�3
�4
�5
�6
�7
L8
M9
U10
V11
i12
j13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78
�79*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
0_default_save_signature
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�serving_default* 
* 
* 
* 
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
* 
* 
* 

L0
M1*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_30/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_30/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

U0
V1*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_18/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 
* 
* 

i0
j1*

i0
j1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_31/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_31/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_32/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_32/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_19/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_34/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_34/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_33/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_33/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_35/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_35/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_20/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_20/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_37/gamma6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_37/beta5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_36/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_36/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_38/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_38/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_21/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_21/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_39/gamma6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_39/beta5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_22/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_22/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_23/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_23/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
d^
VARIABLE_VALUE$multi_head_attention_18/query/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"multi_head_attention_18/query/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"multi_head_attention_18/key/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE multi_head_attention_18/key/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$multi_head_attention_18/value/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"multi_head_attention_18/value/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/multi_head_attention_18/attention_output/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-multi_head_attention_18/attention_output/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_19/query/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_19/query/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_19/key/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_19/key/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_19/value/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_19/value/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_19/attention_output/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_19/attention_output/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_20/query/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_20/query/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_20/key/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_20/key/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_20/value/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_20/value/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_20/attention_output/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_20/attention_output/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_21/query/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_21/query/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_21/key/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_21/key/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_21/value/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_21/value/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_21/attention_output/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_21/attention_output/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_22/query/kernel'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_22/query/bias'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_22/key/kernel'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_22/key/bias'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_22/value/kernel'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_22/value/bias'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_22/attention_output/kernel'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_22/attention_output/bias'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_23/query/kernel'variables/62/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_23/query/bias'variables/63/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_23/key/kernel'variables/64/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_23/key/bias'variables/65/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_23/value/kernel'variables/66/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_23/value/bias'variables/67/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_23/attention_output/kernel'variables/68/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_23/attention_output/bias'variables/69/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
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
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40*
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
<0
=1
>2
?3
@4
A5*
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
.
r0
s1
t2
u3
v4
w5*
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
4
�0
�1
�2
�3
�4
�5*
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
4
�0
�1
�2
�3
�4
�5*
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
4
�0
�1
�2
�3
�4
�5*
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
4
�0
�1
�2
�3
�4
�5*
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer_normalization_30/gammalayer_normalization_30/betadense_18/kerneldense_18/biaslayer_normalization_31/gammalayer_normalization_31/betalayer_normalization_32/gammalayer_normalization_32/betadense_19/kerneldense_19/biaslayer_normalization_34/gammalayer_normalization_34/betalayer_normalization_33/gammalayer_normalization_33/betalayer_normalization_35/gammalayer_normalization_35/betadense_20/kerneldense_20/biaslayer_normalization_37/gammalayer_normalization_37/betalayer_normalization_36/gammalayer_normalization_36/betalayer_normalization_38/gammalayer_normalization_38/betadense_21/kerneldense_21/biaslayer_normalization_39/gammalayer_normalization_39/betadense_22/kerneldense_22/biasdense_23/kerneldense_23/bias$multi_head_attention_18/query/kernel"multi_head_attention_18/query/bias"multi_head_attention_18/key/kernel multi_head_attention_18/key/bias$multi_head_attention_18/value/kernel"multi_head_attention_18/value/bias/multi_head_attention_18/attention_output/kernel-multi_head_attention_18/attention_output/bias$multi_head_attention_19/query/kernel"multi_head_attention_19/query/bias"multi_head_attention_19/key/kernel multi_head_attention_19/key/bias$multi_head_attention_19/value/kernel"multi_head_attention_19/value/bias/multi_head_attention_19/attention_output/kernel-multi_head_attention_19/attention_output/bias$multi_head_attention_20/query/kernel"multi_head_attention_20/query/bias"multi_head_attention_20/key/kernel multi_head_attention_20/key/bias$multi_head_attention_20/value/kernel"multi_head_attention_20/value/bias/multi_head_attention_20/attention_output/kernel-multi_head_attention_20/attention_output/bias$multi_head_attention_21/query/kernel"multi_head_attention_21/query/bias"multi_head_attention_21/key/kernel multi_head_attention_21/key/bias$multi_head_attention_21/value/kernel"multi_head_attention_21/value/bias/multi_head_attention_21/attention_output/kernel-multi_head_attention_21/attention_output/bias$multi_head_attention_22/query/kernel"multi_head_attention_22/query/bias"multi_head_attention_22/key/kernel multi_head_attention_22/key/bias$multi_head_attention_22/value/kernel"multi_head_attention_22/value/bias/multi_head_attention_22/attention_output/kernel-multi_head_attention_22/attention_output/bias$multi_head_attention_23/query/kernel"multi_head_attention_23/query/bias"multi_head_attention_23/key/kernel multi_head_attention_23/key/bias$multi_head_attention_23/value/kernel"multi_head_attention_23/value/bias/multi_head_attention_23/attention_output/kernel-multi_head_attention_23/attention_output/biasConst*]
TinV
T2R*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_2948083
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization_30/gammalayer_normalization_30/betadense_18/kerneldense_18/biaslayer_normalization_31/gammalayer_normalization_31/betalayer_normalization_32/gammalayer_normalization_32/betadense_19/kerneldense_19/biaslayer_normalization_34/gammalayer_normalization_34/betalayer_normalization_33/gammalayer_normalization_33/betalayer_normalization_35/gammalayer_normalization_35/betadense_20/kerneldense_20/biaslayer_normalization_37/gammalayer_normalization_37/betalayer_normalization_36/gammalayer_normalization_36/betalayer_normalization_38/gammalayer_normalization_38/betadense_21/kerneldense_21/biaslayer_normalization_39/gammalayer_normalization_39/betadense_22/kerneldense_22/biasdense_23/kerneldense_23/bias$multi_head_attention_18/query/kernel"multi_head_attention_18/query/bias"multi_head_attention_18/key/kernel multi_head_attention_18/key/bias$multi_head_attention_18/value/kernel"multi_head_attention_18/value/bias/multi_head_attention_18/attention_output/kernel-multi_head_attention_18/attention_output/bias$multi_head_attention_19/query/kernel"multi_head_attention_19/query/bias"multi_head_attention_19/key/kernel multi_head_attention_19/key/bias$multi_head_attention_19/value/kernel"multi_head_attention_19/value/bias/multi_head_attention_19/attention_output/kernel-multi_head_attention_19/attention_output/bias$multi_head_attention_20/query/kernel"multi_head_attention_20/query/bias"multi_head_attention_20/key/kernel multi_head_attention_20/key/bias$multi_head_attention_20/value/kernel"multi_head_attention_20/value/bias/multi_head_attention_20/attention_output/kernel-multi_head_attention_20/attention_output/bias$multi_head_attention_21/query/kernel"multi_head_attention_21/query/bias"multi_head_attention_21/key/kernel multi_head_attention_21/key/bias$multi_head_attention_21/value/kernel"multi_head_attention_21/value/bias/multi_head_attention_21/attention_output/kernel-multi_head_attention_21/attention_output/bias$multi_head_attention_22/query/kernel"multi_head_attention_22/query/bias"multi_head_attention_22/key/kernel multi_head_attention_22/key/bias$multi_head_attention_22/value/kernel"multi_head_attention_22/value/bias/multi_head_attention_22/attention_output/kernel-multi_head_attention_22/attention_output/bias$multi_head_attention_23/query/kernel"multi_head_attention_23/query/bias"multi_head_attention_23/key/kernel multi_head_attention_23/key/bias$multi_head_attention_23/value/kernel"multi_head_attention_23/value/bias/multi_head_attention_23/attention_output/kernel-multi_head_attention_23/attention_output/bias*\
TinU
S2Q*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_2948332��#
�	
�
E__inference_dense_23_layer_call_and_return_conditional_losses_2947581

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
_construction_contextkEagerRuntime*!
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

: 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

f
G__inference_dropout_20_layer_call_and_return_conditional_losses_2944514

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_2944652

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
e
G__inference_dropout_20_layer_call_and_return_conditional_losses_2947020

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
*__inference_dense_21_layer_call_fn_2947459

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
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_2944792j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947453:'#
!
_user_specified_name	2947455
�
�
8__inference_layer_normalization_34_layer_call_fn_2946826

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_2944418j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2946820:'#
!
_user_specified_name	2946822
�
�
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_2944224

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
9__inference_multi_head_attention_23_layer_call_fn_2947322	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2945257j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2947304:'#
!
_user_specified_name	2947306:'#
!
_user_specified_name	2947308:'#
!
_user_specified_name	2947310:'#
!
_user_specified_name	2947312:'#
!
_user_specified_name	2947314:'#
!
_user_specified_name	2947316:'	#
!
_user_specified_name	2947318
�
�
E__inference_dense_21_layer_call_and_return_conditional_losses_2947474

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
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
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
:\
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
:V
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

f
G__inference_dropout_18_layer_call_and_return_conditional_losses_2944200

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
H
,__inference_dropout_22_layer_call_fn_2947402

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_22_layer_call_and_return_conditional_losses_2945279[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�	
�
E__inference_dense_22_layer_call_and_return_conditional_losses_2944849

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

: S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_2946817

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_2944772

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�+
�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2947357	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_5/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_5/IdentityIdentitysoftmax_5/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_5/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
9__inference_multi_head_attention_23_layer_call_fn_2947300	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2944719j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2947282:'#
!
_user_specified_name	2947284:'#
!
_user_specified_name	2947286:'#
!
_user_specified_name	2947288:'#
!
_user_specified_name	2947290:'#
!
_user_specified_name	2947292:'#
!
_user_specified_name	2947294:'	#
!
_user_specified_name	2947296
�
�
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_2947051

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_2944943

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
9__inference_multi_head_attention_21_layer_call_fn_2946923	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2945118j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2946905:'#
!
_user_specified_name	2946907:'#
!
_user_specified_name	2946909:'#
!
_user_specified_name	2946911:'#
!
_user_specified_name	2946913:'#
!
_user_specified_name	2946915:'#
!
_user_specified_name	2946917:'	#
!
_user_specified_name	2946919
�
�
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_2946652

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
с
�:
#__inference__traced_restore_2948332
file_prefix;
-assignvariableop_layer_normalization_30_gamma:<
.assignvariableop_1_layer_normalization_30_beta:4
"assignvariableop_2_dense_18_kernel:.
 assignvariableop_3_dense_18_bias:=
/assignvariableop_4_layer_normalization_31_gamma:<
.assignvariableop_5_layer_normalization_31_beta:=
/assignvariableop_6_layer_normalization_32_gamma:<
.assignvariableop_7_layer_normalization_32_beta:4
"assignvariableop_8_dense_19_kernel:.
 assignvariableop_9_dense_19_bias:>
0assignvariableop_10_layer_normalization_34_gamma:=
/assignvariableop_11_layer_normalization_34_beta:>
0assignvariableop_12_layer_normalization_33_gamma:=
/assignvariableop_13_layer_normalization_33_beta:>
0assignvariableop_14_layer_normalization_35_gamma:=
/assignvariableop_15_layer_normalization_35_beta:5
#assignvariableop_16_dense_20_kernel:/
!assignvariableop_17_dense_20_bias:>
0assignvariableop_18_layer_normalization_37_gamma:=
/assignvariableop_19_layer_normalization_37_beta:>
0assignvariableop_20_layer_normalization_36_gamma:=
/assignvariableop_21_layer_normalization_36_beta:>
0assignvariableop_22_layer_normalization_38_gamma:=
/assignvariableop_23_layer_normalization_38_beta:5
#assignvariableop_24_dense_21_kernel:/
!assignvariableop_25_dense_21_bias:>
0assignvariableop_26_layer_normalization_39_gamma:=
/assignvariableop_27_layer_normalization_39_beta:5
#assignvariableop_28_dense_22_kernel: /
!assignvariableop_29_dense_22_bias: 5
#assignvariableop_30_dense_23_kernel: /
!assignvariableop_31_dense_23_bias:N
8assignvariableop_32_multi_head_attention_18_query_kernel:H
6assignvariableop_33_multi_head_attention_18_query_bias:L
6assignvariableop_34_multi_head_attention_18_key_kernel:F
4assignvariableop_35_multi_head_attention_18_key_bias:N
8assignvariableop_36_multi_head_attention_18_value_kernel:H
6assignvariableop_37_multi_head_attention_18_value_bias:Y
Cassignvariableop_38_multi_head_attention_18_attention_output_kernel:O
Aassignvariableop_39_multi_head_attention_18_attention_output_bias:N
8assignvariableop_40_multi_head_attention_19_query_kernel:H
6assignvariableop_41_multi_head_attention_19_query_bias:L
6assignvariableop_42_multi_head_attention_19_key_kernel:F
4assignvariableop_43_multi_head_attention_19_key_bias:N
8assignvariableop_44_multi_head_attention_19_value_kernel:H
6assignvariableop_45_multi_head_attention_19_value_bias:Y
Cassignvariableop_46_multi_head_attention_19_attention_output_kernel:O
Aassignvariableop_47_multi_head_attention_19_attention_output_bias:N
8assignvariableop_48_multi_head_attention_20_query_kernel:H
6assignvariableop_49_multi_head_attention_20_query_bias:L
6assignvariableop_50_multi_head_attention_20_key_kernel:F
4assignvariableop_51_multi_head_attention_20_key_bias:N
8assignvariableop_52_multi_head_attention_20_value_kernel:H
6assignvariableop_53_multi_head_attention_20_value_bias:Y
Cassignvariableop_54_multi_head_attention_20_attention_output_kernel:O
Aassignvariableop_55_multi_head_attention_20_attention_output_bias:N
8assignvariableop_56_multi_head_attention_21_query_kernel:H
6assignvariableop_57_multi_head_attention_21_query_bias:L
6assignvariableop_58_multi_head_attention_21_key_kernel:F
4assignvariableop_59_multi_head_attention_21_key_bias:N
8assignvariableop_60_multi_head_attention_21_value_kernel:H
6assignvariableop_61_multi_head_attention_21_value_bias:Y
Cassignvariableop_62_multi_head_attention_21_attention_output_kernel:O
Aassignvariableop_63_multi_head_attention_21_attention_output_bias:N
8assignvariableop_64_multi_head_attention_22_query_kernel:H
6assignvariableop_65_multi_head_attention_22_query_bias:L
6assignvariableop_66_multi_head_attention_22_key_kernel:F
4assignvariableop_67_multi_head_attention_22_key_bias:N
8assignvariableop_68_multi_head_attention_22_value_kernel:H
6assignvariableop_69_multi_head_attention_22_value_bias:Y
Cassignvariableop_70_multi_head_attention_22_attention_output_kernel:O
Aassignvariableop_71_multi_head_attention_22_attention_output_bias:N
8assignvariableop_72_multi_head_attention_23_query_kernel:H
6assignvariableop_73_multi_head_attention_23_query_bias:L
6assignvariableop_74_multi_head_attention_23_key_kernel:F
4assignvariableop_75_multi_head_attention_23_key_bias:N
8assignvariableop_76_multi_head_attention_23_value_kernel:H
6assignvariableop_77_multi_head_attention_23_value_bias:Y
Cassignvariableop_78_multi_head_attention_23_attention_output_kernel:O
Aassignvariableop_79_multi_head_attention_23_attention_output_bias:
identity_81��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*�
value�B�QB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/62/.ATTRIBUTES/VARIABLE_VALUEB'variables/63/.ATTRIBUTES/VARIABLE_VALUEB'variables/64/.ATTRIBUTES/VARIABLE_VALUEB'variables/65/.ATTRIBUTES/VARIABLE_VALUEB'variables/66/.ATTRIBUTES/VARIABLE_VALUEB'variables/67/.ATTRIBUTES/VARIABLE_VALUEB'variables/68/.ATTRIBUTES/VARIABLE_VALUEB'variables/69/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*�
value�B�QB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*_
dtypesU
S2Q[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp-assignvariableop_layer_normalization_30_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp.assignvariableop_1_layer_normalization_30_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_18_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_18_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp/assignvariableop_4_layer_normalization_31_gammaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp.assignvariableop_5_layer_normalization_31_betaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_layer_normalization_32_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_layer_normalization_32_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_19_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_19_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp0assignvariableop_10_layer_normalization_34_gammaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_layer_normalization_34_betaIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_layer_normalization_33_gammaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_layer_normalization_33_betaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_layer_normalization_35_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_layer_normalization_35_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_20_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_20_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp0assignvariableop_18_layer_normalization_37_gammaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_layer_normalization_37_betaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_layer_normalization_36_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_layer_normalization_36_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_layer_normalization_38_gammaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_layer_normalization_38_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_21_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_21_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_layer_normalization_39_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_layer_normalization_39_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_22_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_22_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_23_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_23_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp8assignvariableop_32_multi_head_attention_18_query_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_multi_head_attention_18_query_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_multi_head_attention_18_key_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp4assignvariableop_35_multi_head_attention_18_key_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp8assignvariableop_36_multi_head_attention_18_value_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_multi_head_attention_18_value_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpCassignvariableop_38_multi_head_attention_18_attention_output_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpAassignvariableop_39_multi_head_attention_18_attention_output_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp8assignvariableop_40_multi_head_attention_19_query_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp6assignvariableop_41_multi_head_attention_19_query_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp6assignvariableop_42_multi_head_attention_19_key_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp4assignvariableop_43_multi_head_attention_19_key_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp8assignvariableop_44_multi_head_attention_19_value_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp6assignvariableop_45_multi_head_attention_19_value_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpCassignvariableop_46_multi_head_attention_19_attention_output_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpAassignvariableop_47_multi_head_attention_19_attention_output_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp8assignvariableop_48_multi_head_attention_20_query_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp6assignvariableop_49_multi_head_attention_20_query_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp6assignvariableop_50_multi_head_attention_20_key_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp4assignvariableop_51_multi_head_attention_20_key_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp8assignvariableop_52_multi_head_attention_20_value_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp6assignvariableop_53_multi_head_attention_20_value_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpCassignvariableop_54_multi_head_attention_20_attention_output_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpAassignvariableop_55_multi_head_attention_20_attention_output_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp8assignvariableop_56_multi_head_attention_21_query_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp6assignvariableop_57_multi_head_attention_21_query_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp6assignvariableop_58_multi_head_attention_21_key_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp4assignvariableop_59_multi_head_attention_21_key_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp8assignvariableop_60_multi_head_attention_21_value_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp6assignvariableop_61_multi_head_attention_21_value_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpCassignvariableop_62_multi_head_attention_21_attention_output_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOpAassignvariableop_63_multi_head_attention_21_attention_output_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp8assignvariableop_64_multi_head_attention_22_query_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp6assignvariableop_65_multi_head_attention_22_query_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp6assignvariableop_66_multi_head_attention_22_key_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp4assignvariableop_67_multi_head_attention_22_key_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp8assignvariableop_68_multi_head_attention_22_value_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp6assignvariableop_69_multi_head_attention_22_value_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpCassignvariableop_70_multi_head_attention_22_attention_output_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpAassignvariableop_71_multi_head_attention_22_attention_output_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp8assignvariableop_72_multi_head_attention_23_query_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp6assignvariableop_73_multi_head_attention_23_query_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp6assignvariableop_74_multi_head_attention_23_key_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp4assignvariableop_75_multi_head_attention_23_key_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp8assignvariableop_76_multi_head_attention_23_value_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp6assignvariableop_77_multi_head_attention_23_value_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpCassignvariableop_78_multi_head_attention_23_attention_output_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpAassignvariableop_79_multi_head_attention_23_attention_output_biasIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_80Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_81IdentityIdentity_80:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_81Identity_81:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:<8
6
_user_specified_namelayer_normalization_30/gamma:;7
5
_user_specified_namelayer_normalization_30/beta:/+
)
_user_specified_namedense_18/kernel:-)
'
_user_specified_namedense_18/bias:<8
6
_user_specified_namelayer_normalization_31/gamma:;7
5
_user_specified_namelayer_normalization_31/beta:<8
6
_user_specified_namelayer_normalization_32/gamma:;7
5
_user_specified_namelayer_normalization_32/beta:/	+
)
_user_specified_namedense_19/kernel:-
)
'
_user_specified_namedense_19/bias:<8
6
_user_specified_namelayer_normalization_34/gamma:;7
5
_user_specified_namelayer_normalization_34/beta:<8
6
_user_specified_namelayer_normalization_33/gamma:;7
5
_user_specified_namelayer_normalization_33/beta:<8
6
_user_specified_namelayer_normalization_35/gamma:;7
5
_user_specified_namelayer_normalization_35/beta:/+
)
_user_specified_namedense_20/kernel:-)
'
_user_specified_namedense_20/bias:<8
6
_user_specified_namelayer_normalization_37/gamma:;7
5
_user_specified_namelayer_normalization_37/beta:<8
6
_user_specified_namelayer_normalization_36/gamma:;7
5
_user_specified_namelayer_normalization_36/beta:<8
6
_user_specified_namelayer_normalization_38/gamma:;7
5
_user_specified_namelayer_normalization_38/beta:/+
)
_user_specified_namedense_21/kernel:-)
'
_user_specified_namedense_21/bias:<8
6
_user_specified_namelayer_normalization_39/gamma:;7
5
_user_specified_namelayer_normalization_39/beta:/+
)
_user_specified_namedense_22/kernel:-)
'
_user_specified_namedense_22/bias:/+
)
_user_specified_namedense_23/kernel:- )
'
_user_specified_namedense_23/bias:D!@
>
_user_specified_name&$multi_head_attention_18/query/kernel:B">
<
_user_specified_name$"multi_head_attention_18/query/bias:B#>
<
_user_specified_name$"multi_head_attention_18/key/kernel:@$<
:
_user_specified_name" multi_head_attention_18/key/bias:D%@
>
_user_specified_name&$multi_head_attention_18/value/kernel:B&>
<
_user_specified_name$"multi_head_attention_18/value/bias:O'K
I
_user_specified_name1/multi_head_attention_18/attention_output/kernel:M(I
G
_user_specified_name/-multi_head_attention_18/attention_output/bias:D)@
>
_user_specified_name&$multi_head_attention_19/query/kernel:B*>
<
_user_specified_name$"multi_head_attention_19/query/bias:B+>
<
_user_specified_name$"multi_head_attention_19/key/kernel:@,<
:
_user_specified_name" multi_head_attention_19/key/bias:D-@
>
_user_specified_name&$multi_head_attention_19/value/kernel:B.>
<
_user_specified_name$"multi_head_attention_19/value/bias:O/K
I
_user_specified_name1/multi_head_attention_19/attention_output/kernel:M0I
G
_user_specified_name/-multi_head_attention_19/attention_output/bias:D1@
>
_user_specified_name&$multi_head_attention_20/query/kernel:B2>
<
_user_specified_name$"multi_head_attention_20/query/bias:B3>
<
_user_specified_name$"multi_head_attention_20/key/kernel:@4<
:
_user_specified_name" multi_head_attention_20/key/bias:D5@
>
_user_specified_name&$multi_head_attention_20/value/kernel:B6>
<
_user_specified_name$"multi_head_attention_20/value/bias:O7K
I
_user_specified_name1/multi_head_attention_20/attention_output/kernel:M8I
G
_user_specified_name/-multi_head_attention_20/attention_output/bias:D9@
>
_user_specified_name&$multi_head_attention_21/query/kernel:B:>
<
_user_specified_name$"multi_head_attention_21/query/bias:B;>
<
_user_specified_name$"multi_head_attention_21/key/kernel:@<<
:
_user_specified_name" multi_head_attention_21/key/bias:D=@
>
_user_specified_name&$multi_head_attention_21/value/kernel:B>>
<
_user_specified_name$"multi_head_attention_21/value/bias:O?K
I
_user_specified_name1/multi_head_attention_21/attention_output/kernel:M@I
G
_user_specified_name/-multi_head_attention_21/attention_output/bias:DA@
>
_user_specified_name&$multi_head_attention_22/query/kernel:BB>
<
_user_specified_name$"multi_head_attention_22/query/bias:BC>
<
_user_specified_name$"multi_head_attention_22/key/kernel:@D<
:
_user_specified_name" multi_head_attention_22/key/bias:DE@
>
_user_specified_name&$multi_head_attention_22/value/kernel:BF>
<
_user_specified_name$"multi_head_attention_22/value/bias:OGK
I
_user_specified_name1/multi_head_attention_22/attention_output/kernel:MHI
G
_user_specified_name/-multi_head_attention_22/attention_output/bias:DI@
>
_user_specified_name&$multi_head_attention_23/query/kernel:BJ>
<
_user_specified_name$"multi_head_attention_23/query/bias:BK>
<
_user_specified_name$"multi_head_attention_23/key/kernel:@L<
:
_user_specified_name" multi_head_attention_23/key/bias:DM@
>
_user_specified_name&$multi_head_attention_23/value/kernel:BN>
<
_user_specified_name$"multi_head_attention_23/value/bias:OOK
I
_user_specified_name1/multi_head_attention_23/attention_output/kernel:MPI
G
_user_specified_name/-multi_head_attention_23/attention_output/bias
�
�
*__inference_dense_22_layer_call_fn_2947552

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_2944849f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947546:'#
!
_user_specified_name	2947548
�
�
9__inference_multi_head_attention_20_layer_call_fn_2946720	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2945054j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2946702:'#
!
_user_specified_name	2946704:'#
!
_user_specified_name	2946706:'#
!
_user_specified_name	2946708:'#
!
_user_specified_name	2946710:'#
!
_user_specified_name	2946712:'#
!
_user_specified_name	2946714:'	#
!
_user_specified_name	2946716
�

f
G__inference_dropout_22_layer_call_and_return_conditional_losses_2947414

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2944611	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_4/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_4/IdentityIdentitysoftmax_4/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_4/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�

f
G__inference_dropout_18_layer_call_and_return_conditional_losses_2946471

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�

f
G__inference_dropout_22_layer_call_and_return_conditional_losses_2944748

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2944985	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_1/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_1/IdentityIdentitysoftmax_1/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_1/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_2944538

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
e
G__inference_dropout_23_layer_call_and_return_conditional_losses_2945296

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2944485	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_3/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_3/IdentityIdentitysoftmax_3/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_3/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
e
,__inference_dropout_21_layer_call_fn_2947194

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_2944575j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
*__inference_dense_23_layer_call_fn_2947571

inputs
unknown: 
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
GPU 2J 8� *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_2944864f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947565:'#
!
_user_specified_name	2947567
�+
�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2944264	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_1/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_1/IdentityIdentitysoftmax_1/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_1/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�

f
G__inference_dropout_19_layer_call_and_return_conditional_losses_2944341

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
*__inference_dense_20_layer_call_fn_2947060

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
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_2944558j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947054:'#
!
_user_specified_name	2947056
�
e
G__inference_dropout_22_layer_call_and_return_conditional_losses_2945279

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_2944304

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
9__inference_multi_head_attention_19_layer_call_fn_2946551	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2944985j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2946533:'#
!
_user_specified_name	2946535:'#
!
_user_specified_name	2946537:'#
!
_user_specified_name	2946539:'#
!
_user_specified_name	2946541:'#
!
_user_specified_name	2946543:'#
!
_user_specified_name	2946545:'	#
!
_user_specified_name	2946547
�+
�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2946586	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_1/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_1/IdentityIdentitysoftmax_1/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_1/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
*__inference_dense_18_layer_call_fn_2946434

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
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_18_layer_call_and_return_conditional_losses_2944183j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2946428:'#
!
_user_specified_name	2946430
�
�
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_2947247

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
�
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_2944445

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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

f
G__inference_dropout_23_layer_call_and_return_conditional_losses_2944809

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
H
,__inference_dropout_19_layer_call_fn_2946800

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_2945018[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
E__inference_dense_21_layer_call_and_return_conditional_losses_2944792

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
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
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
:\
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
:V
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
�
9__inference_multi_head_attention_18_layer_call_fn_2946302	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2944123j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2946284:'#
!
_user_specified_name	2946286:'#
!
_user_specified_name	2946288:'#
!
_user_specified_name	2946290:'#
!
_user_specified_name	2946292:'#
!
_user_specified_name	2946294:'#
!
_user_specified_name	2946296:'	#
!
_user_specified_name	2946298
�
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_2946476

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
8__inference_layer_normalization_37_layer_call_fn_2947225

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_2944652j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947219:'#
!
_user_specified_name	2947221
�<
�
)__inference_model_3_layer_call_fn_2945646
input_4
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12: 

unknown_13:

unknown_14: 

unknown_15:

unknown_16: 

unknown_17:

unknown_18: 

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24: 

unknown_25:

unknown_26: 

unknown_27:

unknown_28: 

unknown_29:

unknown_30: 

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:

unknown_36: 

unknown_37:

unknown_38: 

unknown_39:

unknown_40: 

unknown_41:

unknown_42: 

unknown_43:

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48: 

unknown_49:

unknown_50: 

unknown_51:

unknown_52: 

unknown_53:

unknown_54: 

unknown_55:

unknown_56:

unknown_57:

unknown_58:

unknown_59:

unknown_60: 

unknown_61:

unknown_62: 

unknown_63:

unknown_64: 

unknown_65:

unknown_66: 

unknown_67:

unknown_68:

unknown_69:

unknown_70:

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75: 

unknown_76: 

unknown_77: 

unknown_78:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78*\
TinU
S2Q*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*r
_read_only_resource_inputsT
RP	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOP*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2945316f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_4:'#
!
_user_specified_name	2945484:'#
!
_user_specified_name	2945486:'#
!
_user_specified_name	2945488:'#
!
_user_specified_name	2945490:'#
!
_user_specified_name	2945492:'#
!
_user_specified_name	2945494:'#
!
_user_specified_name	2945496:'#
!
_user_specified_name	2945498:'	#
!
_user_specified_name	2945500:'
#
!
_user_specified_name	2945502:'#
!
_user_specified_name	2945504:'#
!
_user_specified_name	2945506:'#
!
_user_specified_name	2945508:'#
!
_user_specified_name	2945510:'#
!
_user_specified_name	2945512:'#
!
_user_specified_name	2945514:'#
!
_user_specified_name	2945516:'#
!
_user_specified_name	2945518:'#
!
_user_specified_name	2945520:'#
!
_user_specified_name	2945522:'#
!
_user_specified_name	2945524:'#
!
_user_specified_name	2945526:'#
!
_user_specified_name	2945528:'#
!
_user_specified_name	2945530:'#
!
_user_specified_name	2945532:'#
!
_user_specified_name	2945534:'#
!
_user_specified_name	2945536:'#
!
_user_specified_name	2945538:'#
!
_user_specified_name	2945540:'#
!
_user_specified_name	2945542:'#
!
_user_specified_name	2945544:' #
!
_user_specified_name	2945546:'!#
!
_user_specified_name	2945548:'"#
!
_user_specified_name	2945550:'##
!
_user_specified_name	2945552:'$#
!
_user_specified_name	2945554:'%#
!
_user_specified_name	2945556:'&#
!
_user_specified_name	2945558:''#
!
_user_specified_name	2945560:'(#
!
_user_specified_name	2945562:')#
!
_user_specified_name	2945564:'*#
!
_user_specified_name	2945566:'+#
!
_user_specified_name	2945568:',#
!
_user_specified_name	2945570:'-#
!
_user_specified_name	2945572:'.#
!
_user_specified_name	2945574:'/#
!
_user_specified_name	2945576:'0#
!
_user_specified_name	2945578:'1#
!
_user_specified_name	2945580:'2#
!
_user_specified_name	2945582:'3#
!
_user_specified_name	2945584:'4#
!
_user_specified_name	2945586:'5#
!
_user_specified_name	2945588:'6#
!
_user_specified_name	2945590:'7#
!
_user_specified_name	2945592:'8#
!
_user_specified_name	2945594:'9#
!
_user_specified_name	2945596:':#
!
_user_specified_name	2945598:';#
!
_user_specified_name	2945600:'<#
!
_user_specified_name	2945602:'=#
!
_user_specified_name	2945604:'>#
!
_user_specified_name	2945606:'?#
!
_user_specified_name	2945608:'@#
!
_user_specified_name	2945610:'A#
!
_user_specified_name	2945612:'B#
!
_user_specified_name	2945614:'C#
!
_user_specified_name	2945616:'D#
!
_user_specified_name	2945618:'E#
!
_user_specified_name	2945620:'F#
!
_user_specified_name	2945622:'G#
!
_user_specified_name	2945624:'H#
!
_user_specified_name	2945626:'I#
!
_user_specified_name	2945628:'J#
!
_user_specified_name	2945630:'K#
!
_user_specified_name	2945632:'L#
!
_user_specified_name	2945634:'M#
!
_user_specified_name	2945636:'N#
!
_user_specified_name	2945638:'O#
!
_user_specified_name	2945640:'P#
!
_user_specified_name	2945642
�
e
,__inference_dropout_18_layer_call_fn_2946454

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_2944200j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
e
G__inference_dropout_21_layer_call_and_return_conditional_losses_2945157

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_2946425

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
�
8__inference_layer_normalization_35_layer_call_fn_2947029

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_2944538j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947023:'#
!
_user_specified_name	2947025
�+
�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2946755	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_2/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_2/IdentityIdentitysoftmax_2/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_2/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�

f
G__inference_dropout_21_layer_call_and_return_conditional_losses_2947211

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2944719	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_5/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_5/IdentityIdentitysoftmax_5/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_5/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�+
�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2944123	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbec
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:h
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
9__inference_multi_head_attention_22_layer_call_fn_2947097	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2944611j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2947079:'#
!
_user_specified_name	2947081:'#
!
_user_specified_name	2947083:'#
!
_user_specified_name	2947085:'#
!
_user_specified_name	2947087:'#
!
_user_specified_name	2947089:'#
!
_user_specified_name	2947091:'	#
!
_user_specified_name	2947093
�
e
G__inference_dropout_22_layer_call_and_return_conditional_losses_2947419

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_2944418

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
�
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_2946879

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
e
,__inference_dropout_22_layer_call_fn_2947397

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_22_layer_call_and_return_conditional_losses_2944748j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�

f
G__inference_dropout_19_layer_call_and_return_conditional_losses_2946812

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2945054	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_2/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_2/IdentityIdentitysoftmax_2/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_2/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
9__inference_multi_head_attention_21_layer_call_fn_2946901	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2944485j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2946883:'#
!
_user_specified_name	2946885:'#
!
_user_specified_name	2946887:'#
!
_user_specified_name	2946889:'#
!
_user_specified_name	2946891:'#
!
_user_specified_name	2946893:'#
!
_user_specified_name	2946895:'	#
!
_user_specified_name	2946897
�
�
E__inference_dense_20_layer_call_and_return_conditional_losses_2947075

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
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
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
:\
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
:V
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
��
�Q
 __inference__traced_save_2948083
file_prefixA
3read_disablecopyonread_layer_normalization_30_gamma:B
4read_1_disablecopyonread_layer_normalization_30_beta::
(read_2_disablecopyonread_dense_18_kernel:4
&read_3_disablecopyonread_dense_18_bias:C
5read_4_disablecopyonread_layer_normalization_31_gamma:B
4read_5_disablecopyonread_layer_normalization_31_beta:C
5read_6_disablecopyonread_layer_normalization_32_gamma:B
4read_7_disablecopyonread_layer_normalization_32_beta::
(read_8_disablecopyonread_dense_19_kernel:4
&read_9_disablecopyonread_dense_19_bias:D
6read_10_disablecopyonread_layer_normalization_34_gamma:C
5read_11_disablecopyonread_layer_normalization_34_beta:D
6read_12_disablecopyonread_layer_normalization_33_gamma:C
5read_13_disablecopyonread_layer_normalization_33_beta:D
6read_14_disablecopyonread_layer_normalization_35_gamma:C
5read_15_disablecopyonread_layer_normalization_35_beta:;
)read_16_disablecopyonread_dense_20_kernel:5
'read_17_disablecopyonread_dense_20_bias:D
6read_18_disablecopyonread_layer_normalization_37_gamma:C
5read_19_disablecopyonread_layer_normalization_37_beta:D
6read_20_disablecopyonread_layer_normalization_36_gamma:C
5read_21_disablecopyonread_layer_normalization_36_beta:D
6read_22_disablecopyonread_layer_normalization_38_gamma:C
5read_23_disablecopyonread_layer_normalization_38_beta:;
)read_24_disablecopyonread_dense_21_kernel:5
'read_25_disablecopyonread_dense_21_bias:D
6read_26_disablecopyonread_layer_normalization_39_gamma:C
5read_27_disablecopyonread_layer_normalization_39_beta:;
)read_28_disablecopyonread_dense_22_kernel: 5
'read_29_disablecopyonread_dense_22_bias: ;
)read_30_disablecopyonread_dense_23_kernel: 5
'read_31_disablecopyonread_dense_23_bias:T
>read_32_disablecopyonread_multi_head_attention_18_query_kernel:N
<read_33_disablecopyonread_multi_head_attention_18_query_bias:R
<read_34_disablecopyonread_multi_head_attention_18_key_kernel:L
:read_35_disablecopyonread_multi_head_attention_18_key_bias:T
>read_36_disablecopyonread_multi_head_attention_18_value_kernel:N
<read_37_disablecopyonread_multi_head_attention_18_value_bias:_
Iread_38_disablecopyonread_multi_head_attention_18_attention_output_kernel:U
Gread_39_disablecopyonread_multi_head_attention_18_attention_output_bias:T
>read_40_disablecopyonread_multi_head_attention_19_query_kernel:N
<read_41_disablecopyonread_multi_head_attention_19_query_bias:R
<read_42_disablecopyonread_multi_head_attention_19_key_kernel:L
:read_43_disablecopyonread_multi_head_attention_19_key_bias:T
>read_44_disablecopyonread_multi_head_attention_19_value_kernel:N
<read_45_disablecopyonread_multi_head_attention_19_value_bias:_
Iread_46_disablecopyonread_multi_head_attention_19_attention_output_kernel:U
Gread_47_disablecopyonread_multi_head_attention_19_attention_output_bias:T
>read_48_disablecopyonread_multi_head_attention_20_query_kernel:N
<read_49_disablecopyonread_multi_head_attention_20_query_bias:R
<read_50_disablecopyonread_multi_head_attention_20_key_kernel:L
:read_51_disablecopyonread_multi_head_attention_20_key_bias:T
>read_52_disablecopyonread_multi_head_attention_20_value_kernel:N
<read_53_disablecopyonread_multi_head_attention_20_value_bias:_
Iread_54_disablecopyonread_multi_head_attention_20_attention_output_kernel:U
Gread_55_disablecopyonread_multi_head_attention_20_attention_output_bias:T
>read_56_disablecopyonread_multi_head_attention_21_query_kernel:N
<read_57_disablecopyonread_multi_head_attention_21_query_bias:R
<read_58_disablecopyonread_multi_head_attention_21_key_kernel:L
:read_59_disablecopyonread_multi_head_attention_21_key_bias:T
>read_60_disablecopyonread_multi_head_attention_21_value_kernel:N
<read_61_disablecopyonread_multi_head_attention_21_value_bias:_
Iread_62_disablecopyonread_multi_head_attention_21_attention_output_kernel:U
Gread_63_disablecopyonread_multi_head_attention_21_attention_output_bias:T
>read_64_disablecopyonread_multi_head_attention_22_query_kernel:N
<read_65_disablecopyonread_multi_head_attention_22_query_bias:R
<read_66_disablecopyonread_multi_head_attention_22_key_kernel:L
:read_67_disablecopyonread_multi_head_attention_22_key_bias:T
>read_68_disablecopyonread_multi_head_attention_22_value_kernel:N
<read_69_disablecopyonread_multi_head_attention_22_value_bias:_
Iread_70_disablecopyonread_multi_head_attention_22_attention_output_kernel:U
Gread_71_disablecopyonread_multi_head_attention_22_attention_output_bias:T
>read_72_disablecopyonread_multi_head_attention_23_query_kernel:N
<read_73_disablecopyonread_multi_head_attention_23_query_bias:R
<read_74_disablecopyonread_multi_head_attention_23_key_kernel:L
:read_75_disablecopyonread_multi_head_attention_23_key_bias:T
>read_76_disablecopyonread_multi_head_attention_23_value_kernel:N
<read_77_disablecopyonread_multi_head_attention_23_value_bias:_
Iread_78_disablecopyonread_multi_head_attention_23_attention_output_kernel:U
Gread_79_disablecopyonread_multi_head_attention_23_attention_output_bias:
savev2_const
identity_161��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: �
Read/DisableCopyOnReadDisableCopyOnRead3read_disablecopyonread_layer_normalization_30_gamma"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp3read_disablecopyonread_layer_normalization_30_gamma^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_1/DisableCopyOnReadDisableCopyOnRead4read_1_disablecopyonread_layer_normalization_30_beta"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp4read_1_disablecopyonread_layer_normalization_30_beta^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_18_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_18_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_18_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_18_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead5read_4_disablecopyonread_layer_normalization_31_gamma"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp5read_4_disablecopyonread_layer_normalization_31_gamma^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_5/DisableCopyOnReadDisableCopyOnRead4read_5_disablecopyonread_layer_normalization_31_beta"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp4read_5_disablecopyonread_layer_normalization_31_beta^Read_5/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_6/DisableCopyOnReadDisableCopyOnRead5read_6_disablecopyonread_layer_normalization_32_gamma"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp5read_6_disablecopyonread_layer_normalization_32_gamma^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_7/DisableCopyOnReadDisableCopyOnRead4read_7_disablecopyonread_layer_normalization_32_beta"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp4read_7_disablecopyonread_layer_normalization_32_beta^Read_7/DisableCopyOnRead"/device:CPU:0*
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
:|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_dense_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_dense_19_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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

:z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_dense_19_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_dense_19_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_10/DisableCopyOnReadDisableCopyOnRead6read_10_disablecopyonread_layer_normalization_34_gamma"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp6read_10_disablecopyonread_layer_normalization_34_gamma^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_11/DisableCopyOnReadDisableCopyOnRead5read_11_disablecopyonread_layer_normalization_34_beta"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp5read_11_disablecopyonread_layer_normalization_34_beta^Read_11/DisableCopyOnRead"/device:CPU:0*
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
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_layer_normalization_33_gamma"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_layer_normalization_33_gamma^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead5read_13_disablecopyonread_layer_normalization_33_beta"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp5read_13_disablecopyonread_layer_normalization_33_beta^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_layer_normalization_35_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_layer_normalization_35_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_layer_normalization_35_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_layer_normalization_35_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_16/DisableCopyOnReadDisableCopyOnRead)read_16_disablecopyonread_dense_20_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp)read_16_disablecopyonread_dense_20_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_dense_20_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_dense_20_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_layer_normalization_37_gamma"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp6read_18_disablecopyonread_layer_normalization_37_gamma^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead5read_19_disablecopyonread_layer_normalization_37_beta"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp5read_19_disablecopyonread_layer_normalization_37_beta^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_layer_normalization_36_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_layer_normalization_36_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_layer_normalization_36_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_layer_normalization_36_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_22/DisableCopyOnReadDisableCopyOnRead6read_22_disablecopyonread_layer_normalization_38_gamma"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp6read_22_disablecopyonread_layer_normalization_38_gamma^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnRead5read_23_disablecopyonread_layer_normalization_38_beta"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp5read_23_disablecopyonread_layer_normalization_38_beta^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_dense_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_dense_21_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_dense_21_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_dense_21_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_layer_normalization_39_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_layer_normalization_39_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_layer_normalization_39_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_layer_normalization_39_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_dense_22_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp)read_28_disablecopyonread_dense_22_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

: |
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_dense_22_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_dense_22_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_30/DisableCopyOnReadDisableCopyOnRead)read_30_disablecopyonread_dense_23_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_dense_23_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

: |
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_dense_23_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_dense_23_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_32/DisableCopyOnReadDisableCopyOnRead>read_32_disablecopyonread_multi_head_attention_18_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp>read_32_disablecopyonread_multi_head_attention_18_query_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead<read_33_disablecopyonread_multi_head_attention_18_query_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp<read_33_disablecopyonread_multi_head_attention_18_query_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_34/DisableCopyOnReadDisableCopyOnRead<read_34_disablecopyonread_multi_head_attention_18_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp<read_34_disablecopyonread_multi_head_attention_18_key_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_35/DisableCopyOnReadDisableCopyOnRead:read_35_disablecopyonread_multi_head_attention_18_key_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp:read_35_disablecopyonread_multi_head_attention_18_key_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_36/DisableCopyOnReadDisableCopyOnRead>read_36_disablecopyonread_multi_head_attention_18_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp>read_36_disablecopyonread_multi_head_attention_18_value_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead<read_37_disablecopyonread_multi_head_attention_18_value_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp<read_37_disablecopyonread_multi_head_attention_18_value_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_38/DisableCopyOnReadDisableCopyOnReadIread_38_disablecopyonread_multi_head_attention_18_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOpIread_38_disablecopyonread_multi_head_attention_18_attention_output_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_39/DisableCopyOnReadDisableCopyOnReadGread_39_disablecopyonread_multi_head_attention_18_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOpGread_39_disablecopyonread_multi_head_attention_18_attention_output_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_40/DisableCopyOnReadDisableCopyOnRead>read_40_disablecopyonread_multi_head_attention_19_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp>read_40_disablecopyonread_multi_head_attention_19_query_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_41/DisableCopyOnReadDisableCopyOnRead<read_41_disablecopyonread_multi_head_attention_19_query_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp<read_41_disablecopyonread_multi_head_attention_19_query_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_42/DisableCopyOnReadDisableCopyOnRead<read_42_disablecopyonread_multi_head_attention_19_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp<read_42_disablecopyonread_multi_head_attention_19_key_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_43/DisableCopyOnReadDisableCopyOnRead:read_43_disablecopyonread_multi_head_attention_19_key_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp:read_43_disablecopyonread_multi_head_attention_19_key_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_44/DisableCopyOnReadDisableCopyOnRead>read_44_disablecopyonread_multi_head_attention_19_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp>read_44_disablecopyonread_multi_head_attention_19_value_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_45/DisableCopyOnReadDisableCopyOnRead<read_45_disablecopyonread_multi_head_attention_19_value_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp<read_45_disablecopyonread_multi_head_attention_19_value_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_46/DisableCopyOnReadDisableCopyOnReadIread_46_disablecopyonread_multi_head_attention_19_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOpIread_46_disablecopyonread_multi_head_attention_19_attention_output_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_47/DisableCopyOnReadDisableCopyOnReadGread_47_disablecopyonread_multi_head_attention_19_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOpGread_47_disablecopyonread_multi_head_attention_19_attention_output_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_48/DisableCopyOnReadDisableCopyOnRead>read_48_disablecopyonread_multi_head_attention_20_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp>read_48_disablecopyonread_multi_head_attention_20_query_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead<read_49_disablecopyonread_multi_head_attention_20_query_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp<read_49_disablecopyonread_multi_head_attention_20_query_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_50/DisableCopyOnReadDisableCopyOnRead<read_50_disablecopyonread_multi_head_attention_20_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp<read_50_disablecopyonread_multi_head_attention_20_key_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead:read_51_disablecopyonread_multi_head_attention_20_key_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp:read_51_disablecopyonread_multi_head_attention_20_key_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_52/DisableCopyOnReadDisableCopyOnRead>read_52_disablecopyonread_multi_head_attention_20_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp>read_52_disablecopyonread_multi_head_attention_20_value_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_53/DisableCopyOnReadDisableCopyOnRead<read_53_disablecopyonread_multi_head_attention_20_value_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp<read_53_disablecopyonread_multi_head_attention_20_value_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_54/DisableCopyOnReadDisableCopyOnReadIread_54_disablecopyonread_multi_head_attention_20_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOpIread_54_disablecopyonread_multi_head_attention_20_attention_output_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnReadGread_55_disablecopyonread_multi_head_attention_20_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOpGread_55_disablecopyonread_multi_head_attention_20_attention_output_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead>read_56_disablecopyonread_multi_head_attention_21_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp>read_56_disablecopyonread_multi_head_attention_21_query_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead<read_57_disablecopyonread_multi_head_attention_21_query_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp<read_57_disablecopyonread_multi_head_attention_21_query_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_58/DisableCopyOnReadDisableCopyOnRead<read_58_disablecopyonread_multi_head_attention_21_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp<read_58_disablecopyonread_multi_head_attention_21_key_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnRead:read_59_disablecopyonread_multi_head_attention_21_key_bias"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp:read_59_disablecopyonread_multi_head_attention_21_key_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_60/DisableCopyOnReadDisableCopyOnRead>read_60_disablecopyonread_multi_head_attention_21_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp>read_60_disablecopyonread_multi_head_attention_21_value_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead<read_61_disablecopyonread_multi_head_attention_21_value_bias"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp<read_61_disablecopyonread_multi_head_attention_21_value_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_62/DisableCopyOnReadDisableCopyOnReadIread_62_disablecopyonread_multi_head_attention_21_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOpIread_62_disablecopyonread_multi_head_attention_21_attention_output_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_63/DisableCopyOnReadDisableCopyOnReadGread_63_disablecopyonread_multi_head_attention_21_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOpGread_63_disablecopyonread_multi_head_attention_21_attention_output_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_64/DisableCopyOnReadDisableCopyOnRead>read_64_disablecopyonread_multi_head_attention_22_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp>read_64_disablecopyonread_multi_head_attention_22_query_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_65/DisableCopyOnReadDisableCopyOnRead<read_65_disablecopyonread_multi_head_attention_22_query_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp<read_65_disablecopyonread_multi_head_attention_22_query_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_66/DisableCopyOnReadDisableCopyOnRead<read_66_disablecopyonread_multi_head_attention_22_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp<read_66_disablecopyonread_multi_head_attention_22_key_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_67/DisableCopyOnReadDisableCopyOnRead:read_67_disablecopyonread_multi_head_attention_22_key_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp:read_67_disablecopyonread_multi_head_attention_22_key_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_68/DisableCopyOnReadDisableCopyOnRead>read_68_disablecopyonread_multi_head_attention_22_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp>read_68_disablecopyonread_multi_head_attention_22_value_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_69/DisableCopyOnReadDisableCopyOnRead<read_69_disablecopyonread_multi_head_attention_22_value_bias"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp<read_69_disablecopyonread_multi_head_attention_22_value_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_70/DisableCopyOnReadDisableCopyOnReadIread_70_disablecopyonread_multi_head_attention_22_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOpIread_70_disablecopyonread_multi_head_attention_22_attention_output_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_71/DisableCopyOnReadDisableCopyOnReadGread_71_disablecopyonread_multi_head_attention_22_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOpGread_71_disablecopyonread_multi_head_attention_22_attention_output_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_72/DisableCopyOnReadDisableCopyOnRead>read_72_disablecopyonread_multi_head_attention_23_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp>read_72_disablecopyonread_multi_head_attention_23_query_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_73/DisableCopyOnReadDisableCopyOnRead<read_73_disablecopyonread_multi_head_attention_23_query_bias"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp<read_73_disablecopyonread_multi_head_attention_23_query_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_74/DisableCopyOnReadDisableCopyOnRead<read_74_disablecopyonread_multi_head_attention_23_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp<read_74_disablecopyonread_multi_head_attention_23_key_kernel^Read_74/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_75/DisableCopyOnReadDisableCopyOnRead:read_75_disablecopyonread_multi_head_attention_23_key_bias"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp:read_75_disablecopyonread_multi_head_attention_23_key_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_76/DisableCopyOnReadDisableCopyOnRead>read_76_disablecopyonread_multi_head_attention_23_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp>read_76_disablecopyonread_multi_head_attention_23_value_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_77/DisableCopyOnReadDisableCopyOnRead<read_77_disablecopyonread_multi_head_attention_23_value_bias"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp<read_77_disablecopyonread_multi_head_attention_23_value_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_78/DisableCopyOnReadDisableCopyOnReadIread_78_disablecopyonread_multi_head_attention_23_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOpIread_78_disablecopyonread_multi_head_attention_23_attention_output_kernel^Read_78/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_79/DisableCopyOnReadDisableCopyOnReadGread_79_disablecopyonread_multi_head_attention_23_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOpGread_79_disablecopyonread_multi_head_attention_23_attention_output_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*�
value�B�QB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/62/.ATTRIBUTES/VARIABLE_VALUEB'variables/63/.ATTRIBUTES/VARIABLE_VALUEB'variables/64/.ATTRIBUTES/VARIABLE_VALUEB'variables/65/.ATTRIBUTES/VARIABLE_VALUEB'variables/66/.ATTRIBUTES/VARIABLE_VALUEB'variables/67/.ATTRIBUTES/VARIABLE_VALUEB'variables/68/.ATTRIBUTES/VARIABLE_VALUEB'variables/69/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*�
value�B�QB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *_
dtypesU
S2Q�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_160Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_161IdentityIdentity_160:output:0^NoOp*
T0*
_output_shapes
: �!
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_161Identity_161:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:<8
6
_user_specified_namelayer_normalization_30/gamma:;7
5
_user_specified_namelayer_normalization_30/beta:/+
)
_user_specified_namedense_18/kernel:-)
'
_user_specified_namedense_18/bias:<8
6
_user_specified_namelayer_normalization_31/gamma:;7
5
_user_specified_namelayer_normalization_31/beta:<8
6
_user_specified_namelayer_normalization_32/gamma:;7
5
_user_specified_namelayer_normalization_32/beta:/	+
)
_user_specified_namedense_19/kernel:-
)
'
_user_specified_namedense_19/bias:<8
6
_user_specified_namelayer_normalization_34/gamma:;7
5
_user_specified_namelayer_normalization_34/beta:<8
6
_user_specified_namelayer_normalization_33/gamma:;7
5
_user_specified_namelayer_normalization_33/beta:<8
6
_user_specified_namelayer_normalization_35/gamma:;7
5
_user_specified_namelayer_normalization_35/beta:/+
)
_user_specified_namedense_20/kernel:-)
'
_user_specified_namedense_20/bias:<8
6
_user_specified_namelayer_normalization_37/gamma:;7
5
_user_specified_namelayer_normalization_37/beta:<8
6
_user_specified_namelayer_normalization_36/gamma:;7
5
_user_specified_namelayer_normalization_36/beta:<8
6
_user_specified_namelayer_normalization_38/gamma:;7
5
_user_specified_namelayer_normalization_38/beta:/+
)
_user_specified_namedense_21/kernel:-)
'
_user_specified_namedense_21/bias:<8
6
_user_specified_namelayer_normalization_39/gamma:;7
5
_user_specified_namelayer_normalization_39/beta:/+
)
_user_specified_namedense_22/kernel:-)
'
_user_specified_namedense_22/bias:/+
)
_user_specified_namedense_23/kernel:- )
'
_user_specified_namedense_23/bias:D!@
>
_user_specified_name&$multi_head_attention_18/query/kernel:B">
<
_user_specified_name$"multi_head_attention_18/query/bias:B#>
<
_user_specified_name$"multi_head_attention_18/key/kernel:@$<
:
_user_specified_name" multi_head_attention_18/key/bias:D%@
>
_user_specified_name&$multi_head_attention_18/value/kernel:B&>
<
_user_specified_name$"multi_head_attention_18/value/bias:O'K
I
_user_specified_name1/multi_head_attention_18/attention_output/kernel:M(I
G
_user_specified_name/-multi_head_attention_18/attention_output/bias:D)@
>
_user_specified_name&$multi_head_attention_19/query/kernel:B*>
<
_user_specified_name$"multi_head_attention_19/query/bias:B+>
<
_user_specified_name$"multi_head_attention_19/key/kernel:@,<
:
_user_specified_name" multi_head_attention_19/key/bias:D-@
>
_user_specified_name&$multi_head_attention_19/value/kernel:B.>
<
_user_specified_name$"multi_head_attention_19/value/bias:O/K
I
_user_specified_name1/multi_head_attention_19/attention_output/kernel:M0I
G
_user_specified_name/-multi_head_attention_19/attention_output/bias:D1@
>
_user_specified_name&$multi_head_attention_20/query/kernel:B2>
<
_user_specified_name$"multi_head_attention_20/query/bias:B3>
<
_user_specified_name$"multi_head_attention_20/key/kernel:@4<
:
_user_specified_name" multi_head_attention_20/key/bias:D5@
>
_user_specified_name&$multi_head_attention_20/value/kernel:B6>
<
_user_specified_name$"multi_head_attention_20/value/bias:O7K
I
_user_specified_name1/multi_head_attention_20/attention_output/kernel:M8I
G
_user_specified_name/-multi_head_attention_20/attention_output/bias:D9@
>
_user_specified_name&$multi_head_attention_21/query/kernel:B:>
<
_user_specified_name$"multi_head_attention_21/query/bias:B;>
<
_user_specified_name$"multi_head_attention_21/key/kernel:@<<
:
_user_specified_name" multi_head_attention_21/key/bias:D=@
>
_user_specified_name&$multi_head_attention_21/value/kernel:B>>
<
_user_specified_name$"multi_head_attention_21/value/bias:O?K
I
_user_specified_name1/multi_head_attention_21/attention_output/kernel:M@I
G
_user_specified_name/-multi_head_attention_21/attention_output/bias:DA@
>
_user_specified_name&$multi_head_attention_22/query/kernel:BB>
<
_user_specified_name$"multi_head_attention_22/query/bias:BC>
<
_user_specified_name$"multi_head_attention_22/key/kernel:@D<
:
_user_specified_name" multi_head_attention_22/key/bias:DE@
>
_user_specified_name&$multi_head_attention_22/value/kernel:BF>
<
_user_specified_name$"multi_head_attention_22/value/bias:OGK
I
_user_specified_name1/multi_head_attention_22/attention_output/kernel:MHI
G
_user_specified_name/-multi_head_attention_22/attention_output/bias:DI@
>
_user_specified_name&$multi_head_attention_23/query/kernel:BJ>
<
_user_specified_name$"multi_head_attention_23/query/bias:BK>
<
_user_specified_name$"multi_head_attention_23/key/kernel:@L<
:
_user_specified_name" multi_head_attention_23/key/bias:DM@
>
_user_specified_name&$multi_head_attention_23/value/kernel:BN>
<
_user_specified_name$"multi_head_attention_23/value/bias:OOK
I
_user_specified_name1/multi_head_attention_23/attention_output/kernel:MPI
G
_user_specified_name/-multi_head_attention_23/attention_output/bias:=Q9

_output_shapes
: 

_user_specified_nameConst
�+
�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2947154	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_4/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_4/IdentityIdentitysoftmax_4/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_4/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
H
,__inference_dropout_20_layer_call_fn_2947003

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_20_layer_call_and_return_conditional_losses_2945140[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
8__inference_layer_normalization_39_layer_call_fn_2947510

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_2944833j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947504:'#
!
_user_specified_name	2947506
�<
�
%__inference_signature_wrapper_2946280
input_4
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12: 

unknown_13:

unknown_14: 

unknown_15:

unknown_16: 

unknown_17:

unknown_18: 

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24: 

unknown_25:

unknown_26: 

unknown_27:

unknown_28: 

unknown_29:

unknown_30: 

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:

unknown_36: 

unknown_37:

unknown_38: 

unknown_39:

unknown_40: 

unknown_41:

unknown_42: 

unknown_43:

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48: 

unknown_49:

unknown_50: 

unknown_51:

unknown_52: 

unknown_53:

unknown_54: 

unknown_55:

unknown_56:

unknown_57:

unknown_58:

unknown_59:

unknown_60: 

unknown_61:

unknown_62: 

unknown_63:

unknown_64: 

unknown_65:

unknown_66: 

unknown_67:

unknown_68:

unknown_69:

unknown_70:

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75: 

unknown_76: 

unknown_77: 

unknown_78:
identity��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78*\
TinU
S2Q*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*r
_read_only_resource_inputsT
RP	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOP*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_2944073f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_4:'#
!
_user_specified_name	2946118:'#
!
_user_specified_name	2946120:'#
!
_user_specified_name	2946122:'#
!
_user_specified_name	2946124:'#
!
_user_specified_name	2946126:'#
!
_user_specified_name	2946128:'#
!
_user_specified_name	2946130:'#
!
_user_specified_name	2946132:'	#
!
_user_specified_name	2946134:'
#
!
_user_specified_name	2946136:'#
!
_user_specified_name	2946138:'#
!
_user_specified_name	2946140:'#
!
_user_specified_name	2946142:'#
!
_user_specified_name	2946144:'#
!
_user_specified_name	2946146:'#
!
_user_specified_name	2946148:'#
!
_user_specified_name	2946150:'#
!
_user_specified_name	2946152:'#
!
_user_specified_name	2946154:'#
!
_user_specified_name	2946156:'#
!
_user_specified_name	2946158:'#
!
_user_specified_name	2946160:'#
!
_user_specified_name	2946162:'#
!
_user_specified_name	2946164:'#
!
_user_specified_name	2946166:'#
!
_user_specified_name	2946168:'#
!
_user_specified_name	2946170:'#
!
_user_specified_name	2946172:'#
!
_user_specified_name	2946174:'#
!
_user_specified_name	2946176:'#
!
_user_specified_name	2946178:' #
!
_user_specified_name	2946180:'!#
!
_user_specified_name	2946182:'"#
!
_user_specified_name	2946184:'##
!
_user_specified_name	2946186:'$#
!
_user_specified_name	2946188:'%#
!
_user_specified_name	2946190:'&#
!
_user_specified_name	2946192:''#
!
_user_specified_name	2946194:'(#
!
_user_specified_name	2946196:')#
!
_user_specified_name	2946198:'*#
!
_user_specified_name	2946200:'+#
!
_user_specified_name	2946202:',#
!
_user_specified_name	2946204:'-#
!
_user_specified_name	2946206:'.#
!
_user_specified_name	2946208:'/#
!
_user_specified_name	2946210:'0#
!
_user_specified_name	2946212:'1#
!
_user_specified_name	2946214:'2#
!
_user_specified_name	2946216:'3#
!
_user_specified_name	2946218:'4#
!
_user_specified_name	2946220:'5#
!
_user_specified_name	2946222:'6#
!
_user_specified_name	2946224:'7#
!
_user_specified_name	2946226:'8#
!
_user_specified_name	2946228:'9#
!
_user_specified_name	2946230:':#
!
_user_specified_name	2946232:';#
!
_user_specified_name	2946234:'<#
!
_user_specified_name	2946236:'=#
!
_user_specified_name	2946238:'>#
!
_user_specified_name	2946240:'?#
!
_user_specified_name	2946242:'@#
!
_user_specified_name	2946244:'A#
!
_user_specified_name	2946246:'B#
!
_user_specified_name	2946248:'C#
!
_user_specified_name	2946250:'D#
!
_user_specified_name	2946252:'E#
!
_user_specified_name	2946254:'F#
!
_user_specified_name	2946256:'G#
!
_user_specified_name	2946258:'H#
!
_user_specified_name	2946260:'I#
!
_user_specified_name	2946262:'J#
!
_user_specified_name	2946264:'K#
!
_user_specified_name	2946266:'L#
!
_user_specified_name	2946268:'M#
!
_user_specified_name	2946270:'N#
!
_user_specified_name	2946272:'O#
!
_user_specified_name	2946274:'P#
!
_user_specified_name	2946276
�
�
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_2946507

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
�
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_2947278

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�+
�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2946394	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbec
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:h
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_2944163

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
s
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_2947543

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_2944833

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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

f
G__inference_dropout_21_layer_call_and_return_conditional_losses_2944575

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2946790	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_2/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_2/IdentityIdentitysoftmax_2/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_2/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
9__inference_multi_head_attention_18_layer_call_fn_2946324	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2944910j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2946306:'#
!
_user_specified_name	2946308:'#
!
_user_specified_name	2946310:'#
!
_user_specified_name	2946312:'#
!
_user_specified_name	2946314:'#
!
_user_specified_name	2946316:'#
!
_user_specified_name	2946318:'	#
!
_user_specified_name	2946320
�
�
E__inference_dense_18_layer_call_and_return_conditional_losses_2946449

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
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
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
:\
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
:V
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
�
9__inference_multi_head_attention_22_layer_call_fn_2947119	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2945193j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2947101:'#
!
_user_specified_name	2947103:'#
!
_user_specified_name	2947105:'#
!
_user_specified_name	2947107:'#
!
_user_specified_name	2947109:'#
!
_user_specified_name	2947111:'#
!
_user_specified_name	2947113:'	#
!
_user_specified_name	2947115
�
H
,__inference_dropout_21_layer_call_fn_2947199

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_2945157[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2946993	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_3/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_3/IdentityIdentitysoftmax_3/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_3/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�+
�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2945118	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_3/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_3/IdentityIdentitysoftmax_3/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_3/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
e
G__inference_dropout_23_layer_call_and_return_conditional_losses_2947501

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�<
�
)__inference_model_3_layer_call_fn_2945481
input_4
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12: 

unknown_13:

unknown_14: 

unknown_15:

unknown_16: 

unknown_17:

unknown_18: 

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24: 

unknown_25:

unknown_26: 

unknown_27:

unknown_28: 

unknown_29:

unknown_30: 

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:

unknown_36: 

unknown_37:

unknown_38: 

unknown_39:

unknown_40: 

unknown_41:

unknown_42: 

unknown_43:

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48: 

unknown_49:

unknown_50: 

unknown_51:

unknown_52: 

unknown_53:

unknown_54: 

unknown_55:

unknown_56:

unknown_57:

unknown_58:

unknown_59:

unknown_60: 

unknown_61:

unknown_62: 

unknown_63:

unknown_64: 

unknown_65:

unknown_66: 

unknown_67:

unknown_68:

unknown_69:

unknown_70:

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75: 

unknown_76: 

unknown_77: 

unknown_78:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78*\
TinU
S2Q*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*r
_read_only_resource_inputsT
RP	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOP*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2944871f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_4:'#
!
_user_specified_name	2945319:'#
!
_user_specified_name	2945321:'#
!
_user_specified_name	2945323:'#
!
_user_specified_name	2945325:'#
!
_user_specified_name	2945327:'#
!
_user_specified_name	2945329:'#
!
_user_specified_name	2945331:'#
!
_user_specified_name	2945333:'	#
!
_user_specified_name	2945335:'
#
!
_user_specified_name	2945337:'#
!
_user_specified_name	2945339:'#
!
_user_specified_name	2945341:'#
!
_user_specified_name	2945343:'#
!
_user_specified_name	2945345:'#
!
_user_specified_name	2945347:'#
!
_user_specified_name	2945349:'#
!
_user_specified_name	2945351:'#
!
_user_specified_name	2945353:'#
!
_user_specified_name	2945355:'#
!
_user_specified_name	2945357:'#
!
_user_specified_name	2945359:'#
!
_user_specified_name	2945361:'#
!
_user_specified_name	2945363:'#
!
_user_specified_name	2945365:'#
!
_user_specified_name	2945367:'#
!
_user_specified_name	2945369:'#
!
_user_specified_name	2945371:'#
!
_user_specified_name	2945373:'#
!
_user_specified_name	2945375:'#
!
_user_specified_name	2945377:'#
!
_user_specified_name	2945379:' #
!
_user_specified_name	2945381:'!#
!
_user_specified_name	2945383:'"#
!
_user_specified_name	2945385:'##
!
_user_specified_name	2945387:'$#
!
_user_specified_name	2945389:'%#
!
_user_specified_name	2945391:'&#
!
_user_specified_name	2945393:''#
!
_user_specified_name	2945395:'(#
!
_user_specified_name	2945397:')#
!
_user_specified_name	2945399:'*#
!
_user_specified_name	2945401:'+#
!
_user_specified_name	2945403:',#
!
_user_specified_name	2945405:'-#
!
_user_specified_name	2945407:'.#
!
_user_specified_name	2945409:'/#
!
_user_specified_name	2945411:'0#
!
_user_specified_name	2945413:'1#
!
_user_specified_name	2945415:'2#
!
_user_specified_name	2945417:'3#
!
_user_specified_name	2945419:'4#
!
_user_specified_name	2945421:'5#
!
_user_specified_name	2945423:'6#
!
_user_specified_name	2945425:'7#
!
_user_specified_name	2945427:'8#
!
_user_specified_name	2945429:'9#
!
_user_specified_name	2945431:':#
!
_user_specified_name	2945433:';#
!
_user_specified_name	2945435:'<#
!
_user_specified_name	2945437:'=#
!
_user_specified_name	2945439:'>#
!
_user_specified_name	2945441:'?#
!
_user_specified_name	2945443:'@#
!
_user_specified_name	2945445:'A#
!
_user_specified_name	2945447:'B#
!
_user_specified_name	2945449:'C#
!
_user_specified_name	2945451:'D#
!
_user_specified_name	2945453:'E#
!
_user_specified_name	2945455:'F#
!
_user_specified_name	2945457:'G#
!
_user_specified_name	2945459:'H#
!
_user_specified_name	2945461:'I#
!
_user_specified_name	2945463:'J#
!
_user_specified_name	2945465:'K#
!
_user_specified_name	2945467:'L#
!
_user_specified_name	2945469:'M#
!
_user_specified_name	2945471:'N#
!
_user_specified_name	2945473:'O#
!
_user_specified_name	2945475:'P#
!
_user_specified_name	2945477
�+
�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2947392	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_5/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_5/IdentityIdentitysoftmax_5/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_5/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
E__inference_dense_19_layer_call_and_return_conditional_losses_2944324

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
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
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
:\
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
:V
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
�
�
E__inference_dense_18_layer_call_and_return_conditional_losses_2944183

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
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
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
:\
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
:V
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
E__inference_dense_23_layer_call_and_return_conditional_losses_2944864

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
_construction_contextkEagerRuntime*!
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

: 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
8__inference_layer_normalization_30_layer_call_fn_2946403

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_2944163j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2946397:'#
!
_user_specified_name	2946399
�
H
,__inference_dropout_18_layer_call_fn_2946459

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_2944943[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2944377	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_2/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_2/IdentityIdentitysoftmax_2/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_2/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_2944679

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
e
,__inference_dropout_19_layer_call_fn_2946795

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_2944341j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2945193	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_4/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_4/IdentityIdentitysoftmax_4/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_4/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�	
�
E__inference_dense_22_layer_call_and_return_conditional_losses_2947562

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

: S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
9__inference_multi_head_attention_19_layer_call_fn_2946529	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2944264j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2946511:'#
!
_user_specified_name	2946513:'#
!
_user_specified_name	2946515:'#
!
_user_specified_name	2946517:'#
!
_user_specified_name	2946519:'#
!
_user_specified_name	2946521:'#
!
_user_specified_name	2946523:'	#
!
_user_specified_name	2946525
�
�
8__inference_layer_normalization_32_layer_call_fn_2946630

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_2944304j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2946624:'#
!
_user_specified_name	2946626
�
�
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_2947532

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�+
�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2944910	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbec
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:h
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
X
<__inference_global_average_pooling1d_3_layer_call_fn_2947537

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *`
f[RY
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_2944079i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
s
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_2944079

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
H
,__inference_dropout_23_layer_call_fn_2947484

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_23_layer_call_and_return_conditional_losses_2945296[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2946621	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_1/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_1/IdentityIdentitysoftmax_1/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_1/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_2945018

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�\
"__inference__wrapped_model_2944073
input_4a
Kmodel_3_multi_head_attention_18_query_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_18_query_add_readvariableop_resource:_
Imodel_3_multi_head_attention_18_key_einsum_einsum_readvariableop_resource:Q
?model_3_multi_head_attention_18_key_add_readvariableop_resource:a
Kmodel_3_multi_head_attention_18_value_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_18_value_add_readvariableop_resource:l
Vmodel_3_multi_head_attention_18_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_3_multi_head_attention_18_attention_output_add_readvariableop_resource:R
Dmodel_3_layer_normalization_30_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_30_batchnorm_readvariableop_resource:D
2model_3_dense_18_tensordot_readvariableop_resource:>
0model_3_dense_18_biasadd_readvariableop_resource:R
Dmodel_3_layer_normalization_31_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_31_batchnorm_readvariableop_resource:a
Kmodel_3_multi_head_attention_19_query_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_19_query_add_readvariableop_resource:_
Imodel_3_multi_head_attention_19_key_einsum_einsum_readvariableop_resource:Q
?model_3_multi_head_attention_19_key_add_readvariableop_resource:a
Kmodel_3_multi_head_attention_19_value_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_19_value_add_readvariableop_resource:l
Vmodel_3_multi_head_attention_19_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_3_multi_head_attention_19_attention_output_add_readvariableop_resource:R
Dmodel_3_layer_normalization_32_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_32_batchnorm_readvariableop_resource:D
2model_3_dense_19_tensordot_readvariableop_resource:>
0model_3_dense_19_biasadd_readvariableop_resource:a
Kmodel_3_multi_head_attention_20_query_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_20_query_add_readvariableop_resource:_
Imodel_3_multi_head_attention_20_key_einsum_einsum_readvariableop_resource:Q
?model_3_multi_head_attention_20_key_add_readvariableop_resource:a
Kmodel_3_multi_head_attention_20_value_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_20_value_add_readvariableop_resource:l
Vmodel_3_multi_head_attention_20_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_3_multi_head_attention_20_attention_output_add_readvariableop_resource:R
Dmodel_3_layer_normalization_34_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_34_batchnorm_readvariableop_resource:R
Dmodel_3_layer_normalization_33_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_33_batchnorm_readvariableop_resource:a
Kmodel_3_multi_head_attention_21_query_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_21_query_add_readvariableop_resource:_
Imodel_3_multi_head_attention_21_key_einsum_einsum_readvariableop_resource:Q
?model_3_multi_head_attention_21_key_add_readvariableop_resource:a
Kmodel_3_multi_head_attention_21_value_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_21_value_add_readvariableop_resource:l
Vmodel_3_multi_head_attention_21_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_3_multi_head_attention_21_attention_output_add_readvariableop_resource:R
Dmodel_3_layer_normalization_35_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_35_batchnorm_readvariableop_resource:D
2model_3_dense_20_tensordot_readvariableop_resource:>
0model_3_dense_20_biasadd_readvariableop_resource:a
Kmodel_3_multi_head_attention_22_query_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_22_query_add_readvariableop_resource:_
Imodel_3_multi_head_attention_22_key_einsum_einsum_readvariableop_resource:Q
?model_3_multi_head_attention_22_key_add_readvariableop_resource:a
Kmodel_3_multi_head_attention_22_value_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_22_value_add_readvariableop_resource:l
Vmodel_3_multi_head_attention_22_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_3_multi_head_attention_22_attention_output_add_readvariableop_resource:R
Dmodel_3_layer_normalization_37_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_37_batchnorm_readvariableop_resource:R
Dmodel_3_layer_normalization_36_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_36_batchnorm_readvariableop_resource:a
Kmodel_3_multi_head_attention_23_query_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_23_query_add_readvariableop_resource:_
Imodel_3_multi_head_attention_23_key_einsum_einsum_readvariableop_resource:Q
?model_3_multi_head_attention_23_key_add_readvariableop_resource:a
Kmodel_3_multi_head_attention_23_value_einsum_einsum_readvariableop_resource:S
Amodel_3_multi_head_attention_23_value_add_readvariableop_resource:l
Vmodel_3_multi_head_attention_23_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_3_multi_head_attention_23_attention_output_add_readvariableop_resource:R
Dmodel_3_layer_normalization_38_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_38_batchnorm_readvariableop_resource:D
2model_3_dense_21_tensordot_readvariableop_resource:>
0model_3_dense_21_biasadd_readvariableop_resource:R
Dmodel_3_layer_normalization_39_batchnorm_mul_readvariableop_resource:N
@model_3_layer_normalization_39_batchnorm_readvariableop_resource:A
/model_3_dense_22_matmul_readvariableop_resource: >
0model_3_dense_22_biasadd_readvariableop_resource: A
/model_3_dense_23_matmul_readvariableop_resource: >
0model_3_dense_23_biasadd_readvariableop_resource:
identity��'model_3/dense_18/BiasAdd/ReadVariableOp�)model_3/dense_18/Tensordot/ReadVariableOp�'model_3/dense_19/BiasAdd/ReadVariableOp�)model_3/dense_19/Tensordot/ReadVariableOp�'model_3/dense_20/BiasAdd/ReadVariableOp�)model_3/dense_20/Tensordot/ReadVariableOp�'model_3/dense_21/BiasAdd/ReadVariableOp�)model_3/dense_21/Tensordot/ReadVariableOp�'model_3/dense_22/BiasAdd/ReadVariableOp�&model_3/dense_22/MatMul/ReadVariableOp�'model_3/dense_23/BiasAdd/ReadVariableOp�&model_3/dense_23/MatMul/ReadVariableOp�7model_3/layer_normalization_30/batchnorm/ReadVariableOp�;model_3/layer_normalization_30/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_31/batchnorm/ReadVariableOp�;model_3/layer_normalization_31/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_32/batchnorm/ReadVariableOp�;model_3/layer_normalization_32/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_33/batchnorm/ReadVariableOp�;model_3/layer_normalization_33/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_34/batchnorm/ReadVariableOp�;model_3/layer_normalization_34/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_35/batchnorm/ReadVariableOp�;model_3/layer_normalization_35/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_36/batchnorm/ReadVariableOp�;model_3/layer_normalization_36/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_37/batchnorm/ReadVariableOp�;model_3/layer_normalization_37/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_38/batchnorm/ReadVariableOp�;model_3/layer_normalization_38/batchnorm/mul/ReadVariableOp�7model_3/layer_normalization_39/batchnorm/ReadVariableOp�;model_3/layer_normalization_39/batchnorm/mul/ReadVariableOp�Cmodel_3/multi_head_attention_18/attention_output/add/ReadVariableOp�Mmodel_3/multi_head_attention_18/attention_output/einsum/Einsum/ReadVariableOp�6model_3/multi_head_attention_18/key/add/ReadVariableOp�@model_3/multi_head_attention_18/key/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_18/query/add/ReadVariableOp�Bmodel_3/multi_head_attention_18/query/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_18/value/add/ReadVariableOp�Bmodel_3/multi_head_attention_18/value/einsum/Einsum/ReadVariableOp�Cmodel_3/multi_head_attention_19/attention_output/add/ReadVariableOp�Mmodel_3/multi_head_attention_19/attention_output/einsum/Einsum/ReadVariableOp�6model_3/multi_head_attention_19/key/add/ReadVariableOp�@model_3/multi_head_attention_19/key/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_19/query/add/ReadVariableOp�Bmodel_3/multi_head_attention_19/query/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_19/value/add/ReadVariableOp�Bmodel_3/multi_head_attention_19/value/einsum/Einsum/ReadVariableOp�Cmodel_3/multi_head_attention_20/attention_output/add/ReadVariableOp�Mmodel_3/multi_head_attention_20/attention_output/einsum/Einsum/ReadVariableOp�6model_3/multi_head_attention_20/key/add/ReadVariableOp�@model_3/multi_head_attention_20/key/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_20/query/add/ReadVariableOp�Bmodel_3/multi_head_attention_20/query/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_20/value/add/ReadVariableOp�Bmodel_3/multi_head_attention_20/value/einsum/Einsum/ReadVariableOp�Cmodel_3/multi_head_attention_21/attention_output/add/ReadVariableOp�Mmodel_3/multi_head_attention_21/attention_output/einsum/Einsum/ReadVariableOp�6model_3/multi_head_attention_21/key/add/ReadVariableOp�@model_3/multi_head_attention_21/key/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_21/query/add/ReadVariableOp�Bmodel_3/multi_head_attention_21/query/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_21/value/add/ReadVariableOp�Bmodel_3/multi_head_attention_21/value/einsum/Einsum/ReadVariableOp�Cmodel_3/multi_head_attention_22/attention_output/add/ReadVariableOp�Mmodel_3/multi_head_attention_22/attention_output/einsum/Einsum/ReadVariableOp�6model_3/multi_head_attention_22/key/add/ReadVariableOp�@model_3/multi_head_attention_22/key/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_22/query/add/ReadVariableOp�Bmodel_3/multi_head_attention_22/query/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_22/value/add/ReadVariableOp�Bmodel_3/multi_head_attention_22/value/einsum/Einsum/ReadVariableOp�Cmodel_3/multi_head_attention_23/attention_output/add/ReadVariableOp�Mmodel_3/multi_head_attention_23/attention_output/einsum/Einsum/ReadVariableOp�6model_3/multi_head_attention_23/key/add/ReadVariableOp�@model_3/multi_head_attention_23/key/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_23/query/add/ReadVariableOp�Bmodel_3/multi_head_attention_23/query/einsum/Einsum/ReadVariableOp�8model_3/multi_head_attention_23/value/add/ReadVariableOp�Bmodel_3/multi_head_attention_23/value/einsum/Einsum/ReadVariableOp�
!model_3/tf.__operators__.add_33/yConst*
_output_shapes

:*
dtype0*�
value�B�"���.����;j�"����;�-==t�(��.N����м�����d��{(=&�����XW<�S=�绨��s%=4ff��f�:×H�@0��Q	J=�F�<�[��T=�޻4�3ܲ�`lg;�ݾ���S;h�2���;�~�vC���<��z<0�������f3�<��<@�?� 9��A=.v�<��ؼK�<��O<��R<��=:ݼ�:<��1=�}�<'F=B�<0�\;&>��6����< x�:�/=F��<�ـ< ��$����#;���<����㕼��<g=���o+�=�$����<�k� �B�0}q�����<�V�  *:(|���0=�Cc�(n@���#=����z��]�"=Z�ƼX�4�X:s�P�N��<n��<is7=C =�7���<:C�<�~<-�1=��Ѽ�޼������<`�;PSٻ!=M�.���#=�쨼f��<�IC��/}��4=��-���J=rļ�N<gⱼq�;�*�<�V���������G���<L�M��@�<&W�<�=0��;�|�<S�2��~<�S#<i�d�j<͑��%�<��=�Q�}�,=�O+='��ci=g��柆<@ �N}�<G����퍼��=@��B��<B�<ǵ.��B�f<�< L�8�\< ���,��p��#'�;='霼�����<� յ�S0�����̮:<f��<:ۆ<�͌�I9=�x�<��<@
����<����D=��;e���
%model_3/tf.__operators__.add_33/AddV2AddV2input_4*model_3/tf.__operators__.add_33/y:output:0*
T0*"
_output_shapes
:�
Bmodel_3/multi_head_attention_18/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_18_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_18/query/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Jmodel_3/multi_head_attention_18/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_18/query/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_18_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_18/query/addAddV2<model_3/multi_head_attention_18/query/einsum/Einsum:output:0@model_3/multi_head_attention_18/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_3/multi_head_attention_18/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_3_multi_head_attention_18_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_3/multi_head_attention_18/key/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Hmodel_3/multi_head_attention_18/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_3/multi_head_attention_18/key/add/ReadVariableOpReadVariableOp?model_3_multi_head_attention_18_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_3/multi_head_attention_18/key/addAddV2:model_3/multi_head_attention_18/key/einsum/Einsum:output:0>model_3/multi_head_attention_18/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_3/multi_head_attention_18/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_18_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_18/value/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Jmodel_3/multi_head_attention_18/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_18/value/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_18_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_18/value/addAddV2<model_3/multi_head_attention_18/value/einsum/Einsum:output:0@model_3/multi_head_attention_18/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_3/multi_head_attention_18/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_3/multi_head_attention_18/MulMul-model_3/multi_head_attention_18/query/add:z:0.model_3/multi_head_attention_18/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_3/multi_head_attention_18/einsum/EinsumEinsum+model_3/multi_head_attention_18/key/add:z:0'model_3/multi_head_attention_18/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
/model_3/multi_head_attention_18/softmax/SoftmaxSoftmax6model_3/multi_head_attention_18/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
0model_3/multi_head_attention_18/dropout/IdentityIdentity9model_3/multi_head_attention_18/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_3/multi_head_attention_18/einsum_1/EinsumEinsum9model_3/multi_head_attention_18/dropout/Identity:output:0-model_3/multi_head_attention_18/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_3/multi_head_attention_18/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_3_multi_head_attention_18_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_3/multi_head_attention_18/attention_output/einsum/EinsumEinsum8model_3/multi_head_attention_18/einsum_1/Einsum:output:0Umodel_3/multi_head_attention_18/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_3/multi_head_attention_18/attention_output/add/ReadVariableOpReadVariableOpLmodel_3_multi_head_attention_18_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_3/multi_head_attention_18/attention_output/addAddV2Gmodel_3/multi_head_attention_18/attention_output/einsum/Einsum:output:0Kmodel_3/multi_head_attention_18/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_34/AddV2AddV2)model_3/tf.__operators__.add_33/AddV2:z:08model_3/multi_head_attention_18/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_30/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_30/moments/meanMean)model_3/tf.__operators__.add_34/AddV2:z:0Fmodel_3/layer_normalization_30/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_30/moments/StopGradientStopGradient4model_3/layer_normalization_30/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_30/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_34/AddV2:z:0<model_3/layer_normalization_30/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_30/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_30/moments/varianceMean<model_3/layer_normalization_30/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_30/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_30/batchnorm/addAddV28model_3/layer_normalization_30/moments/variance:output:07model_3/layer_normalization_30/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_30/batchnorm/RsqrtRsqrt0model_3/layer_normalization_30/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_30/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_30_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_30/batchnorm/mulMul2model_3/layer_normalization_30/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_30/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_30/batchnorm/mul_1Mul)model_3/tf.__operators__.add_34/AddV2:z:00model_3/layer_normalization_30/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_30/batchnorm/mul_2Mul4model_3/layer_normalization_30/moments/mean:output:00model_3/layer_normalization_30/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_30/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_30_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_30/batchnorm/subSub?model_3/layer_normalization_30/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_30/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_30/batchnorm/add_1AddV22model_3/layer_normalization_30/batchnorm/mul_1:z:00model_3/layer_normalization_30/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
)model_3/dense_18/Tensordot/ReadVariableOpReadVariableOp2model_3_dense_18_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0y
(model_3/dense_18/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
"model_3/dense_18/Tensordot/ReshapeReshape2model_3/layer_normalization_30/batchnorm/add_1:z:01model_3/dense_18/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
!model_3/dense_18/Tensordot/MatMulMatMul+model_3/dense_18/Tensordot/Reshape:output:01model_3/dense_18/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
 model_3/dense_18/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_3/dense_18/TensordotReshape+model_3/dense_18/Tensordot/MatMul:product:0)model_3/dense_18/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
'model_3/dense_18/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_18/BiasAddBiasAdd#model_3/dense_18/Tensordot:output:0/model_3/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:m
model_3/dense_18/ReluRelu!model_3/dense_18/BiasAdd:output:0*
T0*"
_output_shapes
:y
model_3/dropout_18/IdentityIdentity#model_3/dense_18/Relu:activations:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_35/AddV2AddV22model_3/layer_normalization_30/batchnorm/add_1:z:0$model_3/dropout_18/Identity:output:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_31/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_31/moments/meanMean)model_3/tf.__operators__.add_35/AddV2:z:0Fmodel_3/layer_normalization_31/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_31/moments/StopGradientStopGradient4model_3/layer_normalization_31/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_31/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_35/AddV2:z:0<model_3/layer_normalization_31/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_31/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_31/moments/varianceMean<model_3/layer_normalization_31/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_31/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_31/batchnorm/addAddV28model_3/layer_normalization_31/moments/variance:output:07model_3/layer_normalization_31/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_31/batchnorm/RsqrtRsqrt0model_3/layer_normalization_31/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_31/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_31_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_31/batchnorm/mulMul2model_3/layer_normalization_31/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_31/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_31/batchnorm/mul_1Mul)model_3/tf.__operators__.add_35/AddV2:z:00model_3/layer_normalization_31/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_31/batchnorm/mul_2Mul4model_3/layer_normalization_31/moments/mean:output:00model_3/layer_normalization_31/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_31/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_31_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_31/batchnorm/subSub?model_3/layer_normalization_31/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_31/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_31/batchnorm/add_1AddV22model_3/layer_normalization_31/batchnorm/mul_1:z:00model_3/layer_normalization_31/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Bmodel_3/multi_head_attention_19/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_19_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_19/query/einsum/EinsumEinsum2model_3/layer_normalization_31/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_19/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_19/query/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_19_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_19/query/addAddV2<model_3/multi_head_attention_19/query/einsum/Einsum:output:0@model_3/multi_head_attention_19/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_3/multi_head_attention_19/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_3_multi_head_attention_19_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_3/multi_head_attention_19/key/einsum/EinsumEinsum2model_3/layer_normalization_31/batchnorm/add_1:z:0Hmodel_3/multi_head_attention_19/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_3/multi_head_attention_19/key/add/ReadVariableOpReadVariableOp?model_3_multi_head_attention_19_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_3/multi_head_attention_19/key/addAddV2:model_3/multi_head_attention_19/key/einsum/Einsum:output:0>model_3/multi_head_attention_19/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_3/multi_head_attention_19/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_19_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_19/value/einsum/EinsumEinsum2model_3/layer_normalization_31/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_19/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_19/value/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_19_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_19/value/addAddV2<model_3/multi_head_attention_19/value/einsum/Einsum:output:0@model_3/multi_head_attention_19/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_3/multi_head_attention_19/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_3/multi_head_attention_19/MulMul-model_3/multi_head_attention_19/query/add:z:0.model_3/multi_head_attention_19/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_3/multi_head_attention_19/einsum/EinsumEinsum+model_3/multi_head_attention_19/key/add:z:0'model_3/multi_head_attention_19/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
1model_3/multi_head_attention_19/softmax_1/SoftmaxSoftmax6model_3/multi_head_attention_19/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
2model_3/multi_head_attention_19/dropout_1/IdentityIdentity;model_3/multi_head_attention_19/softmax_1/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_3/multi_head_attention_19/einsum_1/EinsumEinsum;model_3/multi_head_attention_19/dropout_1/Identity:output:0-model_3/multi_head_attention_19/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_3/multi_head_attention_19/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_3_multi_head_attention_19_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_3/multi_head_attention_19/attention_output/einsum/EinsumEinsum8model_3/multi_head_attention_19/einsum_1/Einsum:output:0Umodel_3/multi_head_attention_19/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_3/multi_head_attention_19/attention_output/add/ReadVariableOpReadVariableOpLmodel_3_multi_head_attention_19_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_3/multi_head_attention_19/attention_output/addAddV2Gmodel_3/multi_head_attention_19/attention_output/einsum/Einsum:output:0Kmodel_3/multi_head_attention_19/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_36/AddV2AddV22model_3/layer_normalization_31/batchnorm/add_1:z:08model_3/multi_head_attention_19/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_32/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_32/moments/meanMean)model_3/tf.__operators__.add_36/AddV2:z:0Fmodel_3/layer_normalization_32/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_32/moments/StopGradientStopGradient4model_3/layer_normalization_32/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_32/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_36/AddV2:z:0<model_3/layer_normalization_32/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_32/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_32/moments/varianceMean<model_3/layer_normalization_32/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_32/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_32/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_32/batchnorm/addAddV28model_3/layer_normalization_32/moments/variance:output:07model_3/layer_normalization_32/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_32/batchnorm/RsqrtRsqrt0model_3/layer_normalization_32/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_32/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_32_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_32/batchnorm/mulMul2model_3/layer_normalization_32/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_32/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_32/batchnorm/mul_1Mul)model_3/tf.__operators__.add_36/AddV2:z:00model_3/layer_normalization_32/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_32/batchnorm/mul_2Mul4model_3/layer_normalization_32/moments/mean:output:00model_3/layer_normalization_32/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_32/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_32_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_32/batchnorm/subSub?model_3/layer_normalization_32/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_32/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_32/batchnorm/add_1AddV22model_3/layer_normalization_32/batchnorm/mul_1:z:00model_3/layer_normalization_32/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
)model_3/dense_19/Tensordot/ReadVariableOpReadVariableOp2model_3_dense_19_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0y
(model_3/dense_19/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
"model_3/dense_19/Tensordot/ReshapeReshape2model_3/layer_normalization_32/batchnorm/add_1:z:01model_3/dense_19/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
!model_3/dense_19/Tensordot/MatMulMatMul+model_3/dense_19/Tensordot/Reshape:output:01model_3/dense_19/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
 model_3/dense_19/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_3/dense_19/TensordotReshape+model_3/dense_19/Tensordot/MatMul:product:0)model_3/dense_19/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
'model_3/dense_19/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_19/BiasAddBiasAdd#model_3/dense_19/Tensordot:output:0/model_3/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:m
model_3/dense_19/ReluRelu!model_3/dense_19/BiasAdd:output:0*
T0*"
_output_shapes
:y
model_3/dropout_19/IdentityIdentity#model_3/dense_19/Relu:activations:0*
T0*"
_output_shapes
:�
Bmodel_3/multi_head_attention_20/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_20_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_20/query/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Jmodel_3/multi_head_attention_20/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_20/query/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_20_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_20/query/addAddV2<model_3/multi_head_attention_20/query/einsum/Einsum:output:0@model_3/multi_head_attention_20/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_3/multi_head_attention_20/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_3_multi_head_attention_20_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_3/multi_head_attention_20/key/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Hmodel_3/multi_head_attention_20/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_3/multi_head_attention_20/key/add/ReadVariableOpReadVariableOp?model_3_multi_head_attention_20_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_3/multi_head_attention_20/key/addAddV2:model_3/multi_head_attention_20/key/einsum/Einsum:output:0>model_3/multi_head_attention_20/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_3/multi_head_attention_20/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_20_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_20/value/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Jmodel_3/multi_head_attention_20/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_20/value/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_20_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_20/value/addAddV2<model_3/multi_head_attention_20/value/einsum/Einsum:output:0@model_3/multi_head_attention_20/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_3/multi_head_attention_20/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_3/multi_head_attention_20/MulMul-model_3/multi_head_attention_20/query/add:z:0.model_3/multi_head_attention_20/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_3/multi_head_attention_20/einsum/EinsumEinsum+model_3/multi_head_attention_20/key/add:z:0'model_3/multi_head_attention_20/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
1model_3/multi_head_attention_20/softmax_2/SoftmaxSoftmax6model_3/multi_head_attention_20/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
2model_3/multi_head_attention_20/dropout_2/IdentityIdentity;model_3/multi_head_attention_20/softmax_2/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_3/multi_head_attention_20/einsum_1/EinsumEinsum;model_3/multi_head_attention_20/dropout_2/Identity:output:0-model_3/multi_head_attention_20/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_3/multi_head_attention_20/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_3_multi_head_attention_20_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_3/multi_head_attention_20/attention_output/einsum/EinsumEinsum8model_3/multi_head_attention_20/einsum_1/Einsum:output:0Umodel_3/multi_head_attention_20/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_3/multi_head_attention_20/attention_output/add/ReadVariableOpReadVariableOpLmodel_3_multi_head_attention_20_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_3/multi_head_attention_20/attention_output/addAddV2Gmodel_3/multi_head_attention_20/attention_output/einsum/Einsum:output:0Kmodel_3/multi_head_attention_20/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_37/AddV2AddV22model_3/layer_normalization_32/batchnorm/add_1:z:0$model_3/dropout_19/Identity:output:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_38/AddV2AddV2)model_3/tf.__operators__.add_33/AddV2:z:08model_3/multi_head_attention_20/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_34/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_34/moments/meanMean)model_3/tf.__operators__.add_38/AddV2:z:0Fmodel_3/layer_normalization_34/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_34/moments/StopGradientStopGradient4model_3/layer_normalization_34/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_34/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_38/AddV2:z:0<model_3/layer_normalization_34/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_34/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_34/moments/varianceMean<model_3/layer_normalization_34/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_34/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_34/batchnorm/addAddV28model_3/layer_normalization_34/moments/variance:output:07model_3/layer_normalization_34/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_34/batchnorm/RsqrtRsqrt0model_3/layer_normalization_34/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_34/batchnorm/mulMul2model_3/layer_normalization_34/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_34/batchnorm/mul_1Mul)model_3/tf.__operators__.add_38/AddV2:z:00model_3/layer_normalization_34/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_34/batchnorm/mul_2Mul4model_3/layer_normalization_34/moments/mean:output:00model_3/layer_normalization_34/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_34/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_34_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_34/batchnorm/subSub?model_3/layer_normalization_34/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_34/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_34/batchnorm/add_1AddV22model_3/layer_normalization_34/batchnorm/mul_1:z:00model_3/layer_normalization_34/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_33/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_33/moments/meanMean)model_3/tf.__operators__.add_37/AddV2:z:0Fmodel_3/layer_normalization_33/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_33/moments/StopGradientStopGradient4model_3/layer_normalization_33/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_33/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_37/AddV2:z:0<model_3/layer_normalization_33/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_33/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_33/moments/varianceMean<model_3/layer_normalization_33/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_33/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_33/batchnorm/addAddV28model_3/layer_normalization_33/moments/variance:output:07model_3/layer_normalization_33/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_33/batchnorm/RsqrtRsqrt0model_3/layer_normalization_33/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_33/batchnorm/mulMul2model_3/layer_normalization_33/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_33/batchnorm/mul_1Mul)model_3/tf.__operators__.add_37/AddV2:z:00model_3/layer_normalization_33/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_33/batchnorm/mul_2Mul4model_3/layer_normalization_33/moments/mean:output:00model_3/layer_normalization_33/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_33/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_33_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_33/batchnorm/subSub?model_3/layer_normalization_33/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_33/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_33/batchnorm/add_1AddV22model_3/layer_normalization_33/batchnorm/mul_1:z:00model_3/layer_normalization_33/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Bmodel_3/multi_head_attention_21/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_21_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_21/query/einsum/EinsumEinsum2model_3/layer_normalization_34/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_21/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_21/query/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_21_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_21/query/addAddV2<model_3/multi_head_attention_21/query/einsum/Einsum:output:0@model_3/multi_head_attention_21/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_3/multi_head_attention_21/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_3_multi_head_attention_21_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_3/multi_head_attention_21/key/einsum/EinsumEinsum2model_3/layer_normalization_33/batchnorm/add_1:z:0Hmodel_3/multi_head_attention_21/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_3/multi_head_attention_21/key/add/ReadVariableOpReadVariableOp?model_3_multi_head_attention_21_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_3/multi_head_attention_21/key/addAddV2:model_3/multi_head_attention_21/key/einsum/Einsum:output:0>model_3/multi_head_attention_21/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_3/multi_head_attention_21/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_21_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_21/value/einsum/EinsumEinsum2model_3/layer_normalization_33/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_21/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_21/value/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_21_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_21/value/addAddV2<model_3/multi_head_attention_21/value/einsum/Einsum:output:0@model_3/multi_head_attention_21/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_3/multi_head_attention_21/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_3/multi_head_attention_21/MulMul-model_3/multi_head_attention_21/query/add:z:0.model_3/multi_head_attention_21/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_3/multi_head_attention_21/einsum/EinsumEinsum+model_3/multi_head_attention_21/key/add:z:0'model_3/multi_head_attention_21/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
1model_3/multi_head_attention_21/softmax_3/SoftmaxSoftmax6model_3/multi_head_attention_21/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
2model_3/multi_head_attention_21/dropout_3/IdentityIdentity;model_3/multi_head_attention_21/softmax_3/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_3/multi_head_attention_21/einsum_1/EinsumEinsum;model_3/multi_head_attention_21/dropout_3/Identity:output:0-model_3/multi_head_attention_21/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_3/multi_head_attention_21/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_3_multi_head_attention_21_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_3/multi_head_attention_21/attention_output/einsum/EinsumEinsum8model_3/multi_head_attention_21/einsum_1/Einsum:output:0Umodel_3/multi_head_attention_21/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_3/multi_head_attention_21/attention_output/add/ReadVariableOpReadVariableOpLmodel_3_multi_head_attention_21_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_3/multi_head_attention_21/attention_output/addAddV2Gmodel_3/multi_head_attention_21/attention_output/einsum/Einsum:output:0Kmodel_3/multi_head_attention_21/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
model_3/dropout_20/IdentityIdentity8model_3/multi_head_attention_21/attention_output/add:z:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_39/AddV2AddV22model_3/layer_normalization_34/batchnorm/add_1:z:0$model_3/dropout_20/Identity:output:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_35/moments/meanMean)model_3/tf.__operators__.add_39/AddV2:z:0Fmodel_3/layer_normalization_35/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_35/moments/StopGradientStopGradient4model_3/layer_normalization_35/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_35/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_39/AddV2:z:0<model_3/layer_normalization_35/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_35/moments/varianceMean<model_3/layer_normalization_35/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_35/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_35/batchnorm/addAddV28model_3/layer_normalization_35/moments/variance:output:07model_3/layer_normalization_35/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_35/batchnorm/RsqrtRsqrt0model_3/layer_normalization_35/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_35/batchnorm/mulMul2model_3/layer_normalization_35/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_35/batchnorm/mul_1Mul)model_3/tf.__operators__.add_39/AddV2:z:00model_3/layer_normalization_35/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_35/batchnorm/mul_2Mul4model_3/layer_normalization_35/moments/mean:output:00model_3/layer_normalization_35/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_35/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_35_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_35/batchnorm/subSub?model_3/layer_normalization_35/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_35/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_35/batchnorm/add_1AddV22model_3/layer_normalization_35/batchnorm/mul_1:z:00model_3/layer_normalization_35/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
)model_3/dense_20/Tensordot/ReadVariableOpReadVariableOp2model_3_dense_20_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0y
(model_3/dense_20/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
"model_3/dense_20/Tensordot/ReshapeReshape2model_3/layer_normalization_35/batchnorm/add_1:z:01model_3/dense_20/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
!model_3/dense_20/Tensordot/MatMulMatMul+model_3/dense_20/Tensordot/Reshape:output:01model_3/dense_20/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
 model_3/dense_20/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_3/dense_20/TensordotReshape+model_3/dense_20/Tensordot/MatMul:product:0)model_3/dense_20/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
'model_3/dense_20/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_20/BiasAddBiasAdd#model_3/dense_20/Tensordot:output:0/model_3/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:m
model_3/dense_20/ReluRelu!model_3/dense_20/BiasAdd:output:0*
T0*"
_output_shapes
:y
model_3/dropout_21/IdentityIdentity#model_3/dense_20/Relu:activations:0*
T0*"
_output_shapes
:�
Bmodel_3/multi_head_attention_22/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_22_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_22/query/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Jmodel_3/multi_head_attention_22/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_22/query/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_22_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_22/query/addAddV2<model_3/multi_head_attention_22/query/einsum/Einsum:output:0@model_3/multi_head_attention_22/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_3/multi_head_attention_22/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_3_multi_head_attention_22_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_3/multi_head_attention_22/key/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Hmodel_3/multi_head_attention_22/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_3/multi_head_attention_22/key/add/ReadVariableOpReadVariableOp?model_3_multi_head_attention_22_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_3/multi_head_attention_22/key/addAddV2:model_3/multi_head_attention_22/key/einsum/Einsum:output:0>model_3/multi_head_attention_22/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_3/multi_head_attention_22/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_22_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_22/value/einsum/EinsumEinsum)model_3/tf.__operators__.add_33/AddV2:z:0Jmodel_3/multi_head_attention_22/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_22/value/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_22_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_22/value/addAddV2<model_3/multi_head_attention_22/value/einsum/Einsum:output:0@model_3/multi_head_attention_22/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_3/multi_head_attention_22/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_3/multi_head_attention_22/MulMul-model_3/multi_head_attention_22/query/add:z:0.model_3/multi_head_attention_22/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_3/multi_head_attention_22/einsum/EinsumEinsum+model_3/multi_head_attention_22/key/add:z:0'model_3/multi_head_attention_22/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
1model_3/multi_head_attention_22/softmax_4/SoftmaxSoftmax6model_3/multi_head_attention_22/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
2model_3/multi_head_attention_22/dropout_4/IdentityIdentity;model_3/multi_head_attention_22/softmax_4/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_3/multi_head_attention_22/einsum_1/EinsumEinsum;model_3/multi_head_attention_22/dropout_4/Identity:output:0-model_3/multi_head_attention_22/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_3/multi_head_attention_22/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_3_multi_head_attention_22_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_3/multi_head_attention_22/attention_output/einsum/EinsumEinsum8model_3/multi_head_attention_22/einsum_1/Einsum:output:0Umodel_3/multi_head_attention_22/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_3/multi_head_attention_22/attention_output/add/ReadVariableOpReadVariableOpLmodel_3_multi_head_attention_22_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_3/multi_head_attention_22/attention_output/addAddV2Gmodel_3/multi_head_attention_22/attention_output/einsum/Einsum:output:0Kmodel_3/multi_head_attention_22/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_40/AddV2AddV22model_3/layer_normalization_35/batchnorm/add_1:z:0$model_3/dropout_21/Identity:output:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_41/AddV2AddV2)model_3/tf.__operators__.add_33/AddV2:z:08model_3/multi_head_attention_22/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_37/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_37/moments/meanMean)model_3/tf.__operators__.add_41/AddV2:z:0Fmodel_3/layer_normalization_37/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_37/moments/StopGradientStopGradient4model_3/layer_normalization_37/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_37/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_41/AddV2:z:0<model_3/layer_normalization_37/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_37/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_37/moments/varianceMean<model_3/layer_normalization_37/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_37/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_37/batchnorm/addAddV28model_3/layer_normalization_37/moments/variance:output:07model_3/layer_normalization_37/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_37/batchnorm/RsqrtRsqrt0model_3/layer_normalization_37/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_37/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_37_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_37/batchnorm/mulMul2model_3/layer_normalization_37/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_37/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_37/batchnorm/mul_1Mul)model_3/tf.__operators__.add_41/AddV2:z:00model_3/layer_normalization_37/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_37/batchnorm/mul_2Mul4model_3/layer_normalization_37/moments/mean:output:00model_3/layer_normalization_37/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_37/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_37_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_37/batchnorm/subSub?model_3/layer_normalization_37/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_37/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_37/batchnorm/add_1AddV22model_3/layer_normalization_37/batchnorm/mul_1:z:00model_3/layer_normalization_37/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_36/moments/meanMean)model_3/tf.__operators__.add_40/AddV2:z:0Fmodel_3/layer_normalization_36/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_36/moments/StopGradientStopGradient4model_3/layer_normalization_36/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_36/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_40/AddV2:z:0<model_3/layer_normalization_36/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_36/moments/varianceMean<model_3/layer_normalization_36/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_36/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_36/batchnorm/addAddV28model_3/layer_normalization_36/moments/variance:output:07model_3/layer_normalization_36/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_36/batchnorm/RsqrtRsqrt0model_3/layer_normalization_36/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_36/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_36_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_36/batchnorm/mulMul2model_3/layer_normalization_36/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_36/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_36/batchnorm/mul_1Mul)model_3/tf.__operators__.add_40/AddV2:z:00model_3/layer_normalization_36/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_36/batchnorm/mul_2Mul4model_3/layer_normalization_36/moments/mean:output:00model_3/layer_normalization_36/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_36/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_36_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_36/batchnorm/subSub?model_3/layer_normalization_36/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_36/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_36/batchnorm/add_1AddV22model_3/layer_normalization_36/batchnorm/mul_1:z:00model_3/layer_normalization_36/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Bmodel_3/multi_head_attention_23/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_23_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_23/query/einsum/EinsumEinsum2model_3/layer_normalization_37/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_23/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_23/query/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_23_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_23/query/addAddV2<model_3/multi_head_attention_23/query/einsum/Einsum:output:0@model_3/multi_head_attention_23/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_3/multi_head_attention_23/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_3_multi_head_attention_23_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_3/multi_head_attention_23/key/einsum/EinsumEinsum2model_3/layer_normalization_36/batchnorm/add_1:z:0Hmodel_3/multi_head_attention_23/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_3/multi_head_attention_23/key/add/ReadVariableOpReadVariableOp?model_3_multi_head_attention_23_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_3/multi_head_attention_23/key/addAddV2:model_3/multi_head_attention_23/key/einsum/Einsum:output:0>model_3/multi_head_attention_23/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_3/multi_head_attention_23/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_23_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_3/multi_head_attention_23/value/einsum/EinsumEinsum2model_3/layer_normalization_36/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_23/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_3/multi_head_attention_23/value/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_23_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_3/multi_head_attention_23/value/addAddV2<model_3/multi_head_attention_23/value/einsum/Einsum:output:0@model_3/multi_head_attention_23/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_3/multi_head_attention_23/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_3/multi_head_attention_23/MulMul-model_3/multi_head_attention_23/query/add:z:0.model_3/multi_head_attention_23/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_3/multi_head_attention_23/einsum/EinsumEinsum+model_3/multi_head_attention_23/key/add:z:0'model_3/multi_head_attention_23/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
1model_3/multi_head_attention_23/softmax_5/SoftmaxSoftmax6model_3/multi_head_attention_23/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
2model_3/multi_head_attention_23/dropout_5/IdentityIdentity;model_3/multi_head_attention_23/softmax_5/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_3/multi_head_attention_23/einsum_1/EinsumEinsum;model_3/multi_head_attention_23/dropout_5/Identity:output:0-model_3/multi_head_attention_23/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_3/multi_head_attention_23/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_3_multi_head_attention_23_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_3/multi_head_attention_23/attention_output/einsum/EinsumEinsum8model_3/multi_head_attention_23/einsum_1/Einsum:output:0Umodel_3/multi_head_attention_23/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_3/multi_head_attention_23/attention_output/add/ReadVariableOpReadVariableOpLmodel_3_multi_head_attention_23_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_3/multi_head_attention_23/attention_output/addAddV2Gmodel_3/multi_head_attention_23/attention_output/einsum/Einsum:output:0Kmodel_3/multi_head_attention_23/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
model_3/dropout_22/IdentityIdentity8model_3/multi_head_attention_23/attention_output/add:z:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_42/AddV2AddV22model_3/layer_normalization_37/batchnorm/add_1:z:0$model_3/dropout_22/Identity:output:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_38/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_38/moments/meanMean)model_3/tf.__operators__.add_42/AddV2:z:0Fmodel_3/layer_normalization_38/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_38/moments/StopGradientStopGradient4model_3/layer_normalization_38/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_38/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_42/AddV2:z:0<model_3/layer_normalization_38/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_38/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_38/moments/varianceMean<model_3/layer_normalization_38/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_38/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_38/batchnorm/addAddV28model_3/layer_normalization_38/moments/variance:output:07model_3/layer_normalization_38/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_38/batchnorm/RsqrtRsqrt0model_3/layer_normalization_38/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_38/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_38_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_38/batchnorm/mulMul2model_3/layer_normalization_38/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_38/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_38/batchnorm/mul_1Mul)model_3/tf.__operators__.add_42/AddV2:z:00model_3/layer_normalization_38/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_38/batchnorm/mul_2Mul4model_3/layer_normalization_38/moments/mean:output:00model_3/layer_normalization_38/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_38/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_38_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_38/batchnorm/subSub?model_3/layer_normalization_38/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_38/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_38/batchnorm/add_1AddV22model_3/layer_normalization_38/batchnorm/mul_1:z:00model_3/layer_normalization_38/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
)model_3/dense_21/Tensordot/ReadVariableOpReadVariableOp2model_3_dense_21_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0y
(model_3/dense_21/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
"model_3/dense_21/Tensordot/ReshapeReshape2model_3/layer_normalization_38/batchnorm/add_1:z:01model_3/dense_21/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
!model_3/dense_21/Tensordot/MatMulMatMul+model_3/dense_21/Tensordot/Reshape:output:01model_3/dense_21/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
 model_3/dense_21/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_3/dense_21/TensordotReshape+model_3/dense_21/Tensordot/MatMul:product:0)model_3/dense_21/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
'model_3/dense_21/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_21/BiasAddBiasAdd#model_3/dense_21/Tensordot:output:0/model_3/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:m
model_3/dense_21/ReluRelu!model_3/dense_21/BiasAdd:output:0*
T0*"
_output_shapes
:y
model_3/dropout_23/IdentityIdentity#model_3/dense_21/Relu:activations:0*
T0*"
_output_shapes
:�
%model_3/tf.__operators__.add_43/AddV2AddV22model_3/layer_normalization_38/batchnorm/add_1:z:0$model_3/dropout_23/Identity:output:0*
T0*"
_output_shapes
:�
=model_3/layer_normalization_39/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_3/layer_normalization_39/moments/meanMean)model_3/tf.__operators__.add_43/AddV2:z:0Fmodel_3/layer_normalization_39/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_3/layer_normalization_39/moments/StopGradientStopGradient4model_3/layer_normalization_39/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_3/layer_normalization_39/moments/SquaredDifferenceSquaredDifference)model_3/tf.__operators__.add_43/AddV2:z:0<model_3/layer_normalization_39/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_3/layer_normalization_39/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_3/layer_normalization_39/moments/varianceMean<model_3/layer_normalization_39/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_39/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_3/layer_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_3/layer_normalization_39/batchnorm/addAddV28model_3/layer_normalization_39/moments/variance:output:07model_3/layer_normalization_39/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_39/batchnorm/RsqrtRsqrt0model_3/layer_normalization_39/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_3/layer_normalization_39/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_39_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_39/batchnorm/mulMul2model_3/layer_normalization_39/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_39/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_39/batchnorm/mul_1Mul)model_3/tf.__operators__.add_43/AddV2:z:00model_3/layer_normalization_39/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_39/batchnorm/mul_2Mul4model_3/layer_normalization_39/moments/mean:output:00model_3/layer_normalization_39/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_3/layer_normalization_39/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_39_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_3/layer_normalization_39/batchnorm/subSub?model_3/layer_normalization_39/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_39/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_3/layer_normalization_39/batchnorm/add_1AddV22model_3/layer_normalization_39/batchnorm/mul_1:z:00model_3/layer_normalization_39/batchnorm/sub:z:0*
T0*"
_output_shapes
:{
9model_3/global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_3/global_average_pooling1d_3/MeanMean2model_3/layer_normalization_39/batchnorm/add_1:z:0Bmodel_3/global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*
_output_shapes

:�
&model_3/dense_22/MatMul/ReadVariableOpReadVariableOp/model_3_dense_22_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_3/dense_22/MatMulMatMul0model_3/global_average_pooling1d_3/Mean:output:0.model_3/dense_22/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
'model_3/dense_22/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_3/dense_22/BiasAddBiasAdd!model_3/dense_22/MatMul:product:0/model_3/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: �
&model_3/dense_23/MatMul/ReadVariableOpReadVariableOp/model_3_dense_23_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_3/dense_23/MatMulMatMul!model_3/dense_22/BiasAdd:output:0.model_3/dense_23/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
'model_3/dense_23/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_23/BiasAddBiasAdd!model_3/dense_23/MatMul:product:0/model_3/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:g
IdentityIdentity!model_3/dense_23/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:�&
NoOpNoOp(^model_3/dense_18/BiasAdd/ReadVariableOp*^model_3/dense_18/Tensordot/ReadVariableOp(^model_3/dense_19/BiasAdd/ReadVariableOp*^model_3/dense_19/Tensordot/ReadVariableOp(^model_3/dense_20/BiasAdd/ReadVariableOp*^model_3/dense_20/Tensordot/ReadVariableOp(^model_3/dense_21/BiasAdd/ReadVariableOp*^model_3/dense_21/Tensordot/ReadVariableOp(^model_3/dense_22/BiasAdd/ReadVariableOp'^model_3/dense_22/MatMul/ReadVariableOp(^model_3/dense_23/BiasAdd/ReadVariableOp'^model_3/dense_23/MatMul/ReadVariableOp8^model_3/layer_normalization_30/batchnorm/ReadVariableOp<^model_3/layer_normalization_30/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_31/batchnorm/ReadVariableOp<^model_3/layer_normalization_31/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_32/batchnorm/ReadVariableOp<^model_3/layer_normalization_32/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_33/batchnorm/ReadVariableOp<^model_3/layer_normalization_33/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_34/batchnorm/ReadVariableOp<^model_3/layer_normalization_34/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_35/batchnorm/ReadVariableOp<^model_3/layer_normalization_35/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_36/batchnorm/ReadVariableOp<^model_3/layer_normalization_36/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_37/batchnorm/ReadVariableOp<^model_3/layer_normalization_37/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_38/batchnorm/ReadVariableOp<^model_3/layer_normalization_38/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_39/batchnorm/ReadVariableOp<^model_3/layer_normalization_39/batchnorm/mul/ReadVariableOpD^model_3/multi_head_attention_18/attention_output/add/ReadVariableOpN^model_3/multi_head_attention_18/attention_output/einsum/Einsum/ReadVariableOp7^model_3/multi_head_attention_18/key/add/ReadVariableOpA^model_3/multi_head_attention_18/key/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_18/query/add/ReadVariableOpC^model_3/multi_head_attention_18/query/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_18/value/add/ReadVariableOpC^model_3/multi_head_attention_18/value/einsum/Einsum/ReadVariableOpD^model_3/multi_head_attention_19/attention_output/add/ReadVariableOpN^model_3/multi_head_attention_19/attention_output/einsum/Einsum/ReadVariableOp7^model_3/multi_head_attention_19/key/add/ReadVariableOpA^model_3/multi_head_attention_19/key/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_19/query/add/ReadVariableOpC^model_3/multi_head_attention_19/query/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_19/value/add/ReadVariableOpC^model_3/multi_head_attention_19/value/einsum/Einsum/ReadVariableOpD^model_3/multi_head_attention_20/attention_output/add/ReadVariableOpN^model_3/multi_head_attention_20/attention_output/einsum/Einsum/ReadVariableOp7^model_3/multi_head_attention_20/key/add/ReadVariableOpA^model_3/multi_head_attention_20/key/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_20/query/add/ReadVariableOpC^model_3/multi_head_attention_20/query/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_20/value/add/ReadVariableOpC^model_3/multi_head_attention_20/value/einsum/Einsum/ReadVariableOpD^model_3/multi_head_attention_21/attention_output/add/ReadVariableOpN^model_3/multi_head_attention_21/attention_output/einsum/Einsum/ReadVariableOp7^model_3/multi_head_attention_21/key/add/ReadVariableOpA^model_3/multi_head_attention_21/key/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_21/query/add/ReadVariableOpC^model_3/multi_head_attention_21/query/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_21/value/add/ReadVariableOpC^model_3/multi_head_attention_21/value/einsum/Einsum/ReadVariableOpD^model_3/multi_head_attention_22/attention_output/add/ReadVariableOpN^model_3/multi_head_attention_22/attention_output/einsum/Einsum/ReadVariableOp7^model_3/multi_head_attention_22/key/add/ReadVariableOpA^model_3/multi_head_attention_22/key/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_22/query/add/ReadVariableOpC^model_3/multi_head_attention_22/query/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_22/value/add/ReadVariableOpC^model_3/multi_head_attention_22/value/einsum/Einsum/ReadVariableOpD^model_3/multi_head_attention_23/attention_output/add/ReadVariableOpN^model_3/multi_head_attention_23/attention_output/einsum/Einsum/ReadVariableOp7^model_3/multi_head_attention_23/key/add/ReadVariableOpA^model_3/multi_head_attention_23/key/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_23/query/add/ReadVariableOpC^model_3/multi_head_attention_23/query/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_23/value/add/ReadVariableOpC^model_3/multi_head_attention_23/value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_3/dense_18/BiasAdd/ReadVariableOp'model_3/dense_18/BiasAdd/ReadVariableOp2V
)model_3/dense_18/Tensordot/ReadVariableOp)model_3/dense_18/Tensordot/ReadVariableOp2R
'model_3/dense_19/BiasAdd/ReadVariableOp'model_3/dense_19/BiasAdd/ReadVariableOp2V
)model_3/dense_19/Tensordot/ReadVariableOp)model_3/dense_19/Tensordot/ReadVariableOp2R
'model_3/dense_20/BiasAdd/ReadVariableOp'model_3/dense_20/BiasAdd/ReadVariableOp2V
)model_3/dense_20/Tensordot/ReadVariableOp)model_3/dense_20/Tensordot/ReadVariableOp2R
'model_3/dense_21/BiasAdd/ReadVariableOp'model_3/dense_21/BiasAdd/ReadVariableOp2V
)model_3/dense_21/Tensordot/ReadVariableOp)model_3/dense_21/Tensordot/ReadVariableOp2R
'model_3/dense_22/BiasAdd/ReadVariableOp'model_3/dense_22/BiasAdd/ReadVariableOp2P
&model_3/dense_22/MatMul/ReadVariableOp&model_3/dense_22/MatMul/ReadVariableOp2R
'model_3/dense_23/BiasAdd/ReadVariableOp'model_3/dense_23/BiasAdd/ReadVariableOp2P
&model_3/dense_23/MatMul/ReadVariableOp&model_3/dense_23/MatMul/ReadVariableOp2r
7model_3/layer_normalization_30/batchnorm/ReadVariableOp7model_3/layer_normalization_30/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_30/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_30/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_31/batchnorm/ReadVariableOp7model_3/layer_normalization_31/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_31/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_31/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_32/batchnorm/ReadVariableOp7model_3/layer_normalization_32/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_32/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_32/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_33/batchnorm/ReadVariableOp7model_3/layer_normalization_33/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_33/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_33/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_34/batchnorm/ReadVariableOp7model_3/layer_normalization_34/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_34/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_34/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_35/batchnorm/ReadVariableOp7model_3/layer_normalization_35/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_35/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_35/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_36/batchnorm/ReadVariableOp7model_3/layer_normalization_36/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_36/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_36/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_37/batchnorm/ReadVariableOp7model_3/layer_normalization_37/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_37/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_37/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_38/batchnorm/ReadVariableOp7model_3/layer_normalization_38/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_38/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_38/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_39/batchnorm/ReadVariableOp7model_3/layer_normalization_39/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_39/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_39/batchnorm/mul/ReadVariableOp2�
Cmodel_3/multi_head_attention_18/attention_output/add/ReadVariableOpCmodel_3/multi_head_attention_18/attention_output/add/ReadVariableOp2�
Mmodel_3/multi_head_attention_18/attention_output/einsum/Einsum/ReadVariableOpMmodel_3/multi_head_attention_18/attention_output/einsum/Einsum/ReadVariableOp2p
6model_3/multi_head_attention_18/key/add/ReadVariableOp6model_3/multi_head_attention_18/key/add/ReadVariableOp2�
@model_3/multi_head_attention_18/key/einsum/Einsum/ReadVariableOp@model_3/multi_head_attention_18/key/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_18/query/add/ReadVariableOp8model_3/multi_head_attention_18/query/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_18/query/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_18/query/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_18/value/add/ReadVariableOp8model_3/multi_head_attention_18/value/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_18/value/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_18/value/einsum/Einsum/ReadVariableOp2�
Cmodel_3/multi_head_attention_19/attention_output/add/ReadVariableOpCmodel_3/multi_head_attention_19/attention_output/add/ReadVariableOp2�
Mmodel_3/multi_head_attention_19/attention_output/einsum/Einsum/ReadVariableOpMmodel_3/multi_head_attention_19/attention_output/einsum/Einsum/ReadVariableOp2p
6model_3/multi_head_attention_19/key/add/ReadVariableOp6model_3/multi_head_attention_19/key/add/ReadVariableOp2�
@model_3/multi_head_attention_19/key/einsum/Einsum/ReadVariableOp@model_3/multi_head_attention_19/key/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_19/query/add/ReadVariableOp8model_3/multi_head_attention_19/query/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_19/query/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_19/query/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_19/value/add/ReadVariableOp8model_3/multi_head_attention_19/value/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_19/value/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_19/value/einsum/Einsum/ReadVariableOp2�
Cmodel_3/multi_head_attention_20/attention_output/add/ReadVariableOpCmodel_3/multi_head_attention_20/attention_output/add/ReadVariableOp2�
Mmodel_3/multi_head_attention_20/attention_output/einsum/Einsum/ReadVariableOpMmodel_3/multi_head_attention_20/attention_output/einsum/Einsum/ReadVariableOp2p
6model_3/multi_head_attention_20/key/add/ReadVariableOp6model_3/multi_head_attention_20/key/add/ReadVariableOp2�
@model_3/multi_head_attention_20/key/einsum/Einsum/ReadVariableOp@model_3/multi_head_attention_20/key/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_20/query/add/ReadVariableOp8model_3/multi_head_attention_20/query/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_20/query/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_20/query/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_20/value/add/ReadVariableOp8model_3/multi_head_attention_20/value/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_20/value/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_20/value/einsum/Einsum/ReadVariableOp2�
Cmodel_3/multi_head_attention_21/attention_output/add/ReadVariableOpCmodel_3/multi_head_attention_21/attention_output/add/ReadVariableOp2�
Mmodel_3/multi_head_attention_21/attention_output/einsum/Einsum/ReadVariableOpMmodel_3/multi_head_attention_21/attention_output/einsum/Einsum/ReadVariableOp2p
6model_3/multi_head_attention_21/key/add/ReadVariableOp6model_3/multi_head_attention_21/key/add/ReadVariableOp2�
@model_3/multi_head_attention_21/key/einsum/Einsum/ReadVariableOp@model_3/multi_head_attention_21/key/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_21/query/add/ReadVariableOp8model_3/multi_head_attention_21/query/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_21/query/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_21/query/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_21/value/add/ReadVariableOp8model_3/multi_head_attention_21/value/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_21/value/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_21/value/einsum/Einsum/ReadVariableOp2�
Cmodel_3/multi_head_attention_22/attention_output/add/ReadVariableOpCmodel_3/multi_head_attention_22/attention_output/add/ReadVariableOp2�
Mmodel_3/multi_head_attention_22/attention_output/einsum/Einsum/ReadVariableOpMmodel_3/multi_head_attention_22/attention_output/einsum/Einsum/ReadVariableOp2p
6model_3/multi_head_attention_22/key/add/ReadVariableOp6model_3/multi_head_attention_22/key/add/ReadVariableOp2�
@model_3/multi_head_attention_22/key/einsum/Einsum/ReadVariableOp@model_3/multi_head_attention_22/key/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_22/query/add/ReadVariableOp8model_3/multi_head_attention_22/query/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_22/query/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_22/query/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_22/value/add/ReadVariableOp8model_3/multi_head_attention_22/value/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_22/value/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_22/value/einsum/Einsum/ReadVariableOp2�
Cmodel_3/multi_head_attention_23/attention_output/add/ReadVariableOpCmodel_3/multi_head_attention_23/attention_output/add/ReadVariableOp2�
Mmodel_3/multi_head_attention_23/attention_output/einsum/Einsum/ReadVariableOpMmodel_3/multi_head_attention_23/attention_output/einsum/Einsum/ReadVariableOp2p
6model_3/multi_head_attention_23/key/add/ReadVariableOp6model_3/multi_head_attention_23/key/add/ReadVariableOp2�
@model_3/multi_head_attention_23/key/einsum/Einsum/ReadVariableOp@model_3/multi_head_attention_23/key/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_23/query/add/ReadVariableOp8model_3/multi_head_attention_23/query/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_23/query/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_23/query/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_23/value/add/ReadVariableOp8model_3/multi_head_attention_23/value/add/ReadVariableOp2�
Bmodel_3/multi_head_attention_23/value/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_23/value/einsum/Einsum/ReadVariableOp:K G
"
_output_shapes
:
!
_user_specified_name	input_4:($
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
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(.$
"
_user_specified_name
resource:(/$
"
_user_specified_name
resource:(0$
"
_user_specified_name
resource:(1$
"
_user_specified_name
resource:(2$
"
_user_specified_name
resource:(3$
"
_user_specified_name
resource:(4$
"
_user_specified_name
resource:(5$
"
_user_specified_name
resource:(6$
"
_user_specified_name
resource:(7$
"
_user_specified_name
resource:(8$
"
_user_specified_name
resource:(9$
"
_user_specified_name
resource:(:$
"
_user_specified_name
resource:(;$
"
_user_specified_name
resource:(<$
"
_user_specified_name
resource:(=$
"
_user_specified_name
resource:(>$
"
_user_specified_name
resource:(?$
"
_user_specified_name
resource:(@$
"
_user_specified_name
resource:(A$
"
_user_specified_name
resource:(B$
"
_user_specified_name
resource:(C$
"
_user_specified_name
resource:(D$
"
_user_specified_name
resource:(E$
"
_user_specified_name
resource:(F$
"
_user_specified_name
resource:(G$
"
_user_specified_name
resource:(H$
"
_user_specified_name
resource:(I$
"
_user_specified_name
resource:(J$
"
_user_specified_name
resource:(K$
"
_user_specified_name
resource:(L$
"
_user_specified_name
resource:(M$
"
_user_specified_name
resource:(N$
"
_user_specified_name
resource:(O$
"
_user_specified_name
resource:(P$
"
_user_specified_name
resource
�
�
9__inference_multi_head_attention_20_layer_call_fn_2946698	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2944377j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:'#
!
_user_specified_name	2946680:'#
!
_user_specified_name	2946682:'#
!
_user_specified_name	2946684:'#
!
_user_specified_name	2946686:'#
!
_user_specified_name	2946688:'#
!
_user_specified_name	2946690:'#
!
_user_specified_name	2946692:'	#
!
_user_specified_name	2946694
�

f
G__inference_dropout_23_layer_call_and_return_conditional_losses_2947496

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2947189	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_4/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_4/IdentityIdentitysoftmax_4/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_4/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�+
�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2946958	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_3/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_3/IdentityIdentitysoftmax_3/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_3/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
*__inference_dense_19_layer_call_fn_2946661

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
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_2944324j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2946655:'#
!
_user_specified_name	2946657
�
�
8__inference_layer_normalization_38_layer_call_fn_2947428

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_2944772j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947422:'#
!
_user_specified_name	2947424
�
�
8__inference_layer_normalization_36_layer_call_fn_2947256

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_2944679j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2947250:'#
!
_user_specified_name	2947252
��
�&
D__inference_model_3_layer_call_and_return_conditional_losses_2945316
input_45
multi_head_attention_18_2944911:1
multi_head_attention_18_2944913:5
multi_head_attention_18_2944915:1
multi_head_attention_18_2944917:5
multi_head_attention_18_2944919:1
multi_head_attention_18_2944921:5
multi_head_attention_18_2944923:-
multi_head_attention_18_2944925:,
layer_normalization_30_2944929:,
layer_normalization_30_2944931:"
dense_18_2944934:
dense_18_2944936:,
layer_normalization_31_2944946:,
layer_normalization_31_2944948:5
multi_head_attention_19_2944986:1
multi_head_attention_19_2944988:5
multi_head_attention_19_2944990:1
multi_head_attention_19_2944992:5
multi_head_attention_19_2944994:1
multi_head_attention_19_2944996:5
multi_head_attention_19_2944998:-
multi_head_attention_19_2945000:,
layer_normalization_32_2945004:,
layer_normalization_32_2945006:"
dense_19_2945009:
dense_19_2945011:5
multi_head_attention_20_2945055:1
multi_head_attention_20_2945057:5
multi_head_attention_20_2945059:1
multi_head_attention_20_2945061:5
multi_head_attention_20_2945063:1
multi_head_attention_20_2945065:5
multi_head_attention_20_2945067:-
multi_head_attention_20_2945069:,
layer_normalization_34_2945074:,
layer_normalization_34_2945076:,
layer_normalization_33_2945079:,
layer_normalization_33_2945081:5
multi_head_attention_21_2945119:1
multi_head_attention_21_2945121:5
multi_head_attention_21_2945123:1
multi_head_attention_21_2945125:5
multi_head_attention_21_2945127:1
multi_head_attention_21_2945129:5
multi_head_attention_21_2945131:-
multi_head_attention_21_2945133:,
layer_normalization_35_2945143:,
layer_normalization_35_2945145:"
dense_20_2945148:
dense_20_2945150:5
multi_head_attention_22_2945194:1
multi_head_attention_22_2945196:5
multi_head_attention_22_2945198:1
multi_head_attention_22_2945200:5
multi_head_attention_22_2945202:1
multi_head_attention_22_2945204:5
multi_head_attention_22_2945206:-
multi_head_attention_22_2945208:,
layer_normalization_37_2945213:,
layer_normalization_37_2945215:,
layer_normalization_36_2945218:,
layer_normalization_36_2945220:5
multi_head_attention_23_2945258:1
multi_head_attention_23_2945260:5
multi_head_attention_23_2945262:1
multi_head_attention_23_2945264:5
multi_head_attention_23_2945266:1
multi_head_attention_23_2945268:5
multi_head_attention_23_2945270:-
multi_head_attention_23_2945272:,
layer_normalization_38_2945282:,
layer_normalization_38_2945284:"
dense_21_2945287:
dense_21_2945289:,
layer_normalization_39_2945299:,
layer_normalization_39_2945301:"
dense_22_2945305: 
dense_22_2945307: "
dense_23_2945310: 
dense_23_2945312:
identity�� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall� dense_21/StatefulPartitionedCall� dense_22/StatefulPartitionedCall� dense_23/StatefulPartitionedCall�.layer_normalization_30/StatefulPartitionedCall�.layer_normalization_31/StatefulPartitionedCall�.layer_normalization_32/StatefulPartitionedCall�.layer_normalization_33/StatefulPartitionedCall�.layer_normalization_34/StatefulPartitionedCall�.layer_normalization_35/StatefulPartitionedCall�.layer_normalization_36/StatefulPartitionedCall�.layer_normalization_37/StatefulPartitionedCall�.layer_normalization_38/StatefulPartitionedCall�.layer_normalization_39/StatefulPartitionedCall�/multi_head_attention_18/StatefulPartitionedCall�/multi_head_attention_19/StatefulPartitionedCall�/multi_head_attention_20/StatefulPartitionedCall�/multi_head_attention_21/StatefulPartitionedCall�/multi_head_attention_22/StatefulPartitionedCall�/multi_head_attention_23/StatefulPartitionedCall�
tf.__operators__.add_33/yConst*
_output_shapes

:*
dtype0*�
value�B�"���.����;j�"����;�-==t�(��.N����м�����d��{(=&�����XW<�S=�绨��s%=4ff��f�:×H�@0��Q	J=�F�<�[��T=�޻4�3ܲ�`lg;�ݾ���S;h�2���;�~�vC���<��z<0�������f3�<��<@�?� 9��A=.v�<��ؼK�<��O<��R<��=:ݼ�:<��1=�}�<'F=B�<0�\;&>��6����< x�:�/=F��<�ـ< ��$����#;���<����㕼��<g=���o+�=�$����<�k� �B�0}q�����<�V�  *:(|���0=�Cc�(n@���#=����z��]�"=Z�ƼX�4�X:s�P�N��<n��<is7=C =�7���<:C�<�~<-�1=��Ѽ�޼������<`�;PSٻ!=M�.���#=�쨼f��<�IC��/}��4=��-���J=rļ�N<gⱼq�;�*�<�V���������G���<L�M��@�<&W�<�=0��;�|�<S�2��~<�S#<i�d�j<͑��%�<��=�Q�}�,=�O+='��ci=g��柆<@ �N}�<G����퍼��=@��B��<B�<ǵ.��B�f<�< L�8�\< ���,��p��#'�;='霼�����<� յ�S0�����̮:<f��<:ۆ<�͌�I9=�x�<��<@
����<����D=��;e���
tf.__operators__.add_33/AddV2AddV2input_4"tf.__operators__.add_33/y:output:0*
T0*"
_output_shapes
:�
/multi_head_attention_18/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_18_2944911multi_head_attention_18_2944913multi_head_attention_18_2944915multi_head_attention_18_2944917multi_head_attention_18_2944919multi_head_attention_18_2944921multi_head_attention_18_2944923multi_head_attention_18_2944925*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2944910�
tf.__operators__.add_34/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_18/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_30/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_34/AddV2:z:0layer_normalization_30_2944929layer_normalization_30_2944931*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_2944163�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_30/StatefulPartitionedCall:output:0dense_18_2944934dense_18_2944936*
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
GPU 2J 8� *N
fIRG
E__inference_dense_18_layer_call_and_return_conditional_losses_2944183�
dropout_18/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_2944943�
tf.__operators__.add_35/AddV2AddV27layer_normalization_30/StatefulPartitionedCall:output:0#dropout_18/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_31/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_35/AddV2:z:0layer_normalization_31_2944946layer_normalization_31_2944948*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_2944224�
/multi_head_attention_19/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_31/StatefulPartitionedCall:output:07layer_normalization_31/StatefulPartitionedCall:output:0multi_head_attention_19_2944986multi_head_attention_19_2944988multi_head_attention_19_2944990multi_head_attention_19_2944992multi_head_attention_19_2944994multi_head_attention_19_2944996multi_head_attention_19_2944998multi_head_attention_19_2945000*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2944985�
tf.__operators__.add_36/AddV2AddV27layer_normalization_31/StatefulPartitionedCall:output:08multi_head_attention_19/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_32/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_36/AddV2:z:0layer_normalization_32_2945004layer_normalization_32_2945006*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_2944304�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_32/StatefulPartitionedCall:output:0dense_19_2945009dense_19_2945011*
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
GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_2944324�
dropout_19/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
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
G__inference_dropout_19_layer_call_and_return_conditional_losses_2945018�
/multi_head_attention_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_20_2945055multi_head_attention_20_2945057multi_head_attention_20_2945059multi_head_attention_20_2945061multi_head_attention_20_2945063multi_head_attention_20_2945065multi_head_attention_20_2945067multi_head_attention_20_2945069*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2945054�
tf.__operators__.add_37/AddV2AddV27layer_normalization_32/StatefulPartitionedCall:output:0#dropout_19/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_38/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_20/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_34/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_38/AddV2:z:0layer_normalization_34_2945074layer_normalization_34_2945076*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_2944418�
.layer_normalization_33/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_37/AddV2:z:0layer_normalization_33_2945079layer_normalization_33_2945081*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_2944445�
/multi_head_attention_21/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_34/StatefulPartitionedCall:output:07layer_normalization_33/StatefulPartitionedCall:output:0multi_head_attention_21_2945119multi_head_attention_21_2945121multi_head_attention_21_2945123multi_head_attention_21_2945125multi_head_attention_21_2945127multi_head_attention_21_2945129multi_head_attention_21_2945131multi_head_attention_21_2945133*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2945118�
dropout_20/PartitionedCallPartitionedCall8multi_head_attention_21/StatefulPartitionedCall:output:0*
Tin
2*
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
G__inference_dropout_20_layer_call_and_return_conditional_losses_2945140�
tf.__operators__.add_39/AddV2AddV27layer_normalization_34/StatefulPartitionedCall:output:0#dropout_20/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_35/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_39/AddV2:z:0layer_normalization_35_2945143layer_normalization_35_2945145*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_2944538�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_35/StatefulPartitionedCall:output:0dense_20_2945148dense_20_2945150*
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
GPU 2J 8� *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_2944558�
dropout_21/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
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
G__inference_dropout_21_layer_call_and_return_conditional_losses_2945157�
/multi_head_attention_22/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_22_2945194multi_head_attention_22_2945196multi_head_attention_22_2945198multi_head_attention_22_2945200multi_head_attention_22_2945202multi_head_attention_22_2945204multi_head_attention_22_2945206multi_head_attention_22_2945208*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2945193�
tf.__operators__.add_40/AddV2AddV27layer_normalization_35/StatefulPartitionedCall:output:0#dropout_21/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_41/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_22/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_37/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_41/AddV2:z:0layer_normalization_37_2945213layer_normalization_37_2945215*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_2944652�
.layer_normalization_36/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_40/AddV2:z:0layer_normalization_36_2945218layer_normalization_36_2945220*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_2944679�
/multi_head_attention_23/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_37/StatefulPartitionedCall:output:07layer_normalization_36/StatefulPartitionedCall:output:0multi_head_attention_23_2945258multi_head_attention_23_2945260multi_head_attention_23_2945262multi_head_attention_23_2945264multi_head_attention_23_2945266multi_head_attention_23_2945268multi_head_attention_23_2945270multi_head_attention_23_2945272*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2945257�
dropout_22/PartitionedCallPartitionedCall8multi_head_attention_23/StatefulPartitionedCall:output:0*
Tin
2*
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
G__inference_dropout_22_layer_call_and_return_conditional_losses_2945279�
tf.__operators__.add_42/AddV2AddV27layer_normalization_37/StatefulPartitionedCall:output:0#dropout_22/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_38/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_42/AddV2:z:0layer_normalization_38_2945282layer_normalization_38_2945284*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_2944772�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_38/StatefulPartitionedCall:output:0dense_21_2945287dense_21_2945289*
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
GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_2944792�
dropout_23/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
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
G__inference_dropout_23_layer_call_and_return_conditional_losses_2945296�
tf.__operators__.add_43/AddV2AddV27layer_normalization_38/StatefulPartitionedCall:output:0#dropout_23/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_39/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_43/AddV2:z:0layer_normalization_39_2945299layer_normalization_39_2945301*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_2944833�
*global_average_pooling1d_3/PartitionedCallPartitionedCall7layer_normalization_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *`
f[RY
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_2944079�
 dense_22/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_22_2945305dense_22_2945307*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_2944849�
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_2945310dense_23_2945312*
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
GPU 2J 8� *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_2944864o
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall/^layer_normalization_30/StatefulPartitionedCall/^layer_normalization_31/StatefulPartitionedCall/^layer_normalization_32/StatefulPartitionedCall/^layer_normalization_33/StatefulPartitionedCall/^layer_normalization_34/StatefulPartitionedCall/^layer_normalization_35/StatefulPartitionedCall/^layer_normalization_36/StatefulPartitionedCall/^layer_normalization_37/StatefulPartitionedCall/^layer_normalization_38/StatefulPartitionedCall/^layer_normalization_39/StatefulPartitionedCall0^multi_head_attention_18/StatefulPartitionedCall0^multi_head_attention_19/StatefulPartitionedCall0^multi_head_attention_20/StatefulPartitionedCall0^multi_head_attention_21/StatefulPartitionedCall0^multi_head_attention_22/StatefulPartitionedCall0^multi_head_attention_23/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2`
.layer_normalization_30/StatefulPartitionedCall.layer_normalization_30/StatefulPartitionedCall2`
.layer_normalization_31/StatefulPartitionedCall.layer_normalization_31/StatefulPartitionedCall2`
.layer_normalization_32/StatefulPartitionedCall.layer_normalization_32/StatefulPartitionedCall2`
.layer_normalization_33/StatefulPartitionedCall.layer_normalization_33/StatefulPartitionedCall2`
.layer_normalization_34/StatefulPartitionedCall.layer_normalization_34/StatefulPartitionedCall2`
.layer_normalization_35/StatefulPartitionedCall.layer_normalization_35/StatefulPartitionedCall2`
.layer_normalization_36/StatefulPartitionedCall.layer_normalization_36/StatefulPartitionedCall2`
.layer_normalization_37/StatefulPartitionedCall.layer_normalization_37/StatefulPartitionedCall2`
.layer_normalization_38/StatefulPartitionedCall.layer_normalization_38/StatefulPartitionedCall2`
.layer_normalization_39/StatefulPartitionedCall.layer_normalization_39/StatefulPartitionedCall2b
/multi_head_attention_18/StatefulPartitionedCall/multi_head_attention_18/StatefulPartitionedCall2b
/multi_head_attention_19/StatefulPartitionedCall/multi_head_attention_19/StatefulPartitionedCall2b
/multi_head_attention_20/StatefulPartitionedCall/multi_head_attention_20/StatefulPartitionedCall2b
/multi_head_attention_21/StatefulPartitionedCall/multi_head_attention_21/StatefulPartitionedCall2b
/multi_head_attention_22/StatefulPartitionedCall/multi_head_attention_22/StatefulPartitionedCall2b
/multi_head_attention_23/StatefulPartitionedCall/multi_head_attention_23/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_4:'#
!
_user_specified_name	2944911:'#
!
_user_specified_name	2944913:'#
!
_user_specified_name	2944915:'#
!
_user_specified_name	2944917:'#
!
_user_specified_name	2944919:'#
!
_user_specified_name	2944921:'#
!
_user_specified_name	2944923:'#
!
_user_specified_name	2944925:'	#
!
_user_specified_name	2944929:'
#
!
_user_specified_name	2944931:'#
!
_user_specified_name	2944934:'#
!
_user_specified_name	2944936:'#
!
_user_specified_name	2944946:'#
!
_user_specified_name	2944948:'#
!
_user_specified_name	2944986:'#
!
_user_specified_name	2944988:'#
!
_user_specified_name	2944990:'#
!
_user_specified_name	2944992:'#
!
_user_specified_name	2944994:'#
!
_user_specified_name	2944996:'#
!
_user_specified_name	2944998:'#
!
_user_specified_name	2945000:'#
!
_user_specified_name	2945004:'#
!
_user_specified_name	2945006:'#
!
_user_specified_name	2945009:'#
!
_user_specified_name	2945011:'#
!
_user_specified_name	2945055:'#
!
_user_specified_name	2945057:'#
!
_user_specified_name	2945059:'#
!
_user_specified_name	2945061:'#
!
_user_specified_name	2945063:' #
!
_user_specified_name	2945065:'!#
!
_user_specified_name	2945067:'"#
!
_user_specified_name	2945069:'##
!
_user_specified_name	2945074:'$#
!
_user_specified_name	2945076:'%#
!
_user_specified_name	2945079:'&#
!
_user_specified_name	2945081:''#
!
_user_specified_name	2945119:'(#
!
_user_specified_name	2945121:')#
!
_user_specified_name	2945123:'*#
!
_user_specified_name	2945125:'+#
!
_user_specified_name	2945127:',#
!
_user_specified_name	2945129:'-#
!
_user_specified_name	2945131:'.#
!
_user_specified_name	2945133:'/#
!
_user_specified_name	2945143:'0#
!
_user_specified_name	2945145:'1#
!
_user_specified_name	2945148:'2#
!
_user_specified_name	2945150:'3#
!
_user_specified_name	2945194:'4#
!
_user_specified_name	2945196:'5#
!
_user_specified_name	2945198:'6#
!
_user_specified_name	2945200:'7#
!
_user_specified_name	2945202:'8#
!
_user_specified_name	2945204:'9#
!
_user_specified_name	2945206:':#
!
_user_specified_name	2945208:';#
!
_user_specified_name	2945213:'<#
!
_user_specified_name	2945215:'=#
!
_user_specified_name	2945218:'>#
!
_user_specified_name	2945220:'?#
!
_user_specified_name	2945258:'@#
!
_user_specified_name	2945260:'A#
!
_user_specified_name	2945262:'B#
!
_user_specified_name	2945264:'C#
!
_user_specified_name	2945266:'D#
!
_user_specified_name	2945268:'E#
!
_user_specified_name	2945270:'F#
!
_user_specified_name	2945272:'G#
!
_user_specified_name	2945282:'H#
!
_user_specified_name	2945284:'I#
!
_user_specified_name	2945287:'J#
!
_user_specified_name	2945289:'K#
!
_user_specified_name	2945299:'L#
!
_user_specified_name	2945301:'M#
!
_user_specified_name	2945305:'N#
!
_user_specified_name	2945307:'O#
!
_user_specified_name	2945310:'P#
!
_user_specified_name	2945312
��
�(
D__inference_model_3_layer_call_and_return_conditional_losses_2944871
input_45
multi_head_attention_18_2944124:1
multi_head_attention_18_2944126:5
multi_head_attention_18_2944128:1
multi_head_attention_18_2944130:5
multi_head_attention_18_2944132:1
multi_head_attention_18_2944134:5
multi_head_attention_18_2944136:-
multi_head_attention_18_2944138:,
layer_normalization_30_2944164:,
layer_normalization_30_2944166:"
dense_18_2944184:
dense_18_2944186:,
layer_normalization_31_2944225:,
layer_normalization_31_2944227:5
multi_head_attention_19_2944265:1
multi_head_attention_19_2944267:5
multi_head_attention_19_2944269:1
multi_head_attention_19_2944271:5
multi_head_attention_19_2944273:1
multi_head_attention_19_2944275:5
multi_head_attention_19_2944277:-
multi_head_attention_19_2944279:,
layer_normalization_32_2944305:,
layer_normalization_32_2944307:"
dense_19_2944325:
dense_19_2944327:5
multi_head_attention_20_2944378:1
multi_head_attention_20_2944380:5
multi_head_attention_20_2944382:1
multi_head_attention_20_2944384:5
multi_head_attention_20_2944386:1
multi_head_attention_20_2944388:5
multi_head_attention_20_2944390:-
multi_head_attention_20_2944392:,
layer_normalization_34_2944419:,
layer_normalization_34_2944421:,
layer_normalization_33_2944446:,
layer_normalization_33_2944448:5
multi_head_attention_21_2944486:1
multi_head_attention_21_2944488:5
multi_head_attention_21_2944490:1
multi_head_attention_21_2944492:5
multi_head_attention_21_2944494:1
multi_head_attention_21_2944496:5
multi_head_attention_21_2944498:-
multi_head_attention_21_2944500:,
layer_normalization_35_2944539:,
layer_normalization_35_2944541:"
dense_20_2944559:
dense_20_2944561:5
multi_head_attention_22_2944612:1
multi_head_attention_22_2944614:5
multi_head_attention_22_2944616:1
multi_head_attention_22_2944618:5
multi_head_attention_22_2944620:1
multi_head_attention_22_2944622:5
multi_head_attention_22_2944624:-
multi_head_attention_22_2944626:,
layer_normalization_37_2944653:,
layer_normalization_37_2944655:,
layer_normalization_36_2944680:,
layer_normalization_36_2944682:5
multi_head_attention_23_2944720:1
multi_head_attention_23_2944722:5
multi_head_attention_23_2944724:1
multi_head_attention_23_2944726:5
multi_head_attention_23_2944728:1
multi_head_attention_23_2944730:5
multi_head_attention_23_2944732:-
multi_head_attention_23_2944734:,
layer_normalization_38_2944773:,
layer_normalization_38_2944775:"
dense_21_2944793:
dense_21_2944795:,
layer_normalization_39_2944834:,
layer_normalization_39_2944836:"
dense_22_2944850: 
dense_22_2944852: "
dense_23_2944865: 
dense_23_2944867:
identity�� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall� dense_21/StatefulPartitionedCall� dense_22/StatefulPartitionedCall� dense_23/StatefulPartitionedCall�"dropout_18/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCall�"dropout_20/StatefulPartitionedCall�"dropout_21/StatefulPartitionedCall�"dropout_22/StatefulPartitionedCall�"dropout_23/StatefulPartitionedCall�.layer_normalization_30/StatefulPartitionedCall�.layer_normalization_31/StatefulPartitionedCall�.layer_normalization_32/StatefulPartitionedCall�.layer_normalization_33/StatefulPartitionedCall�.layer_normalization_34/StatefulPartitionedCall�.layer_normalization_35/StatefulPartitionedCall�.layer_normalization_36/StatefulPartitionedCall�.layer_normalization_37/StatefulPartitionedCall�.layer_normalization_38/StatefulPartitionedCall�.layer_normalization_39/StatefulPartitionedCall�/multi_head_attention_18/StatefulPartitionedCall�/multi_head_attention_19/StatefulPartitionedCall�/multi_head_attention_20/StatefulPartitionedCall�/multi_head_attention_21/StatefulPartitionedCall�/multi_head_attention_22/StatefulPartitionedCall�/multi_head_attention_23/StatefulPartitionedCall�
tf.__operators__.add_33/yConst*
_output_shapes

:*
dtype0*�
value�B�"���.����;j�"����;�-==t�(��.N����м�����d��{(=&�����XW<�S=�绨��s%=4ff��f�:×H�@0��Q	J=�F�<�[��T=�޻4�3ܲ�`lg;�ݾ���S;h�2���;�~�vC���<��z<0�������f3�<��<@�?� 9��A=.v�<��ؼK�<��O<��R<��=:ݼ�:<��1=�}�<'F=B�<0�\;&>��6����< x�:�/=F��<�ـ< ��$����#;���<����㕼��<g=���o+�=�$����<�k� �B�0}q�����<�V�  *:(|���0=�Cc�(n@���#=����z��]�"=Z�ƼX�4�X:s�P�N��<n��<is7=C =�7���<:C�<�~<-�1=��Ѽ�޼������<`�;PSٻ!=M�.���#=�쨼f��<�IC��/}��4=��-���J=rļ�N<gⱼq�;�*�<�V���������G���<L�M��@�<&W�<�=0��;�|�<S�2��~<�S#<i�d�j<͑��%�<��=�Q�}�,=�O+='��ci=g��柆<@ �N}�<G����퍼��=@��B��<B�<ǵ.��B�f<�< L�8�\< ���,��p��#'�;='霼�����<� յ�S0�����̮:<f��<:ۆ<�͌�I9=�x�<��<@
����<����D=��;e���
tf.__operators__.add_33/AddV2AddV2input_4"tf.__operators__.add_33/y:output:0*
T0*"
_output_shapes
:�
/multi_head_attention_18/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_18_2944124multi_head_attention_18_2944126multi_head_attention_18_2944128multi_head_attention_18_2944130multi_head_attention_18_2944132multi_head_attention_18_2944134multi_head_attention_18_2944136multi_head_attention_18_2944138*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2944123�
tf.__operators__.add_34/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_18/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_30/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_34/AddV2:z:0layer_normalization_30_2944164layer_normalization_30_2944166*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_2944163�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_30/StatefulPartitionedCall:output:0dense_18_2944184dense_18_2944186*
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
GPU 2J 8� *N
fIRG
E__inference_dense_18_layer_call_and_return_conditional_losses_2944183�
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_2944200�
tf.__operators__.add_35/AddV2AddV27layer_normalization_30/StatefulPartitionedCall:output:0+dropout_18/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_31/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_35/AddV2:z:0layer_normalization_31_2944225layer_normalization_31_2944227*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_2944224�
/multi_head_attention_19/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_31/StatefulPartitionedCall:output:07layer_normalization_31/StatefulPartitionedCall:output:0multi_head_attention_19_2944265multi_head_attention_19_2944267multi_head_attention_19_2944269multi_head_attention_19_2944271multi_head_attention_19_2944273multi_head_attention_19_2944275multi_head_attention_19_2944277multi_head_attention_19_2944279*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2944264�
tf.__operators__.add_36/AddV2AddV27layer_normalization_31/StatefulPartitionedCall:output:08multi_head_attention_19/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_32/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_36/AddV2:z:0layer_normalization_32_2944305layer_normalization_32_2944307*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_2944304�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_32/StatefulPartitionedCall:output:0dense_19_2944325dense_19_2944327*
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
GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_2944324�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
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
G__inference_dropout_19_layer_call_and_return_conditional_losses_2944341�
/multi_head_attention_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_20_2944378multi_head_attention_20_2944380multi_head_attention_20_2944382multi_head_attention_20_2944384multi_head_attention_20_2944386multi_head_attention_20_2944388multi_head_attention_20_2944390multi_head_attention_20_2944392*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2944377�
tf.__operators__.add_37/AddV2AddV27layer_normalization_32/StatefulPartitionedCall:output:0+dropout_19/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_38/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_20/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_34/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_38/AddV2:z:0layer_normalization_34_2944419layer_normalization_34_2944421*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_2944418�
.layer_normalization_33/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_37/AddV2:z:0layer_normalization_33_2944446layer_normalization_33_2944448*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_2944445�
/multi_head_attention_21/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_34/StatefulPartitionedCall:output:07layer_normalization_33/StatefulPartitionedCall:output:0multi_head_attention_21_2944486multi_head_attention_21_2944488multi_head_attention_21_2944490multi_head_attention_21_2944492multi_head_attention_21_2944494multi_head_attention_21_2944496multi_head_attention_21_2944498multi_head_attention_21_2944500*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2944485�
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall8multi_head_attention_21/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
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
G__inference_dropout_20_layer_call_and_return_conditional_losses_2944514�
tf.__operators__.add_39/AddV2AddV27layer_normalization_34/StatefulPartitionedCall:output:0+dropout_20/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_35/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_39/AddV2:z:0layer_normalization_35_2944539layer_normalization_35_2944541*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_2944538�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_35/StatefulPartitionedCall:output:0dense_20_2944559dense_20_2944561*
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
GPU 2J 8� *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_2944558�
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
Tin
2*
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
G__inference_dropout_21_layer_call_and_return_conditional_losses_2944575�
/multi_head_attention_22/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_22_2944612multi_head_attention_22_2944614multi_head_attention_22_2944616multi_head_attention_22_2944618multi_head_attention_22_2944620multi_head_attention_22_2944622multi_head_attention_22_2944624multi_head_attention_22_2944626*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2944611�
tf.__operators__.add_40/AddV2AddV27layer_normalization_35/StatefulPartitionedCall:output:0+dropout_21/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_41/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_22/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_37/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_41/AddV2:z:0layer_normalization_37_2944653layer_normalization_37_2944655*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_2944652�
.layer_normalization_36/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_40/AddV2:z:0layer_normalization_36_2944680layer_normalization_36_2944682*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_2944679�
/multi_head_attention_23/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_37/StatefulPartitionedCall:output:07layer_normalization_36/StatefulPartitionedCall:output:0multi_head_attention_23_2944720multi_head_attention_23_2944722multi_head_attention_23_2944724multi_head_attention_23_2944726multi_head_attention_23_2944728multi_head_attention_23_2944730multi_head_attention_23_2944732multi_head_attention_23_2944734*
Tin
2
*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2944719�
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall8multi_head_attention_23/StatefulPartitionedCall:output:0#^dropout_21/StatefulPartitionedCall*
Tin
2*
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
G__inference_dropout_22_layer_call_and_return_conditional_losses_2944748�
tf.__operators__.add_42/AddV2AddV27layer_normalization_37/StatefulPartitionedCall:output:0+dropout_22/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_38/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_42/AddV2:z:0layer_normalization_38_2944773layer_normalization_38_2944775*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_2944772�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_38/StatefulPartitionedCall:output:0dense_21_2944793dense_21_2944795*
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
GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_2944792�
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
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
G__inference_dropout_23_layer_call_and_return_conditional_losses_2944809�
tf.__operators__.add_43/AddV2AddV27layer_normalization_38/StatefulPartitionedCall:output:0+dropout_23/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_39/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_43/AddV2:z:0layer_normalization_39_2944834layer_normalization_39_2944836*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_2944833�
*global_average_pooling1d_3/PartitionedCallPartitionedCall7layer_normalization_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *`
f[RY
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_2944079�
 dense_22/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_22_2944850dense_22_2944852*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_2944849�
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_2944865dense_23_2944867*
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
GPU 2J 8� *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_2944864o
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�	
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall/^layer_normalization_30/StatefulPartitionedCall/^layer_normalization_31/StatefulPartitionedCall/^layer_normalization_32/StatefulPartitionedCall/^layer_normalization_33/StatefulPartitionedCall/^layer_normalization_34/StatefulPartitionedCall/^layer_normalization_35/StatefulPartitionedCall/^layer_normalization_36/StatefulPartitionedCall/^layer_normalization_37/StatefulPartitionedCall/^layer_normalization_38/StatefulPartitionedCall/^layer_normalization_39/StatefulPartitionedCall0^multi_head_attention_18/StatefulPartitionedCall0^multi_head_attention_19/StatefulPartitionedCall0^multi_head_attention_20/StatefulPartitionedCall0^multi_head_attention_21/StatefulPartitionedCall0^multi_head_attention_22/StatefulPartitionedCall0^multi_head_attention_23/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2`
.layer_normalization_30/StatefulPartitionedCall.layer_normalization_30/StatefulPartitionedCall2`
.layer_normalization_31/StatefulPartitionedCall.layer_normalization_31/StatefulPartitionedCall2`
.layer_normalization_32/StatefulPartitionedCall.layer_normalization_32/StatefulPartitionedCall2`
.layer_normalization_33/StatefulPartitionedCall.layer_normalization_33/StatefulPartitionedCall2`
.layer_normalization_34/StatefulPartitionedCall.layer_normalization_34/StatefulPartitionedCall2`
.layer_normalization_35/StatefulPartitionedCall.layer_normalization_35/StatefulPartitionedCall2`
.layer_normalization_36/StatefulPartitionedCall.layer_normalization_36/StatefulPartitionedCall2`
.layer_normalization_37/StatefulPartitionedCall.layer_normalization_37/StatefulPartitionedCall2`
.layer_normalization_38/StatefulPartitionedCall.layer_normalization_38/StatefulPartitionedCall2`
.layer_normalization_39/StatefulPartitionedCall.layer_normalization_39/StatefulPartitionedCall2b
/multi_head_attention_18/StatefulPartitionedCall/multi_head_attention_18/StatefulPartitionedCall2b
/multi_head_attention_19/StatefulPartitionedCall/multi_head_attention_19/StatefulPartitionedCall2b
/multi_head_attention_20/StatefulPartitionedCall/multi_head_attention_20/StatefulPartitionedCall2b
/multi_head_attention_21/StatefulPartitionedCall/multi_head_attention_21/StatefulPartitionedCall2b
/multi_head_attention_22/StatefulPartitionedCall/multi_head_attention_22/StatefulPartitionedCall2b
/multi_head_attention_23/StatefulPartitionedCall/multi_head_attention_23/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_4:'#
!
_user_specified_name	2944124:'#
!
_user_specified_name	2944126:'#
!
_user_specified_name	2944128:'#
!
_user_specified_name	2944130:'#
!
_user_specified_name	2944132:'#
!
_user_specified_name	2944134:'#
!
_user_specified_name	2944136:'#
!
_user_specified_name	2944138:'	#
!
_user_specified_name	2944164:'
#
!
_user_specified_name	2944166:'#
!
_user_specified_name	2944184:'#
!
_user_specified_name	2944186:'#
!
_user_specified_name	2944225:'#
!
_user_specified_name	2944227:'#
!
_user_specified_name	2944265:'#
!
_user_specified_name	2944267:'#
!
_user_specified_name	2944269:'#
!
_user_specified_name	2944271:'#
!
_user_specified_name	2944273:'#
!
_user_specified_name	2944275:'#
!
_user_specified_name	2944277:'#
!
_user_specified_name	2944279:'#
!
_user_specified_name	2944305:'#
!
_user_specified_name	2944307:'#
!
_user_specified_name	2944325:'#
!
_user_specified_name	2944327:'#
!
_user_specified_name	2944378:'#
!
_user_specified_name	2944380:'#
!
_user_specified_name	2944382:'#
!
_user_specified_name	2944384:'#
!
_user_specified_name	2944386:' #
!
_user_specified_name	2944388:'!#
!
_user_specified_name	2944390:'"#
!
_user_specified_name	2944392:'##
!
_user_specified_name	2944419:'$#
!
_user_specified_name	2944421:'%#
!
_user_specified_name	2944446:'&#
!
_user_specified_name	2944448:''#
!
_user_specified_name	2944486:'(#
!
_user_specified_name	2944488:')#
!
_user_specified_name	2944490:'*#
!
_user_specified_name	2944492:'+#
!
_user_specified_name	2944494:',#
!
_user_specified_name	2944496:'-#
!
_user_specified_name	2944498:'.#
!
_user_specified_name	2944500:'/#
!
_user_specified_name	2944539:'0#
!
_user_specified_name	2944541:'1#
!
_user_specified_name	2944559:'2#
!
_user_specified_name	2944561:'3#
!
_user_specified_name	2944612:'4#
!
_user_specified_name	2944614:'5#
!
_user_specified_name	2944616:'6#
!
_user_specified_name	2944618:'7#
!
_user_specified_name	2944620:'8#
!
_user_specified_name	2944622:'9#
!
_user_specified_name	2944624:':#
!
_user_specified_name	2944626:';#
!
_user_specified_name	2944653:'<#
!
_user_specified_name	2944655:'=#
!
_user_specified_name	2944680:'>#
!
_user_specified_name	2944682:'?#
!
_user_specified_name	2944720:'@#
!
_user_specified_name	2944722:'A#
!
_user_specified_name	2944724:'B#
!
_user_specified_name	2944726:'C#
!
_user_specified_name	2944728:'D#
!
_user_specified_name	2944730:'E#
!
_user_specified_name	2944732:'F#
!
_user_specified_name	2944734:'G#
!
_user_specified_name	2944773:'H#
!
_user_specified_name	2944775:'I#
!
_user_specified_name	2944793:'J#
!
_user_specified_name	2944795:'K#
!
_user_specified_name	2944834:'L#
!
_user_specified_name	2944836:'M#
!
_user_specified_name	2944850:'N#
!
_user_specified_name	2944852:'O#
!
_user_specified_name	2944865:'P#
!
_user_specified_name	2944867
�
�
E__inference_dense_19_layer_call_and_return_conditional_losses_2946676

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
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
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
:\
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
:V
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
�
�
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_2947450

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
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
�
e
,__inference_dropout_23_layer_call_fn_2947479

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_23_layer_call_and_return_conditional_losses_2944809j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
E__inference_dense_20_layer_call_and_return_conditional_losses_2944558

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
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
:	�d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
:\
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
:V
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
�
e
G__inference_dropout_21_layer_call_and_return_conditional_losses_2947216

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�

f
G__inference_dropout_20_layer_call_and_return_conditional_losses_2947015

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
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
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
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�+
�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2946359	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbec
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:h
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
8__inference_layer_normalization_31_layer_call_fn_2946485

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_2944224j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2946479:'#
!
_user_specified_name	2946481
�
e
,__inference_dropout_20_layer_call_fn_2946998

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
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_20_layer_call_and_return_conditional_losses_2944514j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
e
G__inference_dropout_20_layer_call_and_return_conditional_losses_2945140

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
8__inference_layer_normalization_33_layer_call_fn_2946857

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8� *\
fWRU
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_2944445j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	2946851:'#
!
_user_specified_name	2946853
�+
�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2945257	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0}
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>Z
MulMulquery/add:z:0Mul/y:output:0*
T0*&
_output_shapes
:�
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbee
softmax_5/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*&
_output_shapes
:l
dropout_5/IdentityIdentitysoftmax_5/Softmax:softmax:0*
T0*&
_output_shapes
:�
einsum_1/EinsumEinsumdropout_5/Identity:output:0value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:b
IdentityIdentityattention_output/add:z:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,::: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:I E
"
_output_shapes
:

_user_specified_namequery:IE
"
_output_shapes
:

_user_specified_namevalue:($
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
resource
�
�
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_2946848

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*"
_output_shapes
:l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5x
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*"
_output_shapes
:X
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*"
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0|
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:^
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*"
_output_shapes
:m
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*"
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*"
_output_shapes
:m
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*"
_output_shapes
:]
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*"
_output_shapes
:\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
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
input_4+
serving_default_input_4:03
dense_23'
StatefulPartitionedCall:0tensorflow/serving/predict:��
�

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer-21
layer_with_weights-11
layer-22
layer_with_weights-12
layer-23
layer_with_weights-13
layer-24
layer-25
layer-26
layer-27
layer_with_weights-14
layer-28
layer_with_weights-15
layer-29
layer_with_weights-16
layer-30
 layer-31
!layer-32
"layer_with_weights-17
"layer-33
#layer_with_weights-18
#layer-34
$layer-35
%layer-36
&layer_with_weights-19
&layer-37
'layer-38
(layer_with_weights-20
(layer-39
)layer_with_weights-21
)layer-40
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_default_save_signature
1
signatures
#2_self_saveable_object_factories"
_tf_keras_network
D
#3_self_saveable_object_factories"
_tf_keras_input_layer
M
4	keras_api
#5_self_saveable_object_factories"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<_query_dense
=
_key_dense
>_value_dense
?_softmax
@_dropout_layer
A_output_dense
#B_self_saveable_object_factories"
_tf_keras_layer
M
C	keras_api
#D_self_saveable_object_factories"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
#N_self_saveable_object_factories"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
#W_self_saveable_object_factories"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator
#__self_saveable_object_factories"
_tf_keras_layer
M
`	keras_api
#a_self_saveable_object_factories"
_tf_keras_layer
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
haxis
	igamma
jbeta
#k_self_saveable_object_factories"
_tf_keras_layer
�
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
r_query_dense
s
_key_dense
t_value_dense
u_softmax
v_dropout_layer
w_output_dense
#x_self_saveable_object_factories"
_tf_keras_layer
M
y	keras_api
#z_self_saveable_object_factories"
_tf_keras_layer
�
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
O
�	keras_api
$�_self_saveable_object_factories"
_tf_keras_layer
O
�	keras_api
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
O
�	keras_api
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
O
�	keras_api
$�_self_saveable_object_factories"
_tf_keras_layer
O
�	keras_api
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
O
�	keras_api
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
O
�	keras_api
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�0
�1
�2
�3
�4
�5
�6
�7
L8
M9
U10
V11
i12
j13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78
�79"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
L8
M9
U10
V11
i12
j13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78
�79"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
0_default_save_signature
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_model_3_layer_call_fn_2945481
)__inference_model_3_layer_call_fn_2945646�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_model_3_layer_call_and_return_conditional_losses_2944871
D__inference_model_3_layer_call_and_return_conditional_losses_2945316�
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
 z�trace_0z�trace_1
�B�
"__inference__wrapped_model_2944073input_4"�
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
�serving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_multi_head_attention_18_layer_call_fn_2946302
9__inference_multi_head_attention_18_layer_call_fn_2946324�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2946359
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2946394�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_30_layer_call_fn_2946403�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_2946425�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_30/gamma
):'2layer_normalization_30/beta
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_18_layer_call_fn_2946434�
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
 z�trace_0
�
�trace_02�
E__inference_dense_18_layer_call_and_return_conditional_losses_2946449�
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
 z�trace_0
!:2dense_18/kernel
:2dense_18/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_18_layer_call_fn_2946454
,__inference_dropout_18_layer_call_fn_2946459�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_18_layer_call_and_return_conditional_losses_2946471
G__inference_dropout_18_layer_call_and_return_conditional_losses_2946476�
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
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_31_layer_call_fn_2946485�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_2946507�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_31/gamma
):'2layer_normalization_31/beta
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_multi_head_attention_19_layer_call_fn_2946529
9__inference_multi_head_attention_19_layer_call_fn_2946551�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2946586
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2946621�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_32_layer_call_fn_2946630�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_2946652�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_32/gamma
):'2layer_normalization_32/beta
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_19_layer_call_fn_2946661�
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
 z�trace_0
�
�trace_02�
E__inference_dense_19_layer_call_and_return_conditional_losses_2946676�
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
 z�trace_0
!:2dense_19/kernel
:2dense_19/bias
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_multi_head_attention_20_layer_call_fn_2946698
9__inference_multi_head_attention_20_layer_call_fn_2946720�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2946755
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2946790�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_19_layer_call_fn_2946795
,__inference_dropout_19_layer_call_fn_2946800�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_19_layer_call_and_return_conditional_losses_2946812
G__inference_dropout_19_layer_call_and_return_conditional_losses_2946817�
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
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_34_layer_call_fn_2946826�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_2946848�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_34/gamma
):'2layer_normalization_34/beta
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_33_layer_call_fn_2946857�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_2946879�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_33/gamma
):'2layer_normalization_33/beta
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_multi_head_attention_21_layer_call_fn_2946901
9__inference_multi_head_attention_21_layer_call_fn_2946923�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2946958
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2946993�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_20_layer_call_fn_2946998
,__inference_dropout_20_layer_call_fn_2947003�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_20_layer_call_and_return_conditional_losses_2947015
G__inference_dropout_20_layer_call_and_return_conditional_losses_2947020�
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
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_35_layer_call_fn_2947029�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_2947051�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_35/gamma
):'2layer_normalization_35/beta
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_20_layer_call_fn_2947060�
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
 z�trace_0
�
�trace_02�
E__inference_dense_20_layer_call_and_return_conditional_losses_2947075�
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
 z�trace_0
!:2dense_20/kernel
:2dense_20/bias
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_multi_head_attention_22_layer_call_fn_2947097
9__inference_multi_head_attention_22_layer_call_fn_2947119�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2947154
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2947189�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_21_layer_call_fn_2947194
,__inference_dropout_21_layer_call_fn_2947199�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_21_layer_call_and_return_conditional_losses_2947211
G__inference_dropout_21_layer_call_and_return_conditional_losses_2947216�
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
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_37_layer_call_fn_2947225�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_2947247�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_37/gamma
):'2layer_normalization_37/beta
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_36_layer_call_fn_2947256�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_2947278�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_36/gamma
):'2layer_normalization_36/beta
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_multi_head_attention_23_layer_call_fn_2947300
9__inference_multi_head_attention_23_layer_call_fn_2947322�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2947357
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2947392�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_22_layer_call_fn_2947397
,__inference_dropout_22_layer_call_fn_2947402�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_22_layer_call_and_return_conditional_losses_2947414
G__inference_dropout_22_layer_call_and_return_conditional_losses_2947419�
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
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_38_layer_call_fn_2947428�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_2947450�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_38/gamma
):'2layer_normalization_38/beta
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_21_layer_call_fn_2947459�
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
 z�trace_0
�
�trace_02�
E__inference_dense_21_layer_call_and_return_conditional_losses_2947474�
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
 z�trace_0
!:2dense_21/kernel
:2dense_21/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_23_layer_call_fn_2947479
,__inference_dropout_23_layer_call_fn_2947484�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_23_layer_call_and_return_conditional_losses_2947496
G__inference_dropout_23_layer_call_and_return_conditional_losses_2947501�
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
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_layer_normalization_39_layer_call_fn_2947510�
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
 z�trace_0
�
�trace_02�
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_2947532�
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
 z�trace_0
 "
trackable_list_wrapper
*:(2layer_normalization_39/gamma
):'2layer_normalization_39/beta
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
<__inference_global_average_pooling1d_3_layer_call_fn_2947537�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_2947543�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_22_layer_call_fn_2947552�
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
 z�trace_0
�
�trace_02�
E__inference_dense_22_layer_call_and_return_conditional_losses_2947562�
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
 z�trace_0
!: 2dense_22/kernel
: 2dense_22/bias
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_23_layer_call_fn_2947571�
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
 z�trace_0
�
�trace_02�
E__inference_dense_23_layer_call_and_return_conditional_losses_2947581�
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
 z�trace_0
!: 2dense_23/kernel
:2dense_23/bias
 "
trackable_dict_wrapper
::82$multi_head_attention_18/query/kernel
4:22"multi_head_attention_18/query/bias
8:62"multi_head_attention_18/key/kernel
2:02 multi_head_attention_18/key/bias
::82$multi_head_attention_18/value/kernel
4:22"multi_head_attention_18/value/bias
E:C2/multi_head_attention_18/attention_output/kernel
;:92-multi_head_attention_18/attention_output/bias
::82$multi_head_attention_19/query/kernel
4:22"multi_head_attention_19/query/bias
8:62"multi_head_attention_19/key/kernel
2:02 multi_head_attention_19/key/bias
::82$multi_head_attention_19/value/kernel
4:22"multi_head_attention_19/value/bias
E:C2/multi_head_attention_19/attention_output/kernel
;:92-multi_head_attention_19/attention_output/bias
::82$multi_head_attention_20/query/kernel
4:22"multi_head_attention_20/query/bias
8:62"multi_head_attention_20/key/kernel
2:02 multi_head_attention_20/key/bias
::82$multi_head_attention_20/value/kernel
4:22"multi_head_attention_20/value/bias
E:C2/multi_head_attention_20/attention_output/kernel
;:92-multi_head_attention_20/attention_output/bias
::82$multi_head_attention_21/query/kernel
4:22"multi_head_attention_21/query/bias
8:62"multi_head_attention_21/key/kernel
2:02 multi_head_attention_21/key/bias
::82$multi_head_attention_21/value/kernel
4:22"multi_head_attention_21/value/bias
E:C2/multi_head_attention_21/attention_output/kernel
;:92-multi_head_attention_21/attention_output/bias
::82$multi_head_attention_22/query/kernel
4:22"multi_head_attention_22/query/bias
8:62"multi_head_attention_22/key/kernel
2:02 multi_head_attention_22/key/bias
::82$multi_head_attention_22/value/kernel
4:22"multi_head_attention_22/value/bias
E:C2/multi_head_attention_22/attention_output/kernel
;:92-multi_head_attention_22/attention_output/bias
::82$multi_head_attention_23/query/kernel
4:22"multi_head_attention_23/query/bias
8:62"multi_head_attention_23/key/kernel
2:02 multi_head_attention_23/key/bias
::82$multi_head_attention_23/value/kernel
4:22"multi_head_attention_23/value/bias
E:C2/multi_head_attention_23/attention_output/kernel
;:92-multi_head_attention_23/attention_output/bias
 "
trackable_list_wrapper
�
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
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_model_3_layer_call_fn_2945481input_4"�
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
)__inference_model_3_layer_call_fn_2945646input_4"�
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
D__inference_model_3_layer_call_and_return_conditional_losses_2944871input_4"�
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
D__inference_model_3_layer_call_and_return_conditional_losses_2945316input_4"�
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
%__inference_signature_wrapper_2946280input_4"�
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
J
<0
=1
>2
?3
@4
A5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_multi_head_attention_18_layer_call_fn_2946302queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_multi_head_attention_18_layer_call_fn_2946324queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2946359queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2946394queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�B�
8__inference_layer_normalization_30_layer_call_fn_2946403inputs"�
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
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_2946425inputs"�
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
*__inference_dense_18_layer_call_fn_2946434inputs"�
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
E__inference_dense_18_layer_call_and_return_conditional_losses_2946449inputs"�
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
,__inference_dropout_18_layer_call_fn_2946454inputs"�
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
,__inference_dropout_18_layer_call_fn_2946459inputs"�
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
�B�
G__inference_dropout_18_layer_call_and_return_conditional_losses_2946471inputs"�
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
�B�
G__inference_dropout_18_layer_call_and_return_conditional_losses_2946476inputs"�
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
�B�
8__inference_layer_normalization_31_layer_call_fn_2946485inputs"�
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
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_2946507inputs"�
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
J
r0
s1
t2
u3
v4
w5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_multi_head_attention_19_layer_call_fn_2946529queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_multi_head_attention_19_layer_call_fn_2946551queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2946586queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2946621queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�B�
8__inference_layer_normalization_32_layer_call_fn_2946630inputs"�
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
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_2946652inputs"�
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
*__inference_dense_19_layer_call_fn_2946661inputs"�
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
E__inference_dense_19_layer_call_and_return_conditional_losses_2946676inputs"�
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
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_multi_head_attention_20_layer_call_fn_2946698queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_multi_head_attention_20_layer_call_fn_2946720queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2946755queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2946790queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�B�
,__inference_dropout_19_layer_call_fn_2946795inputs"�
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
,__inference_dropout_19_layer_call_fn_2946800inputs"�
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
�B�
G__inference_dropout_19_layer_call_and_return_conditional_losses_2946812inputs"�
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
�B�
G__inference_dropout_19_layer_call_and_return_conditional_losses_2946817inputs"�
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
�B�
8__inference_layer_normalization_34_layer_call_fn_2946826inputs"�
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
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_2946848inputs"�
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
8__inference_layer_normalization_33_layer_call_fn_2946857inputs"�
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
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_2946879inputs"�
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
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_multi_head_attention_21_layer_call_fn_2946901queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_multi_head_attention_21_layer_call_fn_2946923queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2946958queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2946993queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�B�
,__inference_dropout_20_layer_call_fn_2946998inputs"�
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
,__inference_dropout_20_layer_call_fn_2947003inputs"�
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
�B�
G__inference_dropout_20_layer_call_and_return_conditional_losses_2947015inputs"�
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
�B�
G__inference_dropout_20_layer_call_and_return_conditional_losses_2947020inputs"�
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
�B�
8__inference_layer_normalization_35_layer_call_fn_2947029inputs"�
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
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_2947051inputs"�
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
*__inference_dense_20_layer_call_fn_2947060inputs"�
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
E__inference_dense_20_layer_call_and_return_conditional_losses_2947075inputs"�
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
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_multi_head_attention_22_layer_call_fn_2947097queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_multi_head_attention_22_layer_call_fn_2947119queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2947154queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2947189queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�B�
,__inference_dropout_21_layer_call_fn_2947194inputs"�
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
,__inference_dropout_21_layer_call_fn_2947199inputs"�
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
�B�
G__inference_dropout_21_layer_call_and_return_conditional_losses_2947211inputs"�
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
�B�
G__inference_dropout_21_layer_call_and_return_conditional_losses_2947216inputs"�
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
�B�
8__inference_layer_normalization_37_layer_call_fn_2947225inputs"�
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
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_2947247inputs"�
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
8__inference_layer_normalization_36_layer_call_fn_2947256inputs"�
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
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_2947278inputs"�
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
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_multi_head_attention_23_layer_call_fn_2947300queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_multi_head_attention_23_layer_call_fn_2947322queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2947357queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2947392queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�B�
,__inference_dropout_22_layer_call_fn_2947397inputs"�
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
,__inference_dropout_22_layer_call_fn_2947402inputs"�
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
�B�
G__inference_dropout_22_layer_call_and_return_conditional_losses_2947414inputs"�
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
�B�
G__inference_dropout_22_layer_call_and_return_conditional_losses_2947419inputs"�
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
�B�
8__inference_layer_normalization_38_layer_call_fn_2947428inputs"�
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
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_2947450inputs"�
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
*__inference_dense_21_layer_call_fn_2947459inputs"�
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
E__inference_dense_21_layer_call_and_return_conditional_losses_2947474inputs"�
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
,__inference_dropout_23_layer_call_fn_2947479inputs"�
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
,__inference_dropout_23_layer_call_fn_2947484inputs"�
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
�B�
G__inference_dropout_23_layer_call_and_return_conditional_losses_2947496inputs"�
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
�B�
G__inference_dropout_23_layer_call_and_return_conditional_losses_2947501inputs"�
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
�B�
8__inference_layer_normalization_39_layer_call_fn_2947510inputs"�
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
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_2947532inputs"�
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
<__inference_global_average_pooling1d_3_layer_call_fn_2947537inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_2947543inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�
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
*__inference_dense_22_layer_call_fn_2947552inputs"�
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
E__inference_dense_22_layer_call_and_return_conditional_losses_2947562inputs"�
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
*__inference_dense_23_layer_call_fn_2947571inputs"�
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
E__inference_dense_23_layer_call_and_return_conditional_losses_2947581inputs"�
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
trackable_dict_wrapper�
"__inference__wrapped_model_2944073����������LMUVij������������������������������������������������������������������+�(
!�
�
input_4
� "*�'
%
dense_23�
dense_23�
E__inference_dense_18_layer_call_and_return_conditional_losses_2946449YUV*�'
 �
�
inputs
� "'�$
�
tensor_0
� |
*__inference_dense_18_layer_call_fn_2946434NUV*�'
 �
�
inputs
� "�
unknown�
E__inference_dense_19_layer_call_and_return_conditional_losses_2946676[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� ~
*__inference_dense_19_layer_call_fn_2946661P��*�'
 �
�
inputs
� "�
unknown�
E__inference_dense_20_layer_call_and_return_conditional_losses_2947075[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� ~
*__inference_dense_20_layer_call_fn_2947060P��*�'
 �
�
inputs
� "�
unknown�
E__inference_dense_21_layer_call_and_return_conditional_losses_2947474[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� ~
*__inference_dense_21_layer_call_fn_2947459P��*�'
 �
�
inputs
� "�
unknown�
E__inference_dense_22_layer_call_and_return_conditional_losses_2947562S��&�#
�
�
inputs
� "#� 
�
tensor_0 
� v
*__inference_dense_22_layer_call_fn_2947552H��&�#
�
�
inputs
� "�
unknown �
E__inference_dense_23_layer_call_and_return_conditional_losses_2947581S��&�#
�
�
inputs 
� "#� 
�
tensor_0
� v
*__inference_dense_23_layer_call_fn_2947571H��&�#
�
�
inputs 
� "�
unknown�
G__inference_dropout_18_layer_call_and_return_conditional_losses_2946471Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_18_layer_call_and_return_conditional_losses_2946476Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_18_layer_call_fn_2946454N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_18_layer_call_fn_2946459N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_19_layer_call_and_return_conditional_losses_2946812Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_19_layer_call_and_return_conditional_losses_2946817Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_19_layer_call_fn_2946795N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_19_layer_call_fn_2946800N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_20_layer_call_and_return_conditional_losses_2947015Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_20_layer_call_and_return_conditional_losses_2947020Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_20_layer_call_fn_2946998N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_20_layer_call_fn_2947003N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_21_layer_call_and_return_conditional_losses_2947211Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_21_layer_call_and_return_conditional_losses_2947216Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_21_layer_call_fn_2947194N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_21_layer_call_fn_2947199N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_22_layer_call_and_return_conditional_losses_2947414Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_22_layer_call_and_return_conditional_losses_2947419Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_22_layer_call_fn_2947397N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_22_layer_call_fn_2947402N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_23_layer_call_and_return_conditional_losses_2947496Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_23_layer_call_and_return_conditional_losses_2947501Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_23_layer_call_fn_2947479N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_23_layer_call_fn_2947484N.�+
$�!
�
inputs
p 
� "�
unknown�
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_2947543�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
<__inference_global_average_pooling1d_3_layer_call_fn_2947537wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_2946425YLM*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_30_layer_call_fn_2946403NLM*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_2946507Yij*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_31_layer_call_fn_2946485Nij*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_2946652[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_32_layer_call_fn_2946630P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_2946879[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_33_layer_call_fn_2946857P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_2946848[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_34_layer_call_fn_2946826P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_2947051[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_35_layer_call_fn_2947029P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_2947278[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_36_layer_call_fn_2947256P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_2947247[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_37_layer_call_fn_2947225P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_2947450[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_38_layer_call_fn_2947428P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_2947532[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_39_layer_call_fn_2947510P��*�'
 �
�
inputs
� "�
unknown�
D__inference_model_3_layer_call_and_return_conditional_losses_2944871����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_4
p

 
� "#� 
�
tensor_0
� �
D__inference_model_3_layer_call_and_return_conditional_losses_2945316����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_4
p 

 
� "#� 
�
tensor_0
� �
)__inference_model_3_layer_call_fn_2945481����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_4
p

 
� "�
unknown�
)__inference_model_3_layer_call_fn_2945646����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_4
p 

 
� "�
unknown�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2946359���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "'�$
�
tensor_0
� �
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_2946394���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "'�$
�
tensor_0
� �
9__inference_multi_head_attention_18_layer_call_fn_2946302���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "�
unknown�
9__inference_multi_head_attention_18_layer_call_fn_2946324���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "�
unknown�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2946586���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "'�$
�
tensor_0
� �
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_2946621���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "'�$
�
tensor_0
� �
9__inference_multi_head_attention_19_layer_call_fn_2946529���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "�
unknown�
9__inference_multi_head_attention_19_layer_call_fn_2946551���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "�
unknown�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2946755���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "'�$
�
tensor_0
� �
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_2946790���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "'�$
�
tensor_0
� �
9__inference_multi_head_attention_20_layer_call_fn_2946698���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "�
unknown�
9__inference_multi_head_attention_20_layer_call_fn_2946720���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "�
unknown�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2946958���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "'�$
�
tensor_0
� �
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_2946993���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "'�$
�
tensor_0
� �
9__inference_multi_head_attention_21_layer_call_fn_2946901���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "�
unknown�
9__inference_multi_head_attention_21_layer_call_fn_2946923���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "�
unknown�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2947154���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "'�$
�
tensor_0
� �
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_2947189���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "'�$
�
tensor_0
� �
9__inference_multi_head_attention_22_layer_call_fn_2947097���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "�
unknown�
9__inference_multi_head_attention_22_layer_call_fn_2947119���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "�
unknown�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2947357���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "'�$
�
tensor_0
� �
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_2947392���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "'�$
�
tensor_0
� �
9__inference_multi_head_attention_23_layer_call_fn_2947300���������Y�V
O�L
�
query
�
value

 

 
p 
p
p 
� "�
unknown�
9__inference_multi_head_attention_23_layer_call_fn_2947322���������Y�V
O�L
�
query
�
value

 

 
p 
p 
p 
� "�
unknown�
%__inference_signature_wrapper_2946280����������LMUVij������������������������������������������������������������������6�3
� 
,�)
'
input_4�
input_4"*�'
%
dense_23�
dense_23