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
%__inference_signature_wrapper_7495374

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
 __inference__traced_save_7497177
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
#__inference__traced_restore_7497426��#
�

f
G__inference_dropout_23_layer_call_and_return_conditional_losses_7496590

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
�
9__inference_multi_head_attention_19_layer_call_fn_7495645	
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7494079j
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
_user_specified_name	7495627:'#
!
_user_specified_name	7495629:'#
!
_user_specified_name	7495631:'#
!
_user_specified_name	7495633:'#
!
_user_specified_name	7495635:'#
!
_user_specified_name	7495637:'#
!
_user_specified_name	7495639:'	#
!
_user_specified_name	7495641
�
H
,__inference_dropout_20_layer_call_fn_7496097

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
G__inference_dropout_20_layer_call_and_return_conditional_losses_7494234[
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
�<
�
%__inference_signature_wrapper_7495374
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
"__inference__wrapped_model_7493167f
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
_user_specified_name	7495212:'#
!
_user_specified_name	7495214:'#
!
_user_specified_name	7495216:'#
!
_user_specified_name	7495218:'#
!
_user_specified_name	7495220:'#
!
_user_specified_name	7495222:'#
!
_user_specified_name	7495224:'#
!
_user_specified_name	7495226:'	#
!
_user_specified_name	7495228:'
#
!
_user_specified_name	7495230:'#
!
_user_specified_name	7495232:'#
!
_user_specified_name	7495234:'#
!
_user_specified_name	7495236:'#
!
_user_specified_name	7495238:'#
!
_user_specified_name	7495240:'#
!
_user_specified_name	7495242:'#
!
_user_specified_name	7495244:'#
!
_user_specified_name	7495246:'#
!
_user_specified_name	7495248:'#
!
_user_specified_name	7495250:'#
!
_user_specified_name	7495252:'#
!
_user_specified_name	7495254:'#
!
_user_specified_name	7495256:'#
!
_user_specified_name	7495258:'#
!
_user_specified_name	7495260:'#
!
_user_specified_name	7495262:'#
!
_user_specified_name	7495264:'#
!
_user_specified_name	7495266:'#
!
_user_specified_name	7495268:'#
!
_user_specified_name	7495270:'#
!
_user_specified_name	7495272:' #
!
_user_specified_name	7495274:'!#
!
_user_specified_name	7495276:'"#
!
_user_specified_name	7495278:'##
!
_user_specified_name	7495280:'$#
!
_user_specified_name	7495282:'%#
!
_user_specified_name	7495284:'&#
!
_user_specified_name	7495286:''#
!
_user_specified_name	7495288:'(#
!
_user_specified_name	7495290:')#
!
_user_specified_name	7495292:'*#
!
_user_specified_name	7495294:'+#
!
_user_specified_name	7495296:',#
!
_user_specified_name	7495298:'-#
!
_user_specified_name	7495300:'.#
!
_user_specified_name	7495302:'/#
!
_user_specified_name	7495304:'0#
!
_user_specified_name	7495306:'1#
!
_user_specified_name	7495308:'2#
!
_user_specified_name	7495310:'3#
!
_user_specified_name	7495312:'4#
!
_user_specified_name	7495314:'5#
!
_user_specified_name	7495316:'6#
!
_user_specified_name	7495318:'7#
!
_user_specified_name	7495320:'8#
!
_user_specified_name	7495322:'9#
!
_user_specified_name	7495324:':#
!
_user_specified_name	7495326:';#
!
_user_specified_name	7495328:'<#
!
_user_specified_name	7495330:'=#
!
_user_specified_name	7495332:'>#
!
_user_specified_name	7495334:'?#
!
_user_specified_name	7495336:'@#
!
_user_specified_name	7495338:'A#
!
_user_specified_name	7495340:'B#
!
_user_specified_name	7495342:'C#
!
_user_specified_name	7495344:'D#
!
_user_specified_name	7495346:'E#
!
_user_specified_name	7495348:'F#
!
_user_specified_name	7495350:'G#
!
_user_specified_name	7495352:'H#
!
_user_specified_name	7495354:'I#
!
_user_specified_name	7495356:'J#
!
_user_specified_name	7495358:'K#
!
_user_specified_name	7495360:'L#
!
_user_specified_name	7495362:'M#
!
_user_specified_name	7495364:'N#
!
_user_specified_name	7495366:'O#
!
_user_specified_name	7495368:'P#
!
_user_specified_name	7495370
�+
�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7495453	
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
�
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_7494037

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
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_7496626

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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7494004	
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
�+
�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7493471	
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
�
�
8__inference_layer_normalization_35_layer_call_fn_7496123

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
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_7493632j
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
_user_specified_name	7496117:'#
!
_user_specified_name	7496119
�
e
G__inference_dropout_20_layer_call_and_return_conditional_losses_7494234

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
�
E__inference_dense_22_layer_call_and_return_conditional_losses_7496656

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
�+
�
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7496052	
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7495680	
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
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_7493318

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
X
<__inference_global_average_pooling1d_3_layer_call_fn_7496631

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
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_7493173i
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
�
�
*__inference_dense_23_layer_call_fn_7496665

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
E__inference_dense_23_layer_call_and_return_conditional_losses_7493958f
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
_user_specified_name	7496659:'#
!
_user_specified_name	7496661
�
�
9__inference_multi_head_attention_23_layer_call_fn_7496416	
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7494351j
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
_user_specified_name	7496398:'#
!
_user_specified_name	7496400:'#
!
_user_specified_name	7496402:'#
!
_user_specified_name	7496404:'#
!
_user_specified_name	7496406:'#
!
_user_specified_name	7496408:'#
!
_user_specified_name	7496410:'	#
!
_user_specified_name	7496412
�<
�
)__inference_model_3_layer_call_fn_7494575
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
D__inference_model_3_layer_call_and_return_conditional_losses_7493965f
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
_user_specified_name	7494413:'#
!
_user_specified_name	7494415:'#
!
_user_specified_name	7494417:'#
!
_user_specified_name	7494419:'#
!
_user_specified_name	7494421:'#
!
_user_specified_name	7494423:'#
!
_user_specified_name	7494425:'#
!
_user_specified_name	7494427:'	#
!
_user_specified_name	7494429:'
#
!
_user_specified_name	7494431:'#
!
_user_specified_name	7494433:'#
!
_user_specified_name	7494435:'#
!
_user_specified_name	7494437:'#
!
_user_specified_name	7494439:'#
!
_user_specified_name	7494441:'#
!
_user_specified_name	7494443:'#
!
_user_specified_name	7494445:'#
!
_user_specified_name	7494447:'#
!
_user_specified_name	7494449:'#
!
_user_specified_name	7494451:'#
!
_user_specified_name	7494453:'#
!
_user_specified_name	7494455:'#
!
_user_specified_name	7494457:'#
!
_user_specified_name	7494459:'#
!
_user_specified_name	7494461:'#
!
_user_specified_name	7494463:'#
!
_user_specified_name	7494465:'#
!
_user_specified_name	7494467:'#
!
_user_specified_name	7494469:'#
!
_user_specified_name	7494471:'#
!
_user_specified_name	7494473:' #
!
_user_specified_name	7494475:'!#
!
_user_specified_name	7494477:'"#
!
_user_specified_name	7494479:'##
!
_user_specified_name	7494481:'$#
!
_user_specified_name	7494483:'%#
!
_user_specified_name	7494485:'&#
!
_user_specified_name	7494487:''#
!
_user_specified_name	7494489:'(#
!
_user_specified_name	7494491:')#
!
_user_specified_name	7494493:'*#
!
_user_specified_name	7494495:'+#
!
_user_specified_name	7494497:',#
!
_user_specified_name	7494499:'-#
!
_user_specified_name	7494501:'.#
!
_user_specified_name	7494503:'/#
!
_user_specified_name	7494505:'0#
!
_user_specified_name	7494507:'1#
!
_user_specified_name	7494509:'2#
!
_user_specified_name	7494511:'3#
!
_user_specified_name	7494513:'4#
!
_user_specified_name	7494515:'5#
!
_user_specified_name	7494517:'6#
!
_user_specified_name	7494519:'7#
!
_user_specified_name	7494521:'8#
!
_user_specified_name	7494523:'9#
!
_user_specified_name	7494525:':#
!
_user_specified_name	7494527:';#
!
_user_specified_name	7494529:'<#
!
_user_specified_name	7494531:'=#
!
_user_specified_name	7494533:'>#
!
_user_specified_name	7494535:'?#
!
_user_specified_name	7494537:'@#
!
_user_specified_name	7494539:'A#
!
_user_specified_name	7494541:'B#
!
_user_specified_name	7494543:'C#
!
_user_specified_name	7494545:'D#
!
_user_specified_name	7494547:'E#
!
_user_specified_name	7494549:'F#
!
_user_specified_name	7494551:'G#
!
_user_specified_name	7494553:'H#
!
_user_specified_name	7494555:'I#
!
_user_specified_name	7494557:'J#
!
_user_specified_name	7494559:'K#
!
_user_specified_name	7494561:'L#
!
_user_specified_name	7494563:'M#
!
_user_specified_name	7494565:'N#
!
_user_specified_name	7494567:'O#
!
_user_specified_name	7494569:'P#
!
_user_specified_name	7494571
�
�
9__inference_multi_head_attention_21_layer_call_fn_7496017	
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7494212j
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
_user_specified_name	7495999:'#
!
_user_specified_name	7496001:'#
!
_user_specified_name	7496003:'#
!
_user_specified_name	7496005:'#
!
_user_specified_name	7496007:'#
!
_user_specified_name	7496009:'#
!
_user_specified_name	7496011:'	#
!
_user_specified_name	7496013
�
�
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_7495973

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
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_7493746

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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7493435

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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7493217	
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
�+
�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7494351	
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
�
e
,__inference_dropout_21_layer_call_fn_7496288

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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7493669j
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
�
9__inference_multi_head_attention_22_layer_call_fn_7496213	
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7494287j
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
_user_specified_name	7496195:'#
!
_user_specified_name	7496197:'#
!
_user_specified_name	7496199:'#
!
_user_specified_name	7496201:'#
!
_user_specified_name	7496203:'#
!
_user_specified_name	7496205:'#
!
_user_specified_name	7496207:'	#
!
_user_specified_name	7496209
�
e
G__inference_dropout_20_layer_call_and_return_conditional_losses_7496114

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
9__inference_multi_head_attention_23_layer_call_fn_7496394	
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7493813j
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
_user_specified_name	7496376:'#
!
_user_specified_name	7496378:'#
!
_user_specified_name	7496380:'#
!
_user_specified_name	7496382:'#
!
_user_specified_name	7496384:'#
!
_user_specified_name	7496386:'#
!
_user_specified_name	7496388:'	#
!
_user_specified_name	7496390
�
e
G__inference_dropout_23_layer_call_and_return_conditional_losses_7496595

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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7496305

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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7493705	
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7494212	
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
�
�
9__inference_multi_head_attention_22_layer_call_fn_7496191	
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7493705j
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
_user_specified_name	7496173:'#
!
_user_specified_name	7496175:'#
!
_user_specified_name	7496177:'#
!
_user_specified_name	7496179:'#
!
_user_specified_name	7496181:'#
!
_user_specified_name	7496183:'#
!
_user_specified_name	7496185:'	#
!
_user_specified_name	7496187
�
s
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_7496637

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
��
�Q
 __inference__traced_save_7497177
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
�
�
9__inference_multi_head_attention_19_layer_call_fn_7495623	
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7493358j
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
_user_specified_name	7495605:'#
!
_user_specified_name	7495607:'#
!
_user_specified_name	7495609:'#
!
_user_specified_name	7495611:'#
!
_user_specified_name	7495613:'#
!
_user_specified_name	7495615:'#
!
_user_specified_name	7495617:'	#
!
_user_specified_name	7495619
�	
�
E__inference_dense_22_layer_call_and_return_conditional_losses_7493943

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
�
�
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_7493632

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
�
E__inference_dense_23_layer_call_and_return_conditional_losses_7493958

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
�+
�
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7495715	
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
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_7495942

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
H
,__inference_dropout_21_layer_call_fn_7496293

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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7494251[
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7495849	
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
9__inference_multi_head_attention_21_layer_call_fn_7495995	
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7493579j
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
_user_specified_name	7495977:'#
!
_user_specified_name	7495979:'#
!
_user_specified_name	7495981:'#
!
_user_specified_name	7495983:'#
!
_user_specified_name	7495985:'#
!
_user_specified_name	7495987:'#
!
_user_specified_name	7495989:'	#
!
_user_specified_name	7495991
�+
�
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7496451	
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
E__inference_dense_21_layer_call_and_return_conditional_losses_7493886

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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7496310

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
�
s
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_7493173

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
�
e
G__inference_dropout_22_layer_call_and_return_conditional_losses_7496513

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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7495906

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
�
e
,__inference_dropout_19_layer_call_fn_7495889

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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7493435j
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7496087	
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
�
�
9__inference_multi_head_attention_18_layer_call_fn_7495396	
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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7493217j
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
_user_specified_name	7495378:'#
!
_user_specified_name	7495380:'#
!
_user_specified_name	7495382:'#
!
_user_specified_name	7495384:'#
!
_user_specified_name	7495386:'#
!
_user_specified_name	7495388:'#
!
_user_specified_name	7495390:'	#
!
_user_specified_name	7495392
�

f
G__inference_dropout_22_layer_call_and_return_conditional_losses_7493842

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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7493358	
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
�
�
E__inference_dense_21_layer_call_and_return_conditional_losses_7496568

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
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_7493773

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
�
�
E__inference_dense_20_layer_call_and_return_conditional_losses_7493652

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
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_7493257

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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7494287	
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7493294

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
8__inference_layer_normalization_36_layer_call_fn_7496350

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
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_7493773j
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
_user_specified_name	7496344:'#
!
_user_specified_name	7496346
�
�
E__inference_dense_20_layer_call_and_return_conditional_losses_7496169

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
E__inference_dense_18_layer_call_and_return_conditional_losses_7493277

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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7494390

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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7495884	
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
�+
�
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7496248	
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
�
9__inference_multi_head_attention_20_layer_call_fn_7495814	
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7494148j
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
_user_specified_name	7495796:'#
!
_user_specified_name	7495798:'#
!
_user_specified_name	7495800:'#
!
_user_specified_name	7495802:'#
!
_user_specified_name	7495804:'#
!
_user_specified_name	7495806:'#
!
_user_specified_name	7495808:'	#
!
_user_specified_name	7495810
��
�(
D__inference_model_3_layer_call_and_return_conditional_losses_7493965
input_45
multi_head_attention_18_7493218:1
multi_head_attention_18_7493220:5
multi_head_attention_18_7493222:1
multi_head_attention_18_7493224:5
multi_head_attention_18_7493226:1
multi_head_attention_18_7493228:5
multi_head_attention_18_7493230:-
multi_head_attention_18_7493232:,
layer_normalization_30_7493258:,
layer_normalization_30_7493260:"
dense_18_7493278:
dense_18_7493280:,
layer_normalization_31_7493319:,
layer_normalization_31_7493321:5
multi_head_attention_19_7493359:1
multi_head_attention_19_7493361:5
multi_head_attention_19_7493363:1
multi_head_attention_19_7493365:5
multi_head_attention_19_7493367:1
multi_head_attention_19_7493369:5
multi_head_attention_19_7493371:-
multi_head_attention_19_7493373:,
layer_normalization_32_7493399:,
layer_normalization_32_7493401:"
dense_19_7493419:
dense_19_7493421:5
multi_head_attention_20_7493472:1
multi_head_attention_20_7493474:5
multi_head_attention_20_7493476:1
multi_head_attention_20_7493478:5
multi_head_attention_20_7493480:1
multi_head_attention_20_7493482:5
multi_head_attention_20_7493484:-
multi_head_attention_20_7493486:,
layer_normalization_34_7493513:,
layer_normalization_34_7493515:,
layer_normalization_33_7493540:,
layer_normalization_33_7493542:5
multi_head_attention_21_7493580:1
multi_head_attention_21_7493582:5
multi_head_attention_21_7493584:1
multi_head_attention_21_7493586:5
multi_head_attention_21_7493588:1
multi_head_attention_21_7493590:5
multi_head_attention_21_7493592:-
multi_head_attention_21_7493594:,
layer_normalization_35_7493633:,
layer_normalization_35_7493635:"
dense_20_7493653:
dense_20_7493655:5
multi_head_attention_22_7493706:1
multi_head_attention_22_7493708:5
multi_head_attention_22_7493710:1
multi_head_attention_22_7493712:5
multi_head_attention_22_7493714:1
multi_head_attention_22_7493716:5
multi_head_attention_22_7493718:-
multi_head_attention_22_7493720:,
layer_normalization_37_7493747:,
layer_normalization_37_7493749:,
layer_normalization_36_7493774:,
layer_normalization_36_7493776:5
multi_head_attention_23_7493814:1
multi_head_attention_23_7493816:5
multi_head_attention_23_7493818:1
multi_head_attention_23_7493820:5
multi_head_attention_23_7493822:1
multi_head_attention_23_7493824:5
multi_head_attention_23_7493826:-
multi_head_attention_23_7493828:,
layer_normalization_38_7493867:,
layer_normalization_38_7493869:"
dense_21_7493887:
dense_21_7493889:,
layer_normalization_39_7493928:,
layer_normalization_39_7493930:"
dense_22_7493944: 
dense_22_7493946: "
dense_23_7493959: 
dense_23_7493961:
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
/multi_head_attention_18/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_18_7493218multi_head_attention_18_7493220multi_head_attention_18_7493222multi_head_attention_18_7493224multi_head_attention_18_7493226multi_head_attention_18_7493228multi_head_attention_18_7493230multi_head_attention_18_7493232*
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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7493217�
tf.__operators__.add_34/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_18/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_30/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_34/AddV2:z:0layer_normalization_30_7493258layer_normalization_30_7493260*
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
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_7493257�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_30/StatefulPartitionedCall:output:0dense_18_7493278dense_18_7493280*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_7493277�
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7493294�
tf.__operators__.add_35/AddV2AddV27layer_normalization_30/StatefulPartitionedCall:output:0+dropout_18/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_31/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_35/AddV2:z:0layer_normalization_31_7493319layer_normalization_31_7493321*
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
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_7493318�
/multi_head_attention_19/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_31/StatefulPartitionedCall:output:07layer_normalization_31/StatefulPartitionedCall:output:0multi_head_attention_19_7493359multi_head_attention_19_7493361multi_head_attention_19_7493363multi_head_attention_19_7493365multi_head_attention_19_7493367multi_head_attention_19_7493369multi_head_attention_19_7493371multi_head_attention_19_7493373*
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7493358�
tf.__operators__.add_36/AddV2AddV27layer_normalization_31/StatefulPartitionedCall:output:08multi_head_attention_19/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_32/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_36/AddV2:z:0layer_normalization_32_7493399layer_normalization_32_7493401*
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
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_7493398�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_32/StatefulPartitionedCall:output:0dense_19_7493419dense_19_7493421*
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
E__inference_dense_19_layer_call_and_return_conditional_losses_7493418�
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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7493435�
/multi_head_attention_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_20_7493472multi_head_attention_20_7493474multi_head_attention_20_7493476multi_head_attention_20_7493478multi_head_attention_20_7493480multi_head_attention_20_7493482multi_head_attention_20_7493484multi_head_attention_20_7493486*
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7493471�
tf.__operators__.add_37/AddV2AddV27layer_normalization_32/StatefulPartitionedCall:output:0+dropout_19/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_38/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_20/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_34/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_38/AddV2:z:0layer_normalization_34_7493513layer_normalization_34_7493515*
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
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_7493512�
.layer_normalization_33/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_37/AddV2:z:0layer_normalization_33_7493540layer_normalization_33_7493542*
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
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_7493539�
/multi_head_attention_21/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_34/StatefulPartitionedCall:output:07layer_normalization_33/StatefulPartitionedCall:output:0multi_head_attention_21_7493580multi_head_attention_21_7493582multi_head_attention_21_7493584multi_head_attention_21_7493586multi_head_attention_21_7493588multi_head_attention_21_7493590multi_head_attention_21_7493592multi_head_attention_21_7493594*
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7493579�
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
G__inference_dropout_20_layer_call_and_return_conditional_losses_7493608�
tf.__operators__.add_39/AddV2AddV27layer_normalization_34/StatefulPartitionedCall:output:0+dropout_20/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_35/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_39/AddV2:z:0layer_normalization_35_7493633layer_normalization_35_7493635*
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
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_7493632�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_35/StatefulPartitionedCall:output:0dense_20_7493653dense_20_7493655*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_7493652�
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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7493669�
/multi_head_attention_22/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_22_7493706multi_head_attention_22_7493708multi_head_attention_22_7493710multi_head_attention_22_7493712multi_head_attention_22_7493714multi_head_attention_22_7493716multi_head_attention_22_7493718multi_head_attention_22_7493720*
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7493705�
tf.__operators__.add_40/AddV2AddV27layer_normalization_35/StatefulPartitionedCall:output:0+dropout_21/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_41/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_22/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_37/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_41/AddV2:z:0layer_normalization_37_7493747layer_normalization_37_7493749*
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
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_7493746�
.layer_normalization_36/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_40/AddV2:z:0layer_normalization_36_7493774layer_normalization_36_7493776*
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
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_7493773�
/multi_head_attention_23/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_37/StatefulPartitionedCall:output:07layer_normalization_36/StatefulPartitionedCall:output:0multi_head_attention_23_7493814multi_head_attention_23_7493816multi_head_attention_23_7493818multi_head_attention_23_7493820multi_head_attention_23_7493822multi_head_attention_23_7493824multi_head_attention_23_7493826multi_head_attention_23_7493828*
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7493813�
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
G__inference_dropout_22_layer_call_and_return_conditional_losses_7493842�
tf.__operators__.add_42/AddV2AddV27layer_normalization_37/StatefulPartitionedCall:output:0+dropout_22/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_38/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_42/AddV2:z:0layer_normalization_38_7493867layer_normalization_38_7493869*
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
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_7493866�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_38/StatefulPartitionedCall:output:0dense_21_7493887dense_21_7493889*
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
E__inference_dense_21_layer_call_and_return_conditional_losses_7493886�
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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7493903�
tf.__operators__.add_43/AddV2AddV27layer_normalization_38/StatefulPartitionedCall:output:0+dropout_23/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_39/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_43/AddV2:z:0layer_normalization_39_7493928layer_normalization_39_7493930*
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
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_7493927�
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
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_7493173�
 dense_22/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_22_7493944dense_22_7493946*
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
E__inference_dense_22_layer_call_and_return_conditional_losses_7493943�
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_7493959dense_23_7493961*
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
E__inference_dense_23_layer_call_and_return_conditional_losses_7493958o
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
_user_specified_name	7493218:'#
!
_user_specified_name	7493220:'#
!
_user_specified_name	7493222:'#
!
_user_specified_name	7493224:'#
!
_user_specified_name	7493226:'#
!
_user_specified_name	7493228:'#
!
_user_specified_name	7493230:'#
!
_user_specified_name	7493232:'	#
!
_user_specified_name	7493258:'
#
!
_user_specified_name	7493260:'#
!
_user_specified_name	7493278:'#
!
_user_specified_name	7493280:'#
!
_user_specified_name	7493319:'#
!
_user_specified_name	7493321:'#
!
_user_specified_name	7493359:'#
!
_user_specified_name	7493361:'#
!
_user_specified_name	7493363:'#
!
_user_specified_name	7493365:'#
!
_user_specified_name	7493367:'#
!
_user_specified_name	7493369:'#
!
_user_specified_name	7493371:'#
!
_user_specified_name	7493373:'#
!
_user_specified_name	7493399:'#
!
_user_specified_name	7493401:'#
!
_user_specified_name	7493419:'#
!
_user_specified_name	7493421:'#
!
_user_specified_name	7493472:'#
!
_user_specified_name	7493474:'#
!
_user_specified_name	7493476:'#
!
_user_specified_name	7493478:'#
!
_user_specified_name	7493480:' #
!
_user_specified_name	7493482:'!#
!
_user_specified_name	7493484:'"#
!
_user_specified_name	7493486:'##
!
_user_specified_name	7493513:'$#
!
_user_specified_name	7493515:'%#
!
_user_specified_name	7493540:'&#
!
_user_specified_name	7493542:''#
!
_user_specified_name	7493580:'(#
!
_user_specified_name	7493582:')#
!
_user_specified_name	7493584:'*#
!
_user_specified_name	7493586:'+#
!
_user_specified_name	7493588:',#
!
_user_specified_name	7493590:'-#
!
_user_specified_name	7493592:'.#
!
_user_specified_name	7493594:'/#
!
_user_specified_name	7493633:'0#
!
_user_specified_name	7493635:'1#
!
_user_specified_name	7493653:'2#
!
_user_specified_name	7493655:'3#
!
_user_specified_name	7493706:'4#
!
_user_specified_name	7493708:'5#
!
_user_specified_name	7493710:'6#
!
_user_specified_name	7493712:'7#
!
_user_specified_name	7493714:'8#
!
_user_specified_name	7493716:'9#
!
_user_specified_name	7493718:':#
!
_user_specified_name	7493720:';#
!
_user_specified_name	7493747:'<#
!
_user_specified_name	7493749:'=#
!
_user_specified_name	7493774:'>#
!
_user_specified_name	7493776:'?#
!
_user_specified_name	7493814:'@#
!
_user_specified_name	7493816:'A#
!
_user_specified_name	7493818:'B#
!
_user_specified_name	7493820:'C#
!
_user_specified_name	7493822:'D#
!
_user_specified_name	7493824:'E#
!
_user_specified_name	7493826:'F#
!
_user_specified_name	7493828:'G#
!
_user_specified_name	7493867:'H#
!
_user_specified_name	7493869:'I#
!
_user_specified_name	7493887:'J#
!
_user_specified_name	7493889:'K#
!
_user_specified_name	7493928:'L#
!
_user_specified_name	7493930:'M#
!
_user_specified_name	7493944:'N#
!
_user_specified_name	7493946:'O#
!
_user_specified_name	7493959:'P#
!
_user_specified_name	7493961
�
H
,__inference_dropout_22_layer_call_fn_7496496

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
G__inference_dropout_22_layer_call_and_return_conditional_losses_7494373[
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
8__inference_layer_normalization_34_layer_call_fn_7495920

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
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_7493512j
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
_user_specified_name	7495914:'#
!
_user_specified_name	7495916
�
e
,__inference_dropout_20_layer_call_fn_7496092

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
G__inference_dropout_20_layer_call_and_return_conditional_losses_7493608j
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
�
�
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_7495746

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
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_7493927

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
8__inference_layer_normalization_31_layer_call_fn_7495579

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
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_7493318j
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
_user_specified_name	7495573:'#
!
_user_specified_name	7495575
�

f
G__inference_dropout_20_layer_call_and_return_conditional_losses_7493608

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
�
�\
"__inference__wrapped_model_7493167
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
�
e
,__inference_dropout_23_layer_call_fn_7496573

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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7493903j
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
�
�
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_7495601

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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7494251

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
)__inference_model_3_layer_call_fn_7494740
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
D__inference_model_3_layer_call_and_return_conditional_losses_7494410f
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
_user_specified_name	7494578:'#
!
_user_specified_name	7494580:'#
!
_user_specified_name	7494582:'#
!
_user_specified_name	7494584:'#
!
_user_specified_name	7494586:'#
!
_user_specified_name	7494588:'#
!
_user_specified_name	7494590:'#
!
_user_specified_name	7494592:'	#
!
_user_specified_name	7494594:'
#
!
_user_specified_name	7494596:'#
!
_user_specified_name	7494598:'#
!
_user_specified_name	7494600:'#
!
_user_specified_name	7494602:'#
!
_user_specified_name	7494604:'#
!
_user_specified_name	7494606:'#
!
_user_specified_name	7494608:'#
!
_user_specified_name	7494610:'#
!
_user_specified_name	7494612:'#
!
_user_specified_name	7494614:'#
!
_user_specified_name	7494616:'#
!
_user_specified_name	7494618:'#
!
_user_specified_name	7494620:'#
!
_user_specified_name	7494622:'#
!
_user_specified_name	7494624:'#
!
_user_specified_name	7494626:'#
!
_user_specified_name	7494628:'#
!
_user_specified_name	7494630:'#
!
_user_specified_name	7494632:'#
!
_user_specified_name	7494634:'#
!
_user_specified_name	7494636:'#
!
_user_specified_name	7494638:' #
!
_user_specified_name	7494640:'!#
!
_user_specified_name	7494642:'"#
!
_user_specified_name	7494644:'##
!
_user_specified_name	7494646:'$#
!
_user_specified_name	7494648:'%#
!
_user_specified_name	7494650:'&#
!
_user_specified_name	7494652:''#
!
_user_specified_name	7494654:'(#
!
_user_specified_name	7494656:')#
!
_user_specified_name	7494658:'*#
!
_user_specified_name	7494660:'+#
!
_user_specified_name	7494662:',#
!
_user_specified_name	7494664:'-#
!
_user_specified_name	7494666:'.#
!
_user_specified_name	7494668:'/#
!
_user_specified_name	7494670:'0#
!
_user_specified_name	7494672:'1#
!
_user_specified_name	7494674:'2#
!
_user_specified_name	7494676:'3#
!
_user_specified_name	7494678:'4#
!
_user_specified_name	7494680:'5#
!
_user_specified_name	7494682:'6#
!
_user_specified_name	7494684:'7#
!
_user_specified_name	7494686:'8#
!
_user_specified_name	7494688:'9#
!
_user_specified_name	7494690:':#
!
_user_specified_name	7494692:';#
!
_user_specified_name	7494694:'<#
!
_user_specified_name	7494696:'=#
!
_user_specified_name	7494698:'>#
!
_user_specified_name	7494700:'?#
!
_user_specified_name	7494702:'@#
!
_user_specified_name	7494704:'A#
!
_user_specified_name	7494706:'B#
!
_user_specified_name	7494708:'C#
!
_user_specified_name	7494710:'D#
!
_user_specified_name	7494712:'E#
!
_user_specified_name	7494714:'F#
!
_user_specified_name	7494716:'G#
!
_user_specified_name	7494718:'H#
!
_user_specified_name	7494720:'I#
!
_user_specified_name	7494722:'J#
!
_user_specified_name	7494724:'K#
!
_user_specified_name	7494726:'L#
!
_user_specified_name	7494728:'M#
!
_user_specified_name	7494730:'N#
!
_user_specified_name	7494732:'O#
!
_user_specified_name	7494734:'P#
!
_user_specified_name	7494736
�
�
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_7496372

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
*__inference_dense_18_layer_call_fn_7495528

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
E__inference_dense_18_layer_call_and_return_conditional_losses_7493277j
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
_user_specified_name	7495522:'#
!
_user_specified_name	7495524
�
�
*__inference_dense_22_layer_call_fn_7496646

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
E__inference_dense_22_layer_call_and_return_conditional_losses_7493943f
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
_user_specified_name	7496640:'#
!
_user_specified_name	7496642
�	
�
E__inference_dense_23_layer_call_and_return_conditional_losses_7496675

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
G__inference_dropout_22_layer_call_and_return_conditional_losses_7496508

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
8__inference_layer_normalization_30_layer_call_fn_7495497

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
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_7493257j
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
_user_specified_name	7495491:'#
!
_user_specified_name	7495493
�
�
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_7493866

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
G__inference_dropout_20_layer_call_and_return_conditional_losses_7496109

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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7495488	
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
�
e
G__inference_dropout_22_layer_call_and_return_conditional_losses_7494373

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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7494079	
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7495570

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
�
H
,__inference_dropout_18_layer_call_fn_7495553

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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7494037[
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
8__inference_layer_normalization_37_layer_call_fn_7496319

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
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_7493746j
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
_user_specified_name	7496313:'#
!
_user_specified_name	7496315
�
�
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_7495519

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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7496283	
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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7493669

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
�
e
,__inference_dropout_18_layer_call_fn_7495548

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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7493294j
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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7494112

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
9__inference_multi_head_attention_20_layer_call_fn_7495792	
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7493471j
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
_user_specified_name	7495774:'#
!
_user_specified_name	7495776:'#
!
_user_specified_name	7495778:'#
!
_user_specified_name	7495780:'#
!
_user_specified_name	7495782:'#
!
_user_specified_name	7495784:'#
!
_user_specified_name	7495786:'	#
!
_user_specified_name	7495788
�
�
8__inference_layer_normalization_32_layer_call_fn_7495724

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
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_7493398j
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
_user_specified_name	7495718:'#
!
_user_specified_name	7495720
�
�
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_7496145

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
�
�
E__inference_dense_19_layer_call_and_return_conditional_losses_7493418

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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7495911

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
*__inference_dense_21_layer_call_fn_7496553

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
E__inference_dense_21_layer_call_and_return_conditional_losses_7493886j
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
_user_specified_name	7496547:'#
!
_user_specified_name	7496549
�
�
E__inference_dense_18_layer_call_and_return_conditional_losses_7495543

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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7493903

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
*__inference_dense_20_layer_call_fn_7496154

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
E__inference_dense_20_layer_call_and_return_conditional_losses_7493652j
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
_user_specified_name	7496148:'#
!
_user_specified_name	7496150
�
�
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_7496341

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
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_7493398

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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7493579	
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7493813	
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
�
H
,__inference_dropout_23_layer_call_fn_7496578

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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7494390[
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
�
H
,__inference_dropout_19_layer_call_fn_7495894

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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7494112[
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
*__inference_dense_19_layer_call_fn_7495755

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
E__inference_dense_19_layer_call_and_return_conditional_losses_7493418j
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
_user_specified_name	7495749:'#
!
_user_specified_name	7495751
�
�
8__inference_layer_normalization_38_layer_call_fn_7496522

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
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_7493866j
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
_user_specified_name	7496516:'#
!
_user_specified_name	7496518
�
�
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_7493539

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
9__inference_multi_head_attention_18_layer_call_fn_7495418	
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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7494004j
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
_user_specified_name	7495400:'#
!
_user_specified_name	7495402:'#
!
_user_specified_name	7495404:'#
!
_user_specified_name	7495406:'#
!
_user_specified_name	7495408:'#
!
_user_specified_name	7495410:'#
!
_user_specified_name	7495412:'	#
!
_user_specified_name	7495414
�
�
8__inference_layer_normalization_39_layer_call_fn_7496604

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
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_7493927j
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
_user_specified_name	7496598:'#
!
_user_specified_name	7496600
��
�&
D__inference_model_3_layer_call_and_return_conditional_losses_7494410
input_45
multi_head_attention_18_7494005:1
multi_head_attention_18_7494007:5
multi_head_attention_18_7494009:1
multi_head_attention_18_7494011:5
multi_head_attention_18_7494013:1
multi_head_attention_18_7494015:5
multi_head_attention_18_7494017:-
multi_head_attention_18_7494019:,
layer_normalization_30_7494023:,
layer_normalization_30_7494025:"
dense_18_7494028:
dense_18_7494030:,
layer_normalization_31_7494040:,
layer_normalization_31_7494042:5
multi_head_attention_19_7494080:1
multi_head_attention_19_7494082:5
multi_head_attention_19_7494084:1
multi_head_attention_19_7494086:5
multi_head_attention_19_7494088:1
multi_head_attention_19_7494090:5
multi_head_attention_19_7494092:-
multi_head_attention_19_7494094:,
layer_normalization_32_7494098:,
layer_normalization_32_7494100:"
dense_19_7494103:
dense_19_7494105:5
multi_head_attention_20_7494149:1
multi_head_attention_20_7494151:5
multi_head_attention_20_7494153:1
multi_head_attention_20_7494155:5
multi_head_attention_20_7494157:1
multi_head_attention_20_7494159:5
multi_head_attention_20_7494161:-
multi_head_attention_20_7494163:,
layer_normalization_34_7494168:,
layer_normalization_34_7494170:,
layer_normalization_33_7494173:,
layer_normalization_33_7494175:5
multi_head_attention_21_7494213:1
multi_head_attention_21_7494215:5
multi_head_attention_21_7494217:1
multi_head_attention_21_7494219:5
multi_head_attention_21_7494221:1
multi_head_attention_21_7494223:5
multi_head_attention_21_7494225:-
multi_head_attention_21_7494227:,
layer_normalization_35_7494237:,
layer_normalization_35_7494239:"
dense_20_7494242:
dense_20_7494244:5
multi_head_attention_22_7494288:1
multi_head_attention_22_7494290:5
multi_head_attention_22_7494292:1
multi_head_attention_22_7494294:5
multi_head_attention_22_7494296:1
multi_head_attention_22_7494298:5
multi_head_attention_22_7494300:-
multi_head_attention_22_7494302:,
layer_normalization_37_7494307:,
layer_normalization_37_7494309:,
layer_normalization_36_7494312:,
layer_normalization_36_7494314:5
multi_head_attention_23_7494352:1
multi_head_attention_23_7494354:5
multi_head_attention_23_7494356:1
multi_head_attention_23_7494358:5
multi_head_attention_23_7494360:1
multi_head_attention_23_7494362:5
multi_head_attention_23_7494364:-
multi_head_attention_23_7494366:,
layer_normalization_38_7494376:,
layer_normalization_38_7494378:"
dense_21_7494381:
dense_21_7494383:,
layer_normalization_39_7494393:,
layer_normalization_39_7494395:"
dense_22_7494399: 
dense_22_7494401: "
dense_23_7494404: 
dense_23_7494406:
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
/multi_head_attention_18/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_18_7494005multi_head_attention_18_7494007multi_head_attention_18_7494009multi_head_attention_18_7494011multi_head_attention_18_7494013multi_head_attention_18_7494015multi_head_attention_18_7494017multi_head_attention_18_7494019*
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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7494004�
tf.__operators__.add_34/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_18/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_30/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_34/AddV2:z:0layer_normalization_30_7494023layer_normalization_30_7494025*
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
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_7493257�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_30/StatefulPartitionedCall:output:0dense_18_7494028dense_18_7494030*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_7493277�
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7494037�
tf.__operators__.add_35/AddV2AddV27layer_normalization_30/StatefulPartitionedCall:output:0#dropout_18/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_31/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_35/AddV2:z:0layer_normalization_31_7494040layer_normalization_31_7494042*
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
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_7493318�
/multi_head_attention_19/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_31/StatefulPartitionedCall:output:07layer_normalization_31/StatefulPartitionedCall:output:0multi_head_attention_19_7494080multi_head_attention_19_7494082multi_head_attention_19_7494084multi_head_attention_19_7494086multi_head_attention_19_7494088multi_head_attention_19_7494090multi_head_attention_19_7494092multi_head_attention_19_7494094*
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7494079�
tf.__operators__.add_36/AddV2AddV27layer_normalization_31/StatefulPartitionedCall:output:08multi_head_attention_19/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_32/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_36/AddV2:z:0layer_normalization_32_7494098layer_normalization_32_7494100*
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
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_7493398�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_32/StatefulPartitionedCall:output:0dense_19_7494103dense_19_7494105*
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
E__inference_dense_19_layer_call_and_return_conditional_losses_7493418�
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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7494112�
/multi_head_attention_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_20_7494149multi_head_attention_20_7494151multi_head_attention_20_7494153multi_head_attention_20_7494155multi_head_attention_20_7494157multi_head_attention_20_7494159multi_head_attention_20_7494161multi_head_attention_20_7494163*
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7494148�
tf.__operators__.add_37/AddV2AddV27layer_normalization_32/StatefulPartitionedCall:output:0#dropout_19/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_38/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_20/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_34/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_38/AddV2:z:0layer_normalization_34_7494168layer_normalization_34_7494170*
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
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_7493512�
.layer_normalization_33/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_37/AddV2:z:0layer_normalization_33_7494173layer_normalization_33_7494175*
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
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_7493539�
/multi_head_attention_21/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_34/StatefulPartitionedCall:output:07layer_normalization_33/StatefulPartitionedCall:output:0multi_head_attention_21_7494213multi_head_attention_21_7494215multi_head_attention_21_7494217multi_head_attention_21_7494219multi_head_attention_21_7494221multi_head_attention_21_7494223multi_head_attention_21_7494225multi_head_attention_21_7494227*
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7494212�
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
G__inference_dropout_20_layer_call_and_return_conditional_losses_7494234�
tf.__operators__.add_39/AddV2AddV27layer_normalization_34/StatefulPartitionedCall:output:0#dropout_20/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_35/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_39/AddV2:z:0layer_normalization_35_7494237layer_normalization_35_7494239*
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
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_7493632�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_35/StatefulPartitionedCall:output:0dense_20_7494242dense_20_7494244*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_7493652�
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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7494251�
/multi_head_attention_22/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_33/AddV2:z:0!tf.__operators__.add_33/AddV2:z:0multi_head_attention_22_7494288multi_head_attention_22_7494290multi_head_attention_22_7494292multi_head_attention_22_7494294multi_head_attention_22_7494296multi_head_attention_22_7494298multi_head_attention_22_7494300multi_head_attention_22_7494302*
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7494287�
tf.__operators__.add_40/AddV2AddV27layer_normalization_35/StatefulPartitionedCall:output:0#dropout_21/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_41/AddV2AddV2!tf.__operators__.add_33/AddV2:z:08multi_head_attention_22/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_37/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_41/AddV2:z:0layer_normalization_37_7494307layer_normalization_37_7494309*
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
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_7493746�
.layer_normalization_36/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_40/AddV2:z:0layer_normalization_36_7494312layer_normalization_36_7494314*
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
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_7493773�
/multi_head_attention_23/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_37/StatefulPartitionedCall:output:07layer_normalization_36/StatefulPartitionedCall:output:0multi_head_attention_23_7494352multi_head_attention_23_7494354multi_head_attention_23_7494356multi_head_attention_23_7494358multi_head_attention_23_7494360multi_head_attention_23_7494362multi_head_attention_23_7494364multi_head_attention_23_7494366*
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7494351�
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
G__inference_dropout_22_layer_call_and_return_conditional_losses_7494373�
tf.__operators__.add_42/AddV2AddV27layer_normalization_37/StatefulPartitionedCall:output:0#dropout_22/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_38/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_42/AddV2:z:0layer_normalization_38_7494376layer_normalization_38_7494378*
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
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_7493866�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_38/StatefulPartitionedCall:output:0dense_21_7494381dense_21_7494383*
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
E__inference_dense_21_layer_call_and_return_conditional_losses_7493886�
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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7494390�
tf.__operators__.add_43/AddV2AddV27layer_normalization_38/StatefulPartitionedCall:output:0#dropout_23/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_39/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_43/AddV2:z:0layer_normalization_39_7494393layer_normalization_39_7494395*
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
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_7493927�
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
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_7493173�
 dense_22/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_22_7494399dense_22_7494401*
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
E__inference_dense_22_layer_call_and_return_conditional_losses_7493943�
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_7494404dense_23_7494406*
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
E__inference_dense_23_layer_call_and_return_conditional_losses_7493958o
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
_user_specified_name	7494005:'#
!
_user_specified_name	7494007:'#
!
_user_specified_name	7494009:'#
!
_user_specified_name	7494011:'#
!
_user_specified_name	7494013:'#
!
_user_specified_name	7494015:'#
!
_user_specified_name	7494017:'#
!
_user_specified_name	7494019:'	#
!
_user_specified_name	7494023:'
#
!
_user_specified_name	7494025:'#
!
_user_specified_name	7494028:'#
!
_user_specified_name	7494030:'#
!
_user_specified_name	7494040:'#
!
_user_specified_name	7494042:'#
!
_user_specified_name	7494080:'#
!
_user_specified_name	7494082:'#
!
_user_specified_name	7494084:'#
!
_user_specified_name	7494086:'#
!
_user_specified_name	7494088:'#
!
_user_specified_name	7494090:'#
!
_user_specified_name	7494092:'#
!
_user_specified_name	7494094:'#
!
_user_specified_name	7494098:'#
!
_user_specified_name	7494100:'#
!
_user_specified_name	7494103:'#
!
_user_specified_name	7494105:'#
!
_user_specified_name	7494149:'#
!
_user_specified_name	7494151:'#
!
_user_specified_name	7494153:'#
!
_user_specified_name	7494155:'#
!
_user_specified_name	7494157:' #
!
_user_specified_name	7494159:'!#
!
_user_specified_name	7494161:'"#
!
_user_specified_name	7494163:'##
!
_user_specified_name	7494168:'$#
!
_user_specified_name	7494170:'%#
!
_user_specified_name	7494173:'&#
!
_user_specified_name	7494175:''#
!
_user_specified_name	7494213:'(#
!
_user_specified_name	7494215:')#
!
_user_specified_name	7494217:'*#
!
_user_specified_name	7494219:'+#
!
_user_specified_name	7494221:',#
!
_user_specified_name	7494223:'-#
!
_user_specified_name	7494225:'.#
!
_user_specified_name	7494227:'/#
!
_user_specified_name	7494237:'0#
!
_user_specified_name	7494239:'1#
!
_user_specified_name	7494242:'2#
!
_user_specified_name	7494244:'3#
!
_user_specified_name	7494288:'4#
!
_user_specified_name	7494290:'5#
!
_user_specified_name	7494292:'6#
!
_user_specified_name	7494294:'7#
!
_user_specified_name	7494296:'8#
!
_user_specified_name	7494298:'9#
!
_user_specified_name	7494300:':#
!
_user_specified_name	7494302:';#
!
_user_specified_name	7494307:'<#
!
_user_specified_name	7494309:'=#
!
_user_specified_name	7494312:'>#
!
_user_specified_name	7494314:'?#
!
_user_specified_name	7494352:'@#
!
_user_specified_name	7494354:'A#
!
_user_specified_name	7494356:'B#
!
_user_specified_name	7494358:'C#
!
_user_specified_name	7494360:'D#
!
_user_specified_name	7494362:'E#
!
_user_specified_name	7494364:'F#
!
_user_specified_name	7494366:'G#
!
_user_specified_name	7494376:'H#
!
_user_specified_name	7494378:'I#
!
_user_specified_name	7494381:'J#
!
_user_specified_name	7494383:'K#
!
_user_specified_name	7494393:'L#
!
_user_specified_name	7494395:'M#
!
_user_specified_name	7494399:'N#
!
_user_specified_name	7494401:'O#
!
_user_specified_name	7494404:'P#
!
_user_specified_name	7494406
�+
�
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7494148	
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
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_7493512

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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7496486	
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

f
G__inference_dropout_18_layer_call_and_return_conditional_losses_7495565

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
�
e
,__inference_dropout_22_layer_call_fn_7496491

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
G__inference_dropout_22_layer_call_and_return_conditional_losses_7493842j
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
с
�:
#__inference__traced_restore_7497426
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
8__inference_layer_normalization_33_layer_call_fn_7495951

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
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_7493539j
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
_user_specified_name	7495945:'#
!
_user_specified_name	7495947
�
�
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_7496544

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
�
�
E__inference_dense_19_layer_call_and_return_conditional_losses_7495770

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
)__inference_model_3_layer_call_fn_7494575
)__inference_model_3_layer_call_fn_7494740�
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
D__inference_model_3_layer_call_and_return_conditional_losses_7493965
D__inference_model_3_layer_call_and_return_conditional_losses_7494410�
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
"__inference__wrapped_model_7493167input_4"�
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
9__inference_multi_head_attention_18_layer_call_fn_7495396
9__inference_multi_head_attention_18_layer_call_fn_7495418�
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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7495453
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7495488�
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
8__inference_layer_normalization_30_layer_call_fn_7495497�
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
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_7495519�
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
*__inference_dense_18_layer_call_fn_7495528�
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
E__inference_dense_18_layer_call_and_return_conditional_losses_7495543�
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
,__inference_dropout_18_layer_call_fn_7495548
,__inference_dropout_18_layer_call_fn_7495553�
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7495565
G__inference_dropout_18_layer_call_and_return_conditional_losses_7495570�
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
8__inference_layer_normalization_31_layer_call_fn_7495579�
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
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_7495601�
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
9__inference_multi_head_attention_19_layer_call_fn_7495623
9__inference_multi_head_attention_19_layer_call_fn_7495645�
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7495680
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7495715�
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
8__inference_layer_normalization_32_layer_call_fn_7495724�
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
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_7495746�
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
*__inference_dense_19_layer_call_fn_7495755�
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
E__inference_dense_19_layer_call_and_return_conditional_losses_7495770�
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
9__inference_multi_head_attention_20_layer_call_fn_7495792
9__inference_multi_head_attention_20_layer_call_fn_7495814�
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7495849
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7495884�
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
,__inference_dropout_19_layer_call_fn_7495889
,__inference_dropout_19_layer_call_fn_7495894�
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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7495906
G__inference_dropout_19_layer_call_and_return_conditional_losses_7495911�
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
8__inference_layer_normalization_34_layer_call_fn_7495920�
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
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_7495942�
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
8__inference_layer_normalization_33_layer_call_fn_7495951�
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
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_7495973�
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
9__inference_multi_head_attention_21_layer_call_fn_7495995
9__inference_multi_head_attention_21_layer_call_fn_7496017�
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7496052
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7496087�
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
,__inference_dropout_20_layer_call_fn_7496092
,__inference_dropout_20_layer_call_fn_7496097�
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
G__inference_dropout_20_layer_call_and_return_conditional_losses_7496109
G__inference_dropout_20_layer_call_and_return_conditional_losses_7496114�
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
8__inference_layer_normalization_35_layer_call_fn_7496123�
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
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_7496145�
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
*__inference_dense_20_layer_call_fn_7496154�
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
E__inference_dense_20_layer_call_and_return_conditional_losses_7496169�
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
9__inference_multi_head_attention_22_layer_call_fn_7496191
9__inference_multi_head_attention_22_layer_call_fn_7496213�
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7496248
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7496283�
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
,__inference_dropout_21_layer_call_fn_7496288
,__inference_dropout_21_layer_call_fn_7496293�
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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7496305
G__inference_dropout_21_layer_call_and_return_conditional_losses_7496310�
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
8__inference_layer_normalization_37_layer_call_fn_7496319�
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
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_7496341�
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
8__inference_layer_normalization_36_layer_call_fn_7496350�
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
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_7496372�
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
9__inference_multi_head_attention_23_layer_call_fn_7496394
9__inference_multi_head_attention_23_layer_call_fn_7496416�
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7496451
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7496486�
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
,__inference_dropout_22_layer_call_fn_7496491
,__inference_dropout_22_layer_call_fn_7496496�
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
G__inference_dropout_22_layer_call_and_return_conditional_losses_7496508
G__inference_dropout_22_layer_call_and_return_conditional_losses_7496513�
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
8__inference_layer_normalization_38_layer_call_fn_7496522�
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
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_7496544�
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
*__inference_dense_21_layer_call_fn_7496553�
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
E__inference_dense_21_layer_call_and_return_conditional_losses_7496568�
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
,__inference_dropout_23_layer_call_fn_7496573
,__inference_dropout_23_layer_call_fn_7496578�
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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7496590
G__inference_dropout_23_layer_call_and_return_conditional_losses_7496595�
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
8__inference_layer_normalization_39_layer_call_fn_7496604�
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
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_7496626�
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
<__inference_global_average_pooling1d_3_layer_call_fn_7496631�
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
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_7496637�
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
*__inference_dense_22_layer_call_fn_7496646�
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
E__inference_dense_22_layer_call_and_return_conditional_losses_7496656�
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
*__inference_dense_23_layer_call_fn_7496665�
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
E__inference_dense_23_layer_call_and_return_conditional_losses_7496675�
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
)__inference_model_3_layer_call_fn_7494575input_4"�
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
)__inference_model_3_layer_call_fn_7494740input_4"�
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
D__inference_model_3_layer_call_and_return_conditional_losses_7493965input_4"�
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
D__inference_model_3_layer_call_and_return_conditional_losses_7494410input_4"�
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
%__inference_signature_wrapper_7495374input_4"�
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
9__inference_multi_head_attention_18_layer_call_fn_7495396queryvalue"�
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
9__inference_multi_head_attention_18_layer_call_fn_7495418queryvalue"�
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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7495453queryvalue"�
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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7495488queryvalue"�
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
8__inference_layer_normalization_30_layer_call_fn_7495497inputs"�
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
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_7495519inputs"�
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
*__inference_dense_18_layer_call_fn_7495528inputs"�
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
E__inference_dense_18_layer_call_and_return_conditional_losses_7495543inputs"�
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
,__inference_dropout_18_layer_call_fn_7495548inputs"�
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
,__inference_dropout_18_layer_call_fn_7495553inputs"�
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7495565inputs"�
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
G__inference_dropout_18_layer_call_and_return_conditional_losses_7495570inputs"�
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
8__inference_layer_normalization_31_layer_call_fn_7495579inputs"�
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
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_7495601inputs"�
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
9__inference_multi_head_attention_19_layer_call_fn_7495623queryvalue"�
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
9__inference_multi_head_attention_19_layer_call_fn_7495645queryvalue"�
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7495680queryvalue"�
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7495715queryvalue"�
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
8__inference_layer_normalization_32_layer_call_fn_7495724inputs"�
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
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_7495746inputs"�
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
*__inference_dense_19_layer_call_fn_7495755inputs"�
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
E__inference_dense_19_layer_call_and_return_conditional_losses_7495770inputs"�
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
9__inference_multi_head_attention_20_layer_call_fn_7495792queryvalue"�
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
9__inference_multi_head_attention_20_layer_call_fn_7495814queryvalue"�
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7495849queryvalue"�
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7495884queryvalue"�
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
,__inference_dropout_19_layer_call_fn_7495889inputs"�
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
,__inference_dropout_19_layer_call_fn_7495894inputs"�
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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7495906inputs"�
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
G__inference_dropout_19_layer_call_and_return_conditional_losses_7495911inputs"�
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
8__inference_layer_normalization_34_layer_call_fn_7495920inputs"�
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
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_7495942inputs"�
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
8__inference_layer_normalization_33_layer_call_fn_7495951inputs"�
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
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_7495973inputs"�
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
9__inference_multi_head_attention_21_layer_call_fn_7495995queryvalue"�
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
9__inference_multi_head_attention_21_layer_call_fn_7496017queryvalue"�
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7496052queryvalue"�
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7496087queryvalue"�
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
,__inference_dropout_20_layer_call_fn_7496092inputs"�
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
,__inference_dropout_20_layer_call_fn_7496097inputs"�
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
G__inference_dropout_20_layer_call_and_return_conditional_losses_7496109inputs"�
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
G__inference_dropout_20_layer_call_and_return_conditional_losses_7496114inputs"�
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
8__inference_layer_normalization_35_layer_call_fn_7496123inputs"�
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
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_7496145inputs"�
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
*__inference_dense_20_layer_call_fn_7496154inputs"�
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
E__inference_dense_20_layer_call_and_return_conditional_losses_7496169inputs"�
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
9__inference_multi_head_attention_22_layer_call_fn_7496191queryvalue"�
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
9__inference_multi_head_attention_22_layer_call_fn_7496213queryvalue"�
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7496248queryvalue"�
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7496283queryvalue"�
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
,__inference_dropout_21_layer_call_fn_7496288inputs"�
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
,__inference_dropout_21_layer_call_fn_7496293inputs"�
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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7496305inputs"�
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
G__inference_dropout_21_layer_call_and_return_conditional_losses_7496310inputs"�
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
8__inference_layer_normalization_37_layer_call_fn_7496319inputs"�
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
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_7496341inputs"�
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
8__inference_layer_normalization_36_layer_call_fn_7496350inputs"�
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
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_7496372inputs"�
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
9__inference_multi_head_attention_23_layer_call_fn_7496394queryvalue"�
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
9__inference_multi_head_attention_23_layer_call_fn_7496416queryvalue"�
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7496451queryvalue"�
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7496486queryvalue"�
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
,__inference_dropout_22_layer_call_fn_7496491inputs"�
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
,__inference_dropout_22_layer_call_fn_7496496inputs"�
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
G__inference_dropout_22_layer_call_and_return_conditional_losses_7496508inputs"�
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
G__inference_dropout_22_layer_call_and_return_conditional_losses_7496513inputs"�
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
8__inference_layer_normalization_38_layer_call_fn_7496522inputs"�
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
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_7496544inputs"�
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
*__inference_dense_21_layer_call_fn_7496553inputs"�
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
E__inference_dense_21_layer_call_and_return_conditional_losses_7496568inputs"�
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
,__inference_dropout_23_layer_call_fn_7496573inputs"�
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
,__inference_dropout_23_layer_call_fn_7496578inputs"�
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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7496590inputs"�
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
G__inference_dropout_23_layer_call_and_return_conditional_losses_7496595inputs"�
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
8__inference_layer_normalization_39_layer_call_fn_7496604inputs"�
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
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_7496626inputs"�
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
<__inference_global_average_pooling1d_3_layer_call_fn_7496631inputs"�
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
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_7496637inputs"�
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
*__inference_dense_22_layer_call_fn_7496646inputs"�
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
E__inference_dense_22_layer_call_and_return_conditional_losses_7496656inputs"�
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
*__inference_dense_23_layer_call_fn_7496665inputs"�
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
E__inference_dense_23_layer_call_and_return_conditional_losses_7496675inputs"�
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
"__inference__wrapped_model_7493167����������LMUVij������������������������������������������������������������������+�(
!�
�
input_4
� "*�'
%
dense_23�
dense_23�
E__inference_dense_18_layer_call_and_return_conditional_losses_7495543YUV*�'
 �
�
inputs
� "'�$
�
tensor_0
� |
*__inference_dense_18_layer_call_fn_7495528NUV*�'
 �
�
inputs
� "�
unknown�
E__inference_dense_19_layer_call_and_return_conditional_losses_7495770[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� ~
*__inference_dense_19_layer_call_fn_7495755P��*�'
 �
�
inputs
� "�
unknown�
E__inference_dense_20_layer_call_and_return_conditional_losses_7496169[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� ~
*__inference_dense_20_layer_call_fn_7496154P��*�'
 �
�
inputs
� "�
unknown�
E__inference_dense_21_layer_call_and_return_conditional_losses_7496568[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� ~
*__inference_dense_21_layer_call_fn_7496553P��*�'
 �
�
inputs
� "�
unknown�
E__inference_dense_22_layer_call_and_return_conditional_losses_7496656S��&�#
�
�
inputs
� "#� 
�
tensor_0 
� v
*__inference_dense_22_layer_call_fn_7496646H��&�#
�
�
inputs
� "�
unknown �
E__inference_dense_23_layer_call_and_return_conditional_losses_7496675S��&�#
�
�
inputs 
� "#� 
�
tensor_0
� v
*__inference_dense_23_layer_call_fn_7496665H��&�#
�
�
inputs 
� "�
unknown�
G__inference_dropout_18_layer_call_and_return_conditional_losses_7495565Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_18_layer_call_and_return_conditional_losses_7495570Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_18_layer_call_fn_7495548N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_18_layer_call_fn_7495553N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_19_layer_call_and_return_conditional_losses_7495906Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_19_layer_call_and_return_conditional_losses_7495911Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_19_layer_call_fn_7495889N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_19_layer_call_fn_7495894N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_20_layer_call_and_return_conditional_losses_7496109Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_20_layer_call_and_return_conditional_losses_7496114Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_20_layer_call_fn_7496092N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_20_layer_call_fn_7496097N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_21_layer_call_and_return_conditional_losses_7496305Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_21_layer_call_and_return_conditional_losses_7496310Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_21_layer_call_fn_7496288N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_21_layer_call_fn_7496293N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_22_layer_call_and_return_conditional_losses_7496508Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_22_layer_call_and_return_conditional_losses_7496513Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_22_layer_call_fn_7496491N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_22_layer_call_fn_7496496N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_23_layer_call_and_return_conditional_losses_7496590Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_23_layer_call_and_return_conditional_losses_7496595Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_23_layer_call_fn_7496573N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_23_layer_call_fn_7496578N.�+
$�!
�
inputs
p 
� "�
unknown�
W__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_7496637�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
<__inference_global_average_pooling1d_3_layer_call_fn_7496631wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
S__inference_layer_normalization_30_layer_call_and_return_conditional_losses_7495519YLM*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_30_layer_call_fn_7495497NLM*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_31_layer_call_and_return_conditional_losses_7495601Yij*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_31_layer_call_fn_7495579Nij*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_32_layer_call_and_return_conditional_losses_7495746[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_32_layer_call_fn_7495724P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_33_layer_call_and_return_conditional_losses_7495973[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_33_layer_call_fn_7495951P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_34_layer_call_and_return_conditional_losses_7495942[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_34_layer_call_fn_7495920P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_35_layer_call_and_return_conditional_losses_7496145[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_35_layer_call_fn_7496123P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_36_layer_call_and_return_conditional_losses_7496372[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_36_layer_call_fn_7496350P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_37_layer_call_and_return_conditional_losses_7496341[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_37_layer_call_fn_7496319P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_38_layer_call_and_return_conditional_losses_7496544[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_38_layer_call_fn_7496522P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_39_layer_call_and_return_conditional_losses_7496626[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_39_layer_call_fn_7496604P��*�'
 �
�
inputs
� "�
unknown�
D__inference_model_3_layer_call_and_return_conditional_losses_7493965����������LMUVij������������������������������������������������������������������3�0
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
D__inference_model_3_layer_call_and_return_conditional_losses_7494410����������LMUVij������������������������������������������������������������������3�0
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
)__inference_model_3_layer_call_fn_7494575����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_4
p

 
� "�
unknown�
)__inference_model_3_layer_call_fn_7494740����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_4
p 

 
� "�
unknown�
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7495453���������Y�V
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
T__inference_multi_head_attention_18_layer_call_and_return_conditional_losses_7495488���������Y�V
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
9__inference_multi_head_attention_18_layer_call_fn_7495396���������Y�V
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
9__inference_multi_head_attention_18_layer_call_fn_7495418���������Y�V
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7495680���������Y�V
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
T__inference_multi_head_attention_19_layer_call_and_return_conditional_losses_7495715���������Y�V
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
9__inference_multi_head_attention_19_layer_call_fn_7495623���������Y�V
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
9__inference_multi_head_attention_19_layer_call_fn_7495645���������Y�V
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7495849���������Y�V
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
T__inference_multi_head_attention_20_layer_call_and_return_conditional_losses_7495884���������Y�V
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
9__inference_multi_head_attention_20_layer_call_fn_7495792���������Y�V
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
9__inference_multi_head_attention_20_layer_call_fn_7495814���������Y�V
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7496052���������Y�V
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
T__inference_multi_head_attention_21_layer_call_and_return_conditional_losses_7496087���������Y�V
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
9__inference_multi_head_attention_21_layer_call_fn_7495995���������Y�V
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
9__inference_multi_head_attention_21_layer_call_fn_7496017���������Y�V
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7496248���������Y�V
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
T__inference_multi_head_attention_22_layer_call_and_return_conditional_losses_7496283���������Y�V
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
9__inference_multi_head_attention_22_layer_call_fn_7496191���������Y�V
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
9__inference_multi_head_attention_22_layer_call_fn_7496213���������Y�V
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7496451���������Y�V
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
T__inference_multi_head_attention_23_layer_call_and_return_conditional_losses_7496486���������Y�V
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
9__inference_multi_head_attention_23_layer_call_fn_7496394���������Y�V
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
9__inference_multi_head_attention_23_layer_call_fn_7496416���������Y�V
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
%__inference_signature_wrapper_7495374����������LMUVij������������������������������������������������������������������6�3
� 
,�)
'
input_4�
input_4"*�'
%
dense_23�
dense_23