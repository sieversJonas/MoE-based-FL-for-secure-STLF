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
%__inference_signature_wrapper_6762391

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
 __inference__traced_save_6764194
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
#__inference__traced_restore_6764443��#
�
�
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_6760529

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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6763126

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
8__inference_layer_normalization_11_layer_call_fn_6762596

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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_6760335j
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
_user_specified_name	6762590:'#
!
_user_specified_name	6762592
�
�
D__inference_dense_9_layer_call_and_return_conditional_losses_6760903

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
9__inference_multi_head_attention_11_layer_call_fn_6763411	
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6760830j
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
_user_specified_name	6763393:'#
!
_user_specified_name	6763395:'#
!
_user_specified_name	6763397:'#
!
_user_specified_name	6763399:'#
!
_user_specified_name	6763401:'#
!
_user_specified_name	6763403:'#
!
_user_specified_name	6763405:'	#
!
_user_specified_name	6763407
�<
�
)__inference_model_1_layer_call_fn_6761757
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
D__inference_model_1_layer_call_and_return_conditional_losses_6761427f
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
_user_specified_name	6761595:'#
!
_user_specified_name	6761597:'#
!
_user_specified_name	6761599:'#
!
_user_specified_name	6761601:'#
!
_user_specified_name	6761603:'#
!
_user_specified_name	6761605:'#
!
_user_specified_name	6761607:'#
!
_user_specified_name	6761609:'	#
!
_user_specified_name	6761611:'
#
!
_user_specified_name	6761613:'#
!
_user_specified_name	6761615:'#
!
_user_specified_name	6761617:'#
!
_user_specified_name	6761619:'#
!
_user_specified_name	6761621:'#
!
_user_specified_name	6761623:'#
!
_user_specified_name	6761625:'#
!
_user_specified_name	6761627:'#
!
_user_specified_name	6761629:'#
!
_user_specified_name	6761631:'#
!
_user_specified_name	6761633:'#
!
_user_specified_name	6761635:'#
!
_user_specified_name	6761637:'#
!
_user_specified_name	6761639:'#
!
_user_specified_name	6761641:'#
!
_user_specified_name	6761643:'#
!
_user_specified_name	6761645:'#
!
_user_specified_name	6761647:'#
!
_user_specified_name	6761649:'#
!
_user_specified_name	6761651:'#
!
_user_specified_name	6761653:'#
!
_user_specified_name	6761655:' #
!
_user_specified_name	6761657:'!#
!
_user_specified_name	6761659:'"#
!
_user_specified_name	6761661:'##
!
_user_specified_name	6761663:'$#
!
_user_specified_name	6761665:'%#
!
_user_specified_name	6761667:'&#
!
_user_specified_name	6761669:''#
!
_user_specified_name	6761671:'(#
!
_user_specified_name	6761673:')#
!
_user_specified_name	6761675:'*#
!
_user_specified_name	6761677:'+#
!
_user_specified_name	6761679:',#
!
_user_specified_name	6761681:'-#
!
_user_specified_name	6761683:'.#
!
_user_specified_name	6761685:'/#
!
_user_specified_name	6761687:'0#
!
_user_specified_name	6761689:'1#
!
_user_specified_name	6761691:'2#
!
_user_specified_name	6761693:'3#
!
_user_specified_name	6761695:'4#
!
_user_specified_name	6761697:'5#
!
_user_specified_name	6761699:'6#
!
_user_specified_name	6761701:'7#
!
_user_specified_name	6761703:'8#
!
_user_specified_name	6761705:'9#
!
_user_specified_name	6761707:':#
!
_user_specified_name	6761709:';#
!
_user_specified_name	6761711:'<#
!
_user_specified_name	6761713:'=#
!
_user_specified_name	6761715:'>#
!
_user_specified_name	6761717:'?#
!
_user_specified_name	6761719:'@#
!
_user_specified_name	6761721:'A#
!
_user_specified_name	6761723:'B#
!
_user_specified_name	6761725:'C#
!
_user_specified_name	6761727:'D#
!
_user_specified_name	6761729:'E#
!
_user_specified_name	6761731:'F#
!
_user_specified_name	6761733:'G#
!
_user_specified_name	6761735:'H#
!
_user_specified_name	6761737:'I#
!
_user_specified_name	6761739:'J#
!
_user_specified_name	6761741:'K#
!
_user_specified_name	6761743:'L#
!
_user_specified_name	6761745:'M#
!
_user_specified_name	6761747:'N#
!
_user_specified_name	6761749:'O#
!
_user_specified_name	6761751:'P#
!
_user_specified_name	6761753
�+
�
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6762866	
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
�
�
D__inference_dense_6_layer_call_and_return_conditional_losses_6760294

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
 __inference__traced_save_6764194
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
�
�
*__inference_dense_10_layer_call_fn_6763663

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
E__inference_dense_10_layer_call_and_return_conditional_losses_6760960f
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
_user_specified_name	6763657:'#
!
_user_specified_name	6763659
�
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_6762928

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
E__inference_dense_10_layer_call_and_return_conditional_losses_6760960

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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_6763389

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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6761251

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
e
,__inference_dropout_11_layer_call_fn_6763590

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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6760920j
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6763503	
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
�
E__inference_dense_11_layer_call_and_return_conditional_losses_6763692

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
8__inference_layer_normalization_14_layer_call_fn_6762937

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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_6760529j
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
_user_specified_name	6762931:'#
!
_user_specified_name	6762933
�
�
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_6760944

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
9__inference_multi_head_attention_11_layer_call_fn_6763433	
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6761368j
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
_user_specified_name	6763415:'#
!
_user_specified_name	6763417:'#
!
_user_specified_name	6763419:'#
!
_user_specified_name	6763421:'#
!
_user_specified_name	6763423:'#
!
_user_specified_name	6763425:'#
!
_user_specified_name	6763427:'	#
!
_user_specified_name	6763429
�
�
*__inference_dense_11_layer_call_fn_6763682

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
E__inference_dense_11_layer_call_and_return_conditional_losses_6760975f
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
_user_specified_name	6763676:'#
!
_user_specified_name	6763678
�
�
9__inference_multi_head_attention_10_layer_call_fn_6763208	
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6760722j
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
_user_specified_name	6763190:'#
!
_user_specified_name	6763192:'#
!
_user_specified_name	6763194:'#
!
_user_specified_name	6763196:'#
!
_user_specified_name	6763198:'#
!
_user_specified_name	6763200:'#
!
_user_specified_name	6763202:'	#
!
_user_specified_name	6763204
��
�'
D__inference_model_1_layer_call_and_return_conditional_losses_6760982
input_24
multi_head_attention_6_6760235:0
multi_head_attention_6_6760237:4
multi_head_attention_6_6760239:0
multi_head_attention_6_6760241:4
multi_head_attention_6_6760243:0
multi_head_attention_6_6760245:4
multi_head_attention_6_6760247:,
multi_head_attention_6_6760249:,
layer_normalization_10_6760275:,
layer_normalization_10_6760277:!
dense_6_6760295:
dense_6_6760297:,
layer_normalization_11_6760336:,
layer_normalization_11_6760338:4
multi_head_attention_7_6760376:0
multi_head_attention_7_6760378:4
multi_head_attention_7_6760380:0
multi_head_attention_7_6760382:4
multi_head_attention_7_6760384:0
multi_head_attention_7_6760386:4
multi_head_attention_7_6760388:,
multi_head_attention_7_6760390:,
layer_normalization_12_6760416:,
layer_normalization_12_6760418:!
dense_7_6760436:
dense_7_6760438:4
multi_head_attention_8_6760489:0
multi_head_attention_8_6760491:4
multi_head_attention_8_6760493:0
multi_head_attention_8_6760495:4
multi_head_attention_8_6760497:0
multi_head_attention_8_6760499:4
multi_head_attention_8_6760501:,
multi_head_attention_8_6760503:,
layer_normalization_14_6760530:,
layer_normalization_14_6760532:,
layer_normalization_13_6760557:,
layer_normalization_13_6760559:4
multi_head_attention_9_6760597:0
multi_head_attention_9_6760599:4
multi_head_attention_9_6760601:0
multi_head_attention_9_6760603:4
multi_head_attention_9_6760605:0
multi_head_attention_9_6760607:4
multi_head_attention_9_6760609:,
multi_head_attention_9_6760611:,
layer_normalization_15_6760650:,
layer_normalization_15_6760652:!
dense_8_6760670:
dense_8_6760672:5
multi_head_attention_10_6760723:1
multi_head_attention_10_6760725:5
multi_head_attention_10_6760727:1
multi_head_attention_10_6760729:5
multi_head_attention_10_6760731:1
multi_head_attention_10_6760733:5
multi_head_attention_10_6760735:-
multi_head_attention_10_6760737:,
layer_normalization_17_6760764:,
layer_normalization_17_6760766:,
layer_normalization_16_6760791:,
layer_normalization_16_6760793:5
multi_head_attention_11_6760831:1
multi_head_attention_11_6760833:5
multi_head_attention_11_6760835:1
multi_head_attention_11_6760837:5
multi_head_attention_11_6760839:1
multi_head_attention_11_6760841:5
multi_head_attention_11_6760843:-
multi_head_attention_11_6760845:,
layer_normalization_18_6760884:,
layer_normalization_18_6760886:!
dense_9_6760904:
dense_9_6760906:,
layer_normalization_19_6760945:,
layer_normalization_19_6760947:"
dense_10_6760961: 
dense_10_6760963: "
dense_11_6760976: 
dense_11_6760978:
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
.multi_head_attention_6/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_6_6760235multi_head_attention_6_6760237multi_head_attention_6_6760239multi_head_attention_6_6760241multi_head_attention_6_6760243multi_head_attention_6_6760245multi_head_attention_6_6760247multi_head_attention_6_6760249*
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6760234�
tf.__operators__.add_12/AddV2AddV2!tf.__operators__.add_11/AddV2:z:07multi_head_attention_6/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_10/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_12/AddV2:z:0layer_normalization_10_6760275layer_normalization_10_6760277*
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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_6760274�
dense_6/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_10/StatefulPartitionedCall:output:0dense_6_6760295dense_6_6760297*
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
D__inference_dense_6_layer_call_and_return_conditional_losses_6760294�
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
F__inference_dropout_6_layer_call_and_return_conditional_losses_6760311�
tf.__operators__.add_13/AddV2AddV27layer_normalization_10/StatefulPartitionedCall:output:0*dropout_6/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0layer_normalization_11_6760336layer_normalization_11_6760338*
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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_6760335�
.multi_head_attention_7/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_11/StatefulPartitionedCall:output:07layer_normalization_11/StatefulPartitionedCall:output:0multi_head_attention_7_6760376multi_head_attention_7_6760378multi_head_attention_7_6760380multi_head_attention_7_6760382multi_head_attention_7_6760384multi_head_attention_7_6760386multi_head_attention_7_6760388multi_head_attention_7_6760390*
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6760375�
tf.__operators__.add_14/AddV2AddV27layer_normalization_11/StatefulPartitionedCall:output:07multi_head_attention_7/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_14/AddV2:z:0layer_normalization_12_6760416layer_normalization_12_6760418*
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_6760415�
dense_7/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_12/StatefulPartitionedCall:output:0dense_7_6760436dense_7_6760438*
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
D__inference_dense_7_layer_call_and_return_conditional_losses_6760435�
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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6760452�
.multi_head_attention_8/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_8_6760489multi_head_attention_8_6760491multi_head_attention_8_6760493multi_head_attention_8_6760495multi_head_attention_8_6760497multi_head_attention_8_6760499multi_head_attention_8_6760501multi_head_attention_8_6760503*
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6760488�
tf.__operators__.add_15/AddV2AddV27layer_normalization_12/StatefulPartitionedCall:output:0*dropout_7/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_16/AddV2AddV2!tf.__operators__.add_11/AddV2:z:07multi_head_attention_8/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_14/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_16/AddV2:z:0layer_normalization_14_6760530layer_normalization_14_6760532*
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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_6760529�
.layer_normalization_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0layer_normalization_13_6760557layer_normalization_13_6760559*
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_6760556�
.multi_head_attention_9/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_14/StatefulPartitionedCall:output:07layer_normalization_13/StatefulPartitionedCall:output:0multi_head_attention_9_6760597multi_head_attention_9_6760599multi_head_attention_9_6760601multi_head_attention_9_6760603multi_head_attention_9_6760605multi_head_attention_9_6760607multi_head_attention_9_6760609multi_head_attention_9_6760611*
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6760596�
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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6760625�
tf.__operators__.add_17/AddV2AddV27layer_normalization_14/StatefulPartitionedCall:output:0*dropout_8/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_15/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0layer_normalization_15_6760650layer_normalization_15_6760652*
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_6760649�
dense_8/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_15/StatefulPartitionedCall:output:0dense_8_6760670dense_8_6760672*
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
D__inference_dense_8_layer_call_and_return_conditional_losses_6760669�
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
F__inference_dropout_9_layer_call_and_return_conditional_losses_6760686�
/multi_head_attention_10/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_10_6760723multi_head_attention_10_6760725multi_head_attention_10_6760727multi_head_attention_10_6760729multi_head_attention_10_6760731multi_head_attention_10_6760733multi_head_attention_10_6760735multi_head_attention_10_6760737*
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6760722�
tf.__operators__.add_18/AddV2AddV27layer_normalization_15/StatefulPartitionedCall:output:0*dropout_9/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_19/AddV2AddV2!tf.__operators__.add_11/AddV2:z:08multi_head_attention_10/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_17/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_19/AddV2:z:0layer_normalization_17_6760764layer_normalization_17_6760766*
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_6760763�
.layer_normalization_16/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_18/AddV2:z:0layer_normalization_16_6760791layer_normalization_16_6760793*
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_6760790�
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_17/StatefulPartitionedCall:output:07layer_normalization_16/StatefulPartitionedCall:output:0multi_head_attention_11_6760831multi_head_attention_11_6760833multi_head_attention_11_6760835multi_head_attention_11_6760837multi_head_attention_11_6760839multi_head_attention_11_6760841multi_head_attention_11_6760843multi_head_attention_11_6760845*
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6760830�
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_6760859�
tf.__operators__.add_20/AddV2AddV27layer_normalization_17/StatefulPartitionedCall:output:0+dropout_10/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_18/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_20/AddV2:z:0layer_normalization_18_6760884layer_normalization_18_6760886*
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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_6760883�
dense_9/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_18/StatefulPartitionedCall:output:0dense_9_6760904dense_9_6760906*
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
D__inference_dense_9_layer_call_and_return_conditional_losses_6760903�
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6760920�
tf.__operators__.add_21/AddV2AddV27layer_normalization_18/StatefulPartitionedCall:output:0+dropout_11/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_21/AddV2:z:0layer_normalization_19_6760945layer_normalization_19_6760947*
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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_6760944�
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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6760190�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_10_6760961dense_10_6760963*
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
E__inference_dense_10_layer_call_and_return_conditional_losses_6760960�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_6760976dense_11_6760978*
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
E__inference_dense_11_layer_call_and_return_conditional_losses_6760975o
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
_user_specified_name	6760235:'#
!
_user_specified_name	6760237:'#
!
_user_specified_name	6760239:'#
!
_user_specified_name	6760241:'#
!
_user_specified_name	6760243:'#
!
_user_specified_name	6760245:'#
!
_user_specified_name	6760247:'#
!
_user_specified_name	6760249:'	#
!
_user_specified_name	6760275:'
#
!
_user_specified_name	6760277:'#
!
_user_specified_name	6760295:'#
!
_user_specified_name	6760297:'#
!
_user_specified_name	6760336:'#
!
_user_specified_name	6760338:'#
!
_user_specified_name	6760376:'#
!
_user_specified_name	6760378:'#
!
_user_specified_name	6760380:'#
!
_user_specified_name	6760382:'#
!
_user_specified_name	6760384:'#
!
_user_specified_name	6760386:'#
!
_user_specified_name	6760388:'#
!
_user_specified_name	6760390:'#
!
_user_specified_name	6760416:'#
!
_user_specified_name	6760418:'#
!
_user_specified_name	6760436:'#
!
_user_specified_name	6760438:'#
!
_user_specified_name	6760489:'#
!
_user_specified_name	6760491:'#
!
_user_specified_name	6760493:'#
!
_user_specified_name	6760495:'#
!
_user_specified_name	6760497:' #
!
_user_specified_name	6760499:'!#
!
_user_specified_name	6760501:'"#
!
_user_specified_name	6760503:'##
!
_user_specified_name	6760530:'$#
!
_user_specified_name	6760532:'%#
!
_user_specified_name	6760557:'&#
!
_user_specified_name	6760559:''#
!
_user_specified_name	6760597:'(#
!
_user_specified_name	6760599:')#
!
_user_specified_name	6760601:'*#
!
_user_specified_name	6760603:'+#
!
_user_specified_name	6760605:',#
!
_user_specified_name	6760607:'-#
!
_user_specified_name	6760609:'.#
!
_user_specified_name	6760611:'/#
!
_user_specified_name	6760650:'0#
!
_user_specified_name	6760652:'1#
!
_user_specified_name	6760670:'2#
!
_user_specified_name	6760672:'3#
!
_user_specified_name	6760723:'4#
!
_user_specified_name	6760725:'5#
!
_user_specified_name	6760727:'6#
!
_user_specified_name	6760729:'7#
!
_user_specified_name	6760731:'8#
!
_user_specified_name	6760733:'9#
!
_user_specified_name	6760735:':#
!
_user_specified_name	6760737:';#
!
_user_specified_name	6760764:'<#
!
_user_specified_name	6760766:'=#
!
_user_specified_name	6760791:'>#
!
_user_specified_name	6760793:'?#
!
_user_specified_name	6760831:'@#
!
_user_specified_name	6760833:'A#
!
_user_specified_name	6760835:'B#
!
_user_specified_name	6760837:'C#
!
_user_specified_name	6760839:'D#
!
_user_specified_name	6760841:'E#
!
_user_specified_name	6760843:'F#
!
_user_specified_name	6760845:'G#
!
_user_specified_name	6760884:'H#
!
_user_specified_name	6760886:'I#
!
_user_specified_name	6760904:'J#
!
_user_specified_name	6760906:'K#
!
_user_specified_name	6760945:'L#
!
_user_specified_name	6760947:'M#
!
_user_specified_name	6760961:'N#
!
_user_specified_name	6760963:'O#
!
_user_specified_name	6760976:'P#
!
_user_specified_name	6760978
�+
�
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6762697	
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

