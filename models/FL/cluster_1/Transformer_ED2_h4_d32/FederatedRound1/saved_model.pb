�2
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
-multi_head_attention_11/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_11/attention_output/bias
�
Amulti_head_attention_11/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_11/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_11/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_11/attention_output/kernel
�
Cmulti_head_attention_11/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_11/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_11/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_11/value/bias
�
6multi_head_attention_11/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_11/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_11/value/kernel
�
8multi_head_attention_11/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_11/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_11/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_11/key/bias
�
4multi_head_attention_11/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_11/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_11/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_11/key/kernel
�
6multi_head_attention_11/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_11/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_11/query/bias
�
6multi_head_attention_11/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_11/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_11/query/kernel
�
8multi_head_attention_11/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_11/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_10/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_10/attention_output/bias
�
Amulti_head_attention_10/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_10/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_10/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_10/attention_output/kernel
�
Cmulti_head_attention_10/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_10/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_10/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_10/value/bias
�
6multi_head_attention_10/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_10/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_10/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_10/value/kernel
�
8multi_head_attention_10/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_10/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_10/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_10/key/bias
�
4multi_head_attention_10/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_10/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_10/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_10/key/kernel
�
6multi_head_attention_10/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_10/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_10/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_10/query/bias
�
6multi_head_attention_10/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_10/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_10/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_10/query/kernel
�
8multi_head_attention_10/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_10/query/kernel*"
_output_shapes
:*
dtype0
�
,multi_head_attention_9/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_9/attention_output/bias
�
@multi_head_attention_9/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_9/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_9/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_9/attention_output/kernel
�
Bmulti_head_attention_9/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_9/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_9/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_9/value/bias
�
5multi_head_attention_9/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_9/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_9/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_9/value/kernel
�
7multi_head_attention_9/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_9/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_9/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_9/key/bias
�
3multi_head_attention_9/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_9/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_9/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_9/key/kernel
�
5multi_head_attention_9/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_9/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_9/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_9/query/bias
�
5multi_head_attention_9/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_9/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_9/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_9/query/kernel
�
7multi_head_attention_9/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_9/query/kernel*"
_output_shapes
:*
dtype0
�
,multi_head_attention_8/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_8/attention_output/bias
�
@multi_head_attention_8/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_8/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_8/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_8/attention_output/kernel
�
Bmulti_head_attention_8/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_8/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_8/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_8/value/bias
�
5multi_head_attention_8/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_8/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_8/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_8/value/kernel
�
7multi_head_attention_8/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_8/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_8/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_8/key/bias
�
3multi_head_attention_8/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_8/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_8/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_8/key/kernel
�
5multi_head_attention_8/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_8/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_8/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_8/query/bias
�
5multi_head_attention_8/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_8/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_8/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_8/query/kernel
�
7multi_head_attention_8/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_8/query/kernel*"
_output_shapes
:*
dtype0
�
,multi_head_attention_7/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_7/attention_output/bias
�
@multi_head_attention_7/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_7/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_7/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_7/attention_output/kernel
�
Bmulti_head_attention_7/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_7/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_7/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_7/value/bias
�
5multi_head_attention_7/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_7/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_7/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_7/value/kernel
�
7multi_head_attention_7/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_7/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_7/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_7/key/bias
�
3multi_head_attention_7/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_7/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_7/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_7/key/kernel
�
5multi_head_attention_7/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_7/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_7/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_7/query/bias
�
5multi_head_attention_7/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_7/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_7/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_7/query/kernel
�
7multi_head_attention_7/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_7/query/kernel*"
_output_shapes
:*
dtype0
�
,multi_head_attention_6/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_6/attention_output/bias
�
@multi_head_attention_6/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_6/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_6/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_6/attention_output/kernel
�
Bmulti_head_attention_6/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_6/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_6/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_6/value/bias
�
5multi_head_attention_6/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_6/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_6/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_6/value/kernel
�
7multi_head_attention_6/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_6/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_6/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_6/key/bias
�
3multi_head_attention_6/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_6/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_6/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_6/key/kernel
�
5multi_head_attention_6/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_6/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_6/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_6/query/bias
�
5multi_head_attention_6/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_6/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_6/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_6/query/kernel
�
7multi_head_attention_6/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_6/query/kernel*"
_output_shapes
:*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

: *
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
: *
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