e
F__inference_dropout_9_layer_call_and_return_conditional_losses_6760686

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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_6763358

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
D__inference_dense_6_layer_call_and_return_conditional_losses_6762560

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
8__inference_multi_head_attention_9_layer_call_fn_6763034	
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6761229j
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
_user_specified_name	6763016:'#
!
_user_specified_name	6763018:'#
!
_user_specified_name	6763020:'#
!
_user_specified_name	6763022:'#
!
_user_specified_name	6763024:'#
!
_user_specified_name	6763026:'#
!
_user_specified_name	6763028:'	#
!
_user_specified_name	6763030
�
�
D__inference_dense_9_layer_call_and_return_conditional_losses_6763585

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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_6760649

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
8__inference_multi_head_attention_8_layer_call_fn_6762809	
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6760488j
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
_user_specified_name	6762791:'#
!
_user_specified_name	6762793:'#
!
_user_specified_name	6762795:'#
!
_user_specified_name	6762797:'#
!
_user_specified_name	6762799:'#
!
_user_specified_name	6762801:'#
!
_user_specified_name	6762803:'	#
!
_user_specified_name	6762805
�
�
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_6762536

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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_6763643

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
+__inference_dropout_9_layer_call_fn_6763310

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
F__inference_dropout_9_layer_call_and_return_conditional_losses_6761268[
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
ـ
�:
#__inference__traced_restore_6764443
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
�
d
+__inference_dropout_7_layer_call_fn_6762906

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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6760452j
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6760920

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
8__inference_multi_head_attention_7_layer_call_fn_6762662	
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6761096j
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
_user_specified_name	6762644:'#
!
_user_specified_name	6762646:'#
!
_user_specified_name	6762648:'#
!
_user_specified_name	6762650:'#
!
_user_specified_name	6762652:'#
!
_user_specified_name	6762654:'#
!
_user_specified_name	6762656:'	#
!
_user_specified_name	6762658
�
�
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_6762959

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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6762923

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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6760452

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
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_6761390

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
D__inference_dense_7_layer_call_and_return_conditional_losses_6760435

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
8__inference_multi_head_attention_6_layer_call_fn_6762413	
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6760234j
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
_user_specified_name	6762395:'#
!
_user_specified_name	6762397:'#
!
_user_specified_name	6762399:'#
!
_user_specified_name	6762401:'#
!
_user_specified_name	6762403:'#
!
_user_specified_name	6762405:'#
!
_user_specified_name	6762407:'	#
!
_user_specified_name	6762409
�
�
8__inference_layer_normalization_10_layer_call_fn_6762514

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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_6760274j
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
_user_specified_name	6762508:'#
!
_user_specified_name	6762510
�
G
+__inference_dropout_8_layer_call_fn_6763114

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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6761251[
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6760488	
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
8__inference_layer_normalization_12_layer_call_fn_6762741

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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_6760415j
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
_user_specified_name	6762735:'#
!
_user_specified_name	6762737
�+
�
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6760375	
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6763468	
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6761021	
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
�
G
+__inference_dropout_6_layer_call_fn_6762570

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
F__inference_dropout_6_layer_call_and_return_conditional_losses_6761054[
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
�
X
<__inference_global_average_pooling1d_1_layer_call_fn_6763648

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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6760190i
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
�
d
F__inference_dropout_9_layer_call_and_return_conditional_losses_6763327

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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6760234	
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_6760415

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
8__inference_layer_normalization_13_layer_call_fn_6762968

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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_6760556j
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
_user_specified_name	6762962:'#
!
_user_specified_name	6762964
�	
�
E__inference_dense_10_layer_call_and_return_conditional_losses_6763673

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
8__inference_layer_normalization_18_layer_call_fn_6763539

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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_6760883j
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
_user_specified_name	6763533:'#
!
_user_specified_name	6763535
�+
�
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6763069	
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6762901	
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
�
�
D__inference_dense_7_layer_call_and_return_conditional_losses_6762787

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
F__inference_dropout_9_layer_call_and_return_conditional_losses_6761268

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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6763300	
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
�
�
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_6762990

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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6760190

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
,__inference_dropout_11_layer_call_fn_6763595

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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6761407[
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
+__inference_dropout_7_layer_call_fn_6762911

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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6761129[
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_6760763

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
8__inference_multi_head_attention_6_layer_call_fn_6762435	
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6761021j
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
_user_specified_name	6762417:'#
!
_user_specified_name	6762419:'#
!
_user_specified_name	6762421:'#
!
_user_specified_name	6762423:'#
!
_user_specified_name	6762425:'#
!
_user_specified_name	6762427:'#
!
_user_specified_name	6762429:'	#
!
_user_specified_name	6762431
�

e
F__inference_dropout_9_layer_call_and_return_conditional_losses_6763322

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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6760625

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
8__inference_layer_normalization_17_layer_call_fn_6763336

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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_6760763j
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
_user_specified_name	6763330:'#
!
_user_specified_name	6763332
�
�
8__inference_multi_head_attention_7_layer_call_fn_6762640	
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6760375j
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
_user_specified_name	6762622:'#
!
_user_specified_name	6762624:'#
!
_user_specified_name	6762626:'#
!
_user_specified_name	6762628:'#
!
_user_specified_name	6762630:'#
!
_user_specified_name	6762632:'#
!
_user_specified_name	6762634:'	#
!
_user_specified_name	6762636
�

e
F__inference_dropout_6_layer_call_and_return_conditional_losses_6760311

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
9__inference_multi_head_attention_10_layer_call_fn_6763230	
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6761304j
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
_user_specified_name	6763212:'#
!
_user_specified_name	6763214:'#
!
_user_specified_name	6763216:'#
!
_user_specified_name	6763218:'#
!
_user_specified_name	6763220:'#
!
_user_specified_name	6763222:'#
!
_user_specified_name	6763224:'	#
!
_user_specified_name	6763226
�<
�
)__inference_model_1_layer_call_fn_6761592
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
D__inference_model_1_layer_call_and_return_conditional_losses_6760982f
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
_user_specified_name	6761430:'#
!
_user_specified_name	6761432:'#
!
_user_specified_name	6761434:'#
!
_user_specified_name	6761436:'#
!
_user_specified_name	6761438:'#
!
_user_specified_name	6761440:'#
!
_user_specified_name	6761442:'#
!
_user_specified_name	6761444:'	#
!
_user_specified_name	6761446:'
#
!
_user_specified_name	6761448:'#
!
_user_specified_name	6761450:'#
!
_user_specified_name	6761452:'#
!
_user_specified_name	6761454:'#
!
_user_specified_name	6761456:'#
!
_user_specified_name	6761458:'#
!
_user_specified_name	6761460:'#
!
_user_specified_name	6761462:'#
!
_user_specified_name	6761464:'#
!
_user_specified_name	6761466:'#
!
_user_specified_name	6761468:'#
!
_user_specified_name	6761470:'#
!
_user_specified_name	6761472:'#
!
_user_specified_name	6761474:'#
!
_user_specified_name	6761476:'#
!
_user_specified_name	6761478:'#
!
_user_specified_name	6761480:'#
!
_user_specified_name	6761482:'#
!
_user_specified_name	6761484:'#
!
_user_specified_name	6761486:'#
!
_user_specified_name	6761488:'#
!
_user_specified_name	6761490:' #
!
_user_specified_name	6761492:'!#
!
_user_specified_name	6761494:'"#
!
_user_specified_name	6761496:'##
!
_user_specified_name	6761498:'$#
!
_user_specified_name	6761500:'%#
!
_user_specified_name	6761502:'&#
!
_user_specified_name	6761504:''#
!
_user_specified_name	6761506:'(#
!
_user_specified_name	6761508:')#
!
_user_specified_name	6761510:'*#
!
_user_specified_name	6761512:'+#
!
_user_specified_name	6761514:',#
!
_user_specified_name	6761516:'-#
!
_user_specified_name	6761518:'.#
!
_user_specified_name	6761520:'/#
!
_user_specified_name	6761522:'0#
!
_user_specified_name	6761524:'1#
!
_user_specified_name	6761526:'2#
!
_user_specified_name	6761528:'3#
!
_user_specified_name	6761530:'4#
!
_user_specified_name	6761532:'5#
!
_user_specified_name	6761534:'6#
!
_user_specified_name	6761536:'7#
!
_user_specified_name	6761538:'8#
!
_user_specified_name	6761540:'9#
!
_user_specified_name	6761542:':#
!
_user_specified_name	6761544:';#
!
_user_specified_name	6761546:'<#
!
_user_specified_name	6761548:'=#
!
_user_specified_name	6761550:'>#
!
_user_specified_name	6761552:'?#
!
_user_specified_name	6761554:'@#
!
_user_specified_name	6761556:'A#
!
_user_specified_name	6761558:'B#
!
_user_specified_name	6761560:'C#
!
_user_specified_name	6761562:'D#
!
_user_specified_name	6761564:'E#
!
_user_specified_name	6761566:'F#
!
_user_specified_name	6761568:'G#
!
_user_specified_name	6761570:'H#
!
_user_specified_name	6761572:'I#
!
_user_specified_name	6761574:'J#
!
_user_specified_name	6761576:'K#
!
_user_specified_name	6761578:'L#
!
_user_specified_name	6761580:'M#
!
_user_specified_name	6761582:'N#
!
_user_specified_name	6761584:'O#
!
_user_specified_name	6761586:'P#
!
_user_specified_name	6761588
�
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_6763530

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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6761129

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
G__inference_dropout_10_layer_call_and_return_conditional_losses_6763525

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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6761165	
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
�
�
D__inference_dense_8_layer_call_and_return_conditional_losses_6760669

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
�
d
+__inference_dropout_8_layer_call_fn_6763109

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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6760625j
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
�
H
,__inference_dropout_10_layer_call_fn_6763513

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
G__inference_dropout_10_layer_call_and_return_conditional_losses_6761390[
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6760596	
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
d
+__inference_dropout_9_layer_call_fn_6763305

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
F__inference_dropout_9_layer_call_and_return_conditional_losses_6760686j
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
8__inference_multi_head_attention_9_layer_call_fn_6763012	
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6760596j
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
_user_specified_name	6762994:'#
!
_user_specified_name	6762996:'#
!
_user_specified_name	6762998:'#
!
_user_specified_name	6763000:'#
!
_user_specified_name	6763002:'#
!
_user_specified_name	6763004:'#
!
_user_specified_name	6763006:'	#
!
_user_specified_name	6763008
�
�
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_6762763

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
F__inference_dropout_6_layer_call_and_return_conditional_losses_6761054

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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6760830	
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
s
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6763654

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
+__inference_dropout_6_layer_call_fn_6762565

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
F__inference_dropout_6_layer_call_and_return_conditional_losses_6760311j
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
�<
�
%__inference_signature_wrapper_6762391
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
"__inference__wrapped_model_6760184f
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
_user_specified_name	6762229:'#
!
_user_specified_name	6762231:'#
!
_user_specified_name	6762233:'#
!
_user_specified_name	6762235:'#
!
_user_specified_name	6762237:'#
!
_user_specified_name	6762239:'#
!
_user_specified_name	6762241:'#
!
_user_specified_name	6762243:'	#
!
_user_specified_name	6762245:'
#
!
_user_specified_name	6762247:'#
!
_user_specified_name	6762249:'#
!
_user_specified_name	6762251:'#
!
_user_specified_name	6762253:'#
!
_user_specified_name	6762255:'#
!
_user_specified_name	6762257:'#
!
_user_specified_name	6762259:'#
!
_user_specified_name	6762261:'#
!
_user_specified_name	6762263:'#
!
_user_specified_name	6762265:'#
!
_user_specified_name	6762267:'#
!
_user_specified_name	6762269:'#
!
_user_specified_name	6762271:'#
!
_user_specified_name	6762273:'#
!
_user_specified_name	6762275:'#
!
_user_specified_name	6762277:'#
!
_user_specified_name	6762279:'#
!
_user_specified_name	6762281:'#
!
_user_specified_name	6762283:'#
!
_user_specified_name	6762285:'#
!
_user_specified_name	6762287:'#
!
_user_specified_name	6762289:' #
!
_user_specified_name	6762291:'!#
!
_user_specified_name	6762293:'"#
!
_user_specified_name	6762295:'##
!
_user_specified_name	6762297:'$#
!
_user_specified_name	6762299:'%#
!
_user_specified_name	6762301:'&#
!
_user_specified_name	6762303:''#
!
_user_specified_name	6762305:'(#
!
_user_specified_name	6762307:')#
!
_user_specified_name	6762309:'*#
!
_user_specified_name	6762311:'+#
!
_user_specified_name	6762313:',#
!
_user_specified_name	6762315:'-#
!
_user_specified_name	6762317:'.#
!
_user_specified_name	6762319:'/#
!
_user_specified_name	6762321:'0#
!
_user_specified_name	6762323:'1#
!
_user_specified_name	6762325:'2#
!
_user_specified_name	6762327:'3#
!
_user_specified_name	6762329:'4#
!
_user_specified_name	6762331:'5#
!
_user_specified_name	6762333:'6#
!
_user_specified_name	6762335:'7#
!
_user_specified_name	6762337:'8#
!
_user_specified_name	6762339:'9#
!
_user_specified_name	6762341:':#
!
_user_specified_name	6762343:';#
!
_user_specified_name	6762345:'<#
!
_user_specified_name	6762347:'=#
!
_user_specified_name	6762349:'>#
!
_user_specified_name	6762351:'?#
!
_user_specified_name	6762353:'@#
!
_user_specified_name	6762355:'A#
!
_user_specified_name	6762357:'B#
!
_user_specified_name	6762359:'C#
!
_user_specified_name	6762361:'D#
!
_user_specified_name	6762363:'E#
!
_user_specified_name	6762365:'F#
!
_user_specified_name	6762367:'G#
!
_user_specified_name	6762369:'H#
!
_user_specified_name	6762371:'I#
!
_user_specified_name	6762373:'J#
!
_user_specified_name	6762375:'K#
!
_user_specified_name	6762377:'L#
!
_user_specified_name	6762379:'M#
!
_user_specified_name	6762381:'N#
!
_user_specified_name	6762383:'O#
!
_user_specified_name	6762385:'P#
!
_user_specified_name	6762387
�+
�
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6761368	
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
�
d
F__inference_dropout_8_layer_call_and_return_conditional_losses_6763131

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

e
F__inference_dropout_6_layer_call_and_return_conditional_losses_6762582

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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6762470	
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
)__inference_dense_8_layer_call_fn_6763171

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
D__inference_dense_8_layer_call_and_return_conditional_losses_6760669j
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
_user_specified_name	6763165:'#
!
_user_specified_name	6763167
�
�
)__inference_dense_6_layer_call_fn_6762545

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
D__inference_dense_6_layer_call_and_return_conditional_losses_6760294j
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
_user_specified_name	6762539:'#
!
_user_specified_name	6762541
�
�
8__inference_layer_normalization_15_layer_call_fn_6763140

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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_6760649j
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
_user_specified_name	6763134:'#
!
_user_specified_name	6763136
�

f
G__inference_dropout_10_layer_call_and_return_conditional_losses_6760859

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
8__inference_multi_head_attention_8_layer_call_fn_6762831	
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6761165j
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
_user_specified_name	6762813:'#
!
_user_specified_name	6762815:'#
!
_user_specified_name	6762817:'#
!
_user_specified_name	6762819:'#
!
_user_specified_name	6762821:'#
!
_user_specified_name	6762823:'#
!
_user_specified_name	6762825:'	#
!
_user_specified_name	6762827
�+
�
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6762732	
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6763104	
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6760722	
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
�
�
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_6763561

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
D__inference_dense_8_layer_call_and_return_conditional_losses_6763186

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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_6760335

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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_6762618

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
E__inference_dense_11_layer_call_and_return_conditional_losses_6760975

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
�
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_6762587

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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_6760274

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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_6760883

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
��
�\
"__inference__wrapped_model_6760184
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
�
e
,__inference_dropout_10_layer_call_fn_6763508

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
G__inference_dropout_10_layer_call_and_return_conditional_losses_6760859j
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_6760790

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
D__inference_model_1_layer_call_and_return_conditional_losses_6761427
input_24
multi_head_attention_6_6761022:0
multi_head_attention_6_6761024:4
multi_head_attention_6_6761026:0
multi_head_attention_6_6761028:4
multi_head_attention_6_6761030:0
multi_head_attention_6_6761032:4
multi_head_attention_6_6761034:,
multi_head_attention_6_6761036:,
layer_normalization_10_6761040:,
layer_normalization_10_6761042:!
dense_6_6761045:
dense_6_6761047:,
layer_normalization_11_6761057:,
layer_normalization_11_6761059:4
multi_head_attention_7_6761097:0
multi_head_attention_7_6761099:4
multi_head_attention_7_6761101:0
multi_head_attention_7_6761103:4
multi_head_attention_7_6761105:0
multi_head_attention_7_6761107:4
multi_head_attention_7_6761109:,
multi_head_attention_7_6761111:,
layer_normalization_12_6761115:,
layer_normalization_12_6761117:!
dense_7_6761120:
dense_7_6761122:4
multi_head_attention_8_6761166:0
multi_head_attention_8_6761168:4
multi_head_attention_8_6761170:0
multi_head_attention_8_6761172:4
multi_head_attention_8_6761174:0
multi_head_attention_8_6761176:4
multi_head_attention_8_6761178:,
multi_head_attention_8_6761180:,
layer_normalization_14_6761185:,
layer_normalization_14_6761187:,
layer_normalization_13_6761190:,
layer_normalization_13_6761192:4
multi_head_attention_9_6761230:0
multi_head_attention_9_6761232:4
multi_head_attention_9_6761234:0
multi_head_attention_9_6761236:4
multi_head_attention_9_6761238:0
multi_head_attention_9_6761240:4
multi_head_attention_9_6761242:,
multi_head_attention_9_6761244:,
layer_normalization_15_6761254:,
layer_normalization_15_6761256:!
dense_8_6761259:
dense_8_6761261:5
multi_head_attention_10_6761305:1
multi_head_attention_10_6761307:5
multi_head_attention_10_6761309:1
multi_head_attention_10_6761311:5
multi_head_attention_10_6761313:1
multi_head_attention_10_6761315:5
multi_head_attention_10_6761317:-
multi_head_attention_10_6761319:,
layer_normalization_17_6761324:,
layer_normalization_17_6761326:,
layer_normalization_16_6761329:,
layer_normalization_16_6761331:5
multi_head_attention_11_6761369:1
multi_head_attention_11_6761371:5
multi_head_attention_11_6761373:1
multi_head_attention_11_6761375:5
multi_head_attention_11_6761377:1
multi_head_attention_11_6761379:5
multi_head_attention_11_6761381:-
multi_head_attention_11_6761383:,
layer_normalization_18_6761393:,
layer_normalization_18_6761395:!
dense_9_6761398:
dense_9_6761400:,
layer_normalization_19_6761410:,
layer_normalization_19_6761412:"
dense_10_6761416: 
dense_10_6761418: "
dense_11_6761421: 
dense_11_6761423:
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
.multi_head_attention_6/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_6_6761022multi_head_attention_6_6761024multi_head_attention_6_6761026multi_head_attention_6_6761028multi_head_attention_6_6761030multi_head_attention_6_6761032multi_head_attention_6_6761034multi_head_attention_6_6761036*
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6761021�
tf.__operators__.add_12/AddV2AddV2!tf.__operators__.add_11/AddV2:z:07multi_head_attention_6/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_10/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_12/AddV2:z:0layer_normalization_10_6761040layer_normalization_10_6761042*
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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_6760274�
dense_6/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_10/StatefulPartitionedCall:output:0dense_6_6761045dense_6_6761047*
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
D__inference_dense_6_layer_call_and_return_conditional_losses_6760294�
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
F__inference_dropout_6_layer_call_and_return_conditional_losses_6761054�
tf.__operators__.add_13/AddV2AddV27layer_normalization_10/StatefulPartitionedCall:output:0"dropout_6/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0layer_normalization_11_6761057layer_normalization_11_6761059*
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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_6760335�
.multi_head_attention_7/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_11/StatefulPartitionedCall:output:07layer_normalization_11/StatefulPartitionedCall:output:0multi_head_attention_7_6761097multi_head_attention_7_6761099multi_head_attention_7_6761101multi_head_attention_7_6761103multi_head_attention_7_6761105multi_head_attention_7_6761107multi_head_attention_7_6761109multi_head_attention_7_6761111*
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6761096�
tf.__operators__.add_14/AddV2AddV27layer_normalization_11/StatefulPartitionedCall:output:07multi_head_attention_7/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_14/AddV2:z:0layer_normalization_12_6761115layer_normalization_12_6761117*
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_6760415�
dense_7/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_12/StatefulPartitionedCall:output:0dense_7_6761120dense_7_6761122*
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
D__inference_dense_7_layer_call_and_return_conditional_losses_6760435�
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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6761129�
.multi_head_attention_8/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_8_6761166multi_head_attention_8_6761168multi_head_attention_8_6761170multi_head_attention_8_6761172multi_head_attention_8_6761174multi_head_attention_8_6761176multi_head_attention_8_6761178multi_head_attention_8_6761180*
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6761165�
tf.__operators__.add_15/AddV2AddV27layer_normalization_12/StatefulPartitionedCall:output:0"dropout_7/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_16/AddV2AddV2!tf.__operators__.add_11/AddV2:z:07multi_head_attention_8/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_14/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_16/AddV2:z:0layer_normalization_14_6761185layer_normalization_14_6761187*
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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_6760529�
.layer_normalization_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0layer_normalization_13_6761190layer_normalization_13_6761192*
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_6760556�
.multi_head_attention_9/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_14/StatefulPartitionedCall:output:07layer_normalization_13/StatefulPartitionedCall:output:0multi_head_attention_9_6761230multi_head_attention_9_6761232multi_head_attention_9_6761234multi_head_attention_9_6761236multi_head_attention_9_6761238multi_head_attention_9_6761240multi_head_attention_9_6761242multi_head_attention_9_6761244*
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6761229�
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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6761251�
tf.__operators__.add_17/AddV2AddV27layer_normalization_14/StatefulPartitionedCall:output:0"dropout_8/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_15/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0layer_normalization_15_6761254layer_normalization_15_6761256*
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_6760649�
dense_8/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_15/StatefulPartitionedCall:output:0dense_8_6761259dense_8_6761261*
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
D__inference_dense_8_layer_call_and_return_conditional_losses_6760669�
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
F__inference_dropout_9_layer_call_and_return_conditional_losses_6761268�
/multi_head_attention_10/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_11/AddV2:z:0!tf.__operators__.add_11/AddV2:z:0multi_head_attention_10_6761305multi_head_attention_10_6761307multi_head_attention_10_6761309multi_head_attention_10_6761311multi_head_attention_10_6761313multi_head_attention_10_6761315multi_head_attention_10_6761317multi_head_attention_10_6761319*
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6761304�
tf.__operators__.add_18/AddV2AddV27layer_normalization_15/StatefulPartitionedCall:output:0"dropout_9/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_19/AddV2AddV2!tf.__operators__.add_11/AddV2:z:08multi_head_attention_10/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_17/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_19/AddV2:z:0layer_normalization_17_6761324layer_normalization_17_6761326*
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_6760763�
.layer_normalization_16/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_18/AddV2:z:0layer_normalization_16_6761329layer_normalization_16_6761331*
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_6760790�
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_17/StatefulPartitionedCall:output:07layer_normalization_16/StatefulPartitionedCall:output:0multi_head_attention_11_6761369multi_head_attention_11_6761371multi_head_attention_11_6761373multi_head_attention_11_6761375multi_head_attention_11_6761377multi_head_attention_11_6761379multi_head_attention_11_6761381multi_head_attention_11_6761383*
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6761368�
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_6761390�
tf.__operators__.add_20/AddV2AddV27layer_normalization_17/StatefulPartitionedCall:output:0#dropout_10/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_18/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_20/AddV2:z:0layer_normalization_18_6761393layer_normalization_18_6761395*
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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_6760883�
dense_9/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_18/StatefulPartitionedCall:output:0dense_9_6761398dense_9_6761400*
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
D__inference_dense_9_layer_call_and_return_conditional_losses_6760903�
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6761407�
tf.__operators__.add_21/AddV2AddV27layer_normalization_18/StatefulPartitionedCall:output:0#dropout_11/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_21/AddV2:z:0layer_normalization_19_6761410layer_normalization_19_6761412*
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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_6760944�
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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6760190�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_10_6761416dense_10_6761418*
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
E__inference_dense_10_layer_call_and_return_conditional_losses_6760960�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_6761421dense_11_6761423*
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
E__inference_dense_11_layer_call_and_return_conditional_losses_6760975o
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
_user_specified_name	6761022:'#
!
_user_specified_name	6761024:'#
!
_user_specified_name	6761026:'#
!
_user_specified_name	6761028:'#
!
_user_specified_name	6761030:'#
!
_user_specified_name	6761032:'#
!
_user_specified_name	6761034:'#
!
_user_specified_name	6761036:'	#
!
_user_specified_name	6761040:'
#
!
_user_specified_name	6761042:'#
!
_user_specified_name	6761045:'#
!
_user_specified_name	6761047:'#
!
_user_specified_name	6761057:'#
!
_user_specified_name	6761059:'#
!
_user_specified_name	6761097:'#
!
_user_specified_name	6761099:'#
!
_user_specified_name	6761101:'#
!
_user_specified_name	6761103:'#
!
_user_specified_name	6761105:'#
!
_user_specified_name	6761107:'#
!
_user_specified_name	6761109:'#
!
_user_specified_name	6761111:'#
!
_user_specified_name	6761115:'#
!
_user_specified_name	6761117:'#
!
_user_specified_name	6761120:'#
!
_user_specified_name	6761122:'#
!
_user_specified_name	6761166:'#
!
_user_specified_name	6761168:'#
!
_user_specified_name	6761170:'#
!
_user_specified_name	6761172:'#
!
_user_specified_name	6761174:' #
!
_user_specified_name	6761176:'!#
!
_user_specified_name	6761178:'"#
!
_user_specified_name	6761180:'##
!
_user_specified_name	6761185:'$#
!
_user_specified_name	6761187:'%#
!
_user_specified_name	6761190:'&#
!
_user_specified_name	6761192:''#
!
_user_specified_name	6761230:'(#
!
_user_specified_name	6761232:')#
!
_user_specified_name	6761234:'*#
!
_user_specified_name	6761236:'+#
!
_user_specified_name	6761238:',#
!
_user_specified_name	6761240:'-#
!
_user_specified_name	6761242:'.#
!
_user_specified_name	6761244:'/#
!
_user_specified_name	6761254:'0#
!
_user_specified_name	6761256:'1#
!
_user_specified_name	6761259:'2#
!
_user_specified_name	6761261:'3#
!
_user_specified_name	6761305:'4#
!
_user_specified_name	6761307:'5#
!
_user_specified_name	6761309:'6#
!
_user_specified_name	6761311:'7#
!
_user_specified_name	6761313:'8#
!
_user_specified_name	6761315:'9#
!
_user_specified_name	6761317:':#
!
_user_specified_name	6761319:';#
!
_user_specified_name	6761324:'<#
!
_user_specified_name	6761326:'=#
!
_user_specified_name	6761329:'>#
!
_user_specified_name	6761331:'?#
!
_user_specified_name	6761369:'@#
!
_user_specified_name	6761371:'A#
!
_user_specified_name	6761373:'B#
!
_user_specified_name	6761375:'C#
!
_user_specified_name	6761377:'D#
!
_user_specified_name	6761379:'E#
!
_user_specified_name	6761381:'F#
!
_user_specified_name	6761383:'G#
!
_user_specified_name	6761393:'H#
!
_user_specified_name	6761395:'I#
!
_user_specified_name	6761398:'J#
!
_user_specified_name	6761400:'K#
!
_user_specified_name	6761410:'L#
!
_user_specified_name	6761412:'M#
!
_user_specified_name	6761416:'N#
!
_user_specified_name	6761418:'O#
!
_user_specified_name	6761421:'P#
!
_user_specified_name	6761423
�+
�
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6763265	
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
�
e
G__inference_dropout_11_layer_call_and_return_conditional_losses_6763612

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
)__inference_dense_9_layer_call_fn_6763570

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
D__inference_dense_9_layer_call_and_return_conditional_losses_6760903j
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
_user_specified_name	6763564:'#
!
_user_specified_name	6763566
�
�
)__inference_dense_7_layer_call_fn_6762772

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
D__inference_dense_7_layer_call_and_return_conditional_losses_6760435j
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
_user_specified_name	6762766:'#
!
_user_specified_name	6762768
�
�
8__inference_layer_normalization_19_layer_call_fn_6763621

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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_6760944j
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
_user_specified_name	6763615:'#
!
_user_specified_name	6763617
�+
�
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6762505	
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6761407

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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6763607

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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_6763162

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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6761096	
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_6760556

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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6761229	
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6761304	
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
�
�
8__inference_layer_normalization_16_layer_call_fn_6763367

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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_6760790j
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
_user_specified_name	6763361:'#
!
_user_specified_name	6763363"�L
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
)__inference_model_1_layer_call_fn_6761592
)__inference_model_1_layer_call_fn_6761757�
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
D__inference_model_1_layer_call_and_return_conditional_losses_6760982
D__inference_model_1_layer_call_and_return_conditional_losses_6761427�
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
"__inference__wrapped_model_6760184input_2"�
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
8__inference_multi_head_attention_6_layer_call_fn_6762413
8__inference_multi_head_attention_6_layer_call_fn_6762435�
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6762470
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6762505�
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
8__inference_layer_normalization_10_layer_call_fn_6762514�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_6762536�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_dense_6_layer_call_fn_6762545�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_6_layer_call_and_return_conditional_losses_6762560�
���
FullArgSpec
args�

jinputs
varargs
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
+__inference_dropout_6_layer_call_fn_6762565
+__inference_dropout_6_layer_call_fn_6762570�
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
F__inference_dropout_6_layer_call_and_return_conditional_losses_6762582
F__inference_dropout_6_layer_call_and_return_conditional_losses_6762587�
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
8__inference_layer_normalization_11_layer_call_fn_6762596�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_6762618�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_multi_head_attention_7_layer_call_fn_6762640
8__inference_multi_head_attention_7_layer_call_fn_6762662�
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6762697
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6762732�
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
8__inference_layer_normalization_12_layer_call_fn_6762741�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_6762763�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_dense_7_layer_call_fn_6762772�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_7_layer_call_and_return_conditional_losses_6762787�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_multi_head_attention_8_layer_call_fn_6762809
8__inference_multi_head_attention_8_layer_call_fn_6762831�
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6762866
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6762901�
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
+__inference_dropout_7_layer_call_fn_6762906
+__inference_dropout_7_layer_call_fn_6762911�
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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6762923
F__inference_dropout_7_layer_call_and_return_conditional_losses_6762928�
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
8__inference_layer_normalization_14_layer_call_fn_6762937�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_6762959�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_layer_normalization_13_layer_call_fn_6762968�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_6762990�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_multi_head_attention_9_layer_call_fn_6763012
8__inference_multi_head_attention_9_layer_call_fn_6763034�
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6763069
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6763104�
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
+__inference_dropout_8_layer_call_fn_6763109
+__inference_dropout_8_layer_call_fn_6763114�
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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6763126
F__inference_dropout_8_layer_call_and_return_conditional_losses_6763131�
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
8__inference_layer_normalization_15_layer_call_fn_6763140�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_6763162�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_dense_8_layer_call_fn_6763171�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_8_layer_call_and_return_conditional_losses_6763186�
���
FullArgSpec
args�

jinputs
varargs
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
9__inference_multi_head_attention_10_layer_call_fn_6763208
9__inference_multi_head_attention_10_layer_call_fn_6763230�
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6763265
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6763300�
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
+__inference_dropout_9_layer_call_fn_6763305
+__inference_dropout_9_layer_call_fn_6763310�
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
F__inference_dropout_9_layer_call_and_return_conditional_losses_6763322
F__inference_dropout_9_layer_call_and_return_conditional_losses_6763327�
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
8__inference_layer_normalization_17_layer_call_fn_6763336�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_6763358�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_layer_normalization_16_layer_call_fn_6763367�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_6763389�
���
FullArgSpec
args�

jinputs
varargs
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
9__inference_multi_head_attention_11_layer_call_fn_6763411
9__inference_multi_head_attention_11_layer_call_fn_6763433�
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6763468
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6763503�
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
,__inference_dropout_10_layer_call_fn_6763508
,__inference_dropout_10_layer_call_fn_6763513�
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_6763525
G__inference_dropout_10_layer_call_and_return_conditional_losses_6763530�
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
8__inference_layer_normalization_18_layer_call_fn_6763539�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_6763561�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_dense_9_layer_call_fn_6763570�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_9_layer_call_and_return_conditional_losses_6763585�
���
FullArgSpec
args�

jinputs
varargs
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
,__inference_dropout_11_layer_call_fn_6763590
,__inference_dropout_11_layer_call_fn_6763595�
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6763607
G__inference_dropout_11_layer_call_and_return_conditional_losses_6763612�
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
8__inference_layer_normalization_19_layer_call_fn_6763621�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_6763643�
���
FullArgSpec
args�

jinputs
varargs
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
<__inference_global_average_pooling1d_1_layer_call_fn_6763648�
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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6763654�
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
*__inference_dense_10_layer_call_fn_6763663�
���
FullArgSpec
args�

jinputs
varargs
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
E__inference_dense_10_layer_call_and_return_conditional_losses_6763673�
���
FullArgSpec
args�

jinputs
varargs
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
*__inference_dense_11_layer_call_fn_6763682�
���
FullArgSpec
args�

jinputs
varargs
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
E__inference_dense_11_layer_call_and_return_conditional_losses_6763692�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_model_1_layer_call_fn_6761592input_2"�
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
)__inference_model_1_layer_call_fn_6761757input_2"�
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
D__inference_model_1_layer_call_and_return_conditional_losses_6760982input_2"�
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
D__inference_model_1_layer_call_and_return_conditional_losses_6761427input_2"�
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
%__inference_signature_wrapper_6762391input_2"�
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
8__inference_multi_head_attention_6_layer_call_fn_6762413queryvalue"�
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
8__inference_multi_head_attention_6_layer_call_fn_6762435queryvalue"�
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6762470queryvalue"�
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6762505queryvalue"�
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
8__inference_layer_normalization_10_layer_call_fn_6762514inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_6762536inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_dense_6_layer_call_fn_6762545inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_6_layer_call_and_return_conditional_losses_6762560inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
+__inference_dropout_6_layer_call_fn_6762565inputs"�
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
+__inference_dropout_6_layer_call_fn_6762570inputs"�
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
F__inference_dropout_6_layer_call_and_return_conditional_losses_6762582inputs"�
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
F__inference_dropout_6_layer_call_and_return_conditional_losses_6762587inputs"�
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
8__inference_layer_normalization_11_layer_call_fn_6762596inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_6762618inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_multi_head_attention_7_layer_call_fn_6762640queryvalue"�
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
8__inference_multi_head_attention_7_layer_call_fn_6762662queryvalue"�
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6762697queryvalue"�
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6762732queryvalue"�
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
8__inference_layer_normalization_12_layer_call_fn_6762741inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_6762763inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_dense_7_layer_call_fn_6762772inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_7_layer_call_and_return_conditional_losses_6762787inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_multi_head_attention_8_layer_call_fn_6762809queryvalue"�
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
8__inference_multi_head_attention_8_layer_call_fn_6762831queryvalue"�
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6762866queryvalue"�
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6762901queryvalue"�
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
+__inference_dropout_7_layer_call_fn_6762906inputs"�
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
+__inference_dropout_7_layer_call_fn_6762911inputs"�
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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6762923inputs"�
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
F__inference_dropout_7_layer_call_and_return_conditional_losses_6762928inputs"�
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
8__inference_layer_normalization_14_layer_call_fn_6762937inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_6762959inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_layer_normalization_13_layer_call_fn_6762968inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_6762990inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_multi_head_attention_9_layer_call_fn_6763012queryvalue"�
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
8__inference_multi_head_attention_9_layer_call_fn_6763034queryvalue"�
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6763069queryvalue"�
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6763104queryvalue"�
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
+__inference_dropout_8_layer_call_fn_6763109inputs"�
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
+__inference_dropout_8_layer_call_fn_6763114inputs"�
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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6763126inputs"�
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
F__inference_dropout_8_layer_call_and_return_conditional_losses_6763131inputs"�
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
8__inference_layer_normalization_15_layer_call_fn_6763140inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_6763162inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_dense_8_layer_call_fn_6763171inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_8_layer_call_and_return_conditional_losses_6763186inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
9__inference_multi_head_attention_10_layer_call_fn_6763208queryvalue"�
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
9__inference_multi_head_attention_10_layer_call_fn_6763230queryvalue"�
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6763265queryvalue"�
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6763300queryvalue"�
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
+__inference_dropout_9_layer_call_fn_6763305inputs"�
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
+__inference_dropout_9_layer_call_fn_6763310inputs"�
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
F__inference_dropout_9_layer_call_and_return_conditional_losses_6763322inputs"�
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
F__inference_dropout_9_layer_call_and_return_conditional_losses_6763327inputs"�
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
8__inference_layer_normalization_17_layer_call_fn_6763336inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_6763358inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
8__inference_layer_normalization_16_layer_call_fn_6763367inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_6763389inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
9__inference_multi_head_attention_11_layer_call_fn_6763411queryvalue"�
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
9__inference_multi_head_attention_11_layer_call_fn_6763433queryvalue"�
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6763468queryvalue"�
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6763503queryvalue"�
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
,__inference_dropout_10_layer_call_fn_6763508inputs"�
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
,__inference_dropout_10_layer_call_fn_6763513inputs"�
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_6763525inputs"�
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_6763530inputs"�
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
8__inference_layer_normalization_18_layer_call_fn_6763539inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_6763561inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
)__inference_dense_9_layer_call_fn_6763570inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_9_layer_call_and_return_conditional_losses_6763585inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
,__inference_dropout_11_layer_call_fn_6763590inputs"�
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
,__inference_dropout_11_layer_call_fn_6763595inputs"�
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6763607inputs"�
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_6763612inputs"�
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
8__inference_layer_normalization_19_layer_call_fn_6763621inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_6763643inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
<__inference_global_average_pooling1d_1_layer_call_fn_6763648inputs"�
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
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6763654inputs"�
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
*__inference_dense_10_layer_call_fn_6763663inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
E__inference_dense_10_layer_call_and_return_conditional_losses_6763673inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
*__inference_dense_11_layer_call_fn_6763682inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
E__inference_dense_11_layer_call_and_return_conditional_losses_6763692inputs"�
���
FullArgSpec
args�

jinputs
varargs
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
"__inference__wrapped_model_6760184����������LMUVij������������������������������������������������������������������+�(
!�
�
input_2
� "*�'
%
dense_11�
dense_11�
E__inference_dense_10_layer_call_and_return_conditional_losses_6763673S��&�#
�
�
inputs
� "#� 
�
tensor_0 
� v
*__inference_dense_10_layer_call_fn_6763663H��&�#
�
�
inputs
� "�
unknown �
E__inference_dense_11_layer_call_and_return_conditional_losses_6763692S��&�#
�
�
inputs 
� "#� 
�
tensor_0
� v
*__inference_dense_11_layer_call_fn_6763682H��&�#
�
�
inputs 
� "�
unknown�
D__inference_dense_6_layer_call_and_return_conditional_losses_6762560YUV*�'
 �
�
inputs
� "'�$
�
tensor_0
� {
)__inference_dense_6_layer_call_fn_6762545NUV*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_7_layer_call_and_return_conditional_losses_6762787[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_7_layer_call_fn_6762772P��*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_8_layer_call_and_return_conditional_losses_6763186[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_8_layer_call_fn_6763171P��*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_9_layer_call_and_return_conditional_losses_6763585[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_9_layer_call_fn_6763570P��*�'
 �
�
inputs
� "�
unknown�
G__inference_dropout_10_layer_call_and_return_conditional_losses_6763525Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_10_layer_call_and_return_conditional_losses_6763530Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_10_layer_call_fn_6763508N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_10_layer_call_fn_6763513N.�+
$�!
�
inputs
p 
� "�
unknown�
G__inference_dropout_11_layer_call_and_return_conditional_losses_6763607Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
G__inference_dropout_11_layer_call_and_return_conditional_losses_6763612Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� ~
,__inference_dropout_11_layer_call_fn_6763590N.�+
$�!
�
inputs
p
� "�
unknown~
,__inference_dropout_11_layer_call_fn_6763595N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_6_layer_call_and_return_conditional_losses_6762582Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_6_layer_call_and_return_conditional_losses_6762587Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_6_layer_call_fn_6762565N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_6_layer_call_fn_6762570N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_7_layer_call_and_return_conditional_losses_6762923Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_7_layer_call_and_return_conditional_losses_6762928Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_7_layer_call_fn_6762906N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_7_layer_call_fn_6762911N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_8_layer_call_and_return_conditional_losses_6763126Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_8_layer_call_and_return_conditional_losses_6763131Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_8_layer_call_fn_6763109N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_8_layer_call_fn_6763114N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_9_layer_call_and_return_conditional_losses_6763322Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_9_layer_call_and_return_conditional_losses_6763327Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_9_layer_call_fn_6763305N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_9_layer_call_fn_6763310N.�+
$�!
�
inputs
p 
� "�
unknown�
W__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6763654�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
<__inference_global_average_pooling1d_1_layer_call_fn_6763648wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
S__inference_layer_normalization_10_layer_call_and_return_conditional_losses_6762536YLM*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_10_layer_call_fn_6762514NLM*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_11_layer_call_and_return_conditional_losses_6762618Yij*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_11_layer_call_fn_6762596Nij*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_12_layer_call_and_return_conditional_losses_6762763[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_12_layer_call_fn_6762741P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_13_layer_call_and_return_conditional_losses_6762990[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_13_layer_call_fn_6762968P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_14_layer_call_and_return_conditional_losses_6762959[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_14_layer_call_fn_6762937P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_15_layer_call_and_return_conditional_losses_6763162[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_15_layer_call_fn_6763140P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_16_layer_call_and_return_conditional_losses_6763389[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_16_layer_call_fn_6763367P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_17_layer_call_and_return_conditional_losses_6763358[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_17_layer_call_fn_6763336P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_18_layer_call_and_return_conditional_losses_6763561[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_18_layer_call_fn_6763539P��*�'
 �
�
inputs
� "�
unknown�
S__inference_layer_normalization_19_layer_call_and_return_conditional_losses_6763643[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
8__inference_layer_normalization_19_layer_call_fn_6763621P��*�'
 �
�
inputs
� "�
unknown�
D__inference_model_1_layer_call_and_return_conditional_losses_6760982����������LMUVij������������������������������������������������������������������3�0
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
D__inference_model_1_layer_call_and_return_conditional_losses_6761427����������LMUVij������������������������������������������������������������������3�0
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
)__inference_model_1_layer_call_fn_6761592����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_2
p

 
� "�
unknown�
)__inference_model_1_layer_call_fn_6761757����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_2
p 

 
� "�
unknown�
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6763265���������Y�V
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
T__inference_multi_head_attention_10_layer_call_and_return_conditional_losses_6763300���������Y�V
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
9__inference_multi_head_attention_10_layer_call_fn_6763208���������Y�V
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
9__inference_multi_head_attention_10_layer_call_fn_6763230���������Y�V
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6763468���������Y�V
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
T__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_6763503���������Y�V
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
9__inference_multi_head_attention_11_layer_call_fn_6763411���������Y�V
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
9__inference_multi_head_attention_11_layer_call_fn_6763433���������Y�V
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6762470���������Y�V
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
S__inference_multi_head_attention_6_layer_call_and_return_conditional_losses_6762505���������Y�V
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
8__inference_multi_head_attention_6_layer_call_fn_6762413���������Y�V
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
8__inference_multi_head_attention_6_layer_call_fn_6762435���������Y�V
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6762697���������Y�V
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
S__inference_multi_head_attention_7_layer_call_and_return_conditional_losses_6762732���������Y�V
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
8__inference_multi_head_attention_7_layer_call_fn_6762640���������Y�V
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
8__inference_multi_head_attention_7_layer_call_fn_6762662���������Y�V
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6762866���������Y�V
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
S__inference_multi_head_attention_8_layer_call_and_return_conditional_losses_6762901���������Y�V
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
8__inference_multi_head_attention_8_layer_call_fn_6762809���������Y�V
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
8__inference_multi_head_attention_8_layer_call_fn_6762831���������Y�V
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6763069���������Y�V
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
S__inference_multi_head_attention_9_layer_call_and_return_conditional_losses_6763104���������Y�V
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
8__inference_multi_head_attention_9_layer_call_fn_6763012���������Y�V
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
8__inference_multi_head_attention_9_layer_call_fn_6763034���������Y�V
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
%__inference_signature_wrapper_6762391����������LMUVij������������������������������������������������������������������6�3
� 
,�)
'
input_2�
input_2"*�'
%
dense_11�
dense_11