: *
dtype0
�
layer_normalization_19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_19/beta
�
/layer_normalization_19/beta/Read/ReadVariableOpReadVariableOplayer_normalization_19/beta*
_output_shapes
:*
dtype0
�
layer_normalization_19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_19/gamma
�
0layer_normalization_19/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_19/gamma*
_output_shapes
:*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_18/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_18/beta
�
/layer_normalization_18/beta/Read/ReadVariableOpReadVariableOplayer_normalization_18/beta*
_output_shapes
:*
dtype0
�
layer_normalization_18/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_18/gamma
�
0layer_normalization_18/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_18/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_16/beta
�
/layer_normalization_16/beta/Read/ReadVariableOpReadVariableOplayer_normalization_16/beta*
_output_shapes
:*
dtype0
�
layer_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_16/gamma
�
0layer_normalization_16/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_16/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_17/beta
�
/layer_normalization_17/beta/Read/ReadVariableOpReadVariableOplayer_normalization_17/beta*
_output_shapes
:*
dtype0
�
layer_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_17/gamma
�
0layer_normalization_17/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_17/gamma*
_output_shapes
:*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_15/beta
�
/layer_normalization_15/beta/Read/ReadVariableOpReadVariableOplayer_normalization_15/beta*
_output_shapes
:*
dtype0
�
layer_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_15/gamma
�
0layer_normalization_15/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_15/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_13/beta
�
/layer_normalization_13/beta/Read/ReadVariableOpReadVariableOplayer_normalization_13/beta*
_output_shapes
:*
dtype0
�
layer_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_13/gamma
�
0layer_normalization_13/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_13/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_14/beta
�
/layer_normalization_14/beta/Read/ReadVariableOpReadVariableOplayer_normalization_14/beta*
_output_shapes
:*
dtype0
�
layer_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_14/gamma
�
0layer_normalization_14/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_14/gamma*
_output_shapes
:*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_12/beta
�
/layer_normalization_12/beta/Read/ReadVariableOpReadVariableOplayer_normalization_12/beta*
_output_shapes
:*
dtype0
�
layer_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_12/gamma
�
0layer_normalization_12/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_12/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_11/beta
�
/layer_normalization_11/beta/Read/ReadVariableOpReadVariableOplayer_normalization_11/beta*
_output_shapes
:*
dtype0
�
layer_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_11/gamma
�
0layer_normalization_11/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_11/gamma*
_output_shapes
:*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_10/beta
�
/layer_normalization_10/beta/Read/ReadVariableOpReadVariableOplayer_normalization_10/beta*
_output_shapes
:*
dtype0
�
layer_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_10/gamma
�
0layer_normalization_10/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_10/gamma*
_output_shapes
:*
dtype0
p
serving_default_input_2Placeholder*"
_output_shapes
:*
dtype0*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2#multi_head_attention_6/query/kernel!multi_head_attention_6/query/bias!multi_head_attention_6/key/kernelmulti_head_attention_6/key/bias#multi_head_attention_6/value/kernel!multi_head_attention_6/value/bias.multi_head_attention_6/attention_output/kernel,multi_head_attention_6/attention_output/biaslayer_normalization_10/gammalayer_normalization_10/betadense_6/kerneldense_6/biaslayer_normalization_11/gammalayer_normalization_11/beta#multi_head_attention_7/query/kernel!multi_head_attention_7/query/bias!multi_head_attention_7/key/kernelmulti_head_attention_7/key/bias#multi_head_attention_7/value/kernel!multi_head_attention_7/value/bias.multi_head_attention_7/attention_output/kernel,multi_head_attention_7/attention_output/biaslayer_normalization_12/gammalayer_normalization_12/betadense_7/kerneldense_7/bias#multi_head_attention_8/query/kernel!multi_head_attention_8/query/bias!multi_head_attention_8/key/kernelmulti_head_attention_8/key/bias#multi_head_attention_8/value/kernel!multi_head_attention_8/value/bias.multi_head_attention_8/attention_output/kernel,multi_head_attention_8/attention_output/biaslayer_normalization_14/gammalayer_normalization_14/betalayer_normalization_13/gammalayer_normalization_13/beta#multi_head_attention_9/query/kernel!multi_head_attention_9/query/bias!multi_head_attention_9/key/kernelmulti_head_attention_9/key/bias#multi_head_attention_9/value/kernel!multi_head_attention_9/value/bias.multi_head_attention_9/attention_output/kernel,multi_head_attention_9/attention_output/biaslayer_normalization_15/gammalayer_normalization_15/betadense_8/kerneldense_8/bias$multi_head_attention_10/query/kernel"multi_head_attention_10/query/bias"multi_head_attention_10/key/kernel multi_head_attention_10/key/bias$multi_head_attention_10/value/kernel"multi_head_attention_10/value/bias/multi_head_attention_10/attention_output/kernel-multi_head_attention_10/attention_output/biaslayer_normalization_17/gammalayer_normalization_17/betalayer_normalization_16/gammalayer_normalization_16/beta$multi_head_attention_11/query/kernel"multi_head_attention_11/query/bias"multi_head_attention_11/key/kernel multi_head_attention_11/key/bias$multi_head_attention_11/value/kernel"multi_head_attention_11/value/bias/multi_head_attention_11/attention_output/kernel-multi_head_attention_11/attention_output/biaslayer_normalization_18/gammalayer_normalization_18/betadense_9/kerneldense_9/biaslayer_normalization_19/gammalayer_normalization_19/betadense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*\
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
%__inference_signature_wrapper_1955437

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value�B� Bݩ
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
VARIABLE_VALUElayer_normalization_10/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_10/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_11/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_11/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_12/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_12/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_14/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_14/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_13/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_13/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_15/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_15/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEdense_8/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_8/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_17/gamma6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_17/beta5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_16/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_16/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_18/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_18/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEdense_9/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_9/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_19/gamma6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_19/beta5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_10/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_10/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_11/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_11/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
c]
VARIABLE_VALUE#multi_head_attention_6/query/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention_6/query/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention_6/key/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention_6/key/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#multi_head_attention_6/value/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention_6/value/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.multi_head_attention_6/attention_output/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE,multi_head_attention_6/attention_output/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_7/query/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_7/query/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_7/key/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_7/key/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_7/value/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_7/value/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_7/attention_output/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_7/attention_output/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_8/query/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_8/query/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_8/key/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_8/key/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_8/value/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_8/value/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_8/attention_output/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_8/attention_output/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_9/query/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_9/query/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_9/key/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_9/key/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_9/value/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_9/value/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_9/attention_output/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_9/attention_output/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_10/query/kernel'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_10/query/bias'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_10/key/kernel'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_10/key/bias'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_10/value/kernel'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_10/value/bias'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_10/attention_output/kernel'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_10/attention_output/bias'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_11/query/kernel'variables/62/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_11/query/bias'variables/63/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_11/key/kernel'variables/64/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_11/key/bias'variables/65/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_11/value/kernel'variables/66/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_11/value/bias'variables/67/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_11/attention_output/kernel'variables/68/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_11/attention_output/bias'variables/69/.ATTRIBUTES/VARIABLE_VALUE*
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
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer_normalization_10/gammalayer_normalization_10/betadense_6/kerneldense_6/biaslayer_normalization_11/gammalayer_normalization_11/betalayer_normalization_12/gammalayer_normalization_12/betadense_7/kerneldense_7/biaslayer_normalization_14/gammalayer_normalization_14/betalayer_normalization_13/gammalayer_normalization_13/betalayer_normalization_15/gammalayer_normalization_15/betadense_8/kerneldense_8/biaslayer_normalization_17/gammalayer_normalization_17/betalayer_normalization_16/gammalayer_normalization_16/betalayer_normalization_18/gammalayer_normalization_18/betadense_9/kerneldense_9/biaslayer_normalization_19/gammalayer_normalization_19/betadense_10/kerneldense_10/biasdense_11/kerneldense_11/bias#multi_head_attention_6/query/kernel!multi_head_attention_6/query/bias!multi_head_attention_6/key/kernelmulti_head_attention_6/key/bias#multi_head_attention_6/value/kernel!multi_head_attention_6/value/bias.multi_head_attention_6/attention_output/kernel,multi_head_attention_6/attention_output/bias#multi_head_attention_7/query/kernel!multi_head_attention_7/query/bias!multi_head_attention_7/key/kernelmulti_head_attention_7/key/bias#multi_head_attention_7/value/kernel!multi_head_attention_7/value/bias.multi_head_attention_7/attention_output/kernel,multi_head_attention_7/attention_output/bias#multi_head_attention_8/query/kernel!multi_head_attention_8/query/bias!multi_head_attention_8/key/kernelmulti_head_attention_8/key/bias#multi_head_attention_8/value/kernel!multi_head_attention_8/value/bias.multi_head_attention_8/attention_output/kernel,multi_head_attention_8/attention_output/bias#multi_head_attention_9/query/kernel!multi_head_attention_9/query/bias!multi_head_attention_9/key/kernelmulti_head_attention_9/key/bias#multi_head_attention_9/value/kernel!multi_head_attention_9/value/bias.multi_head_attention_9/attention_output/kernel,multi_head_attention_9/attention_output/bias$multi_head_attention_10/query/kernel"multi_head_attention_10/query/bias"multi_head_attention_10/key/kernel multi_head_attention_10/key/bias$multi_head_attention_10/value/kernel"multi_head_attention_10/value/bias/multi_head_attention_10/attention_output/kernel-multi_head_attention_10/attention_output/bias$multi_head_attention_11/query/kernel"multi_head_attention_11/query/bias"multi_head_attention_11/key/kernel multi_head_attention_11/key/bias$multi_head_attention_11/value/kernel"multi_head_attention_11/value/bias/multi_head_attention_11/attention_output/kernel-multi_head_attention_11/attention_output/biasConst*]
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
 __inference__traced_save_1957240
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization_10/gammalayer_normalization_10/betadense_6/kerneldense_6/biaslayer_normalization_11/gammalayer_normalization_11/betalayer_normalization_12/gammalayer_normalization_12/betadense_7/kerneldense_7/biaslayer_normalization_14/gammalayer_normalization_14/betalayer_normalization_13/gammalayer_normalization_13/betalayer_normalization_15/gammalayer_normalization_15/betadense_8/kerneldense_8/biaslayer_normalization_17/gammalayer_normalization_17/betalayer_normalization_16/gammalayer_normalization_16/betalayer_normalization_18/gammalayer_normalization_18/betadense_9/kerneldense_9/biaslayer_normalization_19/gammalayer_normalization_19/betadense_10/kerneldense_10/biasdense_11/kerneldense_11/bias#multi_head_attention_6/query/kernel!multi_head_attention_6/query/bias!multi_head_attention_6/key/kernelmulti_head_attention_6/key/bias#multi_head_attention_6/value/kernel!multi_head_attention_6/value/bias.multi_head_attention_6/attention_output/kernel,multi_head_attention_6/attention_output/bias#multi_head_attention_7/query/kernel!multi_head_attention_7/query/bias!multi_head_attention_7/key/kernelmulti_head_attention_7/key/bias#multi_head_attention_7/value/kernel!multi_head_attention_7/value/bias.multi_head_attention_7/attention_output/kernel,multi_head_attention_7/attention_output/bias#multi_head_attention_8/query/kernel!multi_head_attention_8/query/bias!multi_head_attention_8/key/kernelmulti_head_attention_8/key/bias#multi_head_attention_8/value/kernel!multi_head_attention_8/value/bias.multi_head_attention_8/attention_output/kernel,multi_head_attention_8/attention_output/bias#multi_head_attention_9/query/kernel!multi_head_attention_9/query/bias!multi_head_attention_9/key/kernelmulti_head_attention_9/key/bias#multi_head_attention_9/value/kernel!multi_head_attention_9/value/bias.multi_head_attention_9/attention_output/kernel,multi_head_attention_9/attention_output/bias$multi_head_attention_10/query/kernel"multi_head_attention_10/query/bias"multi_head_attention_10/key/kernel multi_head_attention_10/key/bias$multi_head_attention_10/value/kernel"multi_head_attention_10/value/bias/multi_head_attention_10/attention_output/kernel-multi_head_attention_10/attention_output/bias$multi_head_attention_11/query/kernel"multi_head_attention_11/query/bias"multi_head_attention_11/key/kernel multi_head_attention_11/key/bias$multi_head_attention_11/value/kernel"multi_head_attention_11/value/bias/multi_head_attention_11/attention_output/kernel-multi_head_attention_11/attention_output/bias*\
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
#__inference__traced_restore_1957489��#
�
d
F__inference_dropout_8_layer_call_and_return_conditional_losses_1954297

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
G
+__inference_dropout_9_layer_call_fn_1956356

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
GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1954314[
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

f
G__inference_dropout_11_layer_call_and_return_conditional_losses_1956653

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
ـ
�:
#__inference__traced_restore_1957489
file_prefix;
-assignvariableop_layer_normalization_10_gamma:<
.assignvariableop_1_layer_normalization_10_beta:3
!assignvariableop_2_dense_6_kernel:-
assignvariableop_3_dense_6_bias:=
/assignvariableop_4_layer_normalization_11_gamma:<
.assignvariableop_5_layer_normalization_11_beta:=
/assignvariableop_6_layer_normalization_12_gamma:<
.assignvariableop_7_layer_normalization_12_beta:3
!assignvariableop_8_dense_7_kernel:-
assignvariableop_9_dense_7_bias:>
0assignvariableop_10_layer_normalization_14_gamma:=
/assignvariableop_11_layer_normalization_14_beta:>
0assignvariableop_12_layer_normalization_13_gamma:=
/assignvariableop_13_layer_normalization_13_beta:>
0assignvariableop_14_layer_normalization_15_gamma:=
/assignvariableop_15_layer_normalization_15_beta:4
"assignvariableop_16_dense_8_kernel:.
 assignvariableop_17_dense_8_bias:>
0assignvariableop_18_layer_normalization_17_gamma:=
/assignvariableop_19_layer_normalization_17_beta:>
0assignvariableop_20_layer_normalization_16_gamma:=
/assignvariableop_21_layer_normalization_16_beta:>
0assignvariableop_22_layer_normalization_18_gamma:=
/assignvariableop_23_layer_normalization_18_beta:4
"assignvariableop_24_dense_9_kernel:.
 assignvariableop_25_dense_9_bias:>
0assignvariableop_26_layer_normalization_19_gamma:=
/assignvariableop_27_layer_normalization_19_beta:5
#assignvariableop_28_dense_10_kernel: /
!assignvariableop_29_dense_10_bias: 5
#assignvariableop_30_dense_11_kernel: /
!assignvariableop_31_dense_11_bias:M
7assignvariableop_32_multi_head_attention_6_query_kernel:G
5assignvariableop_33_multi_head_attention_6_query_bias:K
5assignvariableop_34_multi_head_attention_6_key_kernel:E
3assignvariableop_35_multi_head_attention_6_key_bias:M
7assignvariableop_36_multi_head_attention_6_value_kernel:G
5assignvariableop_37_multi_head_attention_6_value_bias:X
Bassignvariableop_38_multi_head_attention_6_attention_output_kernel:N
@assignvariableop_39_multi_head_attention_6_attention_output_bias:M
7assignvariableop_40_multi_head_attention_7_query_kernel:G
5assignvariableop_41_multi_head_attention_7_query_bias:K
5assignvariableop_42_multi_head_attention_7_key_kernel:E
3assignvariableop_43_multi_head_attention_7_key_bias:M
7assignvariableop_44_multi_head_attention_7_value_kernel:G
5assignvariableop_45_multi_head_attention_7_value_bias:X
Bassignvariableop_46_multi_head_attention_7_attention_output_kernel:N
@assignvariableop_47_multi_head_attention_7_attention_output_bias:M
7assignvariableop_48_multi_head_attention_8_query_kernel:G
5assignvariableop_49_multi_head_attention_8_query_bias:K
5assignvariableop_50_multi_head_attention_8_key_kernel:E
3assignvariableop_51_multi_head_attention_8_key_bias:M
7assignvariableop_52_multi_head_attention_8_value_kernel:G
5assignvariableop_53_multi_head_attention_8_value_bias:X
Bassignvariableop_54_multi_head_attention_8_attention_output_kernel:N
@assignvariableop_55_multi_head_attention_8_attention_output_bias:M
7assignvariableop_56_multi_head_attention_9_query_kernel:G
5assignvariableop_57_multi_head_attention_9_query_bias:K
5assignvariableop_58_multi_head_attention_9_key_kernel:E
3assignvariableop_59_multi_head_attention_9_key_bias:M
7assignvariableop_60_multi_head_attention_9_value_kernel:G
5assignvariableop_61_multi_head_attention_9_value_bias:X
Bassignvariableop_62_multi_head_attention_9_attention_output_kernel:N
@assignvariableop_63_multi_head_attention_9_attention_output_bias:N
8assignvariableop_64_multi_head_attention_10_query_kernel:H
6assignvariableop_65_multi_head_attention_10_query_bias:L
6assignvariableop_66_multi_head_attention_10_key_kernel:F
4assignvariableop_67_multi_head_attention_10_key_bias:N
8assignvariableop_68_multi_head_attention_10_value_kernel:H
6assignvariableop_69_multi_head_attention_10_value_bias:Y
Cassignvariableop_70_multi_head_attention_10_attention_output_kernel:O
Aassignvariableop_71_multi_head_attention_10_attention_output_bias:N
8assignvariableop_72_multi_head_attention_11_query_kernel:H
6assignvariableop_73_multi_head_attention_11_query_bias:L
6assignvariableop_74_multi_head_attention_11_key_kernel:F
4assignvariableop_75_multi_head_attention_11_key_bias:N
8assignvariableop_76_multi_head_attention_11_value_kernel:H
6assignvariableop_77_multi_head_attention_11_value_bias:Y
Cassignvariableop_78_multi_head_attention_11_attention_output_kernel:O
Aassignvariableop_79_multi_head_attention_11_attention_output_bias:
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
AssignVariableOpAssignVariableOp-assignvariableop_layer_normalization_10_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp.assignvariableop_1_layer_normalization_10_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_6_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_6_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp/assignvariableop_4_layer_normalization_11_gammaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp.assignvariableop_5_layer_normalization_11_betaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_layer_normalization_12_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_layer_normalization_12_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_7_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_7_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp0assignvariableop_10_layer_normalization_14_gammaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_layer_normalization_14_betaIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_layer_normalization_13_gammaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_layer_normalization_13_betaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_layer_normalization_15_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_layer_normalization_15_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_8_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_8_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp0assignvariableop_18_layer_normalization_17_gammaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_layer_normalization_17_betaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_layer_normalization_16_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_layer_normalization_16_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_layer_normalization_18_gammaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_layer_normalization_18_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_9_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_9_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_layer_normalization_19_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_layer_normalization_19_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_10_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_10_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_11_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_11_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp7assignvariableop_32_multi_head_attention_6_query_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp5assignvariableop_33_multi_head_attention_6_query_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp5assignvariableop_34_multi_head_attention_6_key_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp3assignvariableop_35_multi_head_attention_6_key_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp7assignvariableop_36_multi_head_attention_6_value_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp5assignvariableop_37_multi_head_attention_6_value_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_multi_head_attention_6_attention_output_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp@assignvariableop_39_multi_head_attention_6_attention_output_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp7assignvariableop_40_multi_head_attention_7_query_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp5assignvariableop_41_multi_head_attention_7_query_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp5assignvariableop_42_multi_head_attention_7_key_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp3assignvariableop_43_multi_head_attention_7_key_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp7assignvariableop_44_multi_head_attention_7_value_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp5assignvariableop_45_multi_head_attention_7_value_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpBassignvariableop_46_multi_head_attention_7_attention_output_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp@assignvariableop_47_multi_head_attention_7_attention_output_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp7assignvariableop_48_multi_head_attention_8_query_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp5assignvariableop_49_multi_head_attention_8_query_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp5assignvariableop_50_multi_head_attention_8_key_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp3assignvariableop_51_multi_head_attention_8_key_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp7assignvariableop_52_multi_head_attention_8_value_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp5assignvariableop_53_multi_head_attention_8_value_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpBassignvariableop_54_multi_head_attention_8_attention_output_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp@assignvariableop_55_multi_head_attention_8_attention_output_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp7assignvariableop_56_multi_head_attention_9_query_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp5assignvariableop_57_multi_head_attention_9_query_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp5assignvariableop_58_multi_head_attention_9_key_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp3assignvariableop_59_multi_head_attention_9_key_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp7assignvariableop_60_multi_head_attention_9_value_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp5assignvariableop_61_multi_head_attention_9_value_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpBassignvariableop_62_multi_head_attention_9_attention_output_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp@assignvariableop_63_multi_head_attention_9_attention_output_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp8assignvariableop_64_multi_head_attention_10_query_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp6assignvariableop_65_multi_head_attention_10_query_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp6assignvariableop_66_multi_head_attention_10_key_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp4assignvariableop_67_multi_head_attention_10_key_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp8assignvariableop_68_multi_head_attention_10_value_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp6assignvariableop_69_multi_head_attention_10_value_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpCassignvariableop_70_multi_head_attention_10_attention_output_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpAassignvariableop_71_multi_head_attention_10_attention_output_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp8assignvariableop_72_multi_head_attention_11_query_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp6assignvariableop_73_multi_head_attention_11_query_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp6assignvariableop_74_multi_head_attention_11_key_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp4assignvariableop_75_multi_head_attention_11_key_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp8assignvariableop_76_multi_head_attention_11_value_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp6assignvariableop_77_multi_head_attention_11_value_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpCassignvariableop_78_multi_head_attention_11_attention_output_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpAassignvariableop_79_multi_head_attention_11_attention_output_biasIdentity_79:output:0"/device:CPU:0*&
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
_user_specified_namelayer_normalization_10/gamma:;7
5
_user_specified_namelayer_normalization_10/beta:.*
(
_user_specified_namedense_6/kernel:,(
&
_user_specified_namedense_6/bias:<8
6
_user_specified_namelayer_normalization_11/gamma:;7
5
_user_specified_namelayer_normalization_11/beta:<8
6
_user_specified_namelayer_normalization_12/gamma:;7
5
_user_specified_namelayer_normalization_12/beta:.	*
(
_user_specified_namedense_7/kernel:,
(
&
_user_specified_namedense_7/bias:<8
6
_user_specified_namelayer_normalization_14/gamma:;7
5
_user_specified_namelayer_normalization_14/beta:<8
6
_user_specified_namelayer_normalization_13/gamma:;7
5
_user_specified_namelayer_normalization_13/beta:<8
6
_user_specified_namelayer_normalization_15/gamma:;7
5
_user_specified_namelayer_normalization_15/beta:.*
(
_user_specified_namedense_8/kernel:,(
&
_user_specified_namedense_8/bias:<8
6
_user_specified_namelayer_normalization_17/gamma:;7
5
_user_specified_namelayer_normalization_17/beta:<8
6
_user_specified_namelayer_normalization_16/gamma:;7
5
_user_specified_namelayer_normalization_16/beta:<8
6
_user_specified_namelayer_normalization_18/gamma:;7
5
_user_specified_namelayer_normalization_18/beta:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:<8
6
_user_specified_namelayer_normalization_19/gamma:;7
5
_user_specified_namelayer_normalization_19/beta:/+
)
_user_specified_namedense_10/kernel:-)
'
_user_specified_namedense_10/bias:/+
)
_user_specified_namedense_11/kernel:- )
'
_user_specified_namedense_11/bias:C!?
=
_user_specified_name%#multi_head_attention_6/query/kernel:A"=
;
_user_specified_name#!multi_head_attention_6/query/bias:A#=
;
_user_specified_name#!multi_head_attention_6/key/kernel:?$;
9
_user_specified_name!multi_head_attention_6/key/bias:C%?
=
_user_specified_name%#multi_head_attention_6/value/kernel:A&=
;
_user_specified_name#!multi_head_attention_6/value/bias:N'J
H
_user_specified_name0.multi_head_attention_6/attention_output/kernel:L(H
F
_user_specified_name.,multi_head_attention_6/attention_output/bias:C)?
=
_user_specified_name%#multi_head_attention_7/query/kernel:A*=
;
_user_specified_name#!multi_head_attention_7/query/bias:A+=
;
_user_specified_name#!multi_head_attention_7/key/kernel:?,;
9
_user_specified_name!multi_head_attention_7/key/bias:C-?
=
_user_specified_name%#multi_head_attention_7/value/kernel:A.=
;
_user_specified_name#!multi_head_attention_7/value/bias:N/J
H
_user_specified_name0.multi_head_attention_7/attention_output/kernel:L0H
F
_user_specified_name.,multi_head_attention_7/attention_output/bias:C1?
=
_user_specified_name%#multi_head_attention_8/query/kernel:A2=
;
_user_specified_name#!multi_head_attention_8/query/bias:A3=
;
_user_specified_name#!multi_head_attention_8/key/kernel:?4;
9
_user_specified_name!multi_head_attention_8/key/bias:C5?
=
_user_specified_name%#multi_head_attention_8/value/kernel:A6=
;
_user_specified_name#!multi_head_attention_8/value/bias:N7J
H
_user_specified_name0.multi_head_attention_8/attention_output/kernel:L8H
F
_user_specified_name.,multi_head_attention_8/attention_output/bias:C9?
=
_user_specified_name%#multi_head_attention_9/query/kernel:A:=
;
_user_specified_name#!multi_head_attention_9/query/bias:A;=
;
_user_specified_name#!multi_head_attention_9/key/kernel:?<;
9
_user_specified_name!multi_head_attention_9/key/bias:C=?
=
_user_specified_name%#multi_head_attention_9/value/kernel:A>=
;
_user_specified_name#!multi_head_attention_9/value/bias:N?J
H
_user_specified_name0.multi_head_attention_9/attention_output/kernel:L@H
F
_user_specified_name.,multi_head_attention_9/attention_output/bias:DA@
>
_user_specified_name&$multi_head_attention_10/query/kernel:BB>
<
_user_specified_name$"multi_head_attention_10/query/bias:BC>
<
_user_specified_name$"multi_head_attention_10/key/kernel:@D<
:
_user_specified_name" multi_head_attention_10/key/bias:DE@
>
_user_specified_name&$multi_head_attention_10/value/kernel:BF>
<
_user_specified_name$"multi_head_attention_10/value/bias:OGK
I
_user_specified_name1/multi_head_attention_10/attention_output/kernel:MHI
G
_user_specified_name/-multi_head_attention_10/attention_output/bias:DI@
>
_user_specified_name&$multi_head_attention_11/query/kernel:BJ>
<
_user_specified_name$"multi_head_attention_11/query/bias:BK>
<
_user_specified_name$"multi_head_attention_11/key/kernel:@L<
:
_user_specified_name" multi_head_attention_11/key/bias:DM@
>
_user_specified_name&$multi_head_attention_11/value/kernel:BN>
<
_user_specified_name$"multi_head_attention_11/value/bias:OOK
I
_user_specified_name1/multi_head_attention_11/attention_output/kernel:MPI
G
_user_specified_name/-multi_head_attention_11/attention_output/bias
�
s
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1953236

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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_1955664

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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1954453

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
)__inference_dense_6_layer_call_fn_1955591

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
GPU 2J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1953340j
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
_user_specified_name	1955585:'#
!
_user_specified_name	1955587
�
�
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_1956208

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
8__inference_layer_normalization_11_layer_call_fn_1955642

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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_1953381j
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
_user_specified_name	1955636:'#
!
_user_specified_name	1955638
��
�Q
 __inference__traced_save_1957240
file_prefixA
3read_disablecopyonread_layer_normalization_10_gamma:B
4read_1_disablecopyonread_layer_normalization_10_beta:9
'read_2_disablecopyonread_dense_6_kernel:3
%read_3_disablecopyonread_dense_6_bias:C
5read_4_disablecopyonread_layer_normalization_11_gamma:B
4read_5_disablecopyonread_layer_normalization_11_beta:C
5read_6_disablecopyonread_layer_normalization_12_gamma:B
4read_7_disablecopyonread_layer_normalization_12_beta:9
'read_8_disablecopyonread_dense_7_kernel:3
%read_9_disablecopyonread_dense_7_bias:D
6read_10_disablecopyonread_layer_normalization_14_gamma:C
5read_11_disablecopyonread_layer_normalization_14_beta:D
6read_12_disablecopyonread_layer_normalization_13_gamma:C
5read_13_disablecopyonread_layer_normalization_13_beta:D
6read_14_disablecopyonread_layer_normalization_15_gamma:C
5read_15_disablecopyonread_layer_normalization_15_beta::
(read_16_disablecopyonread_dense_8_kernel:4
&read_17_disablecopyonread_dense_8_bias:D
6read_18_disablecopyonread_layer_normalization_17_gamma:C
5read_19_disablecopyonread_layer_normalization_17_beta:D
6read_20_disablecopyonread_layer_normalization_16_gamma:C
5read_21_disablecopyonread_layer_normalization_16_beta:D
6read_22_disablecopyonread_layer_normalization_18_gamma:C
5read_23_disablecopyonread_layer_normalization_18_beta::
(read_24_disablecopyonread_dense_9_kernel:4
&read_25_disablecopyonread_dense_9_bias:D
6read_26_disablecopyonread_layer_normalization_19_gamma:C
5read_27_disablecopyonread_layer_normalization_19_beta:;
)read_28_disablecopyonread_dense_10_kernel: 5
'read_29_disablecopyonread_dense_10_bias: ;
)read_30_disablecopyonread_dense_11_kernel: 5
'read_31_disablecopyonread_dense_11_bias:S
=read_32_disablecopyonread_multi_head_attention_6_query_kernel:M
;read_33_disablecopyonread_multi_head_attention_6_query_bias:Q
;read_34_disablecopyonread_multi_head_attention_6_key_kernel:K
9read_35_disablecopyonread_multi_head_attention_6_key_bias:S
=read_36_disablecopyonread_multi_head_attention_6_value_kernel:M
;read_37_disablecopyonread_multi_head_attention_6_value_bias:^
Hread_38_disablecopyonread_multi_head_attention_6_attention_output_kernel:T
Fread_39_disablecopyonread_multi_head_attention_6_attention_output_bias:S
=read_40_disablecopyonread_multi_head_attention_7_query_kernel:M
;read_41_disablecopyonread_multi_head_attention_7_query_bias:Q
;read_42_disablecopyonread_multi_head_attention_7_key_kernel:K
9read_43_disablecopyonread_multi_head_attention_7_key_bias:S
=read_44_disablecopyonread_multi_head_attention_7_value_kernel:M
;read_45_disablecopyonread_multi_head_attention_7_value_bias:^
Hread_46_disablecopyonread_multi_head_attention_7_attention_output_kernel:T
Fread_47_disablecopyonread_multi_head_attention_7_attention_output_bias:S
=read_48_disablecopyonread_multi_head_attention_8_query_kernel:M
;read_49_disablecopyonread_multi_head_attention_8_query_bias:Q
;read_50_disablecopyonread_multi_head_attention_8_key_kernel:K
9read_51_disablecopyonread_multi_head_attention_8_key_bias:S
=read_52_disablecopyonread_multi_head_attention_8_value_kernel:M
;read_53_disablecopyonread_multi_head_attention_8_value_bias:^
Hread_54_disablecopyonread_multi_head_attention_8_attention_output_kernel:T
Fread_55_disablecopyonread_multi_head_attention_8_attention_output_bias:S
=read_56_disablecopyonread_multi_head_attention_9_query_kernel:M
;read_57_disablecopyonread_multi_head_attention_9_query_bias:Q
;read_58_disablecopyonread_multi_head_attention_9_key_kernel:K
9read_59_disablecopyonread_multi_head_attention_9_key_bias:S
=read_60_disablecopyonread_multi_head_attention_9_value_kernel:M
;read_61_disablecopyonread_multi_head_attention_9_value_bias:^
Hread_62_disablecopyonread_multi_head_attention_9_attention_output_kernel:T
Fread_63_disablecopyonread_multi_head_attention_9_attention_output_bias:T
>read_64_disablecopyonread_multi_head_attention_10_query_kernel:N
<read_65_disablecopyonread_multi_head_attention_10_query_bias:R
<read_66_disablecopyonread_multi_head_attention_10_key_kernel:L
:read_67_disablecopyonread_multi_head_attention_10_key_bias:T
>read_68_disablecopyonread_multi_head_attention_10_value_kernel:N
<read_69_disablecopyonread_multi_head_attention_10_value_bias:_
Iread_70_disablecopyonread_multi_head_attention_10_attention_output_kernel:U
Gread_71_disablecopyonread_multi_head_attention_10_attention_output_bias:T
>read_72_disablecopyonread_multi_head_attention_11_query_kernel:N
<read_73_disablecopyonread_multi_head_attention_11_query_bias:R
<read_74_disablecopyonread_multi_head_attention_11_key_kernel:L
:read_75_disablecopyonread_multi_head_attention_11_key_bias:T
>read_76_disablecopyonread_multi_head_attention_11_value_kernel:N
<read_77_disablecopyonread_multi_head_attention_11_value_bias:_
Iread_78_disablecopyonread_multi_head_attention_11_attention_output_kernel:U
Gread_79_disablecopyonread_multi_head_attention_11_attention_output_bias:
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
Read/DisableCopyOnReadDisableCopyOnRead3read_disablecopyonread_layer_normalization_10_gamma"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp3read_disablecopyonread_layer_normalization_10_gamma^Read/DisableCopyOnRead"/device:CPU:0*
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
Read_1/DisableCopyOnReadDisableCopyOnRead4read_1_disablecopyonread_layer_normalization_10_beta"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp4read_1_disablecopyonread_layer_normalization_10_beta^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_6_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
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

:y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_6_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_6_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
Read_4/DisableCopyOnReadDisableCopyOnRead5read_4_disablecopyonread_layer_normalization_11_gamma"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp5read_4_disablecopyonread_layer_normalization_11_gamma^Read_4/DisableCopyOnRead"/device:CPU:0*
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
Read_5/DisableCopyOnReadDisableCopyOnRead4read_5_disablecopyonread_layer_normalization_11_beta"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp4read_5_disablecopyonread_layer_normalization_11_beta^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead5read_6_disablecopyonread_layer_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp5read_6_disablecopyonread_layer_normalization_12_gamma^Read_6/DisableCopyOnRead"/device:CPU:0*
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
Read_7/DisableCopyOnReadDisableCopyOnRead4read_7_disablecopyonread_layer_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp4read_7_disablecopyonread_layer_normalization_12_beta^Read_7/DisableCopyOnRead"/device:CPU:0*
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
:{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_7_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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

:y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_7_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
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
Read_10/DisableCopyOnReadDisableCopyOnRead6read_10_disablecopyonread_layer_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp6read_10_disablecopyonread_layer_normalization_14_gamma^Read_10/DisableCopyOnRead"/device:CPU:0*
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
Read_11/DisableCopyOnReadDisableCopyOnRead5read_11_disablecopyonread_layer_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp5read_11_disablecopyonread_layer_normalization_14_beta^Read_11/DisableCopyOnRead"/device:CPU:0*
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
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_layer_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_layer_normalization_13_gamma^Read_12/DisableCopyOnRead"/device:CPU:0*
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
Read_13/DisableCopyOnReadDisableCopyOnRead5read_13_disablecopyonread_layer_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp5read_13_disablecopyonread_layer_normalization_13_beta^Read_13/DisableCopyOnRead"/device:CPU:0*
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
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_layer_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_layer_normalization_15_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
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
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_layer_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_layer_normalization_15_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
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
:}
Read_16/DisableCopyOnReadDisableCopyOnRead(read_16_disablecopyonread_dense_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp(read_16_disablecopyonread_dense_8_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
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

:{
Read_17/DisableCopyOnReadDisableCopyOnRead&read_17_disablecopyonread_dense_8_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp&read_17_disablecopyonread_dense_8_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
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
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_layer_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp6read_18_disablecopyonread_layer_normalization_17_gamma^Read_18/DisableCopyOnRead"/device:CPU:0*
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
Read_19/DisableCopyOnReadDisableCopyOnRead5read_19_disablecopyonread_layer_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp5read_19_disablecopyonread_layer_normalization_17_beta^Read_19/DisableCopyOnRead"/device:CPU:0*
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
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_layer_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_layer_normalization_16_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
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
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_layer_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_layer_normalization_16_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
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
Read_22/DisableCopyOnReadDisableCopyOnRead6read_22_disablecopyonread_layer_normalization_18_gamma"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp6read_22_disablecopyonread_layer_normalization_18_gamma^Read_22/DisableCopyOnRead"/device:CPU:0*
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
Read_23/DisableCopyOnReadDisableCopyOnRead5read_23_disablecopyonread_layer_normalization_18_beta"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp5read_23_disablecopyonread_layer_normalization_18_beta^Read_23/DisableCopyOnRead"/device:CPU:0*
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
:}
Read_24/DisableCopyOnReadDisableCopyOnRead(read_24_disablecopyonread_dense_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp(read_24_disablecopyonread_dense_9_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
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

:{
Read_25/DisableCopyOnReadDisableCopyOnRead&read_25_disablecopyonread_dense_9_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp&read_25_disablecopyonread_dense_9_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
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
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_layer_normalization_19_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_layer_normalization_19_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
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
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_layer_normalization_19_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_layer_normalization_19_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
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
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_dense_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp)read_28_disablecopyonread_dense_10_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
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
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_dense_10_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_dense_10_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
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
Read_30/DisableCopyOnReadDisableCopyOnRead)read_30_disablecopyonread_dense_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_dense_11_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
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
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_dense_11_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_dense_11_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
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
Read_32/DisableCopyOnReadDisableCopyOnRead=read_32_disablecopyonread_multi_head_attention_6_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp=read_32_disablecopyonread_multi_head_attention_6_query_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*"
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
Read_33/DisableCopyOnReadDisableCopyOnRead;read_33_disablecopyonread_multi_head_attention_6_query_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp;read_33_disablecopyonread_multi_head_attention_6_query_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
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
Read_34/DisableCopyOnReadDisableCopyOnRead;read_34_disablecopyonread_multi_head_attention_6_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp;read_34_disablecopyonread_multi_head_attention_6_key_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*"
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
Read_35/DisableCopyOnReadDisableCopyOnRead9read_35_disablecopyonread_multi_head_attention_6_key_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp9read_35_disablecopyonread_multi_head_attention_6_key_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
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
Read_36/DisableCopyOnReadDisableCopyOnRead=read_36_disablecopyonread_multi_head_attention_6_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp=read_36_disablecopyonread_multi_head_attention_6_value_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*"
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
Read_37/DisableCopyOnReadDisableCopyOnRead;read_37_disablecopyonread_multi_head_attention_6_value_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp;read_37_disablecopyonread_multi_head_attention_6_value_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
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
Read_38/DisableCopyOnReadDisableCopyOnReadHread_38_disablecopyonread_multi_head_attention_6_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOpHread_38_disablecopyonread_multi_head_attention_6_attention_output_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*"
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
Read_39/DisableCopyOnReadDisableCopyOnReadFread_39_disablecopyonread_multi_head_attention_6_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOpFread_39_disablecopyonread_multi_head_attention_6_attention_output_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
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
Read_40/DisableCopyOnReadDisableCopyOnRead=read_40_disablecopyonread_multi_head_attention_7_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp=read_40_disablecopyonread_multi_head_attention_7_query_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*"
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
Read_41/DisableCopyOnReadDisableCopyOnRead;read_41_disablecopyonread_multi_head_attention_7_query_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp;read_41_disablecopyonread_multi_head_attention_7_query_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
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
Read_42/DisableCopyOnReadDisableCopyOnRead;read_42_disablecopyonread_multi_head_attention_7_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp;read_42_disablecopyonread_multi_head_attention_7_key_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*"
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
Read_43/DisableCopyOnReadDisableCopyOnRead9read_43_disablecopyonread_multi_head_attention_7_key_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp9read_43_disablecopyonread_multi_head_attention_7_key_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
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
Read_44/DisableCopyOnReadDisableCopyOnRead=read_44_disablecopyonread_multi_head_attention_7_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp=read_44_disablecopyonread_multi_head_attention_7_value_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*"
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
Read_45/DisableCopyOnReadDisableCopyOnRead;read_45_disablecopyonread_multi_head_attention_7_value_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp;read_45_disablecopyonread_multi_head_attention_7_value_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
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
Read_46/DisableCopyOnReadDisableCopyOnReadHread_46_disablecopyonread_multi_head_attention_7_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOpHread_46_disablecopyonread_multi_head_attention_7_attention_output_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*"
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
Read_47/DisableCopyOnReadDisableCopyOnReadFread_47_disablecopyonread_multi_head_attention_7_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOpFread_47_disablecopyonread_multi_head_attention_7_attention_output_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
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
Read_48/DisableCopyOnReadDisableCopyOnRead=read_48_disablecopyonread_multi_head_attention_8_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp=read_48_disablecopyonread_multi_head_attention_8_query_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*"
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
Read_49/DisableCopyOnReadDisableCopyOnRead;read_49_disablecopyonread_multi_head_attention_8_query_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp;read_49_disablecopyonread_multi_head_attention_8_query_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
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
Read_50/DisableCopyOnReadDisableCopyOnRead;read_50_disablecopyonread_multi_head_attention_8_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp;read_50_disablecopyonread_multi_head_attention_8_key_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*"
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
Read_51/DisableCopyOnReadDisableCopyOnRead9read_51_disablecopyonread_multi_head_attention_8_key_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp9read_51_disablecopyonread_multi_head_attention_8_key_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
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
Read_52/DisableCopyOnReadDisableCopyOnRead=read_52_disablecopyonread_multi_head_attention_8_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp=read_52_disablecopyonread_multi_head_attention_8_value_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*"
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
Read_53/DisableCopyOnReadDisableCopyOnRead;read_53_disablecopyonread_multi_head_attention_8_value_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp;read_53_disablecopyonread_multi_head_attention_8_value_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
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
Read_54/DisableCopyOnReadDisableCopyOnReadHread_54_disablecopyonread_multi_head_attention_8_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOpHread_54_disablecopyonread_multi_head_attention_8_attention_output_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*"
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
Read_55/DisableCopyOnReadDisableCopyOnReadFread_55_disablecopyonread_multi_head_attention_8_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOpFread_55_disablecopyonread_multi_head_attention_8_attention_output_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
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
Read_56/DisableCopyOnReadDisableCopyOnRead=read_56_disablecopyonread_multi_head_attention_9_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp=read_56_disablecopyonread_multi_head_attention_9_query_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*"
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
Read_57/DisableCopyOnReadDisableCopyOnRead;read_57_disablecopyonread_multi_head_attention_9_query_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp;read_57_disablecopyonread_multi_head_attention_9_query_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
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
Read_58/DisableCopyOnReadDisableCopyOnRead;read_58_disablecopyonread_multi_head_attention_9_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp;read_58_disablecopyonread_multi_head_attention_9_key_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*"
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
Read_59/DisableCopyOnReadDisableCopyOnRead9read_59_disablecopyonread_multi_head_attention_9_key_bias"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp9read_59_disablecopyonread_multi_head_attention_9_key_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
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
Read_60/DisableCopyOnReadDisableCopyOnRead=read_60_disablecopyonread_multi_head_attention_9_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp=read_60_disablecopyonread_multi_head_attention_9_value_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*"
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
Read_61/DisableCopyOnReadDisableCopyOnRead;read_61_disablecopyonread_multi_head_attention_9_value_bias"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp;read_61_disablecopyonread_multi_head_attention_9_value_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
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
Read_62/DisableCopyOnReadDisableCopyOnReadHread_62_disablecopyonread_multi_head_attention_9_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOpHread_62_disablecopyonread_multi_head_attention_9_attention_output_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*"
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
Read_63/DisableCopyOnReadDisableCopyOnReadFread_63_disablecopyonread_multi_head_attention_9_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOpFread_63_disablecopyonread_multi_head_attention_9_attention_output_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
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
Read_64/DisableCopyOnReadDisableCopyOnRead>read_64_disablecopyonread_multi_head_attention_10_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp>read_64_disablecopyonread_multi_head_attention_10_query_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*"
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
Read_65/DisableCopyOnReadDisableCopyOnRead<read_65_disablecopyonread_multi_head_attention_10_query_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp<read_65_disablecopyonread_multi_head_attention_10_query_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
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
Read_66/DisableCopyOnReadDisableCopyOnRead<read_66_disablecopyonread_multi_head_attention_10_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp<read_66_disablecopyonread_multi_head_attention_10_key_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*"
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
Read_67/DisableCopyOnReadDisableCopyOnRead:read_67_disablecopyonread_multi_head_attention_10_key_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp:read_67_disablecopyonread_multi_head_attention_10_key_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
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
Read_68/DisableCopyOnReadDisableCopyOnRead>read_68_disablecopyonread_multi_head_attention_10_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp>read_68_disablecopyonread_multi_head_attention_10_value_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*"
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
Read_69/DisableCopyOnReadDisableCopyOnRead<read_69_disablecopyonread_multi_head_attention_10_value_bias"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp<read_69_disablecopyonread_multi_head_attention_10_value_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
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
Read_70/DisableCopyOnReadDisableCopyOnReadIread_70_disablecopyonread_multi_head_attention_10_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOpIread_70_disablecopyonread_multi_head_attention_10_attention_output_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*"
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
Read_71/DisableCopyOnReadDisableCopyOnReadGread_71_disablecopyonread_multi_head_attention_10_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOpGread_71_disablecopyonread_multi_head_attention_10_attention_output_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
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
Read_72/DisableCopyOnReadDisableCopyOnRead>read_72_disablecopyonread_multi_head_attention_11_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp>read_72_disablecopyonread_multi_head_attention_11_query_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*"
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
Read_73/DisableCopyOnReadDisableCopyOnRead<read_73_disablecopyonread_multi_head_attention_11_query_bias"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp<read_73_disablecopyonread_multi_head_attention_11_query_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
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
Read_74/DisableCopyOnReadDisableCopyOnRead<read_74_disablecopyonread_multi_head_attention_11_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp<read_74_disablecopyonread_multi_head_attention_11_key_kernel^Read_74/DisableCopyOnRead"/device:CPU:0*"
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
Read_75/DisableCopyOnReadDisableCopyOnRead:read_75_disablecopyonread_multi_head_attention_11_key_bias"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp:read_75_disablecopyonread_multi_head_attention_11_key_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
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
Read_76/DisableCopyOnReadDisableCopyOnRead>read_76_disablecopyonread_multi_head_attention_11_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp>read_76_disablecopyonread_multi_head_attention_11_value_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*"
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
Read_77/DisableCopyOnReadDisableCopyOnRead<read_77_disablecopyonread_multi_head_attention_11_value_bias"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp<read_77_disablecopyonread_multi_head_attention_11_value_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
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
Read_78/DisableCopyOnReadDisableCopyOnReadIread_78_disablecopyonread_multi_head_attention_11_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOpIread_78_disablecopyonread_multi_head_attention_11_attention_output_kernel^Read_78/DisableCopyOnRead"/device:CPU:0*"
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
Read_79/DisableCopyOnReadDisableCopyOnReadGread_79_disablecopyonread_multi_head_attention_11_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOpGread_79_disablecopyonread_multi_head_attention_11_attention_output_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
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
_user_specified_namelayer_normalization_10/gamma:;7
5
_user_specified_namelayer_normalization_10/beta:.*
(
_user_specified_namedense_6/kernel:,(
&
_user_specified_namedense_6/bias:<8
6
_user_specified_namelayer_normalization_11/gamma:;7
5
_user_specified_namelayer_normalization_11/beta:<8
6
_user_specified_namelayer_normalization_12/gamma:;7
5
_user_specified_namelayer_normalization_12/beta:.	*
(
_user_specified_namedense_7/kernel:,
(
&
_user_specified_namedense_7/bias:<8
6
_user_specified_namelayer_normalization_14/gamma:;7
5
_user_specified_namelayer_normalization_14/beta:<8
6
_user_specified_namelayer_normalization_13/gamma:;7
5
_user_specified_namelayer_normalization_13/beta:<8
6
_user_specified_namelayer_normalization_15/gamma:;7
5
_user_specified_namelayer_normalization_15/beta:.*
(
_user_specified_namedense_8/kernel:,(
&
_user_specified_namedense_8/bias:<8
6
_user_specified_namelayer_normalization_17/gamma:;7
5
_user_specified_namelayer_normalization_17/beta:<8
6
_user_specified_namelayer_normalization_16/gamma:;7
5
_user_specified_namelayer_normalization_16/beta:<8
6
_user_specified_namelayer_normalization_18/gamma:;7
5
_user_specified_namelayer_normalization_18/beta:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:<8
6
_user_specified_namelayer_normalization_19/gamma:;7
5
_user_specified_namelayer_normalization_19/beta:/+
)
_user_specified_namedense_10/kernel:-)
'
_user_specified_namedense_10/bias:/+
)
_user_specified_namedense_11/kernel:- )
'
_user_specified_namedense_11/bias:C!?
=
_user_specified_name%#multi_head_attention_6/query/kernel:A"=
;
_user_specified_name#!multi_head_attention_6/query/bias:A#=
;
_user_specified_name#!multi_head_attention_6/key/kernel:?$;
9
_user_specified_name!multi_head_attention_6/key/bias:C%?
=
_user_specified_name%#multi_head_attention_6/value/kernel:A&=
;
_user_specified_name#!multi_head_attention_6/value/bias:N'J
H
_user_specified_name0.multi_head_attention_6/attention_output/kernel:L(H
F
_user_specified_name.,multi_head_attention_6/attention_output/bias:C)?
=
_user_specified_name%#multi_head_attention_7/query/kernel:A*=
;
_user_specified_name#!multi_head_attention_7/query/bias:A+=
;
_user_specified_name#!multi_head_attention_7/key/kernel:?,;
9
_user_specified_name!multi_head_attention_7/key/bias:C-?
=
_user_specified_name%#multi_head_attention_7/value/kernel:A.=
;
_user_specified_name#!multi_head_attention_7/value/bias:N/J
H
_user_specified_name0.multi_head_attention_7/attention_output/kernel:L0H
F
_user_specified_name.,multi_head_attention_7/attention_output/bias:C1?
=
_user_specified_name%#multi_head_attention_8/query/kernel:A2=
;
_user_specified_name#!multi_head_attention_8/query/bias:A3=
;
_user_specified_name#!multi_head_attention_8/key/kernel:?4;
9
_user_specified_name!multi_head_attention_8/key/bias:C5?
=
_user_specified_name%#multi_head_attention_8/value/kernel:A6=
;
_user_specified_name#!multi_head_attention_8/value/bias:N7J
H
_user_specified_name0.multi_head_attention_8/attention_output/kernel:L8H
F
_user_specified_name.,multi_head_attention_8/attention_output/bias:C9?
=
_user_specified_name%#multi_head_attention_9/query/kernel:A:=
;
_user_specified_name#!multi_head_attention_9/query/bias:A;=
;
_user_specified_name#!multi_head_attention_9/key/kernel:?<;
9
_user_specified_name!multi_head_attention_9/key/bias:C=?
=
_user_specified_name%#multi_head_attention_9/value/kernel:A>=
;
_user_specified_name#!multi_head_attention_9/value/bias:N?J
H
_user_specified_name0.multi_head_attention_9/attention_output/kernel:L@H
F
_user_specified_name.,multi_head_attention_9/attention_output/bias:DA@
>
_user_specified_name&$multi_head_attention_10/query/kernel:BB>
<
_user_specified_name$"multi_head_attention_10/query/bias:BC>
<
_user_specified_name$"multi_head_attention_10/key/kernel:@D<
:
_user_specified_name" multi_head_attention_10/key/bias:DE@
>
_user_specified_name&$multi_head_attention_10/value/kernel:BF>
<
_user_specified_name$"multi_head_attention_10/value/bias:OGK
I
_user_specified_name1/multi_head_attention_10/attention_output/kernel:MHI
G
_user_specified_name/-multi_head_attention_10/attention_output/bias:DI@
>
_user_specified_name&$multi_head_attention_11/query/kernel:BJ>
<
_user_specified_name$"multi_head_attention_11/query/bias:BK>
<
_user_specified_name$"multi_head_attention_11/key/kernel:@L<
:
_user_specified_name" multi_head_attention_11/key/bias:DM@
>
_user_specified_name&$multi_head_attention_11/value/kernel:BN>
<
_user_specified_name$"multi_head_attention_11/value/bias:OOK
I
_user_specified_name1/multi_head_attention_11/attention_output/kernel:MPI
G
_user_specified_name/-multi_head_attention_11/attention_output/bias:=Q9

_output_shapes
: 

_user_specified_nameConst
�	
�
E__inference_dense_11_layer_call_and_return_conditional_losses_1956738

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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1955551	
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1955778	
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
�
s
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1956700

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
�
d
+__inference_dropout_9_layer_call_fn_1956351

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
GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1953732j
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

e
F__inference_dropout_8_layer_call_and_return_conditional_losses_1953671

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
,__inference_dropout_10_layer_call_fn_1956554

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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1953905j
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_1953809

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
G
+__inference_dropout_7_layer_call_fn_1955957

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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_1954175[
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
%__inference_signature_wrapper_1955437
input_2
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

StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_1953230f
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
_user_specified_name	input_2:'#
!
_user_specified_name	1955275:'#
!
_user_specified_name	1955277:'#
!
_user_specified_name	1955279:'#
!
_user_specified_name	1955281:'#
!
_user_specified_name	1955283:'#
!
_user_specified_name	1955285:'#
!
_user_specified_name	1955287:'#
!
_user_specified_name	1955289:'	#
!
_user_specified_name	1955291:'
#
!
_user_specified_name	1955293:'#
!
_user_specified_name	1955295:'#
!
_user_specified_name	1955297:'#
!
_user_specified_name	1955299:'#
!
_user_specified_name	1955301:'#
!
_user_specified_name	1955303:'#
!
_user_specified_name	1955305:'#
!
_user_specified_name	1955307:'#
!
_user_specified_name	1955309:'#
!
_user_specified_name	1955311:'#
!
_user_specified_name	1955313:'#
!
_user_specified_name	1955315:'#
!
_user_specified_name	1955317:'#
!
_user_specified_name	1955319:'#
!
_user_specified_name	1955321:'#
!
_user_specified_name	1955323:'#
!
_user_specified_name	1955325:'#
!
_user_specified_name	1955327:'#
!
_user_specified_name	1955329:'#
!
_user_specified_name	1955331:'#
!
_user_specified_name	1955333:'#
!
_user_specified_name	1955335:' #
!
_user_specified_name	1955337:'!#
!
_user_specified_name	1955339:'"#
!
_user_specified_name	1955341:'##
!
_user_specified_name	1955343:'$#
!
_user_specified_name	1955345:'%#
!
_user_specified_name	1955347:'&#
!
_user_specified_name	1955349:''#
!
_user_specified_name	1955351:'(#
!
_user_specified_name	1955353:')#
!
_user_specified_name	1955355:'*#
!
_user_specified_name	1955357:'+#
!
_user_specified_name	1955359:',#
!
_user_specified_name	1955361:'-#
!
_user_specified_name	1955363:'.#
!
_user_specified_name	1955365:'/#
!
_user_specified_name	1955367:'0#
!
_user_specified_name	1955369:'1#
!
_user_specified_name	1955371:'2#
!
_user_specified_name	1955373:'3#
!
_user_specified_name	1955375:'4#
!
_user_specified_name	1955377:'5#
!
_user_specified_name	1955379:'6#
!
_user_specified_name	1955381:'7#
!
_user_specified_name	1955383:'8#
!
_user_specified_name	1955385:'9#
!
_user_specified_name	1955387:':#
!
_user_specified_name	1955389:';#
!
_user_specified_name	1955391:'<#
!
_user_specified_name	1955393:'=#
!
_user_specified_name	1955395:'>#
!
_user_specified_name	1955397:'?#
!
_user_specified_name	1955399:'@#
!
_user_specified_name	1955401:'A#
!
_user_specified_name	1955403:'B#
!
_user_specified_name	1955405:'C#
!
_user_specified_name	1955407:'D#
!
_user_specified_name	1955409:'E#
!
_user_specified_name	1955411:'F#
!
_user_specified_name	1955413:'G#
!
_user_specified_name	1955415:'H#
!
_user_specified_name	1955417:'I#
!
_user_specified_name	1955419:'J#
!
_user_specified_name	1955421:'K#
!
_user_specified_name	1955423:'L#
!
_user_specified_name	1955425:'M#
!
_user_specified_name	1955427:'N#
!
_user_specified_name	1955429:'O#
!
_user_specified_name	1955431:'P#
!
_user_specified_name	1955433
�
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_1955974

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
9__inference_multi_head_attention_11_layer_call_fn_1956479	
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1954414j
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
_user_specified_name	1956461:'#
!
_user_specified_name	1956463:'#
!
_user_specified_name	1956465:'#
!
_user_specified_name	1956467:'#
!
_user_specified_name	1956469:'#
!
_user_specified_name	1956471:'#
!
_user_specified_name	1956473:'	#
!
_user_specified_name	1956475
�

f
G__inference_dropout_10_layer_call_and_return_conditional_losses_1953905

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
8__inference_layer_normalization_18_layer_call_fn_1956585

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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_1953929j
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
_user_specified_name	1956579:'#
!
_user_specified_name	1956581
�+
�
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1954414	
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_1956404

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
E__inference_dense_10_layer_call_and_return_conditional_losses_1954006

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
�
�
8__inference_layer_normalization_17_layer_call_fn_1956382

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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_1953809j
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
_user_specified_name	1956376:'#
!
_user_specified_name	1956378
�+
�
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1953876	
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
D__inference_dense_8_layer_call_and_return_conditional_losses_1953715

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
8__inference_multi_head_attention_8_layer_call_fn_1955877	
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1954211j
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
_user_specified_name	1955859:'#
!
_user_specified_name	1955861:'#
!
_user_specified_name	1955863:'#
!
_user_specified_name	1955865:'#
!
_user_specified_name	1955867:'#
!
_user_specified_name	1955869:'#
!
_user_specified_name	1955871:'	#
!
_user_specified_name	1955873
�
�
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_1953461

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
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_1954100

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
�
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_1954436

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
8__inference_layer_normalization_13_layer_call_fn_1956014

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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_1953602j
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
_user_specified_name	1956008:'#
!
_user_specified_name	1956010
�
�
8__inference_layer_normalization_12_layer_call_fn_1955787

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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_1953461j
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
_user_specified_name	1955781:'#
!
_user_specified_name	1955783
�
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_1956576

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
G
+__inference_dropout_6_layer_call_fn_1955616

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
GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1954100[
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
E__inference_dense_10_layer_call_and_return_conditional_losses_1956719

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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1954067	
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
e
,__inference_dropout_11_layer_call_fn_1956636

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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1953966j
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
D__inference_dense_7_layer_call_and_return_conditional_losses_1953481

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
D__inference_dense_6_layer_call_and_return_conditional_losses_1953340

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
d
F__inference_dropout_9_layer_call_and_return_conditional_losses_1956373

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
�
�
D__inference_dense_7_layer_call_and_return_conditional_losses_1955833

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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_1955809

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
D__inference_dense_9_layer_call_and_return_conditional_losses_1956631

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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_1956036

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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1955912	
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
�<
�
)__inference_model_1_layer_call_fn_1954803
input_2
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
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_1_layer_call_and_return_conditional_losses_1954473f
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
_user_specified_name	input_2:'#
!
_user_specified_name	1954641:'#
!
_user_specified_name	1954643:'#
!
_user_specified_name	1954645:'#
!
_user_specified_name	1954647:'#
!
_user_specified_name	1954649:'#
!
_user_specified_name	1954651:'#
!
_user_specified_name	1954653:'#
!
_user_specified_name	1954655:'	#
!
_user_specified_name	1954657:'
#
!
_user_specified_name	1954659:'#
!
_user_specified_name	1954661:'#
!
_user_specified_name	1954663:'#
!
_user_specified_name	1954665:'#
!
_user_specified_name	1954667:'#
!
_user_specified_name	1954669:'#
!
_user_specified_name	1954671:'#
!
_user_specified_name	1954673:'#
!
_user_specified_name	1954675:'#
!
_user_specified_name	1954677:'#
!
_user_specified_name	1954679:'#
!
_user_specified_name	1954681:'#
!
_user_specified_name	1954683:'#
!
_user_specified_name	1954685:'#
!
_user_specified_name	1954687:'#
!
_user_specified_name	1954689:'#
!
_user_specified_name	1954691:'#
!
_user_specified_name	1954693:'#
!
_user_specified_name	1954695:'#
!
_user_specified_name	1954697:'#
!
_user_specified_name	1954699:'#
!
_user_specified_name	1954701:' #
!
_user_specified_name	1954703:'!#
!
_user_specified_name	1954705:'"#
!
_user_specified_name	1954707:'##
!
_user_specified_name	1954709:'$#
!
_user_specified_name	1954711:'%#
!
_user_specified_name	1954713:'&#
!
_user_specified_name	1954715:''#
!
_user_specified_name	1954717:'(#
!
_user_specified_name	1954719:')#
!
_user_specified_name	1954721:'*#
!
_user_specified_name	1954723:'+#
!
_user_specified_name	1954725:',#
!
_user_specified_name	1954727:'-#
!
_user_specified_name	1954729:'.#
!
_user_specified_name	1954731:'/#
!
_user_specified_name	1954733:'0#
!
_user_specified_name	1954735:'1#
!
_user_specified_name	1954737:'2#
!
_user_specified_name	1954739:'3#
!
_user_specified_name	1954741:'4#
!
_user_specified_name	1954743:'5#
!
_user_specified_name	1954745:'6#
!
_user_specified_name	1954747:'7#
!
_user_specified_name	1954749:'8#
!
_user_specified_name	1954751:'9#
!
_user_specified_name	1954753:':#
!
_user_specified_name	1954755:';#
!
_user_specified_name	1954757:'<#
!
_user_specified_name	1954759:'=#
!
_user_specified_name	1954761:'>#
!
_user_specified_name	1954763:'?#
!
_user_specified_name	1954765:'@#
!
_user_specified_name	1954767:'A#
!
_user_specified_name	1954769:'B#
!
_user_specified_name	1954771:'C#
!
_user_specified_name	1954773:'D#
!
_user_specified_name	1954775:'E#
!
_user_specified_name	1954777:'F#
!
_user_specified_name	1954779:'G#
!
_user_specified_name	1954781:'H#
!
_user_specified_name	1954783:'I#
!
_user_specified_name	1954785:'J#
!
_user_specified_name	1954787:'K#
!
_user_specified_name	1954789:'L#
!
_user_specified_name	1954791:'M#
!
_user_specified_name	1954793:'N#
!
_user_specified_name	1954795:'O#
!
_user_specified_name	1954797:'P#
!
_user_specified_name	1954799
�

e
F__inference_dropout_6_layer_call_and_return_conditional_losses_1953357

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
9__inference_multi_head_attention_11_layer_call_fn_1956457	
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1953876j
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
_user_specified_name	1956439:'#
!
_user_specified_name	1956441:'#
!
_user_specified_name	1956443:'#
!
_user_specified_name	1956445:'#
!
_user_specified_name	1956447:'#
!
_user_specified_name	1956449:'#
!
_user_specified_name	1956451:'	#
!
_user_specified_name	1956453
�

f
G__inference_dropout_10_layer_call_and_return_conditional_losses_1956571

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
,__inference_dropout_10_layer_call_fn_1956559

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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1954436[
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
�
�
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_1956607

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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_1953381

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
8__inference_multi_head_attention_6_layer_call_fn_1955481	
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1954067j
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
_user_specified_name	1955463:'#
!
_user_specified_name	1955465:'#
!
_user_specified_name	1955467:'#
!
_user_specified_name	1955469:'#
!
_user_specified_name	1955471:'#
!
_user_specified_name	1955473:'#
!
_user_specified_name	1955475:'	#
!
_user_specified_name	1955477
�
�
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_1953990

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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_1953836

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

e
F__inference_dropout_6_layer_call_and_return_conditional_losses_1955628

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
*__inference_dense_10_layer_call_fn_1956709

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
E__inference_dense_10_layer_call_and_return_conditional_losses_1954006f
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
_user_specified_name	1956703:'#
!
_user_specified_name	1956705
�
�
8__inference_multi_head_attention_6_layer_call_fn_1955459	
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1953280j
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
_user_specified_name	1955441:'#
!
_user_specified_name	1955443:'#
!
_user_specified_name	1955445:'#
!
_user_specified_name	1955447:'#
!
_user_specified_name	1955449:'#
!
_user_specified_name	1955451:'#
!
_user_specified_name	1955453:'	#
!
_user_specified_name	1955455
�+
�
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1956514	
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

e
F__inference_dropout_8_layer_call_and_return_conditional_losses_1956172

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
8__inference_layer_normalization_14_layer_call_fn_1955983

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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_1953575j
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
_user_specified_name	1955977:'#
!
_user_specified_name	1955979
�
�
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_1953320

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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1956658

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
)__inference_dense_9_layer_call_fn_1956616

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
GPU 2J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1953949j
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
_user_specified_name	1956610:'#
!
_user_specified_name	1956612
�
�
8__inference_multi_head_attention_9_layer_call_fn_1956058	
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1953642j
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
_user_specified_name	1956040:'#
!
_user_specified_name	1956042:'#
!
_user_specified_name	1956044:'#
!
_user_specified_name	1956046:'#
!
_user_specified_name	1956048:'#
!
_user_specified_name	1956050:'#
!
_user_specified_name	1956052:'	#
!
_user_specified_name	1956054
�+
�
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1954142	
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
�+
�
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1954211	
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1956115	
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
*__inference_dense_11_layer_call_fn_1956728

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
E__inference_dense_11_layer_call_and_return_conditional_losses_1954021f
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
_user_specified_name	1956722:'#
!
_user_specified_name	1956724
�
�
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_1953602

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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1956311	
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1954275	
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
��
�'
D__inference_model_1_layer_call_and_return_conditional_losses_1954028
input_24
multi_head_attention_6_1953281:0
multi_head_attention_6_1953283:4
multi_head_attention_6_1953285:0
multi_head_attention_6_1953287:4
multi_head_attention_6_1953289:0
multi_head_attention_6_1953291:4
multi_head_attention_6_1953293:,
multi_head_attention_6_1953295:,
layer_normalization_10_1953321:,
layer_normalization_10_1953323:!
dense_6_1953341:
dense_6_1953343:,
layer_normalization_11_1953382:,
layer_normalization_11_1953384:4
multi_head_attention_7_1953422:0
multi_head_attention_7_1953424:4
multi_head_attention_7_1953426:0
multi_head_attention_7_1953428:4
multi_head_attention_7_1953430:0
multi_head_attention_7_1953432:4
multi_head_attention_7_1953434:,
multi_head_attention_7_1953436:,
layer_normalization_12_1953462:,
layer_normalization_12_1953464:!
dense_7_1953482:
dense_7_1953484:4
multi_head_attention_8_1953535:0
multi_head_attention_8_1953537:4
multi_head_attention_8_1953539:0
multi_head_attention_8_1953541:4
multi_head_attention_8_1953543:0
multi_head_attention_8_1953545:4
multi_head_attention_8_1953547:,
multi_head_attention_8_1953549:,
layer_normalization_14_1953576:,
layer_normalization_14_1953578:,
layer_normalization_13_1953603:,
layer_normalization_13_1953605:4
multi_head_attention_9_1953643:0
multi_head_attention_9_1953645:4
multi_head_attention_9_1953647:0
multi_head_attention_9_1953649:4
multi_head_attention_9_1953651:0
multi_head_attention_9_1953653:4
multi_head_attention_9_1953655:,
multi_head_attention_9_1953657:,
layer_normalization_15_1953696:,
layer_normalization_15_1953698:!
dense_8_1953716:
dense_8_1953718:5
multi_head_attention_10_1953769:1
multi_head_attention_10_1953771:5
multi_head_attention_10_1953773:1
multi_head_attention_10_1953775:5
multi_head_attention_10_1953777:1
multi_head_attention_10_1953779:5
multi_head_attention_10_1953781:-
multi_head_attention_10_1953783:,
layer_normalization_17_1953810:,
layer_normalization_17_1953812:,
layer_normalization_16_1953837:,
layer_normalization_16_1953839:5
multi_head_attention_11_1953877:1
multi_head_attention_11_1953879:5
multi_head_attention_11_1953881:1
multi_head_attention_11_1953883:5
multi_head_attention_11_1953885:1
multi_head_attention_11_1953887:5
multi_head_attention_11_1953889:-
multi_head_attention_11_1953891:,
layer_normalization_18_1953930:,
layer_normalization_18_1953932:!
dense_9_1953950:
dense_9_1953952:,
layer_normalization_19_1953991:,
layer_normalization_19_1953993:"
dense_10_1954007: 
dense_10_1954009: "
dense_11_1954022: 
dense_11_1954024:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�"dropout_11/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�.layer_normalization_10/StatefulPartitionedCall�.layer_normalization_11/StatefulPartitionedCall�.layer_normalization_12/StatefulPartitionedCall�.layer_normalization_13/StatefulPartitionedCall�.layer_normalization_14/StatefulPartitionedCall�.layer_normalization_15/StatefulPartitionedCall�.layer_normalization_16/StatefulPartitionedCall�.layer_normalization_17/StatefulPartitionedCall�.layer_normalization_18/StatefulPartitionedCall�.layer_normalization_19/StatefulPartitionedCall�/multi_head_attention_10/StatefulPartitionedCall�/multi_head_attention_11/StatefulPartitionedCall�.multi_head_attention_6/StatefulPartitionedCall�.multi_head_attention_7/StatefulPartitionedCall�.multi_head_attention_8/StatefulPartitionedCall�.multi_head_attention_9/StatefulPartitionedCall�
tf.__operators__.add_11/yConst*
_output_shapes

:*
dtype0*�
value�B�"�F��<�mJ����;L�6<�9�;�1=
=��F^�.e�<.��<�ڻ3���`^=����;\�]<��;=p
����<!�<]B3=M����	��֗<&O�<��s��� �*�-���~���&=z�5�z_�<F��<��=�!;=�.��RǢ<�fC=���כ9��jd<Ќ���=�<�'�� ��9c= *�4`<<��ݼ�
�<��1O.=0Dp;��;����1��̲h<�E*=����uL��ۻC����<�k+��B��RN��]2����]��3�@�	�sG�j�������aм5������6�G�@= Z�8-� �@/��= x�:���;ӵK������W�<�b@=�&=bB�<Q0=�q<=������κo4=(�I���ռ�G3=�ϼ�	9=���M
<0�ܻ�i�<�x=@�ֺ��>�Qo=�\G=0�M����;��^���S��G=����R�<3ʼ��t�E<p@1��m��G����}��e��9�;=��n��+���OW�t����м7�h:��=�ɕ<�����,����I��=-�3�095�4�O<bٜ<i(	= �����y= h��,~<��_��|�<�2=Sl�����94�<�м-?=f���Go=�k�<�������ZW��z��<q=��:=�-=�����
��9:=��(<h�y�ç=�D/=��<#�����< Km��==�r�<ø<1=)�1=�=�.:C9=b"�<�3=�=�35=�FK<F��<�
tf.__operators__.add_11/AddV2AddV2input_2"tf.__operators__.add_11/y:output:0*
T0*"
_output_shapes
:�
.multi_head_attention_6/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_6_1953281multi_head_attention_6_1953283multi_head_attention_6_1953285multi_head_attention_6_1953287multi_head_attention_6_1953289multi_head_attention_6_1953291multi_head_attention_6_1953293multi_head_attention_6_1953295*
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1953280�
tf.__operators__.add_12/AddV2AddV2!tf.__operators__.add_11/AddV2:z:07multi_head_attention_6/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_10/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_12/AddV2:z:0layer_normalization_10_1953321layer_normalization_10_1953323*
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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_1953320�
dense_6/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_10/StatefulPartitionedCall:output:0dense_6_1953341dense_6_1953343*
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
GPU 2J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1953340�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1953357�
tf.__operators__.add_13/AddV2AddV27layer_normalization_10/StatefulPartitionedCall:output:0*dropout_6/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0layer_normalization_11_1953382layer_normalization_11_1953384*
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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_1953381�
.multi_head_attention_7/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_11/StatefulPartitionedCall:output:07layer_normalization_11/StatefulPartitionedCall:output:0multi_head_attention_7_1953422multi_head_attention_7_1953424multi_head_attention_7_1953426multi_head_attention_7_1953428multi_head_attention_7_1953430multi_head_attention_7_1953432multi_head_attention_7_1953434multi_head_attention_7_1953436*
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1953421�
tf.__operators__.add_14/AddV2AddV27layer_normalization_11/StatefulPartitionedCall:output:07multi_head_attention_7/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_14/AddV2:z:0layer_normalization_12_1953462layer_normalization_12_1953464*
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_1953461�
dense_7/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_12/StatefulPartitionedCall:output:0dense_7_1953482dense_7_1953484*
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
GPU 2J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1953481�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_1953498�
.multi_head_attention_8/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_8_1953535multi_head_attention_8_1953537multi_head_attention_8_1953539multi_head_attention_8_1953541multi_head_attention_8_1953543multi_head_attention_8_1953545multi_head_attention_8_1953547multi_head_attention_8_1953549*
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1953534�
tf.__operators__.add_15/AddV2AddV27layer_normalization_12/StatefulPartitionedCall:output:0*dropout_7/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_16/AddV2AddV2!tf.__operators__.add_11/AddV2:z:07multi_head_attention_8/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_14/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_16/AddV2:z:0layer_normalization_14_1953576layer_normalization_14_1953578*
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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_1953575�
.layer_normalization_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0layer_normalization_13_1953603layer_normalization_13_1953605*
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_1953602�
.multi_head_attention_9/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_14/StatefulPartitionedCall:output:07layer_normalization_13/StatefulPartitionedCall:output:0multi_head_attention_9_1953643multi_head_attention_9_1953645multi_head_attention_9_1953647multi_head_attention_9_1953649multi_head_attention_9_1953651multi_head_attention_9_1953653multi_head_attention_9_1953655multi_head_attention_9_1953657*
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1953642�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall7multi_head_attention_9/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
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
GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1953671�
tf.__operators__.add_17/AddV2AddV27layer_normalization_14/StatefulPartitionedCall:output:0*dropout_8/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_15/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0layer_normalization_15_1953696layer_normalization_15_1953698*
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_1953695�
dense_8/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_15/StatefulPartitionedCall:output:0dense_8_1953716dense_8_1953718*
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
GPU 2J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1953715�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
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
GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1953732�
/multi_head_attention_10/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_10_1953769multi_head_attention_10_1953771multi_head_attention_10_1953773multi_head_attention_10_1953775multi_head_attention_10_1953777multi_head_attention_10_1953779multi_head_attention_10_1953781multi_head_attention_10_1953783*
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1953768�
tf.__operators__.add_18/AddV2AddV27layer_normalization_15/StatefulPartitionedCall:output:0*dropout_9/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_19/AddV2AddV2!tf.__operators__.add_11/AddV2:z:08multi_head_attention_10/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_17/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_19/AddV2:z:0layer_normalization_17_1953810layer_normalization_17_1953812*
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_1953809�
.layer_normalization_16/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_18/AddV2:z:0layer_normalization_16_1953837layer_normalization_16_1953839*
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_1953836�
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_17/StatefulPartitionedCall:output:07layer_normalization_16/StatefulPartitionedCall:output:0multi_head_attention_11_1953877multi_head_attention_11_1953879multi_head_attention_11_1953881multi_head_attention_11_1953883multi_head_attention_11_1953885multi_head_attention_11_1953887multi_head_attention_11_1953889multi_head_attention_11_1953891*
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1953876�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1953905�
tf.__operators__.add_20/AddV2AddV27layer_normalization_17/StatefulPartitionedCall:output:0+dropout_10/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_18/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_20/AddV2:z:0layer_normalization_18_1953930layer_normalization_18_1953932*
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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_1953929�
dense_9/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_18/StatefulPartitionedCall:output:0dense_9_1953950dense_9_1953952*
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
GPU 2J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1953949�
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1953966�
tf.__operators__.add_21/AddV2AddV27layer_normalization_18/StatefulPartitionedCall:output:0+dropout_11/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_21/AddV2:z:0layer_normalization_19_1953991layer_normalization_19_1953993*
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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_1953990�
*global_average_pooling1d_1/PartitionedCallPartitionedCall7layer_normalization_19/StatefulPartitionedCall:output:0*
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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1953236�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_10_1954007dense_10_1954009*
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
E__inference_dense_10_layer_call_and_return_conditional_losses_1954006�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_1954022dense_11_1954024*
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
E__inference_dense_11_layer_call_and_return_conditional_losses_1954021o
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�	
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall/^layer_normalization_10/StatefulPartitionedCall/^layer_normalization_11/StatefulPartitionedCall/^layer_normalization_12/StatefulPartitionedCall/^layer_normalization_13/StatefulPartitionedCall/^layer_normalization_14/StatefulPartitionedCall/^layer_normalization_15/StatefulPartitionedCall/^layer_normalization_16/StatefulPartitionedCall/^layer_normalization_17/StatefulPartitionedCall/^layer_normalization_18/StatefulPartitionedCall/^layer_normalization_19/StatefulPartitionedCall0^multi_head_attention_10/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall/^multi_head_attention_6/StatefulPartitionedCall/^multi_head_attention_7/StatefulPartitionedCall/^multi_head_attention_8/StatefulPartitionedCall/^multi_head_attention_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2`
.layer_normalization_10/StatefulPartitionedCall.layer_normalization_10/StatefulPartitionedCall2`
.layer_normalization_11/StatefulPartitionedCall.layer_normalization_11/StatefulPartitionedCall2`
.layer_normalization_12/StatefulPartitionedCall.layer_normalization_12/StatefulPartitionedCall2`
.layer_normalization_13/StatefulPartitionedCall.layer_normalization_13/StatefulPartitionedCall2`
.layer_normalization_14/StatefulPartitionedCall.layer_normalization_14/StatefulPartitionedCall2`
.layer_normalization_15/StatefulPartitionedCall.layer_normalization_15/StatefulPartitionedCall2`
.layer_normalization_16/StatefulPartitionedCall.layer_normalization_16/StatefulPartitionedCall2`
.layer_normalization_17/StatefulPartitionedCall.layer_normalization_17/StatefulPartitionedCall2`
.layer_normalization_18/StatefulPartitionedCall.layer_normalization_18/StatefulPartitionedCall2`
.layer_normalization_19/StatefulPartitionedCall.layer_normalization_19/StatefulPartitionedCall2b
/multi_head_attention_10/StatefulPartitionedCall/multi_head_attention_10/StatefulPartitionedCall2b
/multi_head_attention_11/StatefulPartitionedCall/multi_head_attention_11/StatefulPartitionedCall2`
.multi_head_attention_6/StatefulPartitionedCall.multi_head_attention_6/StatefulPartitionedCall2`
.multi_head_attention_7/StatefulPartitionedCall.multi_head_attention_7/StatefulPartitionedCall2`
.multi_head_attention_8/StatefulPartitionedCall.multi_head_attention_8/StatefulPartitionedCall2`
.multi_head_attention_9/StatefulPartitionedCall.multi_head_attention_9/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2:'#
!
_user_specified_name	1953281:'#
!
_user_specified_name	1953283:'#
!
_user_specified_name	1953285:'#
!
_user_specified_name	1953287:'#
!
_user_specified_name	1953289:'#
!
_user_specified_name	1953291:'#
!
_user_specified_name	1953293:'#
!
_user_specified_name	1953295:'	#
!
_user_specified_name	1953321:'
#
!
_user_specified_name	1953323:'#
!
_user_specified_name	1953341:'#
!
_user_specified_name	1953343:'#
!
_user_specified_name	1953382:'#
!
_user_specified_name	1953384:'#
!
_user_specified_name	1953422:'#
!
_user_specified_name	1953424:'#
!
_user_specified_name	1953426:'#
!
_user_specified_name	1953428:'#
!
_user_specified_name	1953430:'#
!
_user_specified_name	1953432:'#
!
_user_specified_name	1953434:'#
!
_user_specified_name	1953436:'#
!
_user_specified_name	1953462:'#
!
_user_specified_name	1953464:'#
!
_user_specified_name	1953482:'#
!
_user_specified_name	1953484:'#
!
_user_specified_name	1953535:'#
!
_user_specified_name	1953537:'#
!
_user_specified_name	1953539:'#
!
_user_specified_name	1953541:'#
!
_user_specified_name	1953543:' #
!
_user_specified_name	1953545:'!#
!
_user_specified_name	1953547:'"#
!
_user_specified_name	1953549:'##
!
_user_specified_name	1953576:'$#
!
_user_specified_name	1953578:'%#
!
_user_specified_name	1953603:'&#
!
_user_specified_name	1953605:''#
!
_user_specified_name	1953643:'(#
!
_user_specified_name	1953645:')#
!
_user_specified_name	1953647:'*#
!
_user_specified_name	1953649:'+#
!
_user_specified_name	1953651:',#
!
_user_specified_name	1953653:'-#
!
_user_specified_name	1953655:'.#
!
_user_specified_name	1953657:'/#
!
_user_specified_name	1953696:'0#
!
_user_specified_name	1953698:'1#
!
_user_specified_name	1953716:'2#
!
_user_specified_name	1953718:'3#
!
_user_specified_name	1953769:'4#
!
_user_specified_name	1953771:'5#
!
_user_specified_name	1953773:'6#
!
_user_specified_name	1953775:'7#
!
_user_specified_name	1953777:'8#
!
_user_specified_name	1953779:'9#
!
_user_specified_name	1953781:':#
!
_user_specified_name	1953783:';#
!
_user_specified_name	1953810:'<#
!
_user_specified_name	1953812:'=#
!
_user_specified_name	1953837:'>#
!
_user_specified_name	1953839:'?#
!
_user_specified_name	1953877:'@#
!
_user_specified_name	1953879:'A#
!
_user_specified_name	1953881:'B#
!
_user_specified_name	1953883:'C#
!
_user_specified_name	1953885:'D#
!
_user_specified_name	1953887:'E#
!
_user_specified_name	1953889:'F#
!
_user_specified_name	1953891:'G#
!
_user_specified_name	1953930:'H#
!
_user_specified_name	1953932:'I#
!
_user_specified_name	1953950:'J#
!
_user_specified_name	1953952:'K#
!
_user_specified_name	1953991:'L#
!
_user_specified_name	1953993:'M#
!
_user_specified_name	1954007:'N#
!
_user_specified_name	1954009:'O#
!
_user_specified_name	1954022:'P#
!
_user_specified_name	1954024
�
�
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_1956005

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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_1953575

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
��
�&
D__inference_model_1_layer_call_and_return_conditional_losses_1954473
input_24
multi_head_attention_6_1954068:0
multi_head_attention_6_1954070:4
multi_head_attention_6_1954072:0
multi_head_attention_6_1954074:4
multi_head_attention_6_1954076:0
multi_head_attention_6_1954078:4
multi_head_attention_6_1954080:,
multi_head_attention_6_1954082:,
layer_normalization_10_1954086:,
layer_normalization_10_1954088:!
dense_6_1954091:
dense_6_1954093:,
layer_normalization_11_1954103:,
layer_normalization_11_1954105:4
multi_head_attention_7_1954143:0
multi_head_attention_7_1954145:4
multi_head_attention_7_1954147:0
multi_head_attention_7_1954149:4
multi_head_attention_7_1954151:0
multi_head_attention_7_1954153:4
multi_head_attention_7_1954155:,
multi_head_attention_7_1954157:,
layer_normalization_12_1954161:,
layer_normalization_12_1954163:!
dense_7_1954166:
dense_7_1954168:4
multi_head_attention_8_1954212:0
multi_head_attention_8_1954214:4
multi_head_attention_8_1954216:0
multi_head_attention_8_1954218:4
multi_head_attention_8_1954220:0
multi_head_attention_8_1954222:4
multi_head_attention_8_1954224:,
multi_head_attention_8_1954226:,
layer_normalization_14_1954231:,
layer_normalization_14_1954233:,
layer_normalization_13_1954236:,
layer_normalization_13_1954238:4
multi_head_attention_9_1954276:0
multi_head_attention_9_1954278:4
multi_head_attention_9_1954280:0
multi_head_attention_9_1954282:4
multi_head_attention_9_1954284:0
multi_head_attention_9_1954286:4
multi_head_attention_9_1954288:,
multi_head_attention_9_1954290:,
layer_normalization_15_1954300:,
layer_normalization_15_1954302:!
dense_8_1954305:
dense_8_1954307:5
multi_head_attention_10_1954351:1
multi_head_attention_10_1954353:5
multi_head_attention_10_1954355:1
multi_head_attention_10_1954357:5
multi_head_attention_10_1954359:1
multi_head_attention_10_1954361:5
multi_head_attention_10_1954363:-
multi_head_attention_10_1954365:,
layer_normalization_17_1954370:,
layer_normalization_17_1954372:,
layer_normalization_16_1954375:,
layer_normalization_16_1954377:5
multi_head_attention_11_1954415:1
multi_head_attention_11_1954417:5
multi_head_attention_11_1954419:1
multi_head_attention_11_1954421:5
multi_head_attention_11_1954423:1
multi_head_attention_11_1954425:5
multi_head_attention_11_1954427:-
multi_head_attention_11_1954429:,
layer_normalization_18_1954439:,
layer_normalization_18_1954441:!
dense_9_1954444:
dense_9_1954446:,
layer_normalization_19_1954456:,
layer_normalization_19_1954458:"
dense_10_1954462: 
dense_10_1954464: "
dense_11_1954467: 
dense_11_1954469:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�.layer_normalization_10/StatefulPartitionedCall�.layer_normalization_11/StatefulPartitionedCall�.layer_normalization_12/StatefulPartitionedCall�.layer_normalization_13/StatefulPartitionedCall�.layer_normalization_14/StatefulPartitionedCall�.layer_normalization_15/StatefulPartitionedCall�.layer_normalization_16/StatefulPartitionedCall�.layer_normalization_17/StatefulPartitionedCall�.layer_normalization_18/StatefulPartitionedCall�.layer_normalization_19/StatefulPartitionedCall�/multi_head_attention_10/StatefulPartitionedCall�/multi_head_attention_11/StatefulPartitionedCall�.multi_head_attention_6/StatefulPartitionedCall�.multi_head_attention_7/StatefulPartitionedCall�.multi_head_attention_8/StatefulPartitionedCall�.multi_head_attention_9/StatefulPartitionedCall�
tf.__operators__.add_11/yConst*
_output_shapes

:*
dtype0*�
value�B�"�F��<�mJ����;L�6<�9�;�1=
=��F^�.e�<.��<�ڻ3���`^=����;\�]<��;=p
����<!�<]B3=M����	��֗<&O�<��s��� �*�-���~���&=z�5�z_�<F��<��=�!;=�.��RǢ<�fC=���כ9��jd<Ќ���=�<�'�� ��9c= *�4`<<��ݼ�
�<��1O.=0Dp;��;����1��̲h<�E*=����uL��ۻC����<�k+��B��RN��]2����]��3�@�	�sG�j�������aм5������6�G�@= Z�8-� �@/��= x�:���;ӵK������W�<�b@=�&=bB�<Q0=�q<=������κo4=(�I���ռ�G3=�ϼ�	9=���M
<0�ܻ�i�<�x=@�ֺ��>�Qo=�\G=0�M����;��^���S��G=����R�<3ʼ��t�E<p@1��m��G����}��e��9�;=��n��+���OW�t����м7�h:��=�ɕ<�����,����I��=-�3�095�4�O<bٜ<i(	= �����y= h��,~<��_��|�<�2=Sl�����94�<�м-?=f���Go=�k�<�������ZW��z��<q=��:=�-=�����
��9:=��(<h�y�ç=�D/=��<#�����< Km��==�r�<ø<1=)�1=�=�.:C9=b"�<�3=�=�35=�FK<F��<�
tf.__operators__.add_11/AddV2AddV2input_2"tf.__operators__.add_11/y:output:0*
T0*"
_output_shapes
:�
.multi_head_attention_6/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_6_1954068multi_head_attention_6_1954070multi_head_attention_6_1954072multi_head_attention_6_1954074multi_head_attention_6_1954076multi_head_attention_6_1954078multi_head_attention_6_1954080multi_head_attention_6_1954082*
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1954067�
tf.__operators__.add_12/AddV2AddV2!tf.__operators__.add_11/AddV2:z:07multi_head_attention_6/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_10/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_12/AddV2:z:0layer_normalization_10_1954086layer_normalization_10_1954088*
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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_1953320�
dense_6/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_10/StatefulPartitionedCall:output:0dense_6_1954091dense_6_1954093*
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
GPU 2J 8� *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1953340�
dropout_6/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1954100�
tf.__operators__.add_13/AddV2AddV27layer_normalization_10/StatefulPartitionedCall:output:0"dropout_6/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0layer_normalization_11_1954103layer_normalization_11_1954105*
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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_1953381�
.multi_head_attention_7/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_11/StatefulPartitionedCall:output:07layer_normalization_11/StatefulPartitionedCall:output:0multi_head_attention_7_1954143multi_head_attention_7_1954145multi_head_attention_7_1954147multi_head_attention_7_1954149multi_head_attention_7_1954151multi_head_attention_7_1954153multi_head_attention_7_1954155multi_head_attention_7_1954157*
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1954142�
tf.__operators__.add_14/AddV2AddV27layer_normalization_11/StatefulPartitionedCall:output:07multi_head_attention_7/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_14/AddV2:z:0layer_normalization_12_1954161layer_normalization_12_1954163*
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_1953461�
dense_7/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_12/StatefulPartitionedCall:output:0dense_7_1954166dense_7_1954168*
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
GPU 2J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1953481�
dropout_7/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_1954175�
.multi_head_attention_8/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_8_1954212multi_head_attention_8_1954214multi_head_attention_8_1954216multi_head_attention_8_1954218multi_head_attention_8_1954220multi_head_attention_8_1954222multi_head_attention_8_1954224multi_head_attention_8_1954226*
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1954211�
tf.__operators__.add_15/AddV2AddV27layer_normalization_12/StatefulPartitionedCall:output:0"dropout_7/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_16/AddV2AddV2!tf.__operators__.add_11/AddV2:z:07multi_head_attention_8/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_14/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_16/AddV2:z:0layer_normalization_14_1954231layer_normalization_14_1954233*
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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_1953575�
.layer_normalization_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0layer_normalization_13_1954236layer_normalization_13_1954238*
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_1953602�
.multi_head_attention_9/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_14/StatefulPartitionedCall:output:07layer_normalization_13/StatefulPartitionedCall:output:0multi_head_attention_9_1954276multi_head_attention_9_1954278multi_head_attention_9_1954280multi_head_attention_9_1954282multi_head_attention_9_1954284multi_head_attention_9_1954286multi_head_attention_9_1954288multi_head_attention_9_1954290*
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1954275�
dropout_8/PartitionedCallPartitionedCall7multi_head_attention_9/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1954297�
tf.__operators__.add_17/AddV2AddV27layer_normalization_14/StatefulPartitionedCall:output:0"dropout_8/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_15/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0layer_normalization_15_1954300layer_normalization_15_1954302*
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_1953695�
dense_8/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_15/StatefulPartitionedCall:output:0dense_8_1954305dense_8_1954307*
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
GPU 2J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1953715�
dropout_9/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1954314�
/multi_head_attention_10/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_10_1954351multi_head_attention_10_1954353multi_head_attention_10_1954355multi_head_attention_10_1954357multi_head_attention_10_1954359multi_head_attention_10_1954361multi_head_attention_10_1954363multi_head_attention_10_1954365*
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1954350�
tf.__operators__.add_18/AddV2AddV27layer_normalization_15/StatefulPartitionedCall:output:0"dropout_9/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_19/AddV2AddV2!tf.__operators__.add_11/AddV2:z:08multi_head_attention_10/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_17/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_19/AddV2:z:0layer_normalization_17_1954370layer_normalization_17_1954372*
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_1953809�
.layer_normalization_16/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_18/AddV2:z:0layer_normalization_16_1954375layer_normalization_16_1954377*
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_1953836�
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_17/StatefulPartitionedCall:output:07layer_normalization_16/StatefulPartitionedCall:output:0multi_head_attention_11_1954415multi_head_attention_11_1954417multi_head_attention_11_1954419multi_head_attention_11_1954421multi_head_attention_11_1954423multi_head_attention_11_1954425multi_head_attention_11_1954427multi_head_attention_11_1954429*
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1954414�
dropout_10/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:0*
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1954436�
tf.__operators__.add_20/AddV2AddV27layer_normalization_17/StatefulPartitionedCall:output:0#dropout_10/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_18/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_20/AddV2:z:0layer_normalization_18_1954439layer_normalization_18_1954441*
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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_1953929�
dense_9/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_18/StatefulPartitionedCall:output:0dense_9_1954444dense_9_1954446*
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
GPU 2J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1953949�
dropout_11/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1954453�
tf.__operators__.add_21/AddV2AddV27layer_normalization_18/StatefulPartitionedCall:output:0#dropout_11/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_21/AddV2:z:0layer_normalization_19_1954456layer_normalization_19_1954458*
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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_1953990�
*global_average_pooling1d_1/PartitionedCallPartitionedCall7layer_normalization_19/StatefulPartitionedCall:output:0*
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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1953236�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_10_1954462dense_10_1954464*
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
E__inference_dense_10_layer_call_and_return_conditional_losses_1954006�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_1954467dense_11_1954469*
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
E__inference_dense_11_layer_call_and_return_conditional_losses_1954021o
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall/^layer_normalization_10/StatefulPartitionedCall/^layer_normalization_11/StatefulPartitionedCall/^layer_normalization_12/StatefulPartitionedCall/^layer_normalization_13/StatefulPartitionedCall/^layer_normalization_14/StatefulPartitionedCall/^layer_normalization_15/StatefulPartitionedCall/^layer_normalization_16/StatefulPartitionedCall/^layer_normalization_17/StatefulPartitionedCall/^layer_normalization_18/StatefulPartitionedCall/^layer_normalization_19/StatefulPartitionedCall0^multi_head_attention_10/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall/^multi_head_attention_6/StatefulPartitionedCall/^multi_head_attention_7/StatefulPartitionedCall/^multi_head_attention_8/StatefulPartitionedCall/^multi_head_attention_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2`
.layer_normalization_10/StatefulPartitionedCall.layer_normalization_10/StatefulPartitionedCall2`
.layer_normalization_11/StatefulPartitionedCall.layer_normalization_11/StatefulPartitionedCall2`
.layer_normalization_12/StatefulPartitionedCall.layer_normalization_12/StatefulPartitionedCall2`
.layer_normalization_13/StatefulPartitionedCall.layer_normalization_13/StatefulPartitionedCall2`
.layer_normalization_14/StatefulPartitionedCall.layer_normalization_14/StatefulPartitionedCall2`
.layer_normalization_15/StatefulPartitionedCall.layer_normalization_15/StatefulPartitionedCall2`
.layer_normalization_16/StatefulPartitionedCall.layer_normalization_16/StatefulPartitionedCall2`
.layer_normalization_17/StatefulPartitionedCall.layer_normalization_17/StatefulPartitionedCall2`
.layer_normalization_18/StatefulPartitionedCall.layer_normalization_18/StatefulPartitionedCall2`
.layer_normalization_19/StatefulPartitionedCall.layer_normalization_19/StatefulPartitionedCall2b
/multi_head_attention_10/StatefulPartitionedCall/multi_head_attention_10/StatefulPartitionedCall2b
/multi_head_attention_11/StatefulPartitionedCall/multi_head_attention_11/StatefulPartitionedCall2`
.multi_head_attention_6/StatefulPartitionedCall.multi_head_attention_6/StatefulPartitionedCall2`
.multi_head_attention_7/StatefulPartitionedCall.multi_head_attention_7/StatefulPartitionedCall2`
.multi_head_attention_8/StatefulPartitionedCall.multi_head_attention_8/StatefulPartitionedCall2`
.multi_head_attention_9/StatefulPartitionedCall.multi_head_attention_9/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2:'#
!
_user_specified_name	1954068:'#
!
_user_specified_name	1954070:'#
!
_user_specified_name	1954072:'#
!
_user_specified_name	1954074:'#
!
_user_specified_name	1954076:'#
!
_user_specified_name	1954078:'#
!
_user_specified_name	1954080:'#
!
_user_specified_name	1954082:'	#
!
_user_specified_name	1954086:'
#
!
_user_specified_name	1954088:'#
!
_user_specified_name	1954091:'#
!
_user_specified_name	1954093:'#
!
_user_specified_name	1954103:'#
!
_user_specified_name	1954105:'#
!
_user_specified_name	1954143:'#
!
_user_specified_name	1954145:'#
!
_user_specified_name	1954147:'#
!
_user_specified_name	1954149:'#
!
_user_specified_name	1954151:'#
!
_user_specified_name	1954153:'#
!
_user_specified_name	1954155:'#
!
_user_specified_name	1954157:'#
!
_user_specified_name	1954161:'#
!
_user_specified_name	1954163:'#
!
_user_specified_name	1954166:'#
!
_user_specified_name	1954168:'#
!
_user_specified_name	1954212:'#
!
_user_specified_name	1954214:'#
!
_user_specified_name	1954216:'#
!
_user_specified_name	1954218:'#
!
_user_specified_name	1954220:' #
!
_user_specified_name	1954222:'!#
!
_user_specified_name	1954224:'"#
!
_user_specified_name	1954226:'##
!
_user_specified_name	1954231:'$#
!
_user_specified_name	1954233:'%#
!
_user_specified_name	1954236:'&#
!
_user_specified_name	1954238:''#
!
_user_specified_name	1954276:'(#
!
_user_specified_name	1954278:')#
!
_user_specified_name	1954280:'*#
!
_user_specified_name	1954282:'+#
!
_user_specified_name	1954284:',#
!
_user_specified_name	1954286:'-#
!
_user_specified_name	1954288:'.#
!
_user_specified_name	1954290:'/#
!
_user_specified_name	1954300:'0#
!
_user_specified_name	1954302:'1#
!
_user_specified_name	1954305:'2#
!
_user_specified_name	1954307:'3#
!
_user_specified_name	1954351:'4#
!
_user_specified_name	1954353:'5#
!
_user_specified_name	1954355:'6#
!
_user_specified_name	1954357:'7#
!
_user_specified_name	1954359:'8#
!
_user_specified_name	1954361:'9#
!
_user_specified_name	1954363:':#
!
_user_specified_name	1954365:';#
!
_user_specified_name	1954370:'<#
!
_user_specified_name	1954372:'=#
!
_user_specified_name	1954375:'>#
!
_user_specified_name	1954377:'?#
!
_user_specified_name	1954415:'@#
!
_user_specified_name	1954417:'A#
!
_user_specified_name	1954419:'B#
!
_user_specified_name	1954421:'C#
!
_user_specified_name	1954423:'D#
!
_user_specified_name	1954425:'E#
!
_user_specified_name	1954427:'F#
!
_user_specified_name	1954429:'G#
!
_user_specified_name	1954439:'H#
!
_user_specified_name	1954441:'I#
!
_user_specified_name	1954444:'J#
!
_user_specified_name	1954446:'K#
!
_user_specified_name	1954456:'L#
!
_user_specified_name	1954458:'M#
!
_user_specified_name	1954462:'N#
!
_user_specified_name	1954464:'O#
!
_user_specified_name	1954467:'P#
!
_user_specified_name	1954469
�
�
8__inference_layer_normalization_19_layer_call_fn_1956667

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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_1953990j
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
_user_specified_name	1956661:'#
!
_user_specified_name	1956663
�
d
F__inference_dropout_8_layer_call_and_return_conditional_losses_1956177

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
�
d
F__inference_dropout_9_layer_call_and_return_conditional_losses_1954314

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
9__inference_multi_head_attention_10_layer_call_fn_1956276	
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1954350j
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
_user_specified_name	1956258:'#
!
_user_specified_name	1956260:'#
!
_user_specified_name	1956262:'#
!
_user_specified_name	1956264:'#
!
_user_specified_name	1956266:'#
!
_user_specified_name	1956268:'#
!
_user_specified_name	1956270:'	#
!
_user_specified_name	1956272
�

e
F__inference_dropout_7_layer_call_and_return_conditional_losses_1953498

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

e
F__inference_dropout_7_layer_call_and_return_conditional_losses_1955969

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
�
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_1954175

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
�
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_1955633

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
8__inference_layer_normalization_16_layer_call_fn_1956413

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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_1953836j
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
_user_specified_name	1956407:'#
!
_user_specified_name	1956409
�+
�
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1956346	
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
8__inference_multi_head_attention_7_layer_call_fn_1955686	
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1953421j
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
_user_specified_name	1955668:'#
!
_user_specified_name	1955670:'#
!
_user_specified_name	1955672:'#
!
_user_specified_name	1955674:'#
!
_user_specified_name	1955676:'#
!
_user_specified_name	1955678:'#
!
_user_specified_name	1955680:'	#
!
_user_specified_name	1955682
�
�
8__inference_layer_normalization_10_layer_call_fn_1955560

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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_1953320j
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
_user_specified_name	1955554:'#
!
_user_specified_name	1955556
�+
�
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1955743	
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_1953695

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
E__inference_dense_11_layer_call_and_return_conditional_losses_1954021

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
��
�\
"__inference__wrapped_model_1953230
input_2`
Jmodel_1_multi_head_attention_6_query_einsum_einsum_readvariableop_resource:R
@model_1_multi_head_attention_6_query_add_readvariableop_resource:^
Hmodel_1_multi_head_attention_6_key_einsum_einsum_readvariableop_resource:P
>model_1_multi_head_attention_6_key_add_readvariableop_resource:`
Jmodel_1_multi_head_attention_6_value_einsum_einsum_readvariableop_resource:R
@model_1_multi_head_attention_6_value_add_readvariableop_resource:k
Umodel_1_multi_head_attention_6_attention_output_einsum_einsum_readvariableop_resource:Y
Kmodel_1_multi_head_attention_6_attention_output_add_readvariableop_resource:R
Dmodel_1_layer_normalization_10_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_10_batchnorm_readvariableop_resource:C
1model_1_dense_6_tensordot_readvariableop_resource:=
/model_1_dense_6_biasadd_readvariableop_resource:R
Dmodel_1_layer_normalization_11_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_11_batchnorm_readvariableop_resource:`
Jmodel_1_multi_head_attention_7_query_einsum_einsum_readvariableop_resource:R
@model_1_multi_head_attention_7_query_add_readvariableop_resource:^
Hmodel_1_multi_head_attention_7_key_einsum_einsum_readvariableop_resource:P
>model_1_multi_head_attention_7_key_add_readvariableop_resource:`
Jmodel_1_multi_head_attention_7_value_einsum_einsum_readvariableop_resource:R
@model_1_multi_head_attention_7_value_add_readvariableop_resource:k
Umodel_1_multi_head_attention_7_attention_output_einsum_einsum_readvariableop_resource:Y
Kmodel_1_multi_head_attention_7_attention_output_add_readvariableop_resource:R
Dmodel_1_layer_normalization_12_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_12_batchnorm_readvariableop_resource:C
1model_1_dense_7_tensordot_readvariableop_resource:=
/model_1_dense_7_biasadd_readvariableop_resource:`
Jmodel_1_multi_head_attention_8_query_einsum_einsum_readvariableop_resource:R
@model_1_multi_head_attention_8_query_add_readvariableop_resource:^
Hmodel_1_multi_head_attention_8_key_einsum_einsum_readvariableop_resource:P
>model_1_multi_head_attention_8_key_add_readvariableop_resource:`
Jmodel_1_multi_head_attention_8_value_einsum_einsum_readvariableop_resource:R
@model_1_multi_head_attention_8_value_add_readvariableop_resource:k
Umodel_1_multi_head_attention_8_attention_output_einsum_einsum_readvariableop_resource:Y
Kmodel_1_multi_head_attention_8_attention_output_add_readvariableop_resource:R
Dmodel_1_layer_normalization_14_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_14_batchnorm_readvariableop_resource:R
Dmodel_1_layer_normalization_13_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_13_batchnorm_readvariableop_resource:`
Jmodel_1_multi_head_attention_9_query_einsum_einsum_readvariableop_resource:R
@model_1_multi_head_attention_9_query_add_readvariableop_resource:^
Hmodel_1_multi_head_attention_9_key_einsum_einsum_readvariableop_resource:P
>model_1_multi_head_attention_9_key_add_readvariableop_resource:`
Jmodel_1_multi_head_attention_9_value_einsum_einsum_readvariableop_resource:R
@model_1_multi_head_attention_9_value_add_readvariableop_resource:k
Umodel_1_multi_head_attention_9_attention_output_einsum_einsum_readvariableop_resource:Y
Kmodel_1_multi_head_attention_9_attention_output_add_readvariableop_resource:R
Dmodel_1_layer_normalization_15_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_15_batchnorm_readvariableop_resource:C
1model_1_dense_8_tensordot_readvariableop_resource:=
/model_1_dense_8_biasadd_readvariableop_resource:a
Kmodel_1_multi_head_attention_10_query_einsum_einsum_readvariableop_resource:S
Amodel_1_multi_head_attention_10_query_add_readvariableop_resource:_
Imodel_1_multi_head_attention_10_key_einsum_einsum_readvariableop_resource:Q
?model_1_multi_head_attention_10_key_add_readvariableop_resource:a
Kmodel_1_multi_head_attention_10_value_einsum_einsum_readvariableop_resource:S
Amodel_1_multi_head_attention_10_value_add_readvariableop_resource:l
Vmodel_1_multi_head_attention_10_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_1_multi_head_attention_10_attention_output_add_readvariableop_resource:R
Dmodel_1_layer_normalization_17_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_17_batchnorm_readvariableop_resource:R
Dmodel_1_layer_normalization_16_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_16_batchnorm_readvariableop_resource:a
Kmodel_1_multi_head_attention_11_query_einsum_einsum_readvariableop_resource:S
Amodel_1_multi_head_attention_11_query_add_readvariableop_resource:_
Imodel_1_multi_head_attention_11_key_einsum_einsum_readvariableop_resource:Q
?model_1_multi_head_attention_11_key_add_readvariableop_resource:a
Kmodel_1_multi_head_attention_11_value_einsum_einsum_readvariableop_resource:S
Amodel_1_multi_head_attention_11_value_add_readvariableop_resource:l
Vmodel_1_multi_head_attention_11_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_1_multi_head_attention_11_attention_output_add_readvariableop_resource:R
Dmodel_1_layer_normalization_18_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_18_batchnorm_readvariableop_resource:C
1model_1_dense_9_tensordot_readvariableop_resource:=
/model_1_dense_9_biasadd_readvariableop_resource:R
Dmodel_1_layer_normalization_19_batchnorm_mul_readvariableop_resource:N
@model_1_layer_normalization_19_batchnorm_readvariableop_resource:A
/model_1_dense_10_matmul_readvariableop_resource: >
0model_1_dense_10_biasadd_readvariableop_resource: A
/model_1_dense_11_matmul_readvariableop_resource: >
0model_1_dense_11_biasadd_readvariableop_resource:
identity��'model_1/dense_10/BiasAdd/ReadVariableOp�&model_1/dense_10/MatMul/ReadVariableOp�'model_1/dense_11/BiasAdd/ReadVariableOp�&model_1/dense_11/MatMul/ReadVariableOp�&model_1/dense_6/BiasAdd/ReadVariableOp�(model_1/dense_6/Tensordot/ReadVariableOp�&model_1/dense_7/BiasAdd/ReadVariableOp�(model_1/dense_7/Tensordot/ReadVariableOp�&model_1/dense_8/BiasAdd/ReadVariableOp�(model_1/dense_8/Tensordot/ReadVariableOp�&model_1/dense_9/BiasAdd/ReadVariableOp�(model_1/dense_9/Tensordot/ReadVariableOp�7model_1/layer_normalization_10/batchnorm/ReadVariableOp�;model_1/layer_normalization_10/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_11/batchnorm/ReadVariableOp�;model_1/layer_normalization_11/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_12/batchnorm/ReadVariableOp�;model_1/layer_normalization_12/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_13/batchnorm/ReadVariableOp�;model_1/layer_normalization_13/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_14/batchnorm/ReadVariableOp�;model_1/layer_normalization_14/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_15/batchnorm/ReadVariableOp�;model_1/layer_normalization_15/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_16/batchnorm/ReadVariableOp�;model_1/layer_normalization_16/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_17/batchnorm/ReadVariableOp�;model_1/layer_normalization_17/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_18/batchnorm/ReadVariableOp�;model_1/layer_normalization_18/batchnorm/mul/ReadVariableOp�7model_1/layer_normalization_19/batchnorm/ReadVariableOp�;model_1/layer_normalization_19/batchnorm/mul/ReadVariableOp�Cmodel_1/multi_head_attention_10/attention_output/add/ReadVariableOp�Mmodel_1/multi_head_attention_10/attention_output/einsum/Einsum/ReadVariableOp�6model_1/multi_head_attention_10/key/add/ReadVariableOp�@model_1/multi_head_attention_10/key/einsum/Einsum/ReadVariableOp�8model_1/multi_head_attention_10/query/add/ReadVariableOp�Bmodel_1/multi_head_attention_10/query/einsum/Einsum/ReadVariableOp�8model_1/multi_head_attention_10/value/add/ReadVariableOp�Bmodel_1/multi_head_attention_10/value/einsum/Einsum/ReadVariableOp�Cmodel_1/multi_head_attention_11/attention_output/add/ReadVariableOp�Mmodel_1/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp�6model_1/multi_head_attention_11/key/add/ReadVariableOp�@model_1/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp�8model_1/multi_head_attention_11/query/add/ReadVariableOp�Bmodel_1/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp�8model_1/multi_head_attention_11/value/add/ReadVariableOp�Bmodel_1/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp�Bmodel_1/multi_head_attention_6/attention_output/add/ReadVariableOp�Lmodel_1/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp�5model_1/multi_head_attention_6/key/add/ReadVariableOp�?model_1/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp�7model_1/multi_head_attention_6/query/add/ReadVariableOp�Amodel_1/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp�7model_1/multi_head_attention_6/value/add/ReadVariableOp�Amodel_1/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp�Bmodel_1/multi_head_attention_7/attention_output/add/ReadVariableOp�Lmodel_1/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp�5model_1/multi_head_attention_7/key/add/ReadVariableOp�?model_1/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp�7model_1/multi_head_attention_7/query/add/ReadVariableOp�Amodel_1/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp�7model_1/multi_head_attention_7/value/add/ReadVariableOp�Amodel_1/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp�Bmodel_1/multi_head_attention_8/attention_output/add/ReadVariableOp�Lmodel_1/multi_head_attention_8/attention_output/einsum/Einsum/ReadVariableOp�5model_1/multi_head_attention_8/key/add/ReadVariableOp�?model_1/multi_head_attention_8/key/einsum/Einsum/ReadVariableOp�7model_1/multi_head_attention_8/query/add/ReadVariableOp�Amodel_1/multi_head_attention_8/query/einsum/Einsum/ReadVariableOp�7model_1/multi_head_attention_8/value/add/ReadVariableOp�Amodel_1/multi_head_attention_8/value/einsum/Einsum/ReadVariableOp�Bmodel_1/multi_head_attention_9/attention_output/add/ReadVariableOp�Lmodel_1/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp�5model_1/multi_head_attention_9/key/add/ReadVariableOp�?model_1/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp�7model_1/multi_head_attention_9/query/add/ReadVariableOp�Amodel_1/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp�7model_1/multi_head_attention_9/value/add/ReadVariableOp�Amodel_1/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp�
!model_1/tf.__operators__.add_11/yConst*
_output_shapes

:*
dtype0*�
value�B�"�F��<�mJ����;L�6<�9�;�1=
=��F^�.e�<.��<�ڻ3���`^=����;\�]<��;=p
����<!�<]B3=M����	��֗<&O�<��s��� �*�-���~���&=z�5�z_�<F��<��=�!;=�.��RǢ<�fC=���כ9��jd<Ќ���=�<�'�� ��9c= *�4`<<��ݼ�
�<��1O.=0Dp;��;����1��̲h<�E*=����uL��ۻC����<�k+��B��RN��]2����]��3�@�	�sG�j�������aм5������6�G�@= Z�8-� �@/��= x�:���;ӵK������W�<�b@=�&=bB�<Q0=�q<=������κo4=(�I���ռ�G3=�ϼ�	9=���M
<0�ܻ�i�<�x=@�ֺ��>�Qo=�\G=0�M����;��^���S��G=����R�<3ʼ��t�E<p@1��m��G����}��e��9�;=��n��+���OW�t����м7�h:��=�ɕ<�����,����I��=-�3�095�4�O<bٜ<i(	= �����y= h��,~<��_��|�<�2=Sl�����94�<�м-?=f���Go=�k�<�������ZW��z��<q=��:=�-=�����
��9:=��(<h�y�ç=�D/=��<#�����< Km��==�r�<ø<1=)�1=�=�.:C9=b"�<�3=�=�35=�FK<F��<�
%model_1/tf.__operators__.add_11/AddV2AddV2input_2*model_1/tf.__operators__.add_11/y:output:0*
T0*"
_output_shapes
:�
Amodel_1/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpReadVariableOpJmodel_1_multi_head_attention_6_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
2model_1/multi_head_attention_6/query/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Imodel_1/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
7model_1/multi_head_attention_6/query/add/ReadVariableOpReadVariableOp@model_1_multi_head_attention_6_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(model_1/multi_head_attention_6/query/addAddV2;model_1/multi_head_attention_6/query/einsum/Einsum:output:0?model_1/multi_head_attention_6/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model_1/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_1_multi_head_attention_6_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model_1/multi_head_attention_6/key/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Gmodel_1/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model_1/multi_head_attention_6/key/add/ReadVariableOpReadVariableOp>model_1_multi_head_attention_6_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model_1/multi_head_attention_6/key/addAddV29model_1/multi_head_attention_6/key/einsum/Einsum:output:0=model_1/multi_head_attention_6/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Amodel_1/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpReadVariableOpJmodel_1_multi_head_attention_6_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
2model_1/multi_head_attention_6/value/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Imodel_1/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
7model_1/multi_head_attention_6/value/add/ReadVariableOpReadVariableOp@model_1_multi_head_attention_6_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(model_1/multi_head_attention_6/value/addAddV2;model_1/multi_head_attention_6/value/einsum/Einsum:output:0?model_1/multi_head_attention_6/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:i
$model_1/multi_head_attention_6/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
"model_1/multi_head_attention_6/MulMul,model_1/multi_head_attention_6/query/add:z:0-model_1/multi_head_attention_6/Mul/y:output:0*
T0*&
_output_shapes
:�
,model_1/multi_head_attention_6/einsum/EinsumEinsum*model_1/multi_head_attention_6/key/add:z:0&model_1/multi_head_attention_6/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
.model_1/multi_head_attention_6/softmax/SoftmaxSoftmax5model_1/multi_head_attention_6/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
/model_1/multi_head_attention_6/dropout/IdentityIdentity8model_1/multi_head_attention_6/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
.model_1/multi_head_attention_6/einsum_1/EinsumEinsum8model_1/multi_head_attention_6/dropout/Identity:output:0,model_1/multi_head_attention_6/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Lmodel_1/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpUmodel_1_multi_head_attention_6_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
=model_1/multi_head_attention_6/attention_output/einsum/EinsumEinsum7model_1/multi_head_attention_6/einsum_1/Einsum:output:0Tmodel_1/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Bmodel_1/multi_head_attention_6/attention_output/add/ReadVariableOpReadVariableOpKmodel_1_multi_head_attention_6_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
3model_1/multi_head_attention_6/attention_output/addAddV2Fmodel_1/multi_head_attention_6/attention_output/einsum/Einsum:output:0Jmodel_1/multi_head_attention_6/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_12/AddV2AddV2)model_1/tf.__operators__.add_11/AddV2:z:07model_1/multi_head_attention_6/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_10/moments/meanMean)model_1/tf.__operators__.add_12/AddV2:z:0Fmodel_1/layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_10/moments/StopGradientStopGradient4model_1/layer_normalization_10/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_10/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_12/AddV2:z:0<model_1/layer_normalization_10/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_10/moments/varianceMean<model_1/layer_normalization_10/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_10/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_10/batchnorm/addAddV28model_1/layer_normalization_10/moments/variance:output:07model_1/layer_normalization_10/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_10/batchnorm/RsqrtRsqrt0model_1/layer_normalization_10/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_10/batchnorm/mulMul2model_1/layer_normalization_10/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_10/batchnorm/mul_1Mul)model_1/tf.__operators__.add_12/AddV2:z:00model_1/layer_normalization_10/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_10/batchnorm/mul_2Mul4model_1/layer_normalization_10/moments/mean:output:00model_1/layer_normalization_10/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_10/batchnorm/subSub?model_1/layer_normalization_10/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_10/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_10/batchnorm/add_1AddV22model_1/layer_normalization_10/batchnorm/mul_1:z:00model_1/layer_normalization_10/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
(model_1/dense_6/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0x
'model_1/dense_6/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
!model_1/dense_6/Tensordot/ReshapeReshape2model_1/layer_normalization_10/batchnorm/add_1:z:00model_1/dense_6/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
 model_1/dense_6/Tensordot/MatMulMatMul*model_1/dense_6/Tensordot/Reshape:output:00model_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�t
model_1/dense_6/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_1/dense_6/TensordotReshape*model_1/dense_6/Tensordot/MatMul:product:0(model_1/dense_6/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_6/BiasAddBiasAdd"model_1/dense_6/Tensordot:output:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:k
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*"
_output_shapes
:w
model_1/dropout_6/IdentityIdentity"model_1/dense_6/Relu:activations:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_13/AddV2AddV22model_1/layer_normalization_10/batchnorm/add_1:z:0#model_1/dropout_6/Identity:output:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_11/moments/meanMean)model_1/tf.__operators__.add_13/AddV2:z:0Fmodel_1/layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_11/moments/StopGradientStopGradient4model_1/layer_normalization_11/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_11/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_13/AddV2:z:0<model_1/layer_normalization_11/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_11/moments/varianceMean<model_1/layer_normalization_11/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_11/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_11/batchnorm/addAddV28model_1/layer_normalization_11/moments/variance:output:07model_1/layer_normalization_11/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_11/batchnorm/RsqrtRsqrt0model_1/layer_normalization_11/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_11/batchnorm/mulMul2model_1/layer_normalization_11/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_11/batchnorm/mul_1Mul)model_1/tf.__operators__.add_13/AddV2:z:00model_1/layer_normalization_11/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_11/batchnorm/mul_2Mul4model_1/layer_normalization_11/moments/mean:output:00model_1/layer_normalization_11/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_11/batchnorm/subSub?model_1/layer_normalization_11/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_11/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_11/batchnorm/add_1AddV22model_1/layer_normalization_11/batchnorm/mul_1:z:00model_1/layer_normalization_11/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Amodel_1/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpReadVariableOpJmodel_1_multi_head_attention_7_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
2model_1/multi_head_attention_7/query/einsum/EinsumEinsum2model_1/layer_normalization_11/batchnorm/add_1:z:0Imodel_1/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
7model_1/multi_head_attention_7/query/add/ReadVariableOpReadVariableOp@model_1_multi_head_attention_7_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(model_1/multi_head_attention_7/query/addAddV2;model_1/multi_head_attention_7/query/einsum/Einsum:output:0?model_1/multi_head_attention_7/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model_1/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_1_multi_head_attention_7_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model_1/multi_head_attention_7/key/einsum/EinsumEinsum2model_1/layer_normalization_11/batchnorm/add_1:z:0Gmodel_1/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model_1/multi_head_attention_7/key/add/ReadVariableOpReadVariableOp>model_1_multi_head_attention_7_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model_1/multi_head_attention_7/key/addAddV29model_1/multi_head_attention_7/key/einsum/Einsum:output:0=model_1/multi_head_attention_7/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Amodel_1/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpReadVariableOpJmodel_1_multi_head_attention_7_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
2model_1/multi_head_attention_7/value/einsum/EinsumEinsum2model_1/layer_normalization_11/batchnorm/add_1:z:0Imodel_1/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
7model_1/multi_head_attention_7/value/add/ReadVariableOpReadVariableOp@model_1_multi_head_attention_7_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(model_1/multi_head_attention_7/value/addAddV2;model_1/multi_head_attention_7/value/einsum/Einsum:output:0?model_1/multi_head_attention_7/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:i
$model_1/multi_head_attention_7/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
"model_1/multi_head_attention_7/MulMul,model_1/multi_head_attention_7/query/add:z:0-model_1/multi_head_attention_7/Mul/y:output:0*
T0*&
_output_shapes
:�
,model_1/multi_head_attention_7/einsum/EinsumEinsum*model_1/multi_head_attention_7/key/add:z:0&model_1/multi_head_attention_7/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
0model_1/multi_head_attention_7/softmax_1/SoftmaxSoftmax5model_1/multi_head_attention_7/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
1model_1/multi_head_attention_7/dropout_1/IdentityIdentity:model_1/multi_head_attention_7/softmax_1/Softmax:softmax:0*
T0*&
_output_shapes
:�
.model_1/multi_head_attention_7/einsum_1/EinsumEinsum:model_1/multi_head_attention_7/dropout_1/Identity:output:0,model_1/multi_head_attention_7/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Lmodel_1/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpUmodel_1_multi_head_attention_7_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
=model_1/multi_head_attention_7/attention_output/einsum/EinsumEinsum7model_1/multi_head_attention_7/einsum_1/Einsum:output:0Tmodel_1/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Bmodel_1/multi_head_attention_7/attention_output/add/ReadVariableOpReadVariableOpKmodel_1_multi_head_attention_7_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
3model_1/multi_head_attention_7/attention_output/addAddV2Fmodel_1/multi_head_attention_7/attention_output/einsum/Einsum:output:0Jmodel_1/multi_head_attention_7/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_14/AddV2AddV22model_1/layer_normalization_11/batchnorm/add_1:z:07model_1/multi_head_attention_7/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_12/moments/meanMean)model_1/tf.__operators__.add_14/AddV2:z:0Fmodel_1/layer_normalization_12/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_12/moments/StopGradientStopGradient4model_1/layer_normalization_12/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_12/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_14/AddV2:z:0<model_1/layer_normalization_12/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_12/moments/varianceMean<model_1/layer_normalization_12/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_12/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_12/batchnorm/addAddV28model_1/layer_normalization_12/moments/variance:output:07model_1/layer_normalization_12/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_12/batchnorm/RsqrtRsqrt0model_1/layer_normalization_12/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_12/batchnorm/mulMul2model_1/layer_normalization_12/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_12/batchnorm/mul_1Mul)model_1/tf.__operators__.add_14/AddV2:z:00model_1/layer_normalization_12/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_12/batchnorm/mul_2Mul4model_1/layer_normalization_12/moments/mean:output:00model_1/layer_normalization_12/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_12/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_12/batchnorm/subSub?model_1/layer_normalization_12/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_12/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_12/batchnorm/add_1AddV22model_1/layer_normalization_12/batchnorm/mul_1:z:00model_1/layer_normalization_12/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
(model_1/dense_7/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0x
'model_1/dense_7/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
!model_1/dense_7/Tensordot/ReshapeReshape2model_1/layer_normalization_12/batchnorm/add_1:z:00model_1/dense_7/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
 model_1/dense_7/Tensordot/MatMulMatMul*model_1/dense_7/Tensordot/Reshape:output:00model_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�t
model_1/dense_7/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_1/dense_7/TensordotReshape*model_1/dense_7/Tensordot/MatMul:product:0(model_1/dense_7/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_7/BiasAddBiasAdd"model_1/dense_7/Tensordot:output:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:k
model_1/dense_7/ReluRelu model_1/dense_7/BiasAdd:output:0*
T0*"
_output_shapes
:w
model_1/dropout_7/IdentityIdentity"model_1/dense_7/Relu:activations:0*
T0*"
_output_shapes
:�
Amodel_1/multi_head_attention_8/query/einsum/Einsum/ReadVariableOpReadVariableOpJmodel_1_multi_head_attention_8_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
2model_1/multi_head_attention_8/query/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Imodel_1/multi_head_attention_8/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
7model_1/multi_head_attention_8/query/add/ReadVariableOpReadVariableOp@model_1_multi_head_attention_8_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(model_1/multi_head_attention_8/query/addAddV2;model_1/multi_head_attention_8/query/einsum/Einsum:output:0?model_1/multi_head_attention_8/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model_1/multi_head_attention_8/key/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_1_multi_head_attention_8_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model_1/multi_head_attention_8/key/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Gmodel_1/multi_head_attention_8/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model_1/multi_head_attention_8/key/add/ReadVariableOpReadVariableOp>model_1_multi_head_attention_8_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model_1/multi_head_attention_8/key/addAddV29model_1/multi_head_attention_8/key/einsum/Einsum:output:0=model_1/multi_head_attention_8/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Amodel_1/multi_head_attention_8/value/einsum/Einsum/ReadVariableOpReadVariableOpJmodel_1_multi_head_attention_8_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
2model_1/multi_head_attention_8/value/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Imodel_1/multi_head_attention_8/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
7model_1/multi_head_attention_8/value/add/ReadVariableOpReadVariableOp@model_1_multi_head_attention_8_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(model_1/multi_head_attention_8/value/addAddV2;model_1/multi_head_attention_8/value/einsum/Einsum:output:0?model_1/multi_head_attention_8/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:i
$model_1/multi_head_attention_8/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
"model_1/multi_head_attention_8/MulMul,model_1/multi_head_attention_8/query/add:z:0-model_1/multi_head_attention_8/Mul/y:output:0*
T0*&
_output_shapes
:�
,model_1/multi_head_attention_8/einsum/EinsumEinsum*model_1/multi_head_attention_8/key/add:z:0&model_1/multi_head_attention_8/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
0model_1/multi_head_attention_8/softmax_2/SoftmaxSoftmax5model_1/multi_head_attention_8/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
1model_1/multi_head_attention_8/dropout_2/IdentityIdentity:model_1/multi_head_attention_8/softmax_2/Softmax:softmax:0*
T0*&
_output_shapes
:�
.model_1/multi_head_attention_8/einsum_1/EinsumEinsum:model_1/multi_head_attention_8/dropout_2/Identity:output:0,model_1/multi_head_attention_8/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Lmodel_1/multi_head_attention_8/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpUmodel_1_multi_head_attention_8_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
=model_1/multi_head_attention_8/attention_output/einsum/EinsumEinsum7model_1/multi_head_attention_8/einsum_1/Einsum:output:0Tmodel_1/multi_head_attention_8/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Bmodel_1/multi_head_attention_8/attention_output/add/ReadVariableOpReadVariableOpKmodel_1_multi_head_attention_8_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
3model_1/multi_head_attention_8/attention_output/addAddV2Fmodel_1/multi_head_attention_8/attention_output/einsum/Einsum:output:0Jmodel_1/multi_head_attention_8/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_15/AddV2AddV22model_1/layer_normalization_12/batchnorm/add_1:z:0#model_1/dropout_7/Identity:output:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_16/AddV2AddV2)model_1/tf.__operators__.add_11/AddV2:z:07model_1/multi_head_attention_8/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_14/moments/meanMean)model_1/tf.__operators__.add_16/AddV2:z:0Fmodel_1/layer_normalization_14/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_14/moments/StopGradientStopGradient4model_1/layer_normalization_14/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_14/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_16/AddV2:z:0<model_1/layer_normalization_14/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_14/moments/varianceMean<model_1/layer_normalization_14/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_14/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_14/batchnorm/addAddV28model_1/layer_normalization_14/moments/variance:output:07model_1/layer_normalization_14/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_14/batchnorm/RsqrtRsqrt0model_1/layer_normalization_14/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_14/batchnorm/mulMul2model_1/layer_normalization_14/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_14/batchnorm/mul_1Mul)model_1/tf.__operators__.add_16/AddV2:z:00model_1/layer_normalization_14/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_14/batchnorm/mul_2Mul4model_1/layer_normalization_14/moments/mean:output:00model_1/layer_normalization_14/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_14/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_14/batchnorm/subSub?model_1/layer_normalization_14/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_14/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_14/batchnorm/add_1AddV22model_1/layer_normalization_14/batchnorm/mul_1:z:00model_1/layer_normalization_14/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_13/moments/meanMean)model_1/tf.__operators__.add_15/AddV2:z:0Fmodel_1/layer_normalization_13/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_13/moments/StopGradientStopGradient4model_1/layer_normalization_13/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_13/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_15/AddV2:z:0<model_1/layer_normalization_13/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_13/moments/varianceMean<model_1/layer_normalization_13/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_13/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_13/batchnorm/addAddV28model_1/layer_normalization_13/moments/variance:output:07model_1/layer_normalization_13/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_13/batchnorm/RsqrtRsqrt0model_1/layer_normalization_13/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_13/batchnorm/mulMul2model_1/layer_normalization_13/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_13/batchnorm/mul_1Mul)model_1/tf.__operators__.add_15/AddV2:z:00model_1/layer_normalization_13/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_13/batchnorm/mul_2Mul4model_1/layer_normalization_13/moments/mean:output:00model_1/layer_normalization_13/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_13/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_13/batchnorm/subSub?model_1/layer_normalization_13/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_13/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_13/batchnorm/add_1AddV22model_1/layer_normalization_13/batchnorm/mul_1:z:00model_1/layer_normalization_13/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Amodel_1/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpReadVariableOpJmodel_1_multi_head_attention_9_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
2model_1/multi_head_attention_9/query/einsum/EinsumEinsum2model_1/layer_normalization_14/batchnorm/add_1:z:0Imodel_1/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
7model_1/multi_head_attention_9/query/add/ReadVariableOpReadVariableOp@model_1_multi_head_attention_9_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(model_1/multi_head_attention_9/query/addAddV2;model_1/multi_head_attention_9/query/einsum/Einsum:output:0?model_1/multi_head_attention_9/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model_1/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_1_multi_head_attention_9_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model_1/multi_head_attention_9/key/einsum/EinsumEinsum2model_1/layer_normalization_13/batchnorm/add_1:z:0Gmodel_1/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model_1/multi_head_attention_9/key/add/ReadVariableOpReadVariableOp>model_1_multi_head_attention_9_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model_1/multi_head_attention_9/key/addAddV29model_1/multi_head_attention_9/key/einsum/Einsum:output:0=model_1/multi_head_attention_9/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Amodel_1/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpReadVariableOpJmodel_1_multi_head_attention_9_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
2model_1/multi_head_attention_9/value/einsum/EinsumEinsum2model_1/layer_normalization_13/batchnorm/add_1:z:0Imodel_1/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
7model_1/multi_head_attention_9/value/add/ReadVariableOpReadVariableOp@model_1_multi_head_attention_9_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(model_1/multi_head_attention_9/value/addAddV2;model_1/multi_head_attention_9/value/einsum/Einsum:output:0?model_1/multi_head_attention_9/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:i
$model_1/multi_head_attention_9/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
"model_1/multi_head_attention_9/MulMul,model_1/multi_head_attention_9/query/add:z:0-model_1/multi_head_attention_9/Mul/y:output:0*
T0*&
_output_shapes
:�
,model_1/multi_head_attention_9/einsum/EinsumEinsum*model_1/multi_head_attention_9/key/add:z:0&model_1/multi_head_attention_9/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
0model_1/multi_head_attention_9/softmax_3/SoftmaxSoftmax5model_1/multi_head_attention_9/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
1model_1/multi_head_attention_9/dropout_3/IdentityIdentity:model_1/multi_head_attention_9/softmax_3/Softmax:softmax:0*
T0*&
_output_shapes
:�
.model_1/multi_head_attention_9/einsum_1/EinsumEinsum:model_1/multi_head_attention_9/dropout_3/Identity:output:0,model_1/multi_head_attention_9/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Lmodel_1/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpUmodel_1_multi_head_attention_9_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
=model_1/multi_head_attention_9/attention_output/einsum/EinsumEinsum7model_1/multi_head_attention_9/einsum_1/Einsum:output:0Tmodel_1/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Bmodel_1/multi_head_attention_9/attention_output/add/ReadVariableOpReadVariableOpKmodel_1_multi_head_attention_9_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
3model_1/multi_head_attention_9/attention_output/addAddV2Fmodel_1/multi_head_attention_9/attention_output/einsum/Einsum:output:0Jmodel_1/multi_head_attention_9/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
model_1/dropout_8/IdentityIdentity7model_1/multi_head_attention_9/attention_output/add:z:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_17/AddV2AddV22model_1/layer_normalization_14/batchnorm/add_1:z:0#model_1/dropout_8/Identity:output:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_15/moments/meanMean)model_1/tf.__operators__.add_17/AddV2:z:0Fmodel_1/layer_normalization_15/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_15/moments/StopGradientStopGradient4model_1/layer_normalization_15/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_15/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_17/AddV2:z:0<model_1/layer_normalization_15/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_15/moments/varianceMean<model_1/layer_normalization_15/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_15/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_15/batchnorm/addAddV28model_1/layer_normalization_15/moments/variance:output:07model_1/layer_normalization_15/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_15/batchnorm/RsqrtRsqrt0model_1/layer_normalization_15/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_15/batchnorm/mulMul2model_1/layer_normalization_15/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_15/batchnorm/mul_1Mul)model_1/tf.__operators__.add_17/AddV2:z:00model_1/layer_normalization_15/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_15/batchnorm/mul_2Mul4model_1/layer_normalization_15/moments/mean:output:00model_1/layer_normalization_15/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_15/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_15_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_15/batchnorm/subSub?model_1/layer_normalization_15/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_15/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_15/batchnorm/add_1AddV22model_1/layer_normalization_15/batchnorm/mul_1:z:00model_1/layer_normalization_15/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
(model_1/dense_8/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_8_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0x
'model_1/dense_8/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
!model_1/dense_8/Tensordot/ReshapeReshape2model_1/layer_normalization_15/batchnorm/add_1:z:00model_1/dense_8/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
 model_1/dense_8/Tensordot/MatMulMatMul*model_1/dense_8/Tensordot/Reshape:output:00model_1/dense_8/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�t
model_1/dense_8/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_1/dense_8/TensordotReshape*model_1/dense_8/Tensordot/MatMul:product:0(model_1/dense_8/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
&model_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_8/BiasAddBiasAdd"model_1/dense_8/Tensordot:output:0.model_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:k
model_1/dense_8/ReluRelu model_1/dense_8/BiasAdd:output:0*
T0*"
_output_shapes
:w
model_1/dropout_9/IdentityIdentity"model_1/dense_8/Relu:activations:0*
T0*"
_output_shapes
:�
Bmodel_1/multi_head_attention_10/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_1_multi_head_attention_10_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_1/multi_head_attention_10/query/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Jmodel_1/multi_head_attention_10/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_1/multi_head_attention_10/query/add/ReadVariableOpReadVariableOpAmodel_1_multi_head_attention_10_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_1/multi_head_attention_10/query/addAddV2<model_1/multi_head_attention_10/query/einsum/Einsum:output:0@model_1/multi_head_attention_10/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_1/multi_head_attention_10/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_1_multi_head_attention_10_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_1/multi_head_attention_10/key/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Hmodel_1/multi_head_attention_10/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_1/multi_head_attention_10/key/add/ReadVariableOpReadVariableOp?model_1_multi_head_attention_10_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_1/multi_head_attention_10/key/addAddV2:model_1/multi_head_attention_10/key/einsum/Einsum:output:0>model_1/multi_head_attention_10/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_1/multi_head_attention_10/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_1_multi_head_attention_10_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_1/multi_head_attention_10/value/einsum/EinsumEinsum)model_1/tf.__operators__.add_11/AddV2:z:0Jmodel_1/multi_head_attention_10/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_1/multi_head_attention_10/value/add/ReadVariableOpReadVariableOpAmodel_1_multi_head_attention_10_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_1/multi_head_attention_10/value/addAddV2<model_1/multi_head_attention_10/value/einsum/Einsum:output:0@model_1/multi_head_attention_10/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_1/multi_head_attention_10/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_1/multi_head_attention_10/MulMul-model_1/multi_head_attention_10/query/add:z:0.model_1/multi_head_attention_10/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_1/multi_head_attention_10/einsum/EinsumEinsum+model_1/multi_head_attention_10/key/add:z:0'model_1/multi_head_attention_10/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
1model_1/multi_head_attention_10/softmax_4/SoftmaxSoftmax6model_1/multi_head_attention_10/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
2model_1/multi_head_attention_10/dropout_4/IdentityIdentity;model_1/multi_head_attention_10/softmax_4/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_1/multi_head_attention_10/einsum_1/EinsumEinsum;model_1/multi_head_attention_10/dropout_4/Identity:output:0-model_1/multi_head_attention_10/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_1/multi_head_attention_10/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_1_multi_head_attention_10_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_1/multi_head_attention_10/attention_output/einsum/EinsumEinsum8model_1/multi_head_attention_10/einsum_1/Einsum:output:0Umodel_1/multi_head_attention_10/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_1/multi_head_attention_10/attention_output/add/ReadVariableOpReadVariableOpLmodel_1_multi_head_attention_10_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_1/multi_head_attention_10/attention_output/addAddV2Gmodel_1/multi_head_attention_10/attention_output/einsum/Einsum:output:0Kmodel_1/multi_head_attention_10/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_18/AddV2AddV22model_1/layer_normalization_15/batchnorm/add_1:z:0#model_1/dropout_9/Identity:output:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_19/AddV2AddV2)model_1/tf.__operators__.add_11/AddV2:z:08model_1/multi_head_attention_10/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_17/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_17/moments/meanMean)model_1/tf.__operators__.add_19/AddV2:z:0Fmodel_1/layer_normalization_17/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_17/moments/StopGradientStopGradient4model_1/layer_normalization_17/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_17/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_19/AddV2:z:0<model_1/layer_normalization_17/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_17/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_17/moments/varianceMean<model_1/layer_normalization_17/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_17/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_17/batchnorm/addAddV28model_1/layer_normalization_17/moments/variance:output:07model_1/layer_normalization_17/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_17/batchnorm/RsqrtRsqrt0model_1/layer_normalization_17/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_17/batchnorm/mulMul2model_1/layer_normalization_17/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_17/batchnorm/mul_1Mul)model_1/tf.__operators__.add_19/AddV2:z:00model_1/layer_normalization_17/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_17/batchnorm/mul_2Mul4model_1/layer_normalization_17/moments/mean:output:00model_1/layer_normalization_17/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_17/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_17_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_17/batchnorm/subSub?model_1/layer_normalization_17/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_17/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_17/batchnorm/add_1AddV22model_1/layer_normalization_17/batchnorm/mul_1:z:00model_1/layer_normalization_17/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_16/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_16/moments/meanMean)model_1/tf.__operators__.add_18/AddV2:z:0Fmodel_1/layer_normalization_16/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_16/moments/StopGradientStopGradient4model_1/layer_normalization_16/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_16/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_18/AddV2:z:0<model_1/layer_normalization_16/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_16/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_16/moments/varianceMean<model_1/layer_normalization_16/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_16/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_16/batchnorm/addAddV28model_1/layer_normalization_16/moments/variance:output:07model_1/layer_normalization_16/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_16/batchnorm/RsqrtRsqrt0model_1/layer_normalization_16/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_16/batchnorm/mulMul2model_1/layer_normalization_16/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_16/batchnorm/mul_1Mul)model_1/tf.__operators__.add_18/AddV2:z:00model_1/layer_normalization_16/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_16/batchnorm/mul_2Mul4model_1/layer_normalization_16/moments/mean:output:00model_1/layer_normalization_16/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_16/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_16_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_16/batchnorm/subSub?model_1/layer_normalization_16/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_16/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_16/batchnorm/add_1AddV22model_1/layer_normalization_16/batchnorm/mul_1:z:00model_1/layer_normalization_16/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Bmodel_1/multi_head_attention_11/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_1_multi_head_attention_11_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_1/multi_head_attention_11/query/einsum/EinsumEinsum2model_1/layer_normalization_17/batchnorm/add_1:z:0Jmodel_1/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_1/multi_head_attention_11/query/add/ReadVariableOpReadVariableOpAmodel_1_multi_head_attention_11_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_1/multi_head_attention_11/query/addAddV2<model_1/multi_head_attention_11/query/einsum/Einsum:output:0@model_1/multi_head_attention_11/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_1/multi_head_attention_11/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_1_multi_head_attention_11_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_1/multi_head_attention_11/key/einsum/EinsumEinsum2model_1/layer_normalization_16/batchnorm/add_1:z:0Hmodel_1/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_1/multi_head_attention_11/key/add/ReadVariableOpReadVariableOp?model_1_multi_head_attention_11_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_1/multi_head_attention_11/key/addAddV2:model_1/multi_head_attention_11/key/einsum/Einsum:output:0>model_1/multi_head_attention_11/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_1/multi_head_attention_11/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_1_multi_head_attention_11_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_1/multi_head_attention_11/value/einsum/EinsumEinsum2model_1/layer_normalization_16/batchnorm/add_1:z:0Jmodel_1/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_1/multi_head_attention_11/value/add/ReadVariableOpReadVariableOpAmodel_1_multi_head_attention_11_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_1/multi_head_attention_11/value/addAddV2<model_1/multi_head_attention_11/value/einsum/Einsum:output:0@model_1/multi_head_attention_11/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_1/multi_head_attention_11/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_1/multi_head_attention_11/MulMul-model_1/multi_head_attention_11/query/add:z:0.model_1/multi_head_attention_11/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_1/multi_head_attention_11/einsum/EinsumEinsum+model_1/multi_head_attention_11/key/add:z:0'model_1/multi_head_attention_11/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
1model_1/multi_head_attention_11/softmax_5/SoftmaxSoftmax6model_1/multi_head_attention_11/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
2model_1/multi_head_attention_11/dropout_5/IdentityIdentity;model_1/multi_head_attention_11/softmax_5/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_1/multi_head_attention_11/einsum_1/EinsumEinsum;model_1/multi_head_attention_11/dropout_5/Identity:output:0-model_1/multi_head_attention_11/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_1/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_1_multi_head_attention_11_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_1/multi_head_attention_11/attention_output/einsum/EinsumEinsum8model_1/multi_head_attention_11/einsum_1/Einsum:output:0Umodel_1/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_1/multi_head_attention_11/attention_output/add/ReadVariableOpReadVariableOpLmodel_1_multi_head_attention_11_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_1/multi_head_attention_11/attention_output/addAddV2Gmodel_1/multi_head_attention_11/attention_output/einsum/Einsum:output:0Kmodel_1/multi_head_attention_11/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
model_1/dropout_10/IdentityIdentity8model_1/multi_head_attention_11/attention_output/add:z:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_20/AddV2AddV22model_1/layer_normalization_17/batchnorm/add_1:z:0$model_1/dropout_10/Identity:output:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_18/moments/meanMean)model_1/tf.__operators__.add_20/AddV2:z:0Fmodel_1/layer_normalization_18/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_18/moments/StopGradientStopGradient4model_1/layer_normalization_18/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_18/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_20/AddV2:z:0<model_1/layer_normalization_18/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_18/moments/varianceMean<model_1/layer_normalization_18/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_18/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_18/batchnorm/addAddV28model_1/layer_normalization_18/moments/variance:output:07model_1/layer_normalization_18/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_18/batchnorm/RsqrtRsqrt0model_1/layer_normalization_18/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_18/batchnorm/mulMul2model_1/layer_normalization_18/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_18/batchnorm/mul_1Mul)model_1/tf.__operators__.add_20/AddV2:z:00model_1/layer_normalization_18/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_18/batchnorm/mul_2Mul4model_1/layer_normalization_18/moments/mean:output:00model_1/layer_normalization_18/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_18/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_18_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_18/batchnorm/subSub?model_1/layer_normalization_18/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_18/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_18/batchnorm/add_1AddV22model_1/layer_normalization_18/batchnorm/mul_1:z:00model_1/layer_normalization_18/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
(model_1/dense_9/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_9_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0x
'model_1/dense_9/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
!model_1/dense_9/Tensordot/ReshapeReshape2model_1/layer_normalization_18/batchnorm/add_1:z:00model_1/dense_9/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
 model_1/dense_9/Tensordot/MatMulMatMul*model_1/dense_9/Tensordot/Reshape:output:00model_1/dense_9/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�t
model_1/dense_9/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_1/dense_9/TensordotReshape*model_1/dense_9/Tensordot/MatMul:product:0(model_1/dense_9/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
&model_1/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_9/BiasAddBiasAdd"model_1/dense_9/Tensordot:output:0.model_1/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:k
model_1/dense_9/ReluRelu model_1/dense_9/BiasAdd:output:0*
T0*"
_output_shapes
:x
model_1/dropout_11/IdentityIdentity"model_1/dense_9/Relu:activations:0*
T0*"
_output_shapes
:�
%model_1/tf.__operators__.add_21/AddV2AddV22model_1/layer_normalization_18/batchnorm/add_1:z:0$model_1/dropout_11/Identity:output:0*
T0*"
_output_shapes
:�
=model_1/layer_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_1/layer_normalization_19/moments/meanMean)model_1/tf.__operators__.add_21/AddV2:z:0Fmodel_1/layer_normalization_19/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_1/layer_normalization_19/moments/StopGradientStopGradient4model_1/layer_normalization_19/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_1/layer_normalization_19/moments/SquaredDifferenceSquaredDifference)model_1/tf.__operators__.add_21/AddV2:z:0<model_1/layer_normalization_19/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_1/layer_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_1/layer_normalization_19/moments/varianceMean<model_1/layer_normalization_19/moments/SquaredDifference:z:0Jmodel_1/layer_normalization_19/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_1/layer_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_1/layer_normalization_19/batchnorm/addAddV28model_1/layer_normalization_19/moments/variance:output:07model_1/layer_normalization_19/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_19/batchnorm/RsqrtRsqrt0model_1/layer_normalization_19/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_1/layer_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_1_layer_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_19/batchnorm/mulMul2model_1/layer_normalization_19/batchnorm/Rsqrt:y:0Cmodel_1/layer_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_19/batchnorm/mul_1Mul)model_1/tf.__operators__.add_21/AddV2:z:00model_1/layer_normalization_19/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_19/batchnorm/mul_2Mul4model_1/layer_normalization_19/moments/mean:output:00model_1/layer_normalization_19/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_1/layer_normalization_19/batchnorm/ReadVariableOpReadVariableOp@model_1_layer_normalization_19_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/layer_normalization_19/batchnorm/subSub?model_1/layer_normalization_19/batchnorm/ReadVariableOp:value:02model_1/layer_normalization_19/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_1/layer_normalization_19/batchnorm/add_1AddV22model_1/layer_normalization_19/batchnorm/mul_1:z:00model_1/layer_normalization_19/batchnorm/sub:z:0*
T0*"
_output_shapes
:{
9model_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_1/global_average_pooling1d_1/MeanMean2model_1/layer_normalization_19/batchnorm/add_1:z:0Bmodel_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*
_output_shapes

:�
&model_1/dense_10/MatMul/ReadVariableOpReadVariableOp/model_1_dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_1/dense_10/MatMulMatMul0model_1/global_average_pooling1d_1/Mean:output:0.model_1/dense_10/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
'model_1/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/dense_10/BiasAddBiasAdd!model_1/dense_10/MatMul:product:0/model_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: �
&model_1/dense_11/MatMul/ReadVariableOpReadVariableOp/model_1_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_1/dense_11/MatMulMatMul!model_1/dense_10/BiasAdd:output:0.model_1/dense_11/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
'model_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_11/BiasAddBiasAdd!model_1/dense_11/MatMul:product:0/model_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:g
IdentityIdentity!model_1/dense_11/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:�&
NoOpNoOp(^model_1/dense_10/BiasAdd/ReadVariableOp'^model_1/dense_10/MatMul/ReadVariableOp(^model_1/dense_11/BiasAdd/ReadVariableOp'^model_1/dense_11/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp)^model_1/dense_6/Tensordot/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp)^model_1/dense_7/Tensordot/ReadVariableOp'^model_1/dense_8/BiasAdd/ReadVariableOp)^model_1/dense_8/Tensordot/ReadVariableOp'^model_1/dense_9/BiasAdd/ReadVariableOp)^model_1/dense_9/Tensordot/ReadVariableOp8^model_1/layer_normalization_10/batchnorm/ReadVariableOp<^model_1/layer_normalization_10/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_11/batchnorm/ReadVariableOp<^model_1/layer_normalization_11/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_12/batchnorm/ReadVariableOp<^model_1/layer_normalization_12/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_13/batchnorm/ReadVariableOp<^model_1/layer_normalization_13/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_14/batchnorm/ReadVariableOp<^model_1/layer_normalization_14/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_15/batchnorm/ReadVariableOp<^model_1/layer_normalization_15/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_16/batchnorm/ReadVariableOp<^model_1/layer_normalization_16/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_17/batchnorm/ReadVariableOp<^model_1/layer_normalization_17/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_18/batchnorm/ReadVariableOp<^model_1/layer_normalization_18/batchnorm/mul/ReadVariableOp8^model_1/layer_normalization_19/batchnorm/ReadVariableOp<^model_1/layer_normalization_19/batchnorm/mul/ReadVariableOpD^model_1/multi_head_attention_10/attention_output/add/ReadVariableOpN^model_1/multi_head_attention_10/attention_output/einsum/Einsum/ReadVariableOp7^model_1/multi_head_attention_10/key/add/ReadVariableOpA^model_1/multi_head_attention_10/key/einsum/Einsum/ReadVariableOp9^model_1/multi_head_attention_10/query/add/ReadVariableOpC^model_1/multi_head_attention_10/query/einsum/Einsum/ReadVariableOp9^model_1/multi_head_attention_10/value/add/ReadVariableOpC^model_1/multi_head_attention_10/value/einsum/Einsum/ReadVariableOpD^model_1/multi_head_attention_11/attention_output/add/ReadVariableOpN^model_1/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp7^model_1/multi_head_attention_11/key/add/ReadVariableOpA^model_1/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp9^model_1/multi_head_attention_11/query/add/ReadVariableOpC^model_1/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp9^model_1/multi_head_attention_11/value/add/ReadVariableOpC^model_1/multi_head_attention_11/value/einsum/Einsum/ReadVariableOpC^model_1/multi_head_attention_6/attention_output/add/ReadVariableOpM^model_1/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp6^model_1/multi_head_attention_6/key/add/ReadVariableOp@^model_1/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp8^model_1/multi_head_attention_6/query/add/ReadVariableOpB^model_1/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp8^model_1/multi_head_attention_6/value/add/ReadVariableOpB^model_1/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpC^model_1/multi_head_attention_7/attention_output/add/ReadVariableOpM^model_1/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp6^model_1/multi_head_attention_7/key/add/ReadVariableOp@^model_1/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp8^model_1/multi_head_attention_7/query/add/ReadVariableOpB^model_1/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp8^model_1/multi_head_attention_7/value/add/ReadVariableOpB^model_1/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpC^model_1/multi_head_attention_8/attention_output/add/ReadVariableOpM^model_1/multi_head_attention_8/attention_output/einsum/Einsum/ReadVariableOp6^model_1/multi_head_attention_8/key/add/ReadVariableOp@^model_1/multi_head_attention_8/key/einsum/Einsum/ReadVariableOp8^model_1/multi_head_attention_8/query/add/ReadVariableOpB^model_1/multi_head_attention_8/query/einsum/Einsum/ReadVariableOp8^model_1/multi_head_attention_8/value/add/ReadVariableOpB^model_1/multi_head_attention_8/value/einsum/Einsum/ReadVariableOpC^model_1/multi_head_attention_9/attention_output/add/ReadVariableOpM^model_1/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp6^model_1/multi_head_attention_9/key/add/ReadVariableOp@^model_1/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp8^model_1/multi_head_attention_9/query/add/ReadVariableOpB^model_1/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp8^model_1/multi_head_attention_9/value/add/ReadVariableOpB^model_1/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_1/dense_10/BiasAdd/ReadVariableOp'model_1/dense_10/BiasAdd/ReadVariableOp2P
&model_1/dense_10/MatMul/ReadVariableOp&model_1/dense_10/MatMul/ReadVariableOp2R
'model_1/dense_11/BiasAdd/ReadVariableOp'model_1/dense_11/BiasAdd/ReadVariableOp2P
&model_1/dense_11/MatMul/ReadVariableOp&model_1/dense_11/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2T
(model_1/dense_6/Tensordot/ReadVariableOp(model_1/dense_6/Tensordot/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2T
(model_1/dense_7/Tensordot/ReadVariableOp(model_1/dense_7/Tensordot/ReadVariableOp2P
&model_1/dense_8/BiasAdd/ReadVariableOp&model_1/dense_8/BiasAdd/ReadVariableOp2T
(model_1/dense_8/Tensordot/ReadVariableOp(model_1/dense_8/Tensordot/ReadVariableOp2P
&model_1/dense_9/BiasAdd/ReadVariableOp&model_1/dense_9/BiasAdd/ReadVariableOp2T
(model_1/dense_9/Tensordot/ReadVariableOp(model_1/dense_9/Tensordot/ReadVariableOp2r
7model_1/layer_normalization_10/batchnorm/ReadVariableOp7model_1/layer_normalization_10/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_10/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_10/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_11/batchnorm/ReadVariableOp7model_1/layer_normalization_11/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_11/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_11/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_12/batchnorm/ReadVariableOp7model_1/layer_normalization_12/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_12/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_12/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_13/batchnorm/ReadVariableOp7model_1/layer_normalization_13/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_13/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_13/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_14/batchnorm/ReadVariableOp7model_1/layer_normalization_14/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_14/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_14/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_15/batchnorm/ReadVariableOp7model_1/layer_normalization_15/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_15/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_15/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_16/batchnorm/ReadVariableOp7model_1/layer_normalization_16/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_16/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_16/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_17/batchnorm/ReadVariableOp7model_1/layer_normalization_17/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_17/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_17/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_18/batchnorm/ReadVariableOp7model_1/layer_normalization_18/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_18/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_18/batchnorm/mul/ReadVariableOp2r
7model_1/layer_normalization_19/batchnorm/ReadVariableOp7model_1/layer_normalization_19/batchnorm/ReadVariableOp2z
;model_1/layer_normalization_19/batchnorm/mul/ReadVariableOp;model_1/layer_normalization_19/batchnorm/mul/ReadVariableOp2�
Cmodel_1/multi_head_attention_10/attention_output/add/ReadVariableOpCmodel_1/multi_head_attention_10/attention_output/add/ReadVariableOp2�
Mmodel_1/multi_head_attention_10/attention_output/einsum/Einsum/ReadVariableOpMmodel_1/multi_head_attention_10/attention_output/einsum/Einsum/ReadVariableOp2p
6model_1/multi_head_attention_10/key/add/ReadVariableOp6model_1/multi_head_attention_10/key/add/ReadVariableOp2�
@model_1/multi_head_attention_10/key/einsum/Einsum/ReadVariableOp@model_1/multi_head_attention_10/key/einsum/Einsum/ReadVariableOp2t
8model_1/multi_head_attention_10/query/add/ReadVariableOp8model_1/multi_head_attention_10/query/add/ReadVariableOp2�
Bmodel_1/multi_head_attention_10/query/einsum/Einsum/ReadVariableOpBmodel_1/multi_head_attention_10/query/einsum/Einsum/ReadVariableOp2t
8model_1/multi_head_attention_10/value/add/ReadVariableOp8model_1/multi_head_attention_10/value/add/ReadVariableOp2�
Bmodel_1/multi_head_attention_10/value/einsum/Einsum/ReadVariableOpBmodel_1/multi_head_attention_10/value/einsum/Einsum/ReadVariableOp2�
Cmodel_1/multi_head_attention_11/attention_output/add/ReadVariableOpCmodel_1/multi_head_attention_11/attention_output/add/ReadVariableOp2�
Mmodel_1/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpMmodel_1/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp2p
6model_1/multi_head_attention_11/key/add/ReadVariableOp6model_1/multi_head_attention_11/key/add/ReadVariableOp2�
@model_1/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp@model_1/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp2t
8model_1/multi_head_attention_11/query/add/ReadVariableOp8model_1/multi_head_attention_11/query/add/ReadVariableOp2�
Bmodel_1/multi_head_attention_11/query/einsum/Einsum/ReadVariableOpBmodel_1/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp2t
8model_1/multi_head_attention_11/value/add/ReadVariableOp8model_1/multi_head_attention_11/value/add/ReadVariableOp2�
Bmodel_1/multi_head_attention_11/value/einsum/Einsum/ReadVariableOpBmodel_1/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp2�
Bmodel_1/multi_head_attention_6/attention_output/add/ReadVariableOpBmodel_1/multi_head_attention_6/attention_output/add/ReadVariableOp2�
Lmodel_1/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpLmodel_1/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp2n
5model_1/multi_head_attention_6/key/add/ReadVariableOp5model_1/multi_head_attention_6/key/add/ReadVariableOp2�
?model_1/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp?model_1/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp2r
7model_1/multi_head_attention_6/query/add/ReadVariableOp7model_1/multi_head_attention_6/query/add/ReadVariableOp2�
Amodel_1/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpAmodel_1/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp2r
7model_1/multi_head_attention_6/value/add/ReadVariableOp7model_1/multi_head_attention_6/value/add/ReadVariableOp2�
Amodel_1/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpAmodel_1/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp2�
Bmodel_1/multi_head_attention_7/attention_output/add/ReadVariableOpBmodel_1/multi_head_attention_7/attention_output/add/ReadVariableOp2�
Lmodel_1/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpLmodel_1/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp2n
5model_1/multi_head_attention_7/key/add/ReadVariableOp5model_1/multi_head_attention_7/key/add/ReadVariableOp2�
?model_1/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?model_1/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp2r
7model_1/multi_head_attention_7/query/add/ReadVariableOp7model_1/multi_head_attention_7/query/add/ReadVariableOp2�
Amodel_1/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpAmodel_1/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp2r
7model_1/multi_head_attention_7/value/add/ReadVariableOp7model_1/multi_head_attention_7/value/add/ReadVariableOp2�
Amodel_1/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpAmodel_1/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp2�
Bmodel_1/multi_head_attention_8/attention_output/add/ReadVariableOpBmodel_1/multi_head_attention_8/attention_output/add/ReadVariableOp2�
Lmodel_1/multi_head_attention_8/attention_output/einsum/Einsum/ReadVariableOpLmodel_1/multi_head_attention_8/attention_output/einsum/Einsum/ReadVariableOp2n
5model_1/multi_head_attention_8/key/add/ReadVariableOp5model_1/multi_head_attention_8/key/add/ReadVariableOp2�
?model_1/multi_head_attention_8/key/einsum/Einsum/ReadVariableOp?model_1/multi_head_attention_8/key/einsum/Einsum/ReadVariableOp2r
7model_1/multi_head_attention_8/query/add/ReadVariableOp7model_1/multi_head_attention_8/query/add/ReadVariableOp2�
Amodel_1/multi_head_attention_8/query/einsum/Einsum/ReadVariableOpAmodel_1/multi_head_attention_8/query/einsum/Einsum/ReadVariableOp2r
7model_1/multi_head_attention_8/value/add/ReadVariableOp7model_1/multi_head_attention_8/value/add/ReadVariableOp2�
Amodel_1/multi_head_attention_8/value/einsum/Einsum/ReadVariableOpAmodel_1/multi_head_attention_8/value/einsum/Einsum/ReadVariableOp2�
Bmodel_1/multi_head_attention_9/attention_output/add/ReadVariableOpBmodel_1/multi_head_attention_9/attention_output/add/ReadVariableOp2�
Lmodel_1/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpLmodel_1/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp2n
5model_1/multi_head_attention_9/key/add/ReadVariableOp5model_1/multi_head_attention_9/key/add/ReadVariableOp2�
?model_1/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp?model_1/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp2r
7model_1/multi_head_attention_9/query/add/ReadVariableOp7model_1/multi_head_attention_9/query/add/ReadVariableOp2�
Amodel_1/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpAmodel_1/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp2r
7model_1/multi_head_attention_9/value/add/ReadVariableOp7model_1/multi_head_attention_9/value/add/ReadVariableOp2�
Amodel_1/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpAmodel_1/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp:K G
"
_output_shapes
:
!
_user_specified_name	input_2:($
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
�+
�
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1953642	
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1953768	
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

e
F__inference_dropout_9_layer_call_and_return_conditional_losses_1953732

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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_1955582

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
,__inference_dropout_11_layer_call_fn_1956641

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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1954453[
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
G
+__inference_dropout_8_layer_call_fn_1956160

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
GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1954297[
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1953280	
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
8__inference_layer_normalization_15_layer_call_fn_1956186

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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_1953695j
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
_user_specified_name	1956180:'#
!
_user_specified_name	1956182
�+
�
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1953421	
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
�<
�
)__inference_model_1_layer_call_fn_1954638
input_2
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
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_1_layer_call_and_return_conditional_losses_1954028f
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
_user_specified_name	input_2:'#
!
_user_specified_name	1954476:'#
!
_user_specified_name	1954478:'#
!
_user_specified_name	1954480:'#
!
_user_specified_name	1954482:'#
!
_user_specified_name	1954484:'#
!
_user_specified_name	1954486:'#
!
_user_specified_name	1954488:'#
!
_user_specified_name	1954490:'	#
!
_user_specified_name	1954492:'
#
!
_user_specified_name	1954494:'#
!
_user_specified_name	1954496:'#
!
_user_specified_name	1954498:'#
!
_user_specified_name	1954500:'#
!
_user_specified_name	1954502:'#
!
_user_specified_name	1954504:'#
!
_user_specified_name	1954506:'#
!
_user_specified_name	1954508:'#
!
_user_specified_name	1954510:'#
!
_user_specified_name	1954512:'#
!
_user_specified_name	1954514:'#
!
_user_specified_name	1954516:'#
!
_user_specified_name	1954518:'#
!
_user_specified_name	1954520:'#
!
_user_specified_name	1954522:'#
!
_user_specified_name	1954524:'#
!
_user_specified_name	1954526:'#
!
_user_specified_name	1954528:'#
!
_user_specified_name	1954530:'#
!
_user_specified_name	1954532:'#
!
_user_specified_name	1954534:'#
!
_user_specified_name	1954536:' #
!
_user_specified_name	1954538:'!#
!
_user_specified_name	1954540:'"#
!
_user_specified_name	1954542:'##
!
_user_specified_name	1954544:'$#
!
_user_specified_name	1954546:'%#
!
_user_specified_name	1954548:'&#
!
_user_specified_name	1954550:''#
!
_user_specified_name	1954552:'(#
!
_user_specified_name	1954554:')#
!
_user_specified_name	1954556:'*#
!
_user_specified_name	1954558:'+#
!
_user_specified_name	1954560:',#
!
_user_specified_name	1954562:'-#
!
_user_specified_name	1954564:'.#
!
_user_specified_name	1954566:'/#
!
_user_specified_name	1954568:'0#
!
_user_specified_name	1954570:'1#
!
_user_specified_name	1954572:'2#
!
_user_specified_name	1954574:'3#
!
_user_specified_name	1954576:'4#
!
_user_specified_name	1954578:'5#
!
_user_specified_name	1954580:'6#
!
_user_specified_name	1954582:'7#
!
_user_specified_name	1954584:'8#
!
_user_specified_name	1954586:'9#
!
_user_specified_name	1954588:':#
!
_user_specified_name	1954590:';#
!
_user_specified_name	1954592:'<#
!
_user_specified_name	1954594:'=#
!
_user_specified_name	1954596:'>#
!
_user_specified_name	1954598:'?#
!
_user_specified_name	1954600:'@#
!
_user_specified_name	1954602:'A#
!
_user_specified_name	1954604:'B#
!
_user_specified_name	1954606:'C#
!
_user_specified_name	1954608:'D#
!
_user_specified_name	1954610:'E#
!
_user_specified_name	1954612:'F#
!
_user_specified_name	1954614:'G#
!
_user_specified_name	1954616:'H#
!
_user_specified_name	1954618:'I#
!
_user_specified_name	1954620:'J#
!
_user_specified_name	1954622:'K#
!
_user_specified_name	1954624:'L#
!
_user_specified_name	1954626:'M#
!
_user_specified_name	1954628:'N#
!
_user_specified_name	1954630:'O#
!
_user_specified_name	1954632:'P#
!
_user_specified_name	1954634
�
d
+__inference_dropout_8_layer_call_fn_1956155

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
GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1953671j
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1956150	
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
)__inference_dense_8_layer_call_fn_1956217

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
GPU 2J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1953715j
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
_user_specified_name	1956211:'#
!
_user_specified_name	1956213
�+
�
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1954350	
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
�
d
+__inference_dropout_7_layer_call_fn_1955952

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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_1953498j
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
)__inference_dense_7_layer_call_fn_1955818

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
GPU 2J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1953481j
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
_user_specified_name	1955812:'#
!
_user_specified_name	1955814
�+
�
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1953534	
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
9__inference_multi_head_attention_10_layer_call_fn_1956254	
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1953768j
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
_user_specified_name	1956236:'#
!
_user_specified_name	1956238:'#
!
_user_specified_name	1956240:'#
!
_user_specified_name	1956242:'#
!
_user_specified_name	1956244:'#
!
_user_specified_name	1956246:'#
!
_user_specified_name	1956248:'	#
!
_user_specified_name	1956250
�
�
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_1956435

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
D__inference_dense_8_layer_call_and_return_conditional_losses_1956232

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
�+
�
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1955947	
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1956549	
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
D__inference_dense_6_layer_call_and_return_conditional_losses_1955606

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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_1953929

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
<__inference_global_average_pooling1d_1_layer_call_fn_1956694

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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1953236i
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
�
�
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_1956689

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
8__inference_multi_head_attention_7_layer_call_fn_1955708	
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1954142j
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
_user_specified_name	1955690:'#
!
_user_specified_name	1955692:'#
!
_user_specified_name	1955694:'#
!
_user_specified_name	1955696:'#
!
_user_specified_name	1955698:'#
!
_user_specified_name	1955700:'#
!
_user_specified_name	1955702:'	#
!
_user_specified_name	1955704
�

f
G__inference_dropout_11_layer_call_and_return_conditional_losses_1953966

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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1955516	
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
d
+__inference_dropout_6_layer_call_fn_1955611

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
GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1953357j
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
8__inference_multi_head_attention_8_layer_call_fn_1955855	
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1953534j
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
_user_specified_name	1955837:'#
!
_user_specified_name	1955839:'#
!
_user_specified_name	1955841:'#
!
_user_specified_name	1955843:'#
!
_user_specified_name	1955845:'#
!
_user_specified_name	1955847:'#
!
_user_specified_name	1955849:'	#
!
_user_specified_name	1955851
�
�
D__inference_dense_9_layer_call_and_return_conditional_losses_1953949

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

e
F__inference_dropout_9_layer_call_and_return_conditional_losses_1956368

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
8__inference_multi_head_attention_9_layer_call_fn_1956080	
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
GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1954275j
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
_user_specified_name	1956062:'#
!
_user_specified_name	1956064:'#
!
_user_specified_name	1956066:'#
!
_user_specified_name	1956068:'#
!
_user_specified_name	1956070:'#
!
_user_specified_name	1956072:'#
!
_user_specified_name	1956074:'	#
!
_user_specified_name	1956076"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
6
input_2+
serving_default_input_2:03
dense_11'
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
)__inference_model_1_layer_call_fn_1954638
)__inference_model_1_layer_call_fn_1954803�
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
D__inference_model_1_layer_call_and_return_conditional_losses_1954028
D__inference_model_1_layer_call_and_return_conditional_losses_1954473�
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
"__inference__wrapped_model_1953230input_2"�
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
�trace_12�
8__inference_multi_head_attention_6_layer_call_fn_1955459
8__inference_multi_head_attention_6_layer_call_fn_1955481�
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1955516
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1955551�
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
8__inference_layer_normalization_10_layer_call_fn_1955560�
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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_1955582�
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
*:(2layer_normalization_10/gamma
):'2layer_normalization_10/beta
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
)__inference_dense_6_layer_call_fn_1955591�
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
D__inference_dense_6_layer_call_and_return_conditional_losses_1955606�
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
 :2dense_6/kernel
:2dense_6/bias
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
+__inference_dropout_6_layer_call_fn_1955611
+__inference_dropout_6_layer_call_fn_1955616�
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
F__inference_dropout_6_layer_call_and_return_conditional_losses_1955628
F__inference_dropout_6_layer_call_and_return_conditional_losses_1955633�
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
8__inference_layer_normalization_11_layer_call_fn_1955642�
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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_1955664�
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
*:(2layer_normalization_11/gamma
):'2layer_normalization_11/beta
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
�trace_12�
8__inference_multi_head_attention_7_layer_call_fn_1955686
8__inference_multi_head_attention_7_layer_call_fn_1955708�
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1955743
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1955778�
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
8__inference_layer_normalization_12_layer_call_fn_1955787�
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_1955809�
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
*:(2layer_normalization_12/gamma
):'2layer_normalization_12/beta
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
)__inference_dense_7_layer_call_fn_1955818�
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
D__inference_dense_7_layer_call_and_return_conditional_losses_1955833�
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
 :2dense_7/kernel
:2dense_7/bias
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
�trace_12�
8__inference_multi_head_attention_8_layer_call_fn_1955855
8__inference_multi_head_attention_8_layer_call_fn_1955877�
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1955912
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1955947�
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
+__inference_dropout_7_layer_call_fn_1955952
+__inference_dropout_7_layer_call_fn_1955957�
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
F__inference_dropout_7_layer_call_and_return_conditional_losses_1955969
F__inference_dropout_7_layer_call_and_return_conditional_losses_1955974�
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
8__inference_layer_normalization_14_layer_call_fn_1955983�
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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_1956005�
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
*:(2layer_normalization_14/gamma
):'2layer_normalization_14/beta
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
8__inference_layer_normalization_13_layer_call_fn_1956014�
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_1956036�
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
*:(2layer_normalization_13/gamma
):'2layer_normalization_13/beta
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
�trace_12�
8__inference_multi_head_attention_9_layer_call_fn_1956058
8__inference_multi_head_attention_9_layer_call_fn_1956080�
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1956115
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1956150�
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
+__inference_dropout_8_layer_call_fn_1956155
+__inference_dropout_8_layer_call_fn_1956160�
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
F__inference_dropout_8_layer_call_and_return_conditional_losses_1956172
F__inference_dropout_8_layer_call_and_return_conditional_losses_1956177�
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
8__inference_layer_normalization_15_layer_call_fn_1956186�
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_1956208�
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
*:(2layer_normalization_15/gamma
):'2layer_normalization_15/beta
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
)__inference_dense_8_layer_call_fn_1956217�
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
D__inference_dense_8_layer_call_and_return_conditional_losses_1956232�
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
 :2dense_8/kernel
:2dense_8/bias
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
9__inference_multi_head_attention_10_layer_call_fn_1956254
9__inference_multi_head_attention_10_layer_call_fn_1956276�
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1956311
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1956346�
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
+__inference_dropout_9_layer_call_fn_1956351
+__inference_dropout_9_layer_call_fn_1956356�
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
F__inference_dropout_9_layer_call_and_return_conditional_losses_1956368
F__inference_dropout_9_layer_call_and_return_conditional_losses_1956373�
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
8__inference_layer_normalization_17_layer_call_fn_1956382�
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_1956404�
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
*:(2layer_normalization_17/gamma
):'2layer_normalization_17/beta
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
8__inference_layer_normalization_16_layer_call_fn_1956413�
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_1956435�
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
*:(2layer_normalization_16/gamma
):'2layer_normalization_16/beta
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
9__inference_multi_head_attention_11_layer_call_fn_1956457
9__inference_multi_head_attention_11_layer_call_fn_1956479�
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1956514
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1956549�
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
,__inference_dropout_10_layer_call_fn_1956554
,__inference_dropout_10_layer_call_fn_1956559�
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1956571
G__inference_dropout_10_layer_call_and_return_conditional_losses_1956576�
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
8__inference_layer_normalization_18_layer_call_fn_1956585�
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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_1956607�
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
*:(2layer_normalization_18/gamma
):'2layer_normalization_18/beta
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
)__inference_dense_9_layer_call_fn_1956616�
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
D__inference_dense_9_layer_call_and_return_conditional_losses_1956631�
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
 :2dense_9/kernel
:2dense_9/bias
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
,__inference_dropout_11_layer_call_fn_1956636
,__inference_dropout_11_layer_call_fn_1956641�
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1956653
G__inference_dropout_11_layer_call_and_return_conditional_losses_1956658�
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
8__inference_layer_normalization_19_layer_call_fn_1956667�
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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_1956689�
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
*:(2layer_normalization_19/gamma
):'2layer_normalization_19/beta
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
<__inference_global_average_pooling1d_1_layer_call_fn_1956694�
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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1956700�
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
*__inference_dense_10_layer_call_fn_1956709�
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
E__inference_dense_10_layer_call_and_return_conditional_losses_1956719�
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
!: 2dense_10/kernel
: 2dense_10/bias
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
*__inference_dense_11_layer_call_fn_1956728�
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
E__inference_dense_11_layer_call_and_return_conditional_losses_1956738�
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
!: 2dense_11/kernel
:2dense_11/bias
 "
trackable_dict_wrapper
9:72#multi_head_attention_6/query/kernel
3:12!multi_head_attention_6/query/bias
7:52!multi_head_attention_6/key/kernel
1:/2multi_head_attention_6/key/bias
9:72#multi_head_attention_6/value/kernel
3:12!multi_head_attention_6/value/bias
D:B2.multi_head_attention_6/attention_output/kernel
::82,multi_head_attention_6/attention_output/bias
9:72#multi_head_attention_7/query/kernel
3:12!multi_head_attention_7/query/bias
7:52!multi_head_attention_7/key/kernel
1:/2multi_head_attention_7/key/bias
9:72#multi_head_attention_7/value/kernel
3:12!multi_head_attention_7/value/bias
D:B2.multi_head_attention_7/attention_output/kernel
::82,multi_head_attention_7/attention_output/bias
9:72#multi_head_attention_8/query/kernel
3:12!multi_head_attention_8/query/bias
7:52!multi_head_attention_8/key/kernel
1:/2multi_head_attention_8/key/bias
9:72#multi_head_attention_8/value/kernel
3:12!multi_head_attention_8/value/bias
D:B2.multi_head_attention_8/attention_output/kernel
::82,multi_head_attention_8/attention_output/bias
9:72#multi_head_attention_9/query/kernel
3:12!multi_head_attention_9/query/bias
7:52!multi_head_attention_9/key/kernel
1:/2multi_head_attention_9/key/bias
9:72#multi_head_attention_9/value/kernel
3:12!multi_head_attention_9/value/bias
D:B2.multi_head_attention_9/attention_output/kernel
::82,multi_head_attention_9/attention_output/bias
::82$multi_head_attention_10/query/kernel
4:22"multi_head_attention_10/query/bias
8:62"multi_head_attention_10/key/kernel
2:02 multi_head_attention_10/key/bias
::82$multi_head_attention_10/value/kernel
4:22"multi_head_attention_10/value/bias
E:C2/multi_head_attention_10/attention_output/kernel
;:92-multi_head_attention_10/attention_output/bias
::82$multi_head_attention_11/query/kernel
4:22"multi_head_attention_11/query/bias
8:62"multi_head_attention_11/key/kernel
2:02 multi_head_attention_11/key/bias
::82$multi_head_attention_11/value/kernel
4:22"multi_head_attention_11/value/bias
E:C2/multi_head_attention_11/attention_output/kernel
;:92-multi_head_attention_11/attention_output/bias
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
)__inference_model_1_layer_call_fn_1954638input_2"�
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
)__inference_model_1_layer_call_fn_1954803input_2"�
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
D__inference_model_1_layer_call_and_return_conditional_losses_1954028input_2"�
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
D__inference_model_1_layer_call_and_return_conditional_losses_1954473input_2"�
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
%__inference_signature_wrapper_1955437input_2"�
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
8__inference_multi_head_attention_6_layer_call_fn_1955459queryvalue"�
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
8__inference_multi_head_attention_6_layer_call_fn_1955481queryvalue"�
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1955516queryvalue"�
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1955551queryvalue"�
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
8__inference_layer_normalization_10_layer_call_fn_1955560inputs"�
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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_1955582inputs"�
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
)__inference_dense_6_layer_call_fn_1955591inputs"�
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
D__inference_dense_6_layer_call_and_return_conditional_losses_1955606inputs"�
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
+__inference_dropout_6_layer_call_fn_1955611inputs"�
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
+__inference_dropout_6_layer_call_fn_1955616inputs"�
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
F__inference_dropout_6_layer_call_and_return_conditional_losses_1955628inputs"�
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
F__inference_dropout_6_layer_call_and_return_conditional_losses_1955633inputs"�
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
8__inference_layer_normalization_11_layer_call_fn_1955642inputs"�
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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_1955664inputs"�
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
8__inference_multi_head_attention_7_layer_call_fn_1955686queryvalue"�
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
8__inference_multi_head_attention_7_layer_call_fn_1955708queryvalue"�
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1955743queryvalue"�
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1955778queryvalue"�
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
8__inference_layer_normalization_12_layer_call_fn_1955787inputs"�
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_1955809inputs"�
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
)__inference_dense_7_layer_call_fn_1955818inputs"�
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
D__inference_dense_7_layer_call_and_return_conditional_losses_1955833inputs"�
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
8__inference_multi_head_attention_8_layer_call_fn_1955855queryvalue"�
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
8__inference_multi_head_attention_8_layer_call_fn_1955877queryvalue"�
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1955912queryvalue"�
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1955947queryvalue"�
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
+__inference_dropout_7_layer_call_fn_1955952inputs"�
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
+__inference_dropout_7_layer_call_fn_1955957inputs"�
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
F__inference_dropout_7_layer_call_and_return_conditional_losses_1955969inputs"�
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
F__inference_dropout_7_layer_call_and_return_conditional_losses_1955974inputs"�
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
8__inference_layer_normalization_14_layer_call_fn_1955983inputs"�
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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_1956005inputs"�
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
8__inference_layer_normalization_13_layer_call_fn_1956014inputs"�
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_1956036inputs"�
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
8__inference_multi_head_attention_9_layer_call_fn_1956058queryvalue"�
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
8__inference_multi_head_attention_9_layer_call_fn_1956080queryvalue"�
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1956115queryvalue"�
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1956150queryvalue"�
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
+__inference_dropout_8_layer_call_fn_1956155inputs"�
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
+__inference_dropout_8_layer_call_fn_1956160inputs"�
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
F__inference_dropout_8_layer_call_and_return_conditional_losses_1956172inputs"�
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
F__inference_dropout_8_layer_call_and_return_conditional_losses_1956177inputs"�
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
8__inference_layer_normalization_15_layer_call_fn_1956186inputs"�
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_1956208inputs"�
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
)__inference_dense_8_layer_call_fn_1956217inputs"�
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
D__inference_dense_8_layer_call_and_return_conditional_losses_1956232inputs"�
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
9__inference_multi_head_attention_10_layer_call_fn_1956254queryvalue"�
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
9__inference_multi_head_attention_10_layer_call_fn_1956276queryvalue"�
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1956311queryvalue"�
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1956346queryvalue"�
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
+__inference_dropout_9_layer_call_fn_1956351inputs"�
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
+__inference_dropout_9_layer_call_fn_1956356inputs"�
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
F__inference_dropout_9_layer_call_and_return_conditional_losses_1956368inputs"�
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
F__inference_dropout_9_layer_call_and_return_conditional_losses_1956373inputs"�
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
8__inference_layer_normalization_17_layer_call_fn_1956382inputs"�
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_1956404inputs"�
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
8__inference_layer_normalization_16_layer_call_fn_1956413inputs"�
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_1956435inputs"�
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
9__inference_multi_head_attention_11_layer_call_fn_1956457queryvalue"�
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
9__inference_multi_head_attention_11_layer_call_fn_1956479queryvalue"�
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1956514queryvalue"�
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1956549queryvalue"�
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
,__inference_dropout_10_layer_call_fn_1956554inputs"�
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
,__inference_dropout_10_layer_call_fn_1956559inputs"�
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1956571inputs"�
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1956576inputs"�
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
8__inference_layer_normalization_18_layer_call_fn_1956585inputs"�
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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_1956607inputs"�
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
)__inference_dense_9_layer_call_fn_1956616inputs"�
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
D__inference_dense_9_layer_call_and_return_conditional_losses_1956631inputs"�
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
,__inference_dropout_11_layer_call_fn_1956636inputs"�
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
,__inference_dropout_11_layer_call_fn_1956641inputs"�
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1956653inputs"�
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1956658inputs"�
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
8__inference_layer_normalization_19_layer_call_fn_1956667inputs"�
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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_1956689inputs"�
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
<__inference_global_average_pooling1d_1_layer_call_fn_1956694inputs"�
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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1956700inputs"�
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
*__inference_dense_10_layer_call_fn_1956709inputs"�
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
E__inference_dense_10_layer_call_and_return_conditional_losses_1956719inputs"�
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
*__inference_dense_11_layer_call_fn_1956728inputs"�
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
E__inference_dense_11_layer_call_and_return_conditional_losses_1956738inputs"�
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
"__inference__wrapped_model_1953230����������LMUVij������������������������������������������������������������������+�(
!�
�
input_2
� "*�'
%
dense_11�
dense_11�
E__inference_dense_10_layer_call_and_return_conditional_losses_1956719S��&�#
�
�
inputs
� "#� 
�
tensor_0 
� v
*__inference_dense_10_layer_call_fn_1956709H��&�#
�
�
inputs
� "�
unknown �
E__inference_dense_11_layer_call_and_return_conditional_losses_1956738S��&�#
�
�
inputs 
� "#� 
�
tensor_0
� v
*__inference_dense_11_layer_call_fn_1956728H��&�#
�
�
inputs 
� "�
unknown�
D__inference_dense_6_layer_call_and_return_conditional_losses_1955606YUV*�'
 �
�
inputs
� "'�$
�
tensor_0
� {
)__inference_dense_6_layer_call_fn_1955591NUV*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_7_layer_call_and_return_conditional_losses_1955833[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_7_layer_call_fn_1955818P��*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_8_layer_call_and_return_conditional_losses_1956232[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_8_layer_call_fn_1956217P��*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_9_layer_call_and_return_conditional_losses_1956631[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_9_layer_call_fn_1956616P��*�'
 �
�
inputs
� "�
unknown�
G__inference_dropout_10_layer_call_and_return_conditional_losses_1956571Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_10_layer_call_and_return_conditional_losses_1956576Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_10_layer_call_fn_1956554N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_10_layer_call_fn_1956559N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_11_layer_call_and_return_conditional_losses_1956653Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_11_layer_call_and_return_conditional_losses_1956658Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_11_layer_call_fn_1956636N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_11_layer_call_fn_1956641N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_6_layer_call_and_return_conditional_losses_1955628Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_6_layer_call_and_return_conditional_losses_1955633Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_6_layer_call_fn_1955611N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_6_layer_call_fn_1955616N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_7_layer_call_and_return_conditional_losses_1955969Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_7_layer_call_and_return_conditional_losses_1955974Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_7_layer_call_fn_1955952N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_7_layer_call_fn_1955957N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_8_layer_call_and_return_conditional_losses_1956172Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_8_layer_call_and_return_conditional_losses_1956177Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_8_layer_call_fn_1956155N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_8_layer_call_fn_1956160N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_9_layer_call_and_return_conditional_losses_1956368Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_9_layer_call_and_return_conditional_losses_1956373Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_9_layer_call_fn_1956351N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_9_layer_call_fn_1956356N.�+
$�!
�
inputs
p 
� "�
unknown�
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1956700�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
<__inference_global_average_pooling1d_1_layer_call_fn_1956694wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_1955582YLM*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_10_layer_call_fn_1955560NLM*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_1955664Yij*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_11_layer_call_fn_1955642Nij*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_1955809[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_12_layer_call_fn_1955787P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_1956036[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_13_layer_call_fn_1956014P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_1956005[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_14_layer_call_fn_1955983P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_1956208[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_15_layer_call_fn_1956186P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_1956435[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_16_layer_call_fn_1956413P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_1956404[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_17_layer_call_fn_1956382P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_1956607[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_18_layer_call_fn_1956585P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_1956689[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_19_layer_call_fn_1956667P��*�'
 �
�
inputs
� "�
unknown�
D__inference_model_1_layer_call_and_return_conditional_losses_1954028����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_2
p

 
� "#� 
�
tensor_0
� �
D__inference_model_1_layer_call_and_return_conditional_losses_1954473����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_2
p 

 
� "#� 
�
tensor_0
� �
)__inference_model_1_layer_call_fn_1954638����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_2
p

 
� "�
unknown�
)__inference_model_1_layer_call_fn_1954803����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_2
p 

 
� "�
unknown�
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1956311���������Y�V
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_1956346���������Y�V
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
9__inference_multi_head_attention_10_layer_call_fn_1956254���������Y�V
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
9__inference_multi_head_attention_10_layer_call_fn_1956276���������Y�V
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1956514���������Y�V
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_1956549���������Y�V
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
9__inference_multi_head_attention_11_layer_call_fn_1956457���������Y�V
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
9__inference_multi_head_attention_11_layer_call_fn_1956479���������Y�V
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1955516���������Y�V
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_1955551���������Y�V
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
8__inference_multi_head_attention_6_layer_call_fn_1955459���������Y�V
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
8__inference_multi_head_attention_6_layer_call_fn_1955481���������Y�V
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1955743���������Y�V
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_1955778���������Y�V
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
8__inference_multi_head_attention_7_layer_call_fn_1955686���������Y�V
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
8__inference_multi_head_attention_7_layer_call_fn_1955708���������Y�V
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1955912���������Y�V
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_1955947���������Y�V
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
8__inference_multi_head_attention_8_layer_call_fn_1955855���������Y�V
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
8__inference_multi_head_attention_8_layer_call_fn_1955877���������Y�V
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1956115���������Y�V
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_1956150���������Y�V
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
8__inference_multi_head_attention_9_layer_call_fn_1956058���������Y�V
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
8__inference_multi_head_attention_9_layer_call_fn_1956080���������Y�V
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
%__inference_signature_wrapper_1955437����������LMUVij������������������������������������������������������������������6�3
� 
,�)
'
input_2�
input_2"*�'
%
dense_11�
dense_11