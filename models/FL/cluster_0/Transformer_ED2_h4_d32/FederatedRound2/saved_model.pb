��1
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
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��(
�
,multi_head_attention_5/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_5/attention_output/bias
�
@multi_head_attention_5/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_5/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_5/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_5/attention_output/kernel
�
Bmulti_head_attention_5/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_5/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_5/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_5/value/bias
�
5multi_head_attention_5/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_5/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_5/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_5/value/kernel
�
7multi_head_attention_5/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_5/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_5/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_5/key/bias
�
3multi_head_attention_5/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_5/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_5/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_5/key/kernel
�
5multi_head_attention_5/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_5/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_5/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_5/query/bias
�
5multi_head_attention_5/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_5/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_5/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_5/query/kernel
�
7multi_head_attention_5/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_5/query/kernel*"
_output_shapes
:*
dtype0
�
,multi_head_attention_4/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_4/attention_output/bias
�
@multi_head_attention_4/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_4/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_4/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_4/attention_output/kernel
�
Bmulti_head_attention_4/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_4/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_4/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_4/value/bias
�
5multi_head_attention_4/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_4/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_4/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_4/value/kernel
�
7multi_head_attention_4/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_4/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_4/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_4/key/bias
�
3multi_head_attention_4/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_4/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_4/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_4/key/kernel
�
5multi_head_attention_4/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_4/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_4/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_4/query/bias
�
5multi_head_attention_4/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_4/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_4/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_4/query/kernel
�
7multi_head_attention_4/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_4/query/kernel*"
_output_shapes
:*
dtype0
�
,multi_head_attention_3/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_3/attention_output/bias
�
@multi_head_attention_3/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_3/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_3/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_3/attention_output/kernel
�
Bmulti_head_attention_3/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_3/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_3/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_3/value/bias
�
5multi_head_attention_3/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_3/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_3/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_3/value/kernel
�
7multi_head_attention_3/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_3/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_3/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_3/key/bias
�
3multi_head_attention_3/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_3/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_3/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_3/key/kernel
�
5multi_head_attention_3/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_3/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_3/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_3/query/bias
�
5multi_head_attention_3/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_3/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_3/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_3/query/kernel
�
7multi_head_attention_3/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_3/query/kernel*"
_output_shapes
:*
dtype0
�
,multi_head_attention_2/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_2/attention_output/bias
�
@multi_head_attention_2/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_2/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_2/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_2/attention_output/kernel
�
Bmulti_head_attention_2/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_2/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_2/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_2/value/bias
�
5multi_head_attention_2/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_2/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_2/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_2/value/kernel
�
7multi_head_attention_2/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_2/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_2/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_2/key/bias
�
3multi_head_attention_2/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_2/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_2/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_2/key/kernel
�
5multi_head_attention_2/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_2/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_2/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_2/query/bias
�
5multi_head_attention_2/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_2/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_2/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_2/query/kernel
�
7multi_head_attention_2/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_2/query/kernel*"
_output_shapes
:*
dtype0
�
,multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_1/attention_output/bias
�
@multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_1/attention_output/bias*
_output_shapes
:*
dtype0
�
.multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_1/attention_output/kernel
�
Bmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_1/value/bias
�
5multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/value/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_1/value/kernel
�
7multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_1/key/bias
�
3multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_1/key/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_1/key/kernel
�
5multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/key/kernel*"
_output_shapes
:*
dtype0
�
!multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_1/query/bias
�
5multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/query/bias*
_output_shapes

:*
dtype0
�
#multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_1/query/kernel
�
7multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/query/kernel*"
_output_shapes
:*
dtype0
�
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*multi_head_attention/attention_output/bias
�
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes
:*
dtype0
�
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention/attention_output/kernel
�
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention/value/bias
�
3multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/value/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention/value/kernel
�
5multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_namemulti_head_attention/key/bias
�
1multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias*
_output_shapes

:*
dtype0
�
multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!multi_head_attention/key/kernel
�
3multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/kernel*"
_output_shapes
:*
dtype0
�
multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention/query/bias
�
3multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/query/bias*
_output_shapes

:*
dtype0
�
!multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention/query/kernel
�
5multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/kernel*"
_output_shapes
:*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

: *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
: *
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

: *
dtype0
�
layer_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_9/beta
�
.layer_normalization_9/beta/Read/ReadVariableOpReadVariableOplayer_normalization_9/beta*
_output_shapes
:*
dtype0
�
layer_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_9/gamma
�
/layer_normalization_9/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_9/gamma*
_output_shapes
:*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_8/beta
�
.layer_normalization_8/beta/Read/ReadVariableOpReadVariableOplayer_normalization_8/beta*
_output_shapes
:*
dtype0
�
layer_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_8/gamma
�
/layer_normalization_8/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_8/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_6/beta
�
.layer_normalization_6/beta/Read/ReadVariableOpReadVariableOplayer_normalization_6/beta*
_output_shapes
:*
dtype0
�
layer_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_6/gamma
�
/layer_normalization_6/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_6/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_7/beta
�
.layer_normalization_7/beta/Read/ReadVariableOpReadVariableOplayer_normalization_7/beta*
_output_shapes
:*
dtype0
�
layer_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_7/gamma
�
/layer_normalization_7/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_7/gamma*
_output_shapes
:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_5/beta
�
.layer_normalization_5/beta/Read/ReadVariableOpReadVariableOplayer_normalization_5/beta*
_output_shapes
:*
dtype0
�
layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_5/gamma
�
/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_5/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_3/beta
�
.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes
:*
dtype0
�
layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_3/gamma
�
/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_4/beta
�
.layer_normalization_4/beta/Read/ReadVariableOpReadVariableOplayer_normalization_4/beta*
_output_shapes
:*
dtype0
�
layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_4/gamma
�
/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_4/gamma*
_output_shapes
:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_2/beta
�
.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes
:*
dtype0
�
layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_2/gamma
�
/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_1/beta
�
.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes
:*
dtype0
�
layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_1/gamma
�
/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes
:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
�
layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namelayer_normalization/beta
�
,layer_normalization/beta/Read/ReadVariableOpReadVariableOplayer_normalization/beta*
_output_shapes
:*
dtype0
�
layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelayer_normalization/gamma
�
-layer_normalization/gamma/Read/ReadVariableOpReadVariableOplayer_normalization/gamma*
_output_shapes
:*
dtype0
p
serving_default_input_1Placeholder*"
_output_shapes
:*
dtype0*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biaslayer_normalization/gammalayer_normalization/betadense/kernel
dense/biaslayer_normalization_1/gammalayer_normalization_1/beta#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biaslayer_normalization_2/gammalayer_normalization_2/betadense_1/kerneldense_1/bias#multi_head_attention_2/query/kernel!multi_head_attention_2/query/bias!multi_head_attention_2/key/kernelmulti_head_attention_2/key/bias#multi_head_attention_2/value/kernel!multi_head_attention_2/value/bias.multi_head_attention_2/attention_output/kernel,multi_head_attention_2/attention_output/biaslayer_normalization_4/gammalayer_normalization_4/betalayer_normalization_3/gammalayer_normalization_3/beta#multi_head_attention_3/query/kernel!multi_head_attention_3/query/bias!multi_head_attention_3/key/kernelmulti_head_attention_3/key/bias#multi_head_attention_3/value/kernel!multi_head_attention_3/value/bias.multi_head_attention_3/attention_output/kernel,multi_head_attention_3/attention_output/biaslayer_normalization_5/gammalayer_normalization_5/betadense_2/kerneldense_2/bias#multi_head_attention_4/query/kernel!multi_head_attention_4/query/bias!multi_head_attention_4/key/kernelmulti_head_attention_4/key/bias#multi_head_attention_4/value/kernel!multi_head_attention_4/value/bias.multi_head_attention_4/attention_output/kernel,multi_head_attention_4/attention_output/biaslayer_normalization_7/gammalayer_normalization_7/betalayer_normalization_6/gammalayer_normalization_6/beta#multi_head_attention_5/query/kernel!multi_head_attention_5/query/bias!multi_head_attention_5/key/kernelmulti_head_attention_5/key/bias#multi_head_attention_5/value/kernel!multi_head_attention_5/value/bias.multi_head_attention_5/attention_output/kernel,multi_head_attention_5/attention_output/biaslayer_normalization_8/gammalayer_normalization_8/betadense_3/kerneldense_3/biaslayer_normalization_9/gammalayer_normalization_9/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*\
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
%__inference_signature_wrapper_4470974

NoOpNoOp
��
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
hb
VARIABLE_VALUElayer_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUElayer_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUElayer_normalization_4/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_4/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUElayer_normalization_3/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_3/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_5/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_5/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_2/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_7/gamma6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_7/beta5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_6/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_6/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_8/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_8/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_3/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_3/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_9/gamma6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_9/beta5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_4/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_5/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_5/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
a[
VARIABLE_VALUE!multi_head_attention/query/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/query/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/key/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmulti_head_attention/key/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention/value/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/value/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE,multi_head_attention/attention_output/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE*multi_head_attention/attention_output/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/query/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/query/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/key/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_1/key/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/value/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/value/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_1/attention_output/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_1/attention_output/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_2/query/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_2/query/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_2/key/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_2/key/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_2/value/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_2/value/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_2/attention_output/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_2/attention_output/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_3/query/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_3/query/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_3/key/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_3/key/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_3/value/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_3/value/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_3/attention_output/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_3/attention_output/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_4/query/kernel'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_4/query/bias'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_4/key/kernel'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_4/key/bias'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_4/value/kernel'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_4/value/bias'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_4/attention_output/kernel'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_4/attention_output/bias'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_5/query/kernel'variables/62/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_5/query/bias'variables/63/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_5/key/kernel'variables/64/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_5/key/bias'variables/65/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_5/value/kernel'variables/66/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_5/value/bias'variables/67/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_5/attention_output/kernel'variables/68/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_5/attention_output/bias'variables/69/.ATTRIBUTES/VARIABLE_VALUE*
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer_normalization/gammalayer_normalization/betadense/kernel
dense/biaslayer_normalization_1/gammalayer_normalization_1/betalayer_normalization_2/gammalayer_normalization_2/betadense_1/kerneldense_1/biaslayer_normalization_4/gammalayer_normalization_4/betalayer_normalization_3/gammalayer_normalization_3/betalayer_normalization_5/gammalayer_normalization_5/betadense_2/kerneldense_2/biaslayer_normalization_7/gammalayer_normalization_7/betalayer_normalization_6/gammalayer_normalization_6/betalayer_normalization_8/gammalayer_normalization_8/betadense_3/kerneldense_3/biaslayer_normalization_9/gammalayer_normalization_9/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/bias#multi_head_attention_2/query/kernel!multi_head_attention_2/query/bias!multi_head_attention_2/key/kernelmulti_head_attention_2/key/bias#multi_head_attention_2/value/kernel!multi_head_attention_2/value/bias.multi_head_attention_2/attention_output/kernel,multi_head_attention_2/attention_output/bias#multi_head_attention_3/query/kernel!multi_head_attention_3/query/bias!multi_head_attention_3/key/kernelmulti_head_attention_3/key/bias#multi_head_attention_3/value/kernel!multi_head_attention_3/value/bias.multi_head_attention_3/attention_output/kernel,multi_head_attention_3/attention_output/bias#multi_head_attention_4/query/kernel!multi_head_attention_4/query/bias!multi_head_attention_4/key/kernelmulti_head_attention_4/key/bias#multi_head_attention_4/value/kernel!multi_head_attention_4/value/bias.multi_head_attention_4/attention_output/kernel,multi_head_attention_4/attention_output/bias#multi_head_attention_5/query/kernel!multi_head_attention_5/query/bias!multi_head_attention_5/key/kernelmulti_head_attention_5/key/bias#multi_head_attention_5/value/kernel!multi_head_attention_5/value/bias.multi_head_attention_5/attention_output/kernel,multi_head_attention_5/attention_output/biasConst*]
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
 __inference__traced_save_4472777
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization/gammalayer_normalization/betadense/kernel
dense/biaslayer_normalization_1/gammalayer_normalization_1/betalayer_normalization_2/gammalayer_normalization_2/betadense_1/kerneldense_1/biaslayer_normalization_4/gammalayer_normalization_4/betalayer_normalization_3/gammalayer_normalization_3/betalayer_normalization_5/gammalayer_normalization_5/betadense_2/kerneldense_2/biaslayer_normalization_7/gammalayer_normalization_7/betalayer_normalization_6/gammalayer_normalization_6/betalayer_normalization_8/gammalayer_normalization_8/betadense_3/kerneldense_3/biaslayer_normalization_9/gammalayer_normalization_9/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/bias#multi_head_attention_2/query/kernel!multi_head_attention_2/query/bias!multi_head_attention_2/key/kernelmulti_head_attention_2/key/bias#multi_head_attention_2/value/kernel!multi_head_attention_2/value/bias.multi_head_attention_2/attention_output/kernel,multi_head_attention_2/attention_output/bias#multi_head_attention_3/query/kernel!multi_head_attention_3/query/bias!multi_head_attention_3/key/kernelmulti_head_attention_3/key/bias#multi_head_attention_3/value/kernel!multi_head_attention_3/value/bias.multi_head_attention_3/attention_output/kernel,multi_head_attention_3/attention_output/bias#multi_head_attention_4/query/kernel!multi_head_attention_4/query/bias!multi_head_attention_4/key/kernelmulti_head_attention_4/key/bias#multi_head_attention_4/value/kernel!multi_head_attention_4/value/bias.multi_head_attention_4/attention_output/kernel,multi_head_attention_4/attention_output/bias#multi_head_attention_5/query/kernel!multi_head_attention_5/query/bias!multi_head_attention_5/key/kernelmulti_head_attention_5/key/bias#multi_head_attention_5/value/kernel!multi_head_attention_5/value/bias.multi_head_attention_5/attention_output/kernel,multi_head_attention_5/attention_output/bias*\
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
#__inference__traced_restore_4473026�#
�

e
F__inference_dropout_3_layer_call_and_return_conditional_losses_4471905

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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4472113

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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4471449	
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
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4471346

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
��
�X
"__inference__wrapped_model_4468767
input_1\
Fmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_query_add_readvariableop_resource:Z
Dmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource:L
:model_multi_head_attention_key_add_readvariableop_resource:\
Fmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_value_add_readvariableop_resource:g
Qmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:U
Gmodel_multi_head_attention_attention_output_add_readvariableop_resource:M
?model_layer_normalization_batchnorm_mul_readvariableop_resource:I
;model_layer_normalization_batchnorm_readvariableop_resource:?
-model_dense_tensordot_readvariableop_resource:9
+model_dense_biasadd_readvariableop_resource:O
Amodel_layer_normalization_1_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_1_batchnorm_readvariableop_resource:^
Hmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_1_query_add_readvariableop_resource:\
Fmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_1_key_add_readvariableop_resource:^
Hmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_1_value_add_readvariableop_resource:i
Smodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:W
Imodel_multi_head_attention_1_attention_output_add_readvariableop_resource:O
Amodel_layer_normalization_2_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_2_batchnorm_readvariableop_resource:A
/model_dense_1_tensordot_readvariableop_resource:;
-model_dense_1_biasadd_readvariableop_resource:^
Hmodel_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_2_query_add_readvariableop_resource:\
Fmodel_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_2_key_add_readvariableop_resource:^
Hmodel_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_2_value_add_readvariableop_resource:i
Smodel_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:W
Imodel_multi_head_attention_2_attention_output_add_readvariableop_resource:O
Amodel_layer_normalization_4_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_4_batchnorm_readvariableop_resource:O
Amodel_layer_normalization_3_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_3_batchnorm_readvariableop_resource:^
Hmodel_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_3_query_add_readvariableop_resource:\
Fmodel_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_3_key_add_readvariableop_resource:^
Hmodel_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_3_value_add_readvariableop_resource:i
Smodel_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:W
Imodel_multi_head_attention_3_attention_output_add_readvariableop_resource:O
Amodel_layer_normalization_5_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_5_batchnorm_readvariableop_resource:A
/model_dense_2_tensordot_readvariableop_resource:;
-model_dense_2_biasadd_readvariableop_resource:^
Hmodel_multi_head_attention_4_query_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_4_query_add_readvariableop_resource:\
Fmodel_multi_head_attention_4_key_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_4_key_add_readvariableop_resource:^
Hmodel_multi_head_attention_4_value_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_4_value_add_readvariableop_resource:i
Smodel_multi_head_attention_4_attention_output_einsum_einsum_readvariableop_resource:W
Imodel_multi_head_attention_4_attention_output_add_readvariableop_resource:O
Amodel_layer_normalization_7_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_7_batchnorm_readvariableop_resource:O
Amodel_layer_normalization_6_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_6_batchnorm_readvariableop_resource:^
Hmodel_multi_head_attention_5_query_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_5_query_add_readvariableop_resource:\
Fmodel_multi_head_attention_5_key_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_5_key_add_readvariableop_resource:^
Hmodel_multi_head_attention_5_value_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_5_value_add_readvariableop_resource:i
Smodel_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:W
Imodel_multi_head_attention_5_attention_output_add_readvariableop_resource:O
Amodel_layer_normalization_8_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_8_batchnorm_readvariableop_resource:A
/model_dense_3_tensordot_readvariableop_resource:;
-model_dense_3_biasadd_readvariableop_resource:O
Amodel_layer_normalization_9_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_9_batchnorm_readvariableop_resource:>
,model_dense_4_matmul_readvariableop_resource: ;
-model_dense_4_biasadd_readvariableop_resource: >
,model_dense_5_matmul_readvariableop_resource: ;
-model_dense_5_biasadd_readvariableop_resource:
identity��"model/dense/BiasAdd/ReadVariableOp�$model/dense/Tensordot/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�&model/dense_1/Tensordot/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�&model/dense_2/Tensordot/ReadVariableOp�$model/dense_3/BiasAdd/ReadVariableOp�&model/dense_3/Tensordot/ReadVariableOp�$model/dense_4/BiasAdd/ReadVariableOp�#model/dense_4/MatMul/ReadVariableOp�$model/dense_5/BiasAdd/ReadVariableOp�#model/dense_5/MatMul/ReadVariableOp�2model/layer_normalization/batchnorm/ReadVariableOp�6model/layer_normalization/batchnorm/mul/ReadVariableOp�4model/layer_normalization_1/batchnorm/ReadVariableOp�8model/layer_normalization_1/batchnorm/mul/ReadVariableOp�4model/layer_normalization_2/batchnorm/ReadVariableOp�8model/layer_normalization_2/batchnorm/mul/ReadVariableOp�4model/layer_normalization_3/batchnorm/ReadVariableOp�8model/layer_normalization_3/batchnorm/mul/ReadVariableOp�4model/layer_normalization_4/batchnorm/ReadVariableOp�8model/layer_normalization_4/batchnorm/mul/ReadVariableOp�4model/layer_normalization_5/batchnorm/ReadVariableOp�8model/layer_normalization_5/batchnorm/mul/ReadVariableOp�4model/layer_normalization_6/batchnorm/ReadVariableOp�8model/layer_normalization_6/batchnorm/mul/ReadVariableOp�4model/layer_normalization_7/batchnorm/ReadVariableOp�8model/layer_normalization_7/batchnorm/mul/ReadVariableOp�4model/layer_normalization_8/batchnorm/ReadVariableOp�8model/layer_normalization_8/batchnorm/mul/ReadVariableOp�4model/layer_normalization_9/batchnorm/ReadVariableOp�8model/layer_normalization_9/batchnorm/mul/ReadVariableOp�>model/multi_head_attention/attention_output/add/ReadVariableOp�Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�1model/multi_head_attention/key/add/ReadVariableOp�;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp�3model/multi_head_attention/query/add/ReadVariableOp�=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp�3model/multi_head_attention/value/add/ReadVariableOp�=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_1/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_1/key/add/ReadVariableOp�=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_1/query/add/ReadVariableOp�?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_1/value/add/ReadVariableOp�?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_2/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_2/key/add/ReadVariableOp�=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_2/query/add/ReadVariableOp�?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_2/value/add/ReadVariableOp�?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_3/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_3/key/add/ReadVariableOp�=model/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_3/query/add/ReadVariableOp�?model/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_3/value/add/ReadVariableOp�?model/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_4/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_4/key/add/ReadVariableOp�=model/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_4/query/add/ReadVariableOp�?model/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_4/value/add/ReadVariableOp�?model/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_5/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_5/key/add/ReadVariableOp�=model/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_5/query/add/ReadVariableOp�?model/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_5/value/add/ReadVariableOp�?model/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp�
model/tf.__operators__.add/yConst*
_output_shapes

:*
dtype0*�
value�B�"�y4=0�;��<�#=�5ün��<�l��I�]�����;:�뼒a�<�"�qJ=7�@��	���<�� D8�@=��J=�i=���<�E< �3;@�0� �8<G�-=:���$=��t���=��g���� ������)=��F�h�<<ɳ=(q <���;Z
= :<����h��;���<�����:`w;-�<�XL��x��( :<��<����,��Z�<��3=t�8�3U6����;Ȉ����;�Bμ�x<�K��i�3=�3�<)�A=�-���<@E$<s0$=L.<�(	��P�:�<�7ռ�Ű�Z��<ru�<Fi�<��Z<b9�<�z2�@��:�.�<N�<��=�G�<]4C��t<�C��< �ۼ�X:Rf�<� ��<B��<���G�=`K��B���y;����{����<9�.=ڞ�<�Ξ;4���<�"=W�8=��6=0���_�� 5/�,���葩; �r9)�=��<�,=��A=��c<L~T�sD�3���`���=��A�����Q<h��;0(��G�B�4Ȓ�h��;4���c1=F��<�J=�v�F�	��^���-<�3���&=6����躌�-<s�6� ����T�< ��;"���<�%4��/	�y�D=�9�T@����<w�=h�a�d;s<�c�<�X�<q�#=�4���Xu�W<f��<����4<�y�<T���9�<.H�<z�<�"��~<�<���<�NM����<�e�<����
 model/tf.__operators__.add/AddV2AddV2input_1%model/tf.__operators__.add/y:output:0*
T0*"
_output_shapes
:�
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
.model/multi_head_attention/query/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Emodel/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
3model/multi_head_attention/query/add/ReadVariableOpReadVariableOp<model_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
$model/multi_head_attention/query/addAddV27model/multi_head_attention/query/einsum/Einsum:output:0;model/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpDmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
,model/multi_head_attention/key/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Cmodel/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
1model/multi_head_attention/key/add/ReadVariableOpReadVariableOp:model_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
"model/multi_head_attention/key/addAddV25model/multi_head_attention/key/einsum/Einsum:output:09model/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
.model/multi_head_attention/value/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Emodel/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
3model/multi_head_attention/value/add/ReadVariableOpReadVariableOp<model_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
$model/multi_head_attention/value/addAddV27model/multi_head_attention/value/einsum/Einsum:output:0;model/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:e
 model/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
model/multi_head_attention/MulMul(model/multi_head_attention/query/add:z:0)model/multi_head_attention/Mul/y:output:0*
T0*&
_output_shapes
:�
(model/multi_head_attention/einsum/EinsumEinsum&model/multi_head_attention/key/add:z:0"model/multi_head_attention/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
*model/multi_head_attention/softmax/SoftmaxSoftmax1model/multi_head_attention/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
+model/multi_head_attention/dropout/IdentityIdentity4model/multi_head_attention/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
*model/multi_head_attention/einsum_1/EinsumEinsum4model/multi_head_attention/dropout/Identity:output:0(model/multi_head_attention/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpQmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
9model/multi_head_attention/attention_output/einsum/EinsumEinsum3model/multi_head_attention/einsum_1/Einsum:output:0Pmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
>model/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpGmodel_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
/model/multi_head_attention/attention_output/addAddV2Bmodel/multi_head_attention/attention_output/einsum/Einsum:output:0Fmodel/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_1/AddV2AddV2$model/tf.__operators__.add/AddV2:z:03model/multi_head_attention/attention_output/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&model/layer_normalization/moments/meanMean&model/tf.__operators__.add_1/AddV2:z:0Amodel/layer_normalization/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
.model/layer_normalization/moments/StopGradientStopGradient/model/layer_normalization/moments/mean:output:0*
T0*"
_output_shapes
:�
3model/layer_normalization/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_1/AddV2:z:07model/layer_normalization/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
<model/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
*model/layer_normalization/moments/varianceMean7model/layer_normalization/moments/SquaredDifference:z:0Emodel/layer_normalization/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
)model/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
'model/layer_normalization/batchnorm/addAddV23model/layer_normalization/moments/variance:output:02model/layer_normalization/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
)model/layer_normalization/batchnorm/RsqrtRsqrt+model/layer_normalization/batchnorm/add:z:0*
T0*"
_output_shapes
:�
6model/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
'model/layer_normalization/batchnorm/mulMul-model/layer_normalization/batchnorm/Rsqrt:y:0>model/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
)model/layer_normalization/batchnorm/mul_1Mul&model/tf.__operators__.add_1/AddV2:z:0+model/layer_normalization/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
)model/layer_normalization/batchnorm/mul_2Mul/model/layer_normalization/moments/mean:output:0+model/layer_normalization/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
2model/layer_normalization/batchnorm/ReadVariableOpReadVariableOp;model_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
'model/layer_normalization/batchnorm/subSub:model/layer_normalization/batchnorm/ReadVariableOp:value:0-model/layer_normalization/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
)model/layer_normalization/batchnorm/add_1AddV2-model/layer_normalization/batchnorm/mul_1:z:0+model/layer_normalization/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0t
#model/dense/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
model/dense/Tensordot/ReshapeReshape-model/layer_normalization/batchnorm/add_1:z:0,model/dense/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
model/dense/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0$model/dense/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:c
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*"
_output_shapes
:o
model/dropout/IdentityIdentitymodel/dense/Relu:activations:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_2/AddV2AddV2-model/layer_normalization/batchnorm/add_1:z:0model/dropout/Identity:output:0*
T0*"
_output_shapes
:�
:model/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_1/moments/meanMean&model/tf.__operators__.add_2/AddV2:z:0Cmodel/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_1/moments/StopGradientStopGradient1model/layer_normalization_1/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_1/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_2/AddV2:z:09model/layer_normalization_1/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_1/moments/varianceMean9model/layer_normalization_1/moments/SquaredDifference:z:0Gmodel/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_1/batchnorm/addAddV25model/layer_normalization_1/moments/variance:output:04model/layer_normalization_1/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_1/batchnorm/RsqrtRsqrt-model/layer_normalization_1/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_1/batchnorm/mulMul/model/layer_normalization_1/batchnorm/Rsqrt:y:0@model/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_1/batchnorm/mul_1Mul&model/tf.__operators__.add_2/AddV2:z:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_1/batchnorm/mul_2Mul1model/layer_normalization_1/moments/mean:output:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_1/batchnorm/subSub<model/layer_normalization_1/batchnorm/ReadVariableOp:value:0/model/layer_normalization_1/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_1/batchnorm/add_1AddV2/model/layer_normalization_1/batchnorm/mul_1:z:0-model/layer_normalization_1/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_1/query/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Gmodel/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_1/query/addAddV29model/multi_head_attention_1/query/einsum/Einsum:output:0=model/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
.model/multi_head_attention_1/key/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Emodel/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
3model/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
$model/multi_head_attention_1/key/addAddV27model/multi_head_attention_1/key/einsum/Einsum:output:0;model/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_1/value/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Gmodel/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_1/value/addAddV29model/multi_head_attention_1/value/einsum/Einsum:output:0=model/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:g
"model/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
 model/multi_head_attention_1/MulMul*model/multi_head_attention_1/query/add:z:0+model/multi_head_attention_1/Mul/y:output:0*
T0*&
_output_shapes
:�
*model/multi_head_attention_1/einsum/EinsumEinsum(model/multi_head_attention_1/key/add:z:0$model/multi_head_attention_1/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
.model/multi_head_attention_1/softmax_1/SoftmaxSoftmax3model/multi_head_attention_1/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
/model/multi_head_attention_1/dropout_1/IdentityIdentity8model/multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_1/einsum_1/EinsumEinsum8model/multi_head_attention_1/dropout_1/Identity:output:0*model/multi_head_attention_1/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
;model/multi_head_attention_1/attention_output/einsum/EinsumEinsum5model/multi_head_attention_1/einsum_1/Einsum:output:0Rmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
@model/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
1model/multi_head_attention_1/attention_output/addAddV2Dmodel/multi_head_attention_1/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_3/AddV2AddV2/model/layer_normalization_1/batchnorm/add_1:z:05model/multi_head_attention_1/attention_output/add:z:0*
T0*"
_output_shapes
:�
:model/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_2/moments/meanMean&model/tf.__operators__.add_3/AddV2:z:0Cmodel/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_2/moments/StopGradientStopGradient1model/layer_normalization_2/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_2/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_3/AddV2:z:09model/layer_normalization_2/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_2/moments/varianceMean9model/layer_normalization_2/moments/SquaredDifference:z:0Gmodel/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_2/batchnorm/addAddV25model/layer_normalization_2/moments/variance:output:04model/layer_normalization_2/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_2/batchnorm/RsqrtRsqrt-model/layer_normalization_2/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_2/batchnorm/mulMul/model/layer_normalization_2/batchnorm/Rsqrt:y:0@model/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_2/batchnorm/mul_1Mul&model/tf.__operators__.add_3/AddV2:z:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_2/batchnorm/mul_2Mul1model/layer_normalization_2/moments/mean:output:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_2/batchnorm/subSub<model/layer_normalization_2/batchnorm/ReadVariableOp:value:0/model/layer_normalization_2/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_2/batchnorm/add_1AddV2/model/layer_normalization_2/batchnorm/mul_1:z:0-model/layer_normalization_2/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
&model/dense_1/Tensordot/ReadVariableOpReadVariableOp/model_dense_1_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0v
%model/dense_1/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
model/dense_1/Tensordot/ReshapeReshape/model/layer_normalization_2/batchnorm/add_1:z:0.model/dense_1/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
model/dense_1/Tensordot/MatMulMatMul(model/dense_1/Tensordot/Reshape:output:0.model/dense_1/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�r
model/dense_1/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model/dense_1/TensordotReshape(model/dense_1/Tensordot/MatMul:product:0&model/dense_1/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_1/BiasAddBiasAdd model/dense_1/Tensordot:output:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:g
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*"
_output_shapes
:s
model/dropout_1/IdentityIdentity model/dense_1/Relu:activations:0*
T0*"
_output_shapes
:�
?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_2/query/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Gmodel/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_2/query/addAddV29model/multi_head_attention_2/query/einsum/Einsum:output:0=model/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
.model/multi_head_attention_2/key/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Emodel/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
3model/multi_head_attention_2/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
$model/multi_head_attention_2/key/addAddV27model/multi_head_attention_2/key/einsum/Einsum:output:0;model/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_2/value/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Gmodel/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_2/value/addAddV29model/multi_head_attention_2/value/einsum/Einsum:output:0=model/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:g
"model/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
 model/multi_head_attention_2/MulMul*model/multi_head_attention_2/query/add:z:0+model/multi_head_attention_2/Mul/y:output:0*
T0*&
_output_shapes
:�
*model/multi_head_attention_2/einsum/EinsumEinsum(model/multi_head_attention_2/key/add:z:0$model/multi_head_attention_2/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
.model/multi_head_attention_2/softmax_2/SoftmaxSoftmax3model/multi_head_attention_2/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
/model/multi_head_attention_2/dropout_2/IdentityIdentity8model/multi_head_attention_2/softmax_2/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_2/einsum_1/EinsumEinsum8model/multi_head_attention_2/dropout_2/Identity:output:0*model/multi_head_attention_2/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Jmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
;model/multi_head_attention_2/attention_output/einsum/EinsumEinsum5model/multi_head_attention_2/einsum_1/Einsum:output:0Rmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
@model/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
1model/multi_head_attention_2/attention_output/addAddV2Dmodel/multi_head_attention_2/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_4/AddV2AddV2/model/layer_normalization_2/batchnorm/add_1:z:0!model/dropout_1/Identity:output:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_5/AddV2AddV2$model/tf.__operators__.add/AddV2:z:05model/multi_head_attention_2/attention_output/add:z:0*
T0*"
_output_shapes
:�
:model/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_4/moments/meanMean&model/tf.__operators__.add_5/AddV2:z:0Cmodel/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_4/moments/StopGradientStopGradient1model/layer_normalization_4/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_4/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_5/AddV2:z:09model/layer_normalization_4/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_4/moments/varianceMean9model/layer_normalization_4/moments/SquaredDifference:z:0Gmodel/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_4/batchnorm/addAddV25model/layer_normalization_4/moments/variance:output:04model/layer_normalization_4/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_4/batchnorm/RsqrtRsqrt-model/layer_normalization_4/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_4/batchnorm/mulMul/model/layer_normalization_4/batchnorm/Rsqrt:y:0@model/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_4/batchnorm/mul_1Mul&model/tf.__operators__.add_5/AddV2:z:0-model/layer_normalization_4/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_4/batchnorm/mul_2Mul1model/layer_normalization_4/moments/mean:output:0-model/layer_normalization_4/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_4/batchnorm/subSub<model/layer_normalization_4/batchnorm/ReadVariableOp:value:0/model/layer_normalization_4/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_4/batchnorm/add_1AddV2/model/layer_normalization_4/batchnorm/mul_1:z:0-model/layer_normalization_4/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
:model/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_3/moments/meanMean&model/tf.__operators__.add_4/AddV2:z:0Cmodel/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_3/moments/StopGradientStopGradient1model/layer_normalization_3/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_3/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_4/AddV2:z:09model/layer_normalization_3/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_3/moments/varianceMean9model/layer_normalization_3/moments/SquaredDifference:z:0Gmodel/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_3/batchnorm/addAddV25model/layer_normalization_3/moments/variance:output:04model/layer_normalization_3/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_3/batchnorm/RsqrtRsqrt-model/layer_normalization_3/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_3/batchnorm/mulMul/model/layer_normalization_3/batchnorm/Rsqrt:y:0@model/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_3/batchnorm/mul_1Mul&model/tf.__operators__.add_4/AddV2:z:0-model/layer_normalization_3/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_3/batchnorm/mul_2Mul1model/layer_normalization_3/moments/mean:output:0-model/layer_normalization_3/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_3/batchnorm/subSub<model/layer_normalization_3/batchnorm/ReadVariableOp:value:0/model/layer_normalization_3/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_3/batchnorm/add_1AddV2/model/layer_normalization_3/batchnorm/mul_1:z:0-model/layer_normalization_3/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
?model/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_3/query/einsum/EinsumEinsum/model/layer_normalization_4/batchnorm/add_1:z:0Gmodel/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_3/query/addAddV29model/multi_head_attention_3/query/einsum/Einsum:output:0=model/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
=model/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
.model/multi_head_attention_3/key/einsum/EinsumEinsum/model/layer_normalization_3/batchnorm/add_1:z:0Emodel/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
3model/multi_head_attention_3/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
$model/multi_head_attention_3/key/addAddV27model/multi_head_attention_3/key/einsum/Einsum:output:0;model/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_3/value/einsum/EinsumEinsum/model/layer_normalization_3/batchnorm/add_1:z:0Gmodel/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_3/value/addAddV29model/multi_head_attention_3/value/einsum/Einsum:output:0=model/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:g
"model/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
 model/multi_head_attention_3/MulMul*model/multi_head_attention_3/query/add:z:0+model/multi_head_attention_3/Mul/y:output:0*
T0*&
_output_shapes
:�
*model/multi_head_attention_3/einsum/EinsumEinsum(model/multi_head_attention_3/key/add:z:0$model/multi_head_attention_3/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
.model/multi_head_attention_3/softmax_3/SoftmaxSoftmax3model/multi_head_attention_3/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
/model/multi_head_attention_3/dropout_3/IdentityIdentity8model/multi_head_attention_3/softmax_3/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_3/einsum_1/EinsumEinsum8model/multi_head_attention_3/dropout_3/Identity:output:0*model/multi_head_attention_3/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Jmodel/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
;model/multi_head_attention_3/attention_output/einsum/EinsumEinsum5model/multi_head_attention_3/einsum_1/Einsum:output:0Rmodel/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
@model/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
1model/multi_head_attention_3/attention_output/addAddV2Dmodel/multi_head_attention_3/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
model/dropout_2/IdentityIdentity5model/multi_head_attention_3/attention_output/add:z:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_6/AddV2AddV2/model/layer_normalization_4/batchnorm/add_1:z:0!model/dropout_2/Identity:output:0*
T0*"
_output_shapes
:�
:model/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_5/moments/meanMean&model/tf.__operators__.add_6/AddV2:z:0Cmodel/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_5/moments/StopGradientStopGradient1model/layer_normalization_5/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_5/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_6/AddV2:z:09model/layer_normalization_5/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_5/moments/varianceMean9model/layer_normalization_5/moments/SquaredDifference:z:0Gmodel/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_5/batchnorm/addAddV25model/layer_normalization_5/moments/variance:output:04model/layer_normalization_5/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_5/batchnorm/RsqrtRsqrt-model/layer_normalization_5/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_5/batchnorm/mulMul/model/layer_normalization_5/batchnorm/Rsqrt:y:0@model/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_5/batchnorm/mul_1Mul&model/tf.__operators__.add_6/AddV2:z:0-model/layer_normalization_5/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_5/batchnorm/mul_2Mul1model/layer_normalization_5/moments/mean:output:0-model/layer_normalization_5/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_5/batchnorm/subSub<model/layer_normalization_5/batchnorm/ReadVariableOp:value:0/model/layer_normalization_5/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_5/batchnorm/add_1AddV2/model/layer_normalization_5/batchnorm/mul_1:z:0-model/layer_normalization_5/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
&model/dense_2/Tensordot/ReadVariableOpReadVariableOp/model_dense_2_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0v
%model/dense_2/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
model/dense_2/Tensordot/ReshapeReshape/model/layer_normalization_5/batchnorm/add_1:z:0.model/dense_2/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
model/dense_2/Tensordot/MatMulMatMul(model/dense_2/Tensordot/Reshape:output:0.model/dense_2/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�r
model/dense_2/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model/dense_2/TensordotReshape(model/dense_2/Tensordot/MatMul:product:0&model/dense_2/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAdd model/dense_2/Tensordot:output:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:g
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*"
_output_shapes
:s
model/dropout_3/IdentityIdentity model/dense_2/Relu:activations:0*
T0*"
_output_shapes
:�
?model/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_4_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_4/query/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Gmodel/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_4/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_4_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_4/query/addAddV29model/multi_head_attention_4/query/einsum/Einsum:output:0=model/multi_head_attention_4/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
=model/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_4_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
.model/multi_head_attention_4/key/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Emodel/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
3model/multi_head_attention_4/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_4_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
$model/multi_head_attention_4/key/addAddV27model/multi_head_attention_4/key/einsum/Einsum:output:0;model/multi_head_attention_4/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_4_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_4/value/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Gmodel/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_4/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_4_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_4/value/addAddV29model/multi_head_attention_4/value/einsum/Einsum:output:0=model/multi_head_attention_4/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:g
"model/multi_head_attention_4/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
 model/multi_head_attention_4/MulMul*model/multi_head_attention_4/query/add:z:0+model/multi_head_attention_4/Mul/y:output:0*
T0*&
_output_shapes
:�
*model/multi_head_attention_4/einsum/EinsumEinsum(model/multi_head_attention_4/key/add:z:0$model/multi_head_attention_4/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
.model/multi_head_attention_4/softmax_4/SoftmaxSoftmax3model/multi_head_attention_4/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
/model/multi_head_attention_4/dropout_4/IdentityIdentity8model/multi_head_attention_4/softmax_4/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_4/einsum_1/EinsumEinsum8model/multi_head_attention_4/dropout_4/Identity:output:0*model/multi_head_attention_4/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Jmodel/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_4_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
;model/multi_head_attention_4/attention_output/einsum/EinsumEinsum5model/multi_head_attention_4/einsum_1/Einsum:output:0Rmodel/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
@model/multi_head_attention_4/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_4_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
1model/multi_head_attention_4/attention_output/addAddV2Dmodel/multi_head_attention_4/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_4/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_7/AddV2AddV2/model/layer_normalization_5/batchnorm/add_1:z:0!model/dropout_3/Identity:output:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_8/AddV2AddV2$model/tf.__operators__.add/AddV2:z:05model/multi_head_attention_4/attention_output/add:z:0*
T0*"
_output_shapes
:�
:model/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_7/moments/meanMean&model/tf.__operators__.add_8/AddV2:z:0Cmodel/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_7/moments/StopGradientStopGradient1model/layer_normalization_7/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_7/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_8/AddV2:z:09model/layer_normalization_7/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_7/moments/varianceMean9model/layer_normalization_7/moments/SquaredDifference:z:0Gmodel/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_7/batchnorm/addAddV25model/layer_normalization_7/moments/variance:output:04model/layer_normalization_7/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_7/batchnorm/RsqrtRsqrt-model/layer_normalization_7/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_7/batchnorm/mulMul/model/layer_normalization_7/batchnorm/Rsqrt:y:0@model/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_7/batchnorm/mul_1Mul&model/tf.__operators__.add_8/AddV2:z:0-model/layer_normalization_7/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_7/batchnorm/mul_2Mul1model/layer_normalization_7/moments/mean:output:0-model/layer_normalization_7/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_7/batchnorm/subSub<model/layer_normalization_7/batchnorm/ReadVariableOp:value:0/model/layer_normalization_7/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_7/batchnorm/add_1AddV2/model/layer_normalization_7/batchnorm/mul_1:z:0-model/layer_normalization_7/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
:model/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_6/moments/meanMean&model/tf.__operators__.add_7/AddV2:z:0Cmodel/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_6/moments/StopGradientStopGradient1model/layer_normalization_6/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_6/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_7/AddV2:z:09model/layer_normalization_6/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_6/moments/varianceMean9model/layer_normalization_6/moments/SquaredDifference:z:0Gmodel/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_6/batchnorm/addAddV25model/layer_normalization_6/moments/variance:output:04model/layer_normalization_6/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_6/batchnorm/RsqrtRsqrt-model/layer_normalization_6/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_6/batchnorm/mulMul/model/layer_normalization_6/batchnorm/Rsqrt:y:0@model/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_6/batchnorm/mul_1Mul&model/tf.__operators__.add_7/AddV2:z:0-model/layer_normalization_6/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_6/batchnorm/mul_2Mul1model/layer_normalization_6/moments/mean:output:0-model/layer_normalization_6/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_6/batchnorm/subSub<model/layer_normalization_6/batchnorm/ReadVariableOp:value:0/model/layer_normalization_6/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_6/batchnorm/add_1AddV2/model/layer_normalization_6/batchnorm/mul_1:z:0-model/layer_normalization_6/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
?model/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_5_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_5/query/einsum/EinsumEinsum/model/layer_normalization_7/batchnorm/add_1:z:0Gmodel/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_5/query/addAddV29model/multi_head_attention_5/query/einsum/Einsum:output:0=model/multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
=model/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_5_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
.model/multi_head_attention_5/key/einsum/EinsumEinsum/model/layer_normalization_6/batchnorm/add_1:z:0Emodel/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
3model/multi_head_attention_5/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
$model/multi_head_attention_5/key/addAddV27model/multi_head_attention_5/key/einsum/Einsum:output:0;model/multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
?model/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_5_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
0model/multi_head_attention_5/value/einsum/EinsumEinsum/model/layer_normalization_6/batchnorm/add_1:z:0Gmodel/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
5model/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
&model/multi_head_attention_5/value/addAddV29model/multi_head_attention_5/value/einsum/Einsum:output:0=model/multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:g
"model/multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
 model/multi_head_attention_5/MulMul*model/multi_head_attention_5/query/add:z:0+model/multi_head_attention_5/Mul/y:output:0*
T0*&
_output_shapes
:�
*model/multi_head_attention_5/einsum/EinsumEinsum(model/multi_head_attention_5/key/add:z:0$model/multi_head_attention_5/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
.model/multi_head_attention_5/softmax_5/SoftmaxSoftmax3model/multi_head_attention_5/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
/model/multi_head_attention_5/dropout_5/IdentityIdentity8model/multi_head_attention_5/softmax_5/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_5/einsum_1/EinsumEinsum8model/multi_head_attention_5/dropout_5/Identity:output:0*model/multi_head_attention_5/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Jmodel/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
;model/multi_head_attention_5/attention_output/einsum/EinsumEinsum5model/multi_head_attention_5/einsum_1/Einsum:output:0Rmodel/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
@model/multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
1model/multi_head_attention_5/attention_output/addAddV2Dmodel/multi_head_attention_5/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
model/dropout_4/IdentityIdentity5model/multi_head_attention_5/attention_output/add:z:0*
T0*"
_output_shapes
:�
"model/tf.__operators__.add_9/AddV2AddV2/model/layer_normalization_7/batchnorm/add_1:z:0!model/dropout_4/Identity:output:0*
T0*"
_output_shapes
:�
:model/layer_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_8/moments/meanMean&model/tf.__operators__.add_9/AddV2:z:0Cmodel/layer_normalization_8/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_8/moments/StopGradientStopGradient1model/layer_normalization_8/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_8/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_9/AddV2:z:09model/layer_normalization_8/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_8/moments/varianceMean9model/layer_normalization_8/moments/SquaredDifference:z:0Gmodel/layer_normalization_8/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_8/batchnorm/addAddV25model/layer_normalization_8/moments/variance:output:04model/layer_normalization_8/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_8/batchnorm/RsqrtRsqrt-model/layer_normalization_8/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_8/batchnorm/mulMul/model/layer_normalization_8/batchnorm/Rsqrt:y:0@model/layer_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_8/batchnorm/mul_1Mul&model/tf.__operators__.add_9/AddV2:z:0-model/layer_normalization_8/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_8/batchnorm/mul_2Mul1model/layer_normalization_8/moments/mean:output:0-model/layer_normalization_8/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_8/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_8/batchnorm/subSub<model/layer_normalization_8/batchnorm/ReadVariableOp:value:0/model/layer_normalization_8/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_8/batchnorm/add_1AddV2/model/layer_normalization_8/batchnorm/mul_1:z:0-model/layer_normalization_8/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
&model/dense_3/Tensordot/ReadVariableOpReadVariableOp/model_dense_3_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0v
%model/dense_3/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
model/dense_3/Tensordot/ReshapeReshape/model/layer_normalization_8/batchnorm/add_1:z:0.model/dense_3/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
model/dense_3/Tensordot/MatMulMatMul(model/dense_3/Tensordot/Reshape:output:0.model/dense_3/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�r
model/dense_3/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model/dense_3/TensordotReshape(model/dense_3/Tensordot/MatMul:product:0&model/dense_3/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_3/BiasAddBiasAdd model/dense_3/Tensordot:output:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:g
model/dense_3/ReluRelumodel/dense_3/BiasAdd:output:0*
T0*"
_output_shapes
:s
model/dropout_5/IdentityIdentity model/dense_3/Relu:activations:0*
T0*"
_output_shapes
:�
#model/tf.__operators__.add_10/AddV2AddV2/model/layer_normalization_8/batchnorm/add_1:z:0!model/dropout_5/Identity:output:0*
T0*"
_output_shapes
:�
:model/layer_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_9/moments/meanMean'model/tf.__operators__.add_10/AddV2:z:0Cmodel/layer_normalization_9/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
0model/layer_normalization_9/moments/StopGradientStopGradient1model/layer_normalization_9/moments/mean:output:0*
T0*"
_output_shapes
:�
5model/layer_normalization_9/moments/SquaredDifferenceSquaredDifference'model/tf.__operators__.add_10/AddV2:z:09model/layer_normalization_9/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
>model/layer_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_9/moments/varianceMean9model/layer_normalization_9/moments/SquaredDifference:z:0Gmodel/layer_normalization_9/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(p
+model/layer_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_9/batchnorm/addAddV25model/layer_normalization_9/moments/variance:output:04model/layer_normalization_9/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
+model/layer_normalization_9/batchnorm/RsqrtRsqrt-model/layer_normalization_9/batchnorm/add:z:0*
T0*"
_output_shapes
:�
8model/layer_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_9/batchnorm/mulMul/model/layer_normalization_9/batchnorm/Rsqrt:y:0@model/layer_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
+model/layer_normalization_9/batchnorm/mul_1Mul'model/tf.__operators__.add_10/AddV2:z:0-model/layer_normalization_9/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_9/batchnorm/mul_2Mul1model/layer_normalization_9/moments/mean:output:0-model/layer_normalization_9/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
4model/layer_normalization_9/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/layer_normalization_9/batchnorm/subSub<model/layer_normalization_9/batchnorm/ReadVariableOp:value:0/model/layer_normalization_9/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
+model/layer_normalization_9/batchnorm/add_1AddV2/model/layer_normalization_9/batchnorm/mul_1:z:0-model/layer_normalization_9/batchnorm/sub:z:0*
T0*"
_output_shapes
:w
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#model/global_average_pooling1d/MeanMean/model/layer_normalization_9/batchnorm/add_1:z:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*
_output_shapes

:�
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model/dense_4/MatMulMatMul,model/global_average_pooling1d/Mean:output:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: �
#model/dense_5/MatMul/ReadVariableOpReadVariableOp,model_dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model/dense_5/MatMulMatMulmodel/dense_4/BiasAdd:output:0+model/dense_5/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
$model/dense_5/BiasAdd/ReadVariableOpReadVariableOp-model_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_5/BiasAddBiasAddmodel/dense_5/MatMul:product:0,model/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:d
IdentityIdentitymodel/dense_5/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:�$
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/Tensordot/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp'^model/dense_2/Tensordot/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp'^model/dense_3/Tensordot/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp%^model/dense_5/BiasAdd/ReadVariableOp$^model/dense_5/MatMul/ReadVariableOp3^model/layer_normalization/batchnorm/ReadVariableOp7^model/layer_normalization/batchnorm/mul/ReadVariableOp5^model/layer_normalization_1/batchnorm/ReadVariableOp9^model/layer_normalization_1/batchnorm/mul/ReadVariableOp5^model/layer_normalization_2/batchnorm/ReadVariableOp9^model/layer_normalization_2/batchnorm/mul/ReadVariableOp5^model/layer_normalization_3/batchnorm/ReadVariableOp9^model/layer_normalization_3/batchnorm/mul/ReadVariableOp5^model/layer_normalization_4/batchnorm/ReadVariableOp9^model/layer_normalization_4/batchnorm/mul/ReadVariableOp5^model/layer_normalization_5/batchnorm/ReadVariableOp9^model/layer_normalization_5/batchnorm/mul/ReadVariableOp5^model/layer_normalization_6/batchnorm/ReadVariableOp9^model/layer_normalization_6/batchnorm/mul/ReadVariableOp5^model/layer_normalization_7/batchnorm/ReadVariableOp9^model/layer_normalization_7/batchnorm/mul/ReadVariableOp5^model/layer_normalization_8/batchnorm/ReadVariableOp9^model/layer_normalization_8/batchnorm/mul/ReadVariableOp5^model/layer_normalization_9/batchnorm/ReadVariableOp9^model/layer_normalization_9/batchnorm/mul/ReadVariableOp?^model/multi_head_attention/attention_output/add/ReadVariableOpI^model/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2^model/multi_head_attention/key/add/ReadVariableOp<^model/multi_head_attention/key/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/query/add/ReadVariableOp>^model/multi_head_attention/query/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/value/add/ReadVariableOp>^model/multi_head_attention/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_1/attention_output/add/ReadVariableOpK^model/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_1/key/add/ReadVariableOp>^model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/query/add/ReadVariableOp@^model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/value/add/ReadVariableOp@^model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_2/attention_output/add/ReadVariableOpK^model/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_2/key/add/ReadVariableOp>^model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_2/query/add/ReadVariableOp@^model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_2/value/add/ReadVariableOp@^model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_3/attention_output/add/ReadVariableOpK^model/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_3/key/add/ReadVariableOp>^model/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_3/query/add/ReadVariableOp@^model/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_3/value/add/ReadVariableOp@^model/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_4/attention_output/add/ReadVariableOpK^model/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_4/key/add/ReadVariableOp>^model/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_4/query/add/ReadVariableOp@^model/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_4/value/add/ReadVariableOp@^model/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_5/attention_output/add/ReadVariableOpK^model/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_5/key/add/ReadVariableOp>^model/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_5/query/add/ReadVariableOp@^model/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_5/value/add/ReadVariableOp@^model/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2P
&model/dense_1/Tensordot/ReadVariableOp&model/dense_1/Tensordot/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2P
&model/dense_2/Tensordot/ReadVariableOp&model/dense_2/Tensordot/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2P
&model/dense_3/Tensordot/ReadVariableOp&model/dense_3/Tensordot/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2L
$model/dense_5/BiasAdd/ReadVariableOp$model/dense_5/BiasAdd/ReadVariableOp2J
#model/dense_5/MatMul/ReadVariableOp#model/dense_5/MatMul/ReadVariableOp2h
2model/layer_normalization/batchnorm/ReadVariableOp2model/layer_normalization/batchnorm/ReadVariableOp2p
6model/layer_normalization/batchnorm/mul/ReadVariableOp6model/layer_normalization/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_1/batchnorm/ReadVariableOp4model/layer_normalization_1/batchnorm/ReadVariableOp2t
8model/layer_normalization_1/batchnorm/mul/ReadVariableOp8model/layer_normalization_1/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_2/batchnorm/ReadVariableOp4model/layer_normalization_2/batchnorm/ReadVariableOp2t
8model/layer_normalization_2/batchnorm/mul/ReadVariableOp8model/layer_normalization_2/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_3/batchnorm/ReadVariableOp4model/layer_normalization_3/batchnorm/ReadVariableOp2t
8model/layer_normalization_3/batchnorm/mul/ReadVariableOp8model/layer_normalization_3/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_4/batchnorm/ReadVariableOp4model/layer_normalization_4/batchnorm/ReadVariableOp2t
8model/layer_normalization_4/batchnorm/mul/ReadVariableOp8model/layer_normalization_4/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_5/batchnorm/ReadVariableOp4model/layer_normalization_5/batchnorm/ReadVariableOp2t
8model/layer_normalization_5/batchnorm/mul/ReadVariableOp8model/layer_normalization_5/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_6/batchnorm/ReadVariableOp4model/layer_normalization_6/batchnorm/ReadVariableOp2t
8model/layer_normalization_6/batchnorm/mul/ReadVariableOp8model/layer_normalization_6/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_7/batchnorm/ReadVariableOp4model/layer_normalization_7/batchnorm/ReadVariableOp2t
8model/layer_normalization_7/batchnorm/mul/ReadVariableOp8model/layer_normalization_7/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_8/batchnorm/ReadVariableOp4model/layer_normalization_8/batchnorm/ReadVariableOp2t
8model/layer_normalization_8/batchnorm/mul/ReadVariableOp8model/layer_normalization_8/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_9/batchnorm/ReadVariableOp4model/layer_normalization_9/batchnorm/ReadVariableOp2t
8model/layer_normalization_9/batchnorm/mul/ReadVariableOp8model/layer_normalization_9/batchnorm/mul/ReadVariableOp2�
>model/multi_head_attention/attention_output/add/ReadVariableOp>model/multi_head_attention/attention_output/add/ReadVariableOp2�
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2f
1model/multi_head_attention/key/add/ReadVariableOp1model/multi_head_attention/key/add/ReadVariableOp2z
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/query/add/ReadVariableOp3model/multi_head_attention/query/add/ReadVariableOp2~
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/value/add/ReadVariableOp3model/multi_head_attention/value/add/ReadVariableOp2~
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp2�
@model/multi_head_attention_1/attention_output/add/ReadVariableOp@model/multi_head_attention_1/attention_output/add/ReadVariableOp2�
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_1/key/add/ReadVariableOp3model/multi_head_attention_1/key/add/ReadVariableOp2~
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/query/add/ReadVariableOp5model/multi_head_attention_1/query/add/ReadVariableOp2�
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/value/add/ReadVariableOp5model/multi_head_attention_1/value/add/ReadVariableOp2�
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2�
@model/multi_head_attention_2/attention_output/add/ReadVariableOp@model/multi_head_attention_2/attention_output/add/ReadVariableOp2�
Jmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_2/key/add/ReadVariableOp3model/multi_head_attention_2/key/add/ReadVariableOp2~
=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_2/query/add/ReadVariableOp5model/multi_head_attention_2/query/add/ReadVariableOp2�
?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_2/value/add/ReadVariableOp5model/multi_head_attention_2/value/add/ReadVariableOp2�
?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2�
@model/multi_head_attention_3/attention_output/add/ReadVariableOp@model/multi_head_attention_3/attention_output/add/ReadVariableOp2�
Jmodel/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_3/key/add/ReadVariableOp3model/multi_head_attention_3/key/add/ReadVariableOp2~
=model/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_3/query/add/ReadVariableOp5model/multi_head_attention_3/query/add/ReadVariableOp2�
?model/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_3/value/add/ReadVariableOp5model/multi_head_attention_3/value/add/ReadVariableOp2�
?model/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2�
@model/multi_head_attention_4/attention_output/add/ReadVariableOp@model/multi_head_attention_4/attention_output/add/ReadVariableOp2�
Jmodel/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_4/key/add/ReadVariableOp3model/multi_head_attention_4/key/add/ReadVariableOp2~
=model/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_4/query/add/ReadVariableOp5model/multi_head_attention_4/query/add/ReadVariableOp2�
?model/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_4/value/add/ReadVariableOp5model/multi_head_attention_4/value/add/ReadVariableOp2�
?model/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp2�
@model/multi_head_attention_5/attention_output/add/ReadVariableOp@model/multi_head_attention_5/attention_output/add/ReadVariableOp2�
Jmodel/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_5/key/add/ReadVariableOp3model/multi_head_attention_5/key/add/ReadVariableOp2~
=model/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_5/query/add/ReadVariableOp5model/multi_head_attention_5/query/add/ReadVariableOp2�
?model/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_5/value/add/ReadVariableOp5model/multi_head_attention_5/value/add/ReadVariableOp2�
?model/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:K G
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
d
+__inference_dropout_1_layer_call_fn_4471489

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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4469035j
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
7__inference_layer_normalization_6_layer_call_fn_4471950

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4469373j
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
_user_specified_name	4471944:'#
!
_user_specified_name	4471946
�
�
R__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4469346

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
8__inference_multi_head_attention_2_layer_call_fn_4471414	
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4469748j
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
_user_specified_name	4471396:'#
!
_user_specified_name	4471398:'#
!
_user_specified_name	4471400:'#
!
_user_specified_name	4471402:'#
!
_user_specified_name	4471404:'#
!
_user_specified_name	4471406:'#
!
_user_specified_name	4471408:'	#
!
_user_specified_name	4471410
��
�9
#__inference__traced_restore_4473026
file_prefix8
*assignvariableop_layer_normalization_gamma:9
+assignvariableop_1_layer_normalization_beta:1
assignvariableop_2_dense_kernel:+
assignvariableop_3_dense_bias:<
.assignvariableop_4_layer_normalization_1_gamma:;
-assignvariableop_5_layer_normalization_1_beta:<
.assignvariableop_6_layer_normalization_2_gamma:;
-assignvariableop_7_layer_normalization_2_beta:3
!assignvariableop_8_dense_1_kernel:-
assignvariableop_9_dense_1_bias:=
/assignvariableop_10_layer_normalization_4_gamma:<
.assignvariableop_11_layer_normalization_4_beta:=
/assignvariableop_12_layer_normalization_3_gamma:<
.assignvariableop_13_layer_normalization_3_beta:=
/assignvariableop_14_layer_normalization_5_gamma:<
.assignvariableop_15_layer_normalization_5_beta:4
"assignvariableop_16_dense_2_kernel:.
 assignvariableop_17_dense_2_bias:=
/assignvariableop_18_layer_normalization_7_gamma:<
.assignvariableop_19_layer_normalization_7_beta:=
/assignvariableop_20_layer_normalization_6_gamma:<
.assignvariableop_21_layer_normalization_6_beta:=
/assignvariableop_22_layer_normalization_8_gamma:<
.assignvariableop_23_layer_normalization_8_beta:4
"assignvariableop_24_dense_3_kernel:.
 assignvariableop_25_dense_3_bias:=
/assignvariableop_26_layer_normalization_9_gamma:<
.assignvariableop_27_layer_normalization_9_beta:4
"assignvariableop_28_dense_4_kernel: .
 assignvariableop_29_dense_4_bias: 4
"assignvariableop_30_dense_5_kernel: .
 assignvariableop_31_dense_5_bias:K
5assignvariableop_32_multi_head_attention_query_kernel:E
3assignvariableop_33_multi_head_attention_query_bias:I
3assignvariableop_34_multi_head_attention_key_kernel:C
1assignvariableop_35_multi_head_attention_key_bias:K
5assignvariableop_36_multi_head_attention_value_kernel:E
3assignvariableop_37_multi_head_attention_value_bias:V
@assignvariableop_38_multi_head_attention_attention_output_kernel:L
>assignvariableop_39_multi_head_attention_attention_output_bias:M
7assignvariableop_40_multi_head_attention_1_query_kernel:G
5assignvariableop_41_multi_head_attention_1_query_bias:K
5assignvariableop_42_multi_head_attention_1_key_kernel:E
3assignvariableop_43_multi_head_attention_1_key_bias:M
7assignvariableop_44_multi_head_attention_1_value_kernel:G
5assignvariableop_45_multi_head_attention_1_value_bias:X
Bassignvariableop_46_multi_head_attention_1_attention_output_kernel:N
@assignvariableop_47_multi_head_attention_1_attention_output_bias:M
7assignvariableop_48_multi_head_attention_2_query_kernel:G
5assignvariableop_49_multi_head_attention_2_query_bias:K
5assignvariableop_50_multi_head_attention_2_key_kernel:E
3assignvariableop_51_multi_head_attention_2_key_bias:M
7assignvariableop_52_multi_head_attention_2_value_kernel:G
5assignvariableop_53_multi_head_attention_2_value_bias:X
Bassignvariableop_54_multi_head_attention_2_attention_output_kernel:N
@assignvariableop_55_multi_head_attention_2_attention_output_bias:M
7assignvariableop_56_multi_head_attention_3_query_kernel:G
5assignvariableop_57_multi_head_attention_3_query_bias:K
5assignvariableop_58_multi_head_attention_3_key_kernel:E
3assignvariableop_59_multi_head_attention_3_key_bias:M
7assignvariableop_60_multi_head_attention_3_value_kernel:G
5assignvariableop_61_multi_head_attention_3_value_bias:X
Bassignvariableop_62_multi_head_attention_3_attention_output_kernel:N
@assignvariableop_63_multi_head_attention_3_attention_output_bias:M
7assignvariableop_64_multi_head_attention_4_query_kernel:G
5assignvariableop_65_multi_head_attention_4_query_bias:K
5assignvariableop_66_multi_head_attention_4_key_kernel:E
3assignvariableop_67_multi_head_attention_4_key_bias:M
7assignvariableop_68_multi_head_attention_4_value_kernel:G
5assignvariableop_69_multi_head_attention_4_value_bias:X
Bassignvariableop_70_multi_head_attention_4_attention_output_kernel:N
@assignvariableop_71_multi_head_attention_4_attention_output_bias:M
7assignvariableop_72_multi_head_attention_5_query_kernel:G
5assignvariableop_73_multi_head_attention_5_query_bias:K
5assignvariableop_74_multi_head_attention_5_key_kernel:E
3assignvariableop_75_multi_head_attention_5_key_bias:M
7assignvariableop_76_multi_head_attention_5_value_kernel:G
5assignvariableop_77_multi_head_attention_5_value_bias:X
Bassignvariableop_78_multi_head_attention_5_attention_output_kernel:N
@assignvariableop_79_multi_head_attention_5_attention_output_bias:
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
AssignVariableOpAssignVariableOp*assignvariableop_layer_normalization_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_layer_normalization_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp.assignvariableop_4_layer_normalization_1_gammaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp-assignvariableop_5_layer_normalization_1_betaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp.assignvariableop_6_layer_normalization_2_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_layer_normalization_2_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_layer_normalization_4_gammaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp.assignvariableop_11_layer_normalization_4_betaIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_layer_normalization_3_gammaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp.assignvariableop_13_layer_normalization_3_betaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_layer_normalization_5_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp.assignvariableop_15_layer_normalization_5_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp/assignvariableop_18_layer_normalization_7_gammaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp.assignvariableop_19_layer_normalization_7_betaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_layer_normalization_6_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp.assignvariableop_21_layer_normalization_6_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp/assignvariableop_22_layer_normalization_8_gammaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp.assignvariableop_23_layer_normalization_8_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_3_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_3_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp/assignvariableop_26_layer_normalization_9_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp.assignvariableop_27_layer_normalization_9_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp"assignvariableop_28_dense_4_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp assignvariableop_29_dense_4_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp"assignvariableop_30_dense_5_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp assignvariableop_31_dense_5_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp5assignvariableop_32_multi_head_attention_query_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp3assignvariableop_33_multi_head_attention_query_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp3assignvariableop_34_multi_head_attention_key_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp1assignvariableop_35_multi_head_attention_key_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp5assignvariableop_36_multi_head_attention_value_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp3assignvariableop_37_multi_head_attention_value_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp@assignvariableop_38_multi_head_attention_attention_output_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp>assignvariableop_39_multi_head_attention_attention_output_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp7assignvariableop_40_multi_head_attention_1_query_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp5assignvariableop_41_multi_head_attention_1_query_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp5assignvariableop_42_multi_head_attention_1_key_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp3assignvariableop_43_multi_head_attention_1_key_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp7assignvariableop_44_multi_head_attention_1_value_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp5assignvariableop_45_multi_head_attention_1_value_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpBassignvariableop_46_multi_head_attention_1_attention_output_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp@assignvariableop_47_multi_head_attention_1_attention_output_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp7assignvariableop_48_multi_head_attention_2_query_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp5assignvariableop_49_multi_head_attention_2_query_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp5assignvariableop_50_multi_head_attention_2_key_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp3assignvariableop_51_multi_head_attention_2_key_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp7assignvariableop_52_multi_head_attention_2_value_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp5assignvariableop_53_multi_head_attention_2_value_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpBassignvariableop_54_multi_head_attention_2_attention_output_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp@assignvariableop_55_multi_head_attention_2_attention_output_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp7assignvariableop_56_multi_head_attention_3_query_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp5assignvariableop_57_multi_head_attention_3_query_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp5assignvariableop_58_multi_head_attention_3_key_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp3assignvariableop_59_multi_head_attention_3_key_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp7assignvariableop_60_multi_head_attention_3_value_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp5assignvariableop_61_multi_head_attention_3_value_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpBassignvariableop_62_multi_head_attention_3_attention_output_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp@assignvariableop_63_multi_head_attention_3_attention_output_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp7assignvariableop_64_multi_head_attention_4_query_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp5assignvariableop_65_multi_head_attention_4_query_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp5assignvariableop_66_multi_head_attention_4_key_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp3assignvariableop_67_multi_head_attention_4_key_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp7assignvariableop_68_multi_head_attention_4_value_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp5assignvariableop_69_multi_head_attention_4_value_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpBassignvariableop_70_multi_head_attention_4_attention_output_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp@assignvariableop_71_multi_head_attention_4_attention_output_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp7assignvariableop_72_multi_head_attention_5_query_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp5assignvariableop_73_multi_head_attention_5_query_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp5assignvariableop_74_multi_head_attention_5_key_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp3assignvariableop_75_multi_head_attention_5_key_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp7assignvariableop_76_multi_head_attention_5_value_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp5assignvariableop_77_multi_head_attention_5_value_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpBassignvariableop_78_multi_head_attention_5_attention_output_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp@assignvariableop_79_multi_head_attention_5_attention_output_biasIdentity_79:output:0"/device:CPU:0*&
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
_user_specified_namefile_prefix:95
3
_user_specified_namelayer_normalization/gamma:84
2
_user_specified_namelayer_normalization/beta:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:;7
5
_user_specified_namelayer_normalization_1/gamma::6
4
_user_specified_namelayer_normalization_1/beta:;7
5
_user_specified_namelayer_normalization_2/gamma::6
4
_user_specified_namelayer_normalization_2/beta:.	*
(
_user_specified_namedense_1/kernel:,
(
&
_user_specified_namedense_1/bias:;7
5
_user_specified_namelayer_normalization_4/gamma::6
4
_user_specified_namelayer_normalization_4/beta:;7
5
_user_specified_namelayer_normalization_3/gamma::6
4
_user_specified_namelayer_normalization_3/beta:;7
5
_user_specified_namelayer_normalization_5/gamma::6
4
_user_specified_namelayer_normalization_5/beta:.*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_2/bias:;7
5
_user_specified_namelayer_normalization_7/gamma::6
4
_user_specified_namelayer_normalization_7/beta:;7
5
_user_specified_namelayer_normalization_6/gamma::6
4
_user_specified_namelayer_normalization_6/beta:;7
5
_user_specified_namelayer_normalization_8/gamma::6
4
_user_specified_namelayer_normalization_8/beta:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_3/bias:;7
5
_user_specified_namelayer_normalization_9/gamma::6
4
_user_specified_namelayer_normalization_9/beta:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_5/kernel:, (
&
_user_specified_namedense_5/bias:A!=
;
_user_specified_name#!multi_head_attention/query/kernel:?";
9
_user_specified_name!multi_head_attention/query/bias:?#;
9
_user_specified_name!multi_head_attention/key/kernel:=$9
7
_user_specified_namemulti_head_attention/key/bias:A%=
;
_user_specified_name#!multi_head_attention/value/kernel:?&;
9
_user_specified_name!multi_head_attention/value/bias:L'H
F
_user_specified_name.,multi_head_attention/attention_output/kernel:J(F
D
_user_specified_name,*multi_head_attention/attention_output/bias:C)?
=
_user_specified_name%#multi_head_attention_1/query/kernel:A*=
;
_user_specified_name#!multi_head_attention_1/query/bias:A+=
;
_user_specified_name#!multi_head_attention_1/key/kernel:?,;
9
_user_specified_name!multi_head_attention_1/key/bias:C-?
=
_user_specified_name%#multi_head_attention_1/value/kernel:A.=
;
_user_specified_name#!multi_head_attention_1/value/bias:N/J
H
_user_specified_name0.multi_head_attention_1/attention_output/kernel:L0H
F
_user_specified_name.,multi_head_attention_1/attention_output/bias:C1?
=
_user_specified_name%#multi_head_attention_2/query/kernel:A2=
;
_user_specified_name#!multi_head_attention_2/query/bias:A3=
;
_user_specified_name#!multi_head_attention_2/key/kernel:?4;
9
_user_specified_name!multi_head_attention_2/key/bias:C5?
=
_user_specified_name%#multi_head_attention_2/value/kernel:A6=
;
_user_specified_name#!multi_head_attention_2/value/bias:N7J
H
_user_specified_name0.multi_head_attention_2/attention_output/kernel:L8H
F
_user_specified_name.,multi_head_attention_2/attention_output/bias:C9?
=
_user_specified_name%#multi_head_attention_3/query/kernel:A:=
;
_user_specified_name#!multi_head_attention_3/query/bias:A;=
;
_user_specified_name#!multi_head_attention_3/key/kernel:?<;
9
_user_specified_name!multi_head_attention_3/key/bias:C=?
=
_user_specified_name%#multi_head_attention_3/value/kernel:A>=
;
_user_specified_name#!multi_head_attention_3/value/bias:N?J
H
_user_specified_name0.multi_head_attention_3/attention_output/kernel:L@H
F
_user_specified_name.,multi_head_attention_3/attention_output/bias:CA?
=
_user_specified_name%#multi_head_attention_4/query/kernel:AB=
;
_user_specified_name#!multi_head_attention_4/query/bias:AC=
;
_user_specified_name#!multi_head_attention_4/key/kernel:?D;
9
_user_specified_name!multi_head_attention_4/key/bias:CE?
=
_user_specified_name%#multi_head_attention_4/value/kernel:AF=
;
_user_specified_name#!multi_head_attention_4/value/bias:NGJ
H
_user_specified_name0.multi_head_attention_4/attention_output/kernel:LHH
F
_user_specified_name.,multi_head_attention_4/attention_output/bias:CI?
=
_user_specified_name%#multi_head_attention_5/query/kernel:AJ=
;
_user_specified_name#!multi_head_attention_5/query/bias:AK=
;
_user_specified_name#!multi_head_attention_5/key/kernel:?L;
9
_user_specified_name!multi_head_attention_5/key/bias:CM?
=
_user_specified_name%#multi_head_attention_5/value/kernel:AN=
;
_user_specified_name#!multi_head_attention_5/value/bias:NOJ
H
_user_specified_name0.multi_head_attention_5/attention_output/kernel:LPH
F
_user_specified_name.,multi_head_attention_5/attention_output/bias
�+
�
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4469305	
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4471484	
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4472086	
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
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4468857

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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4472108

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
R__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4469112

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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4471883	
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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4471506

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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4472195

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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4471315	
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
'__inference_dense_layer_call_fn_4471128

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
GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4468877j
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
_user_specified_name	4471122:'#
!
_user_specified_name	4471124
�
�
)__inference_dense_2_layer_call_fn_4471754

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
D__inference_dense_2_layer_call_and_return_conditional_losses_4469252j
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
_user_specified_name	4471748:'#
!
_user_specified_name	4471750
�+
�
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4471280	
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
7__inference_layer_normalization_2_layer_call_fn_4471324

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4468998j
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
_user_specified_name	4471318:'#
!
_user_specified_name	4471320
�+
�
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4469679	
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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4469604	
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
+__inference_dropout_3_layer_call_fn_4471888

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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4469269j
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
8__inference_multi_head_attention_2_layer_call_fn_4471392	
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4469071j
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
_user_specified_name	4471374:'#
!
_user_specified_name	4471376:'#
!
_user_specified_name	4471378:'#
!
_user_specified_name	4471380:'#
!
_user_specified_name	4471382:'#
!
_user_specified_name	4471384:'#
!
_user_specified_name	4471386:'	#
!
_user_specified_name	4471388
�
�
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4468918

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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4471652	
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4469179	
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
�
�
R__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4471573

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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4469990

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
8__inference_multi_head_attention_4_layer_call_fn_4471791	
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4469305j
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
_user_specified_name	4471773:'#
!
_user_specified_name	4471775:'#
!
_user_specified_name	4471777:'#
!
_user_specified_name	4471779:'#
!
_user_specified_name	4471781:'#
!
_user_specified_name	4471783:'#
!
_user_specified_name	4471785:'	#
!
_user_specified_name	4471787
�
�
R__inference_layer_normalization_9_layer_call_and_return_conditional_losses_4469527

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
8__inference_multi_head_attention_5_layer_call_fn_4472016	
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4469951j
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
_user_specified_name	4471998:'#
!
_user_specified_name	4472000:'#
!
_user_specified_name	4472002:'#
!
_user_specified_name	4472004:'#
!
_user_specified_name	4472006:'#
!
_user_specified_name	4472008:'#
!
_user_specified_name	4472010:'	#
!
_user_specified_name	4472012
�
G
+__inference_dropout_2_layer_call_fn_4471697

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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4469834[
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
�
b
D__inference_dropout_layer_call_and_return_conditional_losses_4471170

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
��
�'
B__inference_model_layer_call_and_return_conditional_losses_4469565
input_12
multi_head_attention_4468818:.
multi_head_attention_4468820:2
multi_head_attention_4468822:.
multi_head_attention_4468824:2
multi_head_attention_4468826:.
multi_head_attention_4468828:2
multi_head_attention_4468830:*
multi_head_attention_4468832:)
layer_normalization_4468858:)
layer_normalization_4468860:
dense_4468878:
dense_4468880:+
layer_normalization_1_4468919:+
layer_normalization_1_4468921:4
multi_head_attention_1_4468959:0
multi_head_attention_1_4468961:4
multi_head_attention_1_4468963:0
multi_head_attention_1_4468965:4
multi_head_attention_1_4468967:0
multi_head_attention_1_4468969:4
multi_head_attention_1_4468971:,
multi_head_attention_1_4468973:+
layer_normalization_2_4468999:+
layer_normalization_2_4469001:!
dense_1_4469019:
dense_1_4469021:4
multi_head_attention_2_4469072:0
multi_head_attention_2_4469074:4
multi_head_attention_2_4469076:0
multi_head_attention_2_4469078:4
multi_head_attention_2_4469080:0
multi_head_attention_2_4469082:4
multi_head_attention_2_4469084:,
multi_head_attention_2_4469086:+
layer_normalization_4_4469113:+
layer_normalization_4_4469115:+
layer_normalization_3_4469140:+
layer_normalization_3_4469142:4
multi_head_attention_3_4469180:0
multi_head_attention_3_4469182:4
multi_head_attention_3_4469184:0
multi_head_attention_3_4469186:4
multi_head_attention_3_4469188:0
multi_head_attention_3_4469190:4
multi_head_attention_3_4469192:,
multi_head_attention_3_4469194:+
layer_normalization_5_4469233:+
layer_normalization_5_4469235:!
dense_2_4469253:
dense_2_4469255:4
multi_head_attention_4_4469306:0
multi_head_attention_4_4469308:4
multi_head_attention_4_4469310:0
multi_head_attention_4_4469312:4
multi_head_attention_4_4469314:0
multi_head_attention_4_4469316:4
multi_head_attention_4_4469318:,
multi_head_attention_4_4469320:+
layer_normalization_7_4469347:+
layer_normalization_7_4469349:+
layer_normalization_6_4469374:+
layer_normalization_6_4469376:4
multi_head_attention_5_4469414:0
multi_head_attention_5_4469416:4
multi_head_attention_5_4469418:0
multi_head_attention_5_4469420:4
multi_head_attention_5_4469422:0
multi_head_attention_5_4469424:4
multi_head_attention_5_4469426:,
multi_head_attention_5_4469428:+
layer_normalization_8_4469467:+
layer_normalization_8_4469469:!
dense_3_4469487:
dense_3_4469489:+
layer_normalization_9_4469528:+
layer_normalization_9_4469530:!
dense_4_4469544: 
dense_4_4469546: !
dense_5_4469559: 
dense_5_4469561:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�!dropout_5/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�-layer_normalization_4/StatefulPartitionedCall�-layer_normalization_5/StatefulPartitionedCall�-layer_normalization_6/StatefulPartitionedCall�-layer_normalization_7/StatefulPartitionedCall�-layer_normalization_8/StatefulPartitionedCall�-layer_normalization_9/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�.multi_head_attention_2/StatefulPartitionedCall�.multi_head_attention_3/StatefulPartitionedCall�.multi_head_attention_4/StatefulPartitionedCall�.multi_head_attention_5/StatefulPartitionedCall�
tf.__operators__.add/yConst*
_output_shapes

:*
dtype0*�
value�B�"�y4=0�;��<�#=�5ün��<�l��I�]�����;:�뼒a�<�"�qJ=7�@��	���<�� D8�@=��J=�i=���<�E< �3;@�0� �8<G�-=:���$=��t���=��g���� ������)=��F�h�<<ɳ=(q <���;Z
= :<����h��;���<�����:`w;-�<�XL��x��( :<��<����,��Z�<��3=t�8�3U6����;Ȉ����;�Bμ�x<�K��i�3=�3�<)�A=�-���<@E$<s0$=L.<�(	��P�:�<�7ռ�Ű�Z��<ru�<Fi�<��Z<b9�<�z2�@��:�.�<N�<��=�G�<]4C��t<�C��< �ۼ�X:Rf�<� ��<B��<���G�=`K��B���y;����{����<9�.=ڞ�<�Ξ;4���<�"=W�8=��6=0���_�� 5/�,���葩; �r9)�=��<�,=��A=��c<L~T�sD�3���`���=��A�����Q<h��;0(��G�B�4Ȓ�h��;4���c1=F��<�J=�v�F�	��^���-<�3���&=6����躌�-<s�6� ����T�< ��;"���<�%4��/	�y�D=�9�T@����<w�=h�a�d;s<�c�<�X�<q�#=�4���Xu�W<f��<����4<�y�<T���9�<.H�<z�<�"��~<�<���<�NM����<�e�<���z
tf.__operators__.add/AddV2AddV2input_1tf.__operators__.add/y:output:0*
T0*"
_output_shapes
:�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_4468818multi_head_attention_4468820multi_head_attention_4468822multi_head_attention_4468824multi_head_attention_4468826multi_head_attention_4468828multi_head_attention_4468830multi_head_attention_4468832*
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
GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4468817�
tf.__operators__.add_1/AddV2AddV2tf.__operators__.add/AddV2:z:05multi_head_attention/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_1/AddV2:z:0layer_normalization_4468858layer_normalization_4468860*
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
GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4468857�
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0dense_4468878dense_4468880*
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
GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4468877�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4468894�
tf.__operators__.add_2/AddV2AddV24layer_normalization/StatefulPartitionedCall:output:0(dropout/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_2/AddV2:z:0layer_normalization_1_4468919layer_normalization_1_4468921*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4468918�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_4468959multi_head_attention_1_4468961multi_head_attention_1_4468963multi_head_attention_1_4468965multi_head_attention_1_4468967multi_head_attention_1_4468969multi_head_attention_1_4468971multi_head_attention_1_4468973*
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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4468958�
tf.__operators__.add_3/AddV2AddV26layer_normalization_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_3/AddV2:z:0layer_normalization_2_4468999layer_normalization_2_4469001*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4468998�
dense_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_1_4469019dense_1_4469021*
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
D__inference_dense_1_layer_call_and_return_conditional_losses_4469018�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4469035�
.multi_head_attention_2/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_2_4469072multi_head_attention_2_4469074multi_head_attention_2_4469076multi_head_attention_2_4469078multi_head_attention_2_4469080multi_head_attention_2_4469082multi_head_attention_2_4469084multi_head_attention_2_4469086*
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4469071�
tf.__operators__.add_4/AddV2AddV26layer_normalization_2/StatefulPartitionedCall:output:0*dropout_1/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_5/AddV2AddV2tf.__operators__.add/AddV2:z:07multi_head_attention_2/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_5/AddV2:z:0layer_normalization_4_4469113layer_normalization_4_4469115*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4469112�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_4/AddV2:z:0layer_normalization_3_4469140layer_normalization_3_4469142*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4469139�
.multi_head_attention_3/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0multi_head_attention_3_4469180multi_head_attention_3_4469182multi_head_attention_3_4469184multi_head_attention_3_4469186multi_head_attention_3_4469188multi_head_attention_3_4469190multi_head_attention_3_4469192multi_head_attention_3_4469194*
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4469179�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall7multi_head_attention_3/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4469208�
tf.__operators__.add_6/AddV2AddV26layer_normalization_4/StatefulPartitionedCall:output:0*dropout_2/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_5/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_6/AddV2:z:0layer_normalization_5_4469233layer_normalization_5_4469235*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4469232�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_5/StatefulPartitionedCall:output:0dense_2_4469253dense_2_4469255*
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
D__inference_dense_2_layer_call_and_return_conditional_losses_4469252�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4469269�
.multi_head_attention_4/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_4_4469306multi_head_attention_4_4469308multi_head_attention_4_4469310multi_head_attention_4_4469312multi_head_attention_4_4469314multi_head_attention_4_4469316multi_head_attention_4_4469318multi_head_attention_4_4469320*
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4469305�
tf.__operators__.add_7/AddV2AddV26layer_normalization_5/StatefulPartitionedCall:output:0*dropout_3/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_8/AddV2AddV2tf.__operators__.add/AddV2:z:07multi_head_attention_4/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_7/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_8/AddV2:z:0layer_normalization_7_4469347layer_normalization_7_4469349*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4469346�
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_7/AddV2:z:0layer_normalization_6_4469374layer_normalization_6_4469376*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4469373�
.multi_head_attention_5/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_7/StatefulPartitionedCall:output:06layer_normalization_6/StatefulPartitionedCall:output:0multi_head_attention_5_4469414multi_head_attention_5_4469416multi_head_attention_5_4469418multi_head_attention_5_4469420multi_head_attention_5_4469422multi_head_attention_5_4469424multi_head_attention_5_4469426multi_head_attention_5_4469428*
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4469413�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall7multi_head_attention_5/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4469442�
tf.__operators__.add_9/AddV2AddV26layer_normalization_7/StatefulPartitionedCall:output:0*dropout_4/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_9/AddV2:z:0layer_normalization_8_4469467layer_normalization_8_4469469*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_8_layer_call_and_return_conditional_losses_4469466�
dense_3/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0dense_3_4469487dense_3_4469489*
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4469486�
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4469503�
tf.__operators__.add_10/AddV2AddV26layer_normalization_8/StatefulPartitionedCall:output:0*dropout_5/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_9/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_10/AddV2:z:0layer_normalization_9_4469528layer_normalization_9_4469530*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_9_layer_call_and_return_conditional_losses_4469527�
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_9/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4468773�
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_4469544dense_4_4469546*
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
GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_4469543�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_4469559dense_5_4469561*
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
GPU 2J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_4469558n
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�	
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall.^layer_normalization_4/StatefulPartitionedCall.^layer_normalization_5/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall.^layer_normalization_7/StatefulPartitionedCall.^layer_normalization_8/StatefulPartitionedCall.^layer_normalization_9/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall/^multi_head_attention_2/StatefulPartitionedCall/^multi_head_attention_3/StatefulPartitionedCall/^multi_head_attention_4/StatefulPartitionedCall/^multi_head_attention_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2^
-layer_normalization_4/StatefulPartitionedCall-layer_normalization_4/StatefulPartitionedCall2^
-layer_normalization_5/StatefulPartitionedCall-layer_normalization_5/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2^
-layer_normalization_7/StatefulPartitionedCall-layer_normalization_7/StatefulPartitionedCall2^
-layer_normalization_8/StatefulPartitionedCall-layer_normalization_8/StatefulPartitionedCall2^
-layer_normalization_9/StatefulPartitionedCall-layer_normalization_9/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2`
.multi_head_attention_2/StatefulPartitionedCall.multi_head_attention_2/StatefulPartitionedCall2`
.multi_head_attention_3/StatefulPartitionedCall.multi_head_attention_3/StatefulPartitionedCall2`
.multi_head_attention_4/StatefulPartitionedCall.multi_head_attention_4/StatefulPartitionedCall2`
.multi_head_attention_5/StatefulPartitionedCall.multi_head_attention_5/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:'#
!
_user_specified_name	4468818:'#
!
_user_specified_name	4468820:'#
!
_user_specified_name	4468822:'#
!
_user_specified_name	4468824:'#
!
_user_specified_name	4468826:'#
!
_user_specified_name	4468828:'#
!
_user_specified_name	4468830:'#
!
_user_specified_name	4468832:'	#
!
_user_specified_name	4468858:'
#
!
_user_specified_name	4468860:'#
!
_user_specified_name	4468878:'#
!
_user_specified_name	4468880:'#
!
_user_specified_name	4468919:'#
!
_user_specified_name	4468921:'#
!
_user_specified_name	4468959:'#
!
_user_specified_name	4468961:'#
!
_user_specified_name	4468963:'#
!
_user_specified_name	4468965:'#
!
_user_specified_name	4468967:'#
!
_user_specified_name	4468969:'#
!
_user_specified_name	4468971:'#
!
_user_specified_name	4468973:'#
!
_user_specified_name	4468999:'#
!
_user_specified_name	4469001:'#
!
_user_specified_name	4469019:'#
!
_user_specified_name	4469021:'#
!
_user_specified_name	4469072:'#
!
_user_specified_name	4469074:'#
!
_user_specified_name	4469076:'#
!
_user_specified_name	4469078:'#
!
_user_specified_name	4469080:' #
!
_user_specified_name	4469082:'!#
!
_user_specified_name	4469084:'"#
!
_user_specified_name	4469086:'##
!
_user_specified_name	4469113:'$#
!
_user_specified_name	4469115:'%#
!
_user_specified_name	4469140:'&#
!
_user_specified_name	4469142:''#
!
_user_specified_name	4469180:'(#
!
_user_specified_name	4469182:')#
!
_user_specified_name	4469184:'*#
!
_user_specified_name	4469186:'+#
!
_user_specified_name	4469188:',#
!
_user_specified_name	4469190:'-#
!
_user_specified_name	4469192:'.#
!
_user_specified_name	4469194:'/#
!
_user_specified_name	4469233:'0#
!
_user_specified_name	4469235:'1#
!
_user_specified_name	4469253:'2#
!
_user_specified_name	4469255:'3#
!
_user_specified_name	4469306:'4#
!
_user_specified_name	4469308:'5#
!
_user_specified_name	4469310:'6#
!
_user_specified_name	4469312:'7#
!
_user_specified_name	4469314:'8#
!
_user_specified_name	4469316:'9#
!
_user_specified_name	4469318:':#
!
_user_specified_name	4469320:';#
!
_user_specified_name	4469347:'<#
!
_user_specified_name	4469349:'=#
!
_user_specified_name	4469374:'>#
!
_user_specified_name	4469376:'?#
!
_user_specified_name	4469414:'@#
!
_user_specified_name	4469416:'A#
!
_user_specified_name	4469418:'B#
!
_user_specified_name	4469420:'C#
!
_user_specified_name	4469422:'D#
!
_user_specified_name	4469424:'E#
!
_user_specified_name	4469426:'F#
!
_user_specified_name	4469428:'G#
!
_user_specified_name	4469467:'H#
!
_user_specified_name	4469469:'I#
!
_user_specified_name	4469487:'J#
!
_user_specified_name	4469489:'K#
!
_user_specified_name	4469528:'L#
!
_user_specified_name	4469530:'M#
!
_user_specified_name	4469544:'N#
!
_user_specified_name	4469546:'O#
!
_user_specified_name	4469559:'P#
!
_user_specified_name	4469561
�
�
6__inference_multi_head_attention_layer_call_fn_4470996	
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
GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4468817j
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
_user_specified_name	4470978:'#
!
_user_specified_name	4470980:'#
!
_user_specified_name	4470982:'#
!
_user_specified_name	4470984:'#
!
_user_specified_name	4470986:'#
!
_user_specified_name	4470988:'#
!
_user_specified_name	4470990:'	#
!
_user_specified_name	4470992
�
�
D__inference_dense_2_layer_call_and_return_conditional_losses_4469252

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
�
�
7__inference_layer_normalization_9_layer_call_fn_4472204

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_9_layer_call_and_return_conditional_losses_4469527j
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
_user_specified_name	4472198:'#
!
_user_specified_name	4472200
�
d
F__inference_dropout_4_layer_call_and_return_conditional_losses_4469973

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
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4468773

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
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_4469851

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
8__inference_multi_head_attention_3_layer_call_fn_4471617	
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4469812j
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
_user_specified_name	4471599:'#
!
_user_specified_name	4471601:'#
!
_user_specified_name	4471603:'#
!
_user_specified_name	4471605:'#
!
_user_specified_name	4471607:'#
!
_user_specified_name	4471609:'#
!
_user_specified_name	4471611:'	#
!
_user_specified_name	4471613
�+
�
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4469951	
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
d
+__inference_dropout_2_layer_call_fn_4471692

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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4469208j
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
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4471201

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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4471088	
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
)__inference_dense_4_layer_call_fn_4472246

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
GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_4469543f
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
_user_specified_name	4472240:'#
!
_user_specified_name	4472242
�	
�
D__inference_dense_4_layer_call_and_return_conditional_losses_4469543

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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4468958	
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
�
8__inference_multi_head_attention_4_layer_call_fn_4471813	
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4469887j
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
_user_specified_name	4471795:'#
!
_user_specified_name	4471797:'#
!
_user_specified_name	4471799:'#
!
_user_specified_name	4471801:'#
!
_user_specified_name	4471803:'#
!
_user_specified_name	4471805:'#
!
_user_specified_name	4471807:'	#
!
_user_specified_name	4471809
�<
�
%__inference_signature_wrapper_4470974
input_1
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

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_4468767f
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
_user_specified_name	input_1:'#
!
_user_specified_name	4470812:'#
!
_user_specified_name	4470814:'#
!
_user_specified_name	4470816:'#
!
_user_specified_name	4470818:'#
!
_user_specified_name	4470820:'#
!
_user_specified_name	4470822:'#
!
_user_specified_name	4470824:'#
!
_user_specified_name	4470826:'	#
!
_user_specified_name	4470828:'
#
!
_user_specified_name	4470830:'#
!
_user_specified_name	4470832:'#
!
_user_specified_name	4470834:'#
!
_user_specified_name	4470836:'#
!
_user_specified_name	4470838:'#
!
_user_specified_name	4470840:'#
!
_user_specified_name	4470842:'#
!
_user_specified_name	4470844:'#
!
_user_specified_name	4470846:'#
!
_user_specified_name	4470848:'#
!
_user_specified_name	4470850:'#
!
_user_specified_name	4470852:'#
!
_user_specified_name	4470854:'#
!
_user_specified_name	4470856:'#
!
_user_specified_name	4470858:'#
!
_user_specified_name	4470860:'#
!
_user_specified_name	4470862:'#
!
_user_specified_name	4470864:'#
!
_user_specified_name	4470866:'#
!
_user_specified_name	4470868:'#
!
_user_specified_name	4470870:'#
!
_user_specified_name	4470872:' #
!
_user_specified_name	4470874:'!#
!
_user_specified_name	4470876:'"#
!
_user_specified_name	4470878:'##
!
_user_specified_name	4470880:'$#
!
_user_specified_name	4470882:'%#
!
_user_specified_name	4470884:'&#
!
_user_specified_name	4470886:''#
!
_user_specified_name	4470888:'(#
!
_user_specified_name	4470890:')#
!
_user_specified_name	4470892:'*#
!
_user_specified_name	4470894:'+#
!
_user_specified_name	4470896:',#
!
_user_specified_name	4470898:'-#
!
_user_specified_name	4470900:'.#
!
_user_specified_name	4470902:'/#
!
_user_specified_name	4470904:'0#
!
_user_specified_name	4470906:'1#
!
_user_specified_name	4470908:'2#
!
_user_specified_name	4470910:'3#
!
_user_specified_name	4470912:'4#
!
_user_specified_name	4470914:'5#
!
_user_specified_name	4470916:'6#
!
_user_specified_name	4470918:'7#
!
_user_specified_name	4470920:'8#
!
_user_specified_name	4470922:'9#
!
_user_specified_name	4470924:':#
!
_user_specified_name	4470926:';#
!
_user_specified_name	4470928:'<#
!
_user_specified_name	4470930:'=#
!
_user_specified_name	4470932:'>#
!
_user_specified_name	4470934:'?#
!
_user_specified_name	4470936:'@#
!
_user_specified_name	4470938:'A#
!
_user_specified_name	4470940:'B#
!
_user_specified_name	4470942:'C#
!
_user_specified_name	4470944:'D#
!
_user_specified_name	4470946:'E#
!
_user_specified_name	4470948:'F#
!
_user_specified_name	4470950:'G#
!
_user_specified_name	4470952:'H#
!
_user_specified_name	4470954:'I#
!
_user_specified_name	4470956:'J#
!
_user_specified_name	4470958:'K#
!
_user_specified_name	4470960:'L#
!
_user_specified_name	4470962:'M#
!
_user_specified_name	4470964:'N#
!
_user_specified_name	4470966:'O#
!
_user_specified_name	4470968:'P#
!
_user_specified_name	4470970
�
�
R__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4471745

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
�<
�
'__inference_model_layer_call_fn_4470175
input_1
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
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4469565f
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
_user_specified_name	input_1:'#
!
_user_specified_name	4470013:'#
!
_user_specified_name	4470015:'#
!
_user_specified_name	4470017:'#
!
_user_specified_name	4470019:'#
!
_user_specified_name	4470021:'#
!
_user_specified_name	4470023:'#
!
_user_specified_name	4470025:'#
!
_user_specified_name	4470027:'	#
!
_user_specified_name	4470029:'
#
!
_user_specified_name	4470031:'#
!
_user_specified_name	4470033:'#
!
_user_specified_name	4470035:'#
!
_user_specified_name	4470037:'#
!
_user_specified_name	4470039:'#
!
_user_specified_name	4470041:'#
!
_user_specified_name	4470043:'#
!
_user_specified_name	4470045:'#
!
_user_specified_name	4470047:'#
!
_user_specified_name	4470049:'#
!
_user_specified_name	4470051:'#
!
_user_specified_name	4470053:'#
!
_user_specified_name	4470055:'#
!
_user_specified_name	4470057:'#
!
_user_specified_name	4470059:'#
!
_user_specified_name	4470061:'#
!
_user_specified_name	4470063:'#
!
_user_specified_name	4470065:'#
!
_user_specified_name	4470067:'#
!
_user_specified_name	4470069:'#
!
_user_specified_name	4470071:'#
!
_user_specified_name	4470073:' #
!
_user_specified_name	4470075:'!#
!
_user_specified_name	4470077:'"#
!
_user_specified_name	4470079:'##
!
_user_specified_name	4470081:'$#
!
_user_specified_name	4470083:'%#
!
_user_specified_name	4470085:'&#
!
_user_specified_name	4470087:''#
!
_user_specified_name	4470089:'(#
!
_user_specified_name	4470091:')#
!
_user_specified_name	4470093:'*#
!
_user_specified_name	4470095:'+#
!
_user_specified_name	4470097:',#
!
_user_specified_name	4470099:'-#
!
_user_specified_name	4470101:'.#
!
_user_specified_name	4470103:'/#
!
_user_specified_name	4470105:'0#
!
_user_specified_name	4470107:'1#
!
_user_specified_name	4470109:'2#
!
_user_specified_name	4470111:'3#
!
_user_specified_name	4470113:'4#
!
_user_specified_name	4470115:'5#
!
_user_specified_name	4470117:'6#
!
_user_specified_name	4470119:'7#
!
_user_specified_name	4470121:'8#
!
_user_specified_name	4470123:'9#
!
_user_specified_name	4470125:':#
!
_user_specified_name	4470127:';#
!
_user_specified_name	4470129:'<#
!
_user_specified_name	4470131:'=#
!
_user_specified_name	4470133:'>#
!
_user_specified_name	4470135:'?#
!
_user_specified_name	4470137:'@#
!
_user_specified_name	4470139:'A#
!
_user_specified_name	4470141:'B#
!
_user_specified_name	4470143:'C#
!
_user_specified_name	4470145:'D#
!
_user_specified_name	4470147:'E#
!
_user_specified_name	4470149:'F#
!
_user_specified_name	4470151:'G#
!
_user_specified_name	4470153:'H#
!
_user_specified_name	4470155:'I#
!
_user_specified_name	4470157:'J#
!
_user_specified_name	4470159:'K#
!
_user_specified_name	4470161:'L#
!
_user_specified_name	4470163:'M#
!
_user_specified_name	4470165:'N#
!
_user_specified_name	4470167:'O#
!
_user_specified_name	4470169:'P#
!
_user_specified_name	4470171
�
G
+__inference_dropout_4_layer_call_fn_4472096

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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4469973[
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
�
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_4471910

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
b
)__inference_dropout_layer_call_fn_4471148

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
GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4468894j
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4469887	
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4469071	
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
�
D__inference_dense_5_layer_call_and_return_conditional_losses_4472275

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

c
D__inference_dropout_layer_call_and_return_conditional_losses_4471165

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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4471714

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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4469208

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
)__inference_dense_1_layer_call_fn_4471355

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
D__inference_dense_1_layer_call_and_return_conditional_losses_4469018j
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
_user_specified_name	4471349:'#
!
_user_specified_name	4471351
�
G
+__inference_dropout_5_layer_call_fn_4472178

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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4469990[
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
V
:__inference_global_average_pooling1d_layer_call_fn_4472231

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
GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4468773i
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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4471511

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
R__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4469139

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
8__inference_multi_head_attention_5_layer_call_fn_4471994	
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4469413j
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
_user_specified_name	4471976:'#
!
_user_specified_name	4471978:'#
!
_user_specified_name	4471980:'#
!
_user_specified_name	4471982:'#
!
_user_specified_name	4471984:'#
!
_user_specified_name	4471986:'#
!
_user_specified_name	4471988:'	#
!
_user_specified_name	4471990
�<
�
'__inference_model_layer_call_fn_4470340
input_1
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
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4470010f
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
_user_specified_name	input_1:'#
!
_user_specified_name	4470178:'#
!
_user_specified_name	4470180:'#
!
_user_specified_name	4470182:'#
!
_user_specified_name	4470184:'#
!
_user_specified_name	4470186:'#
!
_user_specified_name	4470188:'#
!
_user_specified_name	4470190:'#
!
_user_specified_name	4470192:'	#
!
_user_specified_name	4470194:'
#
!
_user_specified_name	4470196:'#
!
_user_specified_name	4470198:'#
!
_user_specified_name	4470200:'#
!
_user_specified_name	4470202:'#
!
_user_specified_name	4470204:'#
!
_user_specified_name	4470206:'#
!
_user_specified_name	4470208:'#
!
_user_specified_name	4470210:'#
!
_user_specified_name	4470212:'#
!
_user_specified_name	4470214:'#
!
_user_specified_name	4470216:'#
!
_user_specified_name	4470218:'#
!
_user_specified_name	4470220:'#
!
_user_specified_name	4470222:'#
!
_user_specified_name	4470224:'#
!
_user_specified_name	4470226:'#
!
_user_specified_name	4470228:'#
!
_user_specified_name	4470230:'#
!
_user_specified_name	4470232:'#
!
_user_specified_name	4470234:'#
!
_user_specified_name	4470236:'#
!
_user_specified_name	4470238:' #
!
_user_specified_name	4470240:'!#
!
_user_specified_name	4470242:'"#
!
_user_specified_name	4470244:'##
!
_user_specified_name	4470246:'$#
!
_user_specified_name	4470248:'%#
!
_user_specified_name	4470250:'&#
!
_user_specified_name	4470252:''#
!
_user_specified_name	4470254:'(#
!
_user_specified_name	4470256:')#
!
_user_specified_name	4470258:'*#
!
_user_specified_name	4470260:'+#
!
_user_specified_name	4470262:',#
!
_user_specified_name	4470264:'-#
!
_user_specified_name	4470266:'.#
!
_user_specified_name	4470268:'/#
!
_user_specified_name	4470270:'0#
!
_user_specified_name	4470272:'1#
!
_user_specified_name	4470274:'2#
!
_user_specified_name	4470276:'3#
!
_user_specified_name	4470278:'4#
!
_user_specified_name	4470280:'5#
!
_user_specified_name	4470282:'6#
!
_user_specified_name	4470284:'7#
!
_user_specified_name	4470286:'8#
!
_user_specified_name	4470288:'9#
!
_user_specified_name	4470290:':#
!
_user_specified_name	4470292:';#
!
_user_specified_name	4470294:'<#
!
_user_specified_name	4470296:'=#
!
_user_specified_name	4470298:'>#
!
_user_specified_name	4470300:'?#
!
_user_specified_name	4470302:'@#
!
_user_specified_name	4470304:'A#
!
_user_specified_name	4470306:'B#
!
_user_specified_name	4470308:'C#
!
_user_specified_name	4470310:'D#
!
_user_specified_name	4470312:'E#
!
_user_specified_name	4470314:'F#
!
_user_specified_name	4470316:'G#
!
_user_specified_name	4470318:'H#
!
_user_specified_name	4470320:'I#
!
_user_specified_name	4470322:'J#
!
_user_specified_name	4470324:'K#
!
_user_specified_name	4470326:'L#
!
_user_specified_name	4470328:'M#
!
_user_specified_name	4470330:'N#
!
_user_specified_name	4470332:'O#
!
_user_specified_name	4470334:'P#
!
_user_specified_name	4470336
�
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_4469712

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
6__inference_multi_head_attention_layer_call_fn_4471018	
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
GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4469604j
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
_user_specified_name	4471000:'#
!
_user_specified_name	4471002:'#
!
_user_specified_name	4471004:'#
!
_user_specified_name	4471006:'#
!
_user_specified_name	4471008:'#
!
_user_specified_name	4471010:'#
!
_user_specified_name	4471012:'	#
!
_user_specified_name	4471014
�
�
7__inference_layer_normalization_7_layer_call_fn_4471919

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4469346j
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
_user_specified_name	4471913:'#
!
_user_specified_name	4471915
�
�
7__inference_layer_normalization_5_layer_call_fn_4471723

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4469232j
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
_user_specified_name	4471717:'#
!
_user_specified_name	4471719
�
�
R__inference_layer_normalization_9_layer_call_and_return_conditional_losses_4472226

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
)__inference_dense_3_layer_call_fn_4472153

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
D__inference_dense_3_layer_call_and_return_conditional_losses_4469486j
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
_user_specified_name	4472147:'#
!
_user_specified_name	4472149
�

c
D__inference_dropout_layer_call_and_return_conditional_losses_4468894

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
d
+__inference_dropout_4_layer_call_fn_4472091

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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4469442j
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
��
�P
 __inference__traced_save_4472777
file_prefix>
0read_disablecopyonread_layer_normalization_gamma:?
1read_1_disablecopyonread_layer_normalization_beta:7
%read_2_disablecopyonread_dense_kernel:1
#read_3_disablecopyonread_dense_bias:B
4read_4_disablecopyonread_layer_normalization_1_gamma:A
3read_5_disablecopyonread_layer_normalization_1_beta:B
4read_6_disablecopyonread_layer_normalization_2_gamma:A
3read_7_disablecopyonread_layer_normalization_2_beta:9
'read_8_disablecopyonread_dense_1_kernel:3
%read_9_disablecopyonread_dense_1_bias:C
5read_10_disablecopyonread_layer_normalization_4_gamma:B
4read_11_disablecopyonread_layer_normalization_4_beta:C
5read_12_disablecopyonread_layer_normalization_3_gamma:B
4read_13_disablecopyonread_layer_normalization_3_beta:C
5read_14_disablecopyonread_layer_normalization_5_gamma:B
4read_15_disablecopyonread_layer_normalization_5_beta::
(read_16_disablecopyonread_dense_2_kernel:4
&read_17_disablecopyonread_dense_2_bias:C
5read_18_disablecopyonread_layer_normalization_7_gamma:B
4read_19_disablecopyonread_layer_normalization_7_beta:C
5read_20_disablecopyonread_layer_normalization_6_gamma:B
4read_21_disablecopyonread_layer_normalization_6_beta:C
5read_22_disablecopyonread_layer_normalization_8_gamma:B
4read_23_disablecopyonread_layer_normalization_8_beta::
(read_24_disablecopyonread_dense_3_kernel:4
&read_25_disablecopyonread_dense_3_bias:C
5read_26_disablecopyonread_layer_normalization_9_gamma:B
4read_27_disablecopyonread_layer_normalization_9_beta::
(read_28_disablecopyonread_dense_4_kernel: 4
&read_29_disablecopyonread_dense_4_bias: :
(read_30_disablecopyonread_dense_5_kernel: 4
&read_31_disablecopyonread_dense_5_bias:Q
;read_32_disablecopyonread_multi_head_attention_query_kernel:K
9read_33_disablecopyonread_multi_head_attention_query_bias:O
9read_34_disablecopyonread_multi_head_attention_key_kernel:I
7read_35_disablecopyonread_multi_head_attention_key_bias:Q
;read_36_disablecopyonread_multi_head_attention_value_kernel:K
9read_37_disablecopyonread_multi_head_attention_value_bias:\
Fread_38_disablecopyonread_multi_head_attention_attention_output_kernel:R
Dread_39_disablecopyonread_multi_head_attention_attention_output_bias:S
=read_40_disablecopyonread_multi_head_attention_1_query_kernel:M
;read_41_disablecopyonread_multi_head_attention_1_query_bias:Q
;read_42_disablecopyonread_multi_head_attention_1_key_kernel:K
9read_43_disablecopyonread_multi_head_attention_1_key_bias:S
=read_44_disablecopyonread_multi_head_attention_1_value_kernel:M
;read_45_disablecopyonread_multi_head_attention_1_value_bias:^
Hread_46_disablecopyonread_multi_head_attention_1_attention_output_kernel:T
Fread_47_disablecopyonread_multi_head_attention_1_attention_output_bias:S
=read_48_disablecopyonread_multi_head_attention_2_query_kernel:M
;read_49_disablecopyonread_multi_head_attention_2_query_bias:Q
;read_50_disablecopyonread_multi_head_attention_2_key_kernel:K
9read_51_disablecopyonread_multi_head_attention_2_key_bias:S
=read_52_disablecopyonread_multi_head_attention_2_value_kernel:M
;read_53_disablecopyonread_multi_head_attention_2_value_bias:^
Hread_54_disablecopyonread_multi_head_attention_2_attention_output_kernel:T
Fread_55_disablecopyonread_multi_head_attention_2_attention_output_bias:S
=read_56_disablecopyonread_multi_head_attention_3_query_kernel:M
;read_57_disablecopyonread_multi_head_attention_3_query_bias:Q
;read_58_disablecopyonread_multi_head_attention_3_key_kernel:K
9read_59_disablecopyonread_multi_head_attention_3_key_bias:S
=read_60_disablecopyonread_multi_head_attention_3_value_kernel:M
;read_61_disablecopyonread_multi_head_attention_3_value_bias:^
Hread_62_disablecopyonread_multi_head_attention_3_attention_output_kernel:T
Fread_63_disablecopyonread_multi_head_attention_3_attention_output_bias:S
=read_64_disablecopyonread_multi_head_attention_4_query_kernel:M
;read_65_disablecopyonread_multi_head_attention_4_query_bias:Q
;read_66_disablecopyonread_multi_head_attention_4_key_kernel:K
9read_67_disablecopyonread_multi_head_attention_4_key_bias:S
=read_68_disablecopyonread_multi_head_attention_4_value_kernel:M
;read_69_disablecopyonread_multi_head_attention_4_value_bias:^
Hread_70_disablecopyonread_multi_head_attention_4_attention_output_kernel:T
Fread_71_disablecopyonread_multi_head_attention_4_attention_output_bias:S
=read_72_disablecopyonread_multi_head_attention_5_query_kernel:M
;read_73_disablecopyonread_multi_head_attention_5_query_bias:Q
;read_74_disablecopyonread_multi_head_attention_5_key_kernel:K
9read_75_disablecopyonread_multi_head_attention_5_key_bias:S
=read_76_disablecopyonread_multi_head_attention_5_value_kernel:M
;read_77_disablecopyonread_multi_head_attention_5_value_bias:^
Hread_78_disablecopyonread_multi_head_attention_5_attention_output_kernel:T
Fread_79_disablecopyonread_multi_head_attention_5_attention_output_bias:
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
Read/DisableCopyOnReadDisableCopyOnRead0read_disablecopyonread_layer_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp0read_disablecopyonread_layer_normalization_gamma^Read/DisableCopyOnRead"/device:CPU:0*
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
Read_1/DisableCopyOnReadDisableCopyOnRead1read_1_disablecopyonread_layer_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp1read_1_disablecopyonread_layer_normalization_beta^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:y
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_dense_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
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

:w
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_dense_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
Read_4/DisableCopyOnReadDisableCopyOnRead4read_4_disablecopyonread_layer_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp4read_4_disablecopyonread_layer_normalization_1_gamma^Read_4/DisableCopyOnRead"/device:CPU:0*
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
Read_5/DisableCopyOnReadDisableCopyOnRead3read_5_disablecopyonread_layer_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp3read_5_disablecopyonread_layer_normalization_1_beta^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead4read_6_disablecopyonread_layer_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp4read_6_disablecopyonread_layer_normalization_2_gamma^Read_6/DisableCopyOnRead"/device:CPU:0*
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
Read_7/DisableCopyOnReadDisableCopyOnRead3read_7_disablecopyonread_layer_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp3read_7_disablecopyonread_layer_normalization_2_beta^Read_7/DisableCopyOnRead"/device:CPU:0*
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
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_1_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
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
Read_10/DisableCopyOnReadDisableCopyOnRead5read_10_disablecopyonread_layer_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp5read_10_disablecopyonread_layer_normalization_4_gamma^Read_10/DisableCopyOnRead"/device:CPU:0*
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
Read_11/DisableCopyOnReadDisableCopyOnRead4read_11_disablecopyonread_layer_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp4read_11_disablecopyonread_layer_normalization_4_beta^Read_11/DisableCopyOnRead"/device:CPU:0*
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
Read_12/DisableCopyOnReadDisableCopyOnRead5read_12_disablecopyonread_layer_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp5read_12_disablecopyonread_layer_normalization_3_gamma^Read_12/DisableCopyOnRead"/device:CPU:0*
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
Read_13/DisableCopyOnReadDisableCopyOnRead4read_13_disablecopyonread_layer_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp4read_13_disablecopyonread_layer_normalization_3_beta^Read_13/DisableCopyOnRead"/device:CPU:0*
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
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_layer_normalization_5_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_layer_normalization_5_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
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
Read_15/DisableCopyOnReadDisableCopyOnRead4read_15_disablecopyonread_layer_normalization_5_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp4read_15_disablecopyonread_layer_normalization_5_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
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
Read_16/DisableCopyOnReadDisableCopyOnRead(read_16_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp(read_16_disablecopyonread_dense_2_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
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
Read_17/DisableCopyOnReadDisableCopyOnRead&read_17_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp&read_17_disablecopyonread_dense_2_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
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
Read_18/DisableCopyOnReadDisableCopyOnRead5read_18_disablecopyonread_layer_normalization_7_gamma"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp5read_18_disablecopyonread_layer_normalization_7_gamma^Read_18/DisableCopyOnRead"/device:CPU:0*
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
Read_19/DisableCopyOnReadDisableCopyOnRead4read_19_disablecopyonread_layer_normalization_7_beta"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp4read_19_disablecopyonread_layer_normalization_7_beta^Read_19/DisableCopyOnRead"/device:CPU:0*
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
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_layer_normalization_6_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_layer_normalization_6_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
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
Read_21/DisableCopyOnReadDisableCopyOnRead4read_21_disablecopyonread_layer_normalization_6_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp4read_21_disablecopyonread_layer_normalization_6_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
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
Read_22/DisableCopyOnReadDisableCopyOnRead5read_22_disablecopyonread_layer_normalization_8_gamma"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp5read_22_disablecopyonread_layer_normalization_8_gamma^Read_22/DisableCopyOnRead"/device:CPU:0*
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
Read_23/DisableCopyOnReadDisableCopyOnRead4read_23_disablecopyonread_layer_normalization_8_beta"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp4read_23_disablecopyonread_layer_normalization_8_beta^Read_23/DisableCopyOnRead"/device:CPU:0*
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
Read_24/DisableCopyOnReadDisableCopyOnRead(read_24_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp(read_24_disablecopyonread_dense_3_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
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
Read_25/DisableCopyOnReadDisableCopyOnRead&read_25_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp&read_25_disablecopyonread_dense_3_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
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
Read_26/DisableCopyOnReadDisableCopyOnRead5read_26_disablecopyonread_layer_normalization_9_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp5read_26_disablecopyonread_layer_normalization_9_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
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
Read_27/DisableCopyOnReadDisableCopyOnRead4read_27_disablecopyonread_layer_normalization_9_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp4read_27_disablecopyonread_layer_normalization_9_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
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
:}
Read_28/DisableCopyOnReadDisableCopyOnRead(read_28_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp(read_28_disablecopyonread_dense_4_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
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

: {
Read_29/DisableCopyOnReadDisableCopyOnRead&read_29_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp&read_29_disablecopyonread_dense_4_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
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
: }
Read_30/DisableCopyOnReadDisableCopyOnRead(read_30_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp(read_30_disablecopyonread_dense_5_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
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

: {
Read_31/DisableCopyOnReadDisableCopyOnRead&read_31_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp&read_31_disablecopyonread_dense_5_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
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
Read_32/DisableCopyOnReadDisableCopyOnRead;read_32_disablecopyonread_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp;read_32_disablecopyonread_multi_head_attention_query_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*"
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
Read_33/DisableCopyOnReadDisableCopyOnRead9read_33_disablecopyonread_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp9read_33_disablecopyonread_multi_head_attention_query_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
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
Read_34/DisableCopyOnReadDisableCopyOnRead9read_34_disablecopyonread_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp9read_34_disablecopyonread_multi_head_attention_key_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*"
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
Read_35/DisableCopyOnReadDisableCopyOnRead7read_35_disablecopyonread_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp7read_35_disablecopyonread_multi_head_attention_key_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
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
Read_36/DisableCopyOnReadDisableCopyOnRead;read_36_disablecopyonread_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp;read_36_disablecopyonread_multi_head_attention_value_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*"
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
Read_37/DisableCopyOnReadDisableCopyOnRead9read_37_disablecopyonread_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp9read_37_disablecopyonread_multi_head_attention_value_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
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
Read_38/DisableCopyOnReadDisableCopyOnReadFread_38_disablecopyonread_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOpFread_38_disablecopyonread_multi_head_attention_attention_output_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*"
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
Read_39/DisableCopyOnReadDisableCopyOnReadDread_39_disablecopyonread_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOpDread_39_disablecopyonread_multi_head_attention_attention_output_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
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
Read_40/DisableCopyOnReadDisableCopyOnRead=read_40_disablecopyonread_multi_head_attention_1_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp=read_40_disablecopyonread_multi_head_attention_1_query_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*"
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
Read_41/DisableCopyOnReadDisableCopyOnRead;read_41_disablecopyonread_multi_head_attention_1_query_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp;read_41_disablecopyonread_multi_head_attention_1_query_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
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
Read_42/DisableCopyOnReadDisableCopyOnRead;read_42_disablecopyonread_multi_head_attention_1_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp;read_42_disablecopyonread_multi_head_attention_1_key_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*"
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
Read_43/DisableCopyOnReadDisableCopyOnRead9read_43_disablecopyonread_multi_head_attention_1_key_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp9read_43_disablecopyonread_multi_head_attention_1_key_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
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
Read_44/DisableCopyOnReadDisableCopyOnRead=read_44_disablecopyonread_multi_head_attention_1_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp=read_44_disablecopyonread_multi_head_attention_1_value_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*"
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
Read_45/DisableCopyOnReadDisableCopyOnRead;read_45_disablecopyonread_multi_head_attention_1_value_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp;read_45_disablecopyonread_multi_head_attention_1_value_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
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
Read_46/DisableCopyOnReadDisableCopyOnReadHread_46_disablecopyonread_multi_head_attention_1_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOpHread_46_disablecopyonread_multi_head_attention_1_attention_output_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*"
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
Read_47/DisableCopyOnReadDisableCopyOnReadFread_47_disablecopyonread_multi_head_attention_1_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOpFread_47_disablecopyonread_multi_head_attention_1_attention_output_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
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
Read_48/DisableCopyOnReadDisableCopyOnRead=read_48_disablecopyonread_multi_head_attention_2_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp=read_48_disablecopyonread_multi_head_attention_2_query_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*"
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
Read_49/DisableCopyOnReadDisableCopyOnRead;read_49_disablecopyonread_multi_head_attention_2_query_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp;read_49_disablecopyonread_multi_head_attention_2_query_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
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
Read_50/DisableCopyOnReadDisableCopyOnRead;read_50_disablecopyonread_multi_head_attention_2_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp;read_50_disablecopyonread_multi_head_attention_2_key_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*"
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
Read_51/DisableCopyOnReadDisableCopyOnRead9read_51_disablecopyonread_multi_head_attention_2_key_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp9read_51_disablecopyonread_multi_head_attention_2_key_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
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
Read_52/DisableCopyOnReadDisableCopyOnRead=read_52_disablecopyonread_multi_head_attention_2_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp=read_52_disablecopyonread_multi_head_attention_2_value_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*"
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
Read_53/DisableCopyOnReadDisableCopyOnRead;read_53_disablecopyonread_multi_head_attention_2_value_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp;read_53_disablecopyonread_multi_head_attention_2_value_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
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
Read_54/DisableCopyOnReadDisableCopyOnReadHread_54_disablecopyonread_multi_head_attention_2_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOpHread_54_disablecopyonread_multi_head_attention_2_attention_output_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*"
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
Read_55/DisableCopyOnReadDisableCopyOnReadFread_55_disablecopyonread_multi_head_attention_2_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOpFread_55_disablecopyonread_multi_head_attention_2_attention_output_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
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
Read_56/DisableCopyOnReadDisableCopyOnRead=read_56_disablecopyonread_multi_head_attention_3_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp=read_56_disablecopyonread_multi_head_attention_3_query_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*"
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
Read_57/DisableCopyOnReadDisableCopyOnRead;read_57_disablecopyonread_multi_head_attention_3_query_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp;read_57_disablecopyonread_multi_head_attention_3_query_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
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
Read_58/DisableCopyOnReadDisableCopyOnRead;read_58_disablecopyonread_multi_head_attention_3_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp;read_58_disablecopyonread_multi_head_attention_3_key_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*"
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
Read_59/DisableCopyOnReadDisableCopyOnRead9read_59_disablecopyonread_multi_head_attention_3_key_bias"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp9read_59_disablecopyonread_multi_head_attention_3_key_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
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
Read_60/DisableCopyOnReadDisableCopyOnRead=read_60_disablecopyonread_multi_head_attention_3_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp=read_60_disablecopyonread_multi_head_attention_3_value_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*"
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
Read_61/DisableCopyOnReadDisableCopyOnRead;read_61_disablecopyonread_multi_head_attention_3_value_bias"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp;read_61_disablecopyonread_multi_head_attention_3_value_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
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
Read_62/DisableCopyOnReadDisableCopyOnReadHread_62_disablecopyonread_multi_head_attention_3_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOpHread_62_disablecopyonread_multi_head_attention_3_attention_output_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*"
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
Read_63/DisableCopyOnReadDisableCopyOnReadFread_63_disablecopyonread_multi_head_attention_3_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOpFread_63_disablecopyonread_multi_head_attention_3_attention_output_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
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
Read_64/DisableCopyOnReadDisableCopyOnRead=read_64_disablecopyonread_multi_head_attention_4_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp=read_64_disablecopyonread_multi_head_attention_4_query_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*"
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
Read_65/DisableCopyOnReadDisableCopyOnRead;read_65_disablecopyonread_multi_head_attention_4_query_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp;read_65_disablecopyonread_multi_head_attention_4_query_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
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
Read_66/DisableCopyOnReadDisableCopyOnRead;read_66_disablecopyonread_multi_head_attention_4_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp;read_66_disablecopyonread_multi_head_attention_4_key_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*"
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
Read_67/DisableCopyOnReadDisableCopyOnRead9read_67_disablecopyonread_multi_head_attention_4_key_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp9read_67_disablecopyonread_multi_head_attention_4_key_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
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
Read_68/DisableCopyOnReadDisableCopyOnRead=read_68_disablecopyonread_multi_head_attention_4_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp=read_68_disablecopyonread_multi_head_attention_4_value_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*"
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
Read_69/DisableCopyOnReadDisableCopyOnRead;read_69_disablecopyonread_multi_head_attention_4_value_bias"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp;read_69_disablecopyonread_multi_head_attention_4_value_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
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
Read_70/DisableCopyOnReadDisableCopyOnReadHread_70_disablecopyonread_multi_head_attention_4_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOpHread_70_disablecopyonread_multi_head_attention_4_attention_output_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*"
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
Read_71/DisableCopyOnReadDisableCopyOnReadFread_71_disablecopyonread_multi_head_attention_4_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOpFread_71_disablecopyonread_multi_head_attention_4_attention_output_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
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
Read_72/DisableCopyOnReadDisableCopyOnRead=read_72_disablecopyonread_multi_head_attention_5_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp=read_72_disablecopyonread_multi_head_attention_5_query_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*"
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
Read_73/DisableCopyOnReadDisableCopyOnRead;read_73_disablecopyonread_multi_head_attention_5_query_bias"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp;read_73_disablecopyonread_multi_head_attention_5_query_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
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
Read_74/DisableCopyOnReadDisableCopyOnRead;read_74_disablecopyonread_multi_head_attention_5_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp;read_74_disablecopyonread_multi_head_attention_5_key_kernel^Read_74/DisableCopyOnRead"/device:CPU:0*"
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
Read_75/DisableCopyOnReadDisableCopyOnRead9read_75_disablecopyonread_multi_head_attention_5_key_bias"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp9read_75_disablecopyonread_multi_head_attention_5_key_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
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
Read_76/DisableCopyOnReadDisableCopyOnRead=read_76_disablecopyonread_multi_head_attention_5_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp=read_76_disablecopyonread_multi_head_attention_5_value_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*"
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
Read_77/DisableCopyOnReadDisableCopyOnRead;read_77_disablecopyonread_multi_head_attention_5_value_bias"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp;read_77_disablecopyonread_multi_head_attention_5_value_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
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
Read_78/DisableCopyOnReadDisableCopyOnReadHread_78_disablecopyonread_multi_head_attention_5_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOpHread_78_disablecopyonread_multi_head_attention_5_attention_output_kernel^Read_78/DisableCopyOnRead"/device:CPU:0*"
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
Read_79/DisableCopyOnReadDisableCopyOnReadFread_79_disablecopyonread_multi_head_attention_5_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOpFread_79_disablecopyonread_multi_head_attention_5_attention_output_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
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
_user_specified_namefile_prefix:95
3
_user_specified_namelayer_normalization/gamma:84
2
_user_specified_namelayer_normalization/beta:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:;7
5
_user_specified_namelayer_normalization_1/gamma::6
4
_user_specified_namelayer_normalization_1/beta:;7
5
_user_specified_namelayer_normalization_2/gamma::6
4
_user_specified_namelayer_normalization_2/beta:.	*
(
_user_specified_namedense_1/kernel:,
(
&
_user_specified_namedense_1/bias:;7
5
_user_specified_namelayer_normalization_4/gamma::6
4
_user_specified_namelayer_normalization_4/beta:;7
5
_user_specified_namelayer_normalization_3/gamma::6
4
_user_specified_namelayer_normalization_3/beta:;7
5
_user_specified_namelayer_normalization_5/gamma::6
4
_user_specified_namelayer_normalization_5/beta:.*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_2/bias:;7
5
_user_specified_namelayer_normalization_7/gamma::6
4
_user_specified_namelayer_normalization_7/beta:;7
5
_user_specified_namelayer_normalization_6/gamma::6
4
_user_specified_namelayer_normalization_6/beta:;7
5
_user_specified_namelayer_normalization_8/gamma::6
4
_user_specified_namelayer_normalization_8/beta:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_3/bias:;7
5
_user_specified_namelayer_normalization_9/gamma::6
4
_user_specified_namelayer_normalization_9/beta:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_5/kernel:, (
&
_user_specified_namedense_5/bias:A!=
;
_user_specified_name#!multi_head_attention/query/kernel:?";
9
_user_specified_name!multi_head_attention/query/bias:?#;
9
_user_specified_name!multi_head_attention/key/kernel:=$9
7
_user_specified_namemulti_head_attention/key/bias:A%=
;
_user_specified_name#!multi_head_attention/value/kernel:?&;
9
_user_specified_name!multi_head_attention/value/bias:L'H
F
_user_specified_name.,multi_head_attention/attention_output/kernel:J(F
D
_user_specified_name,*multi_head_attention/attention_output/bias:C)?
=
_user_specified_name%#multi_head_attention_1/query/kernel:A*=
;
_user_specified_name#!multi_head_attention_1/query/bias:A+=
;
_user_specified_name#!multi_head_attention_1/key/kernel:?,;
9
_user_specified_name!multi_head_attention_1/key/bias:C-?
=
_user_specified_name%#multi_head_attention_1/value/kernel:A.=
;
_user_specified_name#!multi_head_attention_1/value/bias:N/J
H
_user_specified_name0.multi_head_attention_1/attention_output/kernel:L0H
F
_user_specified_name.,multi_head_attention_1/attention_output/bias:C1?
=
_user_specified_name%#multi_head_attention_2/query/kernel:A2=
;
_user_specified_name#!multi_head_attention_2/query/bias:A3=
;
_user_specified_name#!multi_head_attention_2/key/kernel:?4;
9
_user_specified_name!multi_head_attention_2/key/bias:C5?
=
_user_specified_name%#multi_head_attention_2/value/kernel:A6=
;
_user_specified_name#!multi_head_attention_2/value/bias:N7J
H
_user_specified_name0.multi_head_attention_2/attention_output/kernel:L8H
F
_user_specified_name.,multi_head_attention_2/attention_output/bias:C9?
=
_user_specified_name%#multi_head_attention_3/query/kernel:A:=
;
_user_specified_name#!multi_head_attention_3/query/bias:A;=
;
_user_specified_name#!multi_head_attention_3/key/kernel:?<;
9
_user_specified_name!multi_head_attention_3/key/bias:C=?
=
_user_specified_name%#multi_head_attention_3/value/kernel:A>=
;
_user_specified_name#!multi_head_attention_3/value/bias:N?J
H
_user_specified_name0.multi_head_attention_3/attention_output/kernel:L@H
F
_user_specified_name.,multi_head_attention_3/attention_output/bias:CA?
=
_user_specified_name%#multi_head_attention_4/query/kernel:AB=
;
_user_specified_name#!multi_head_attention_4/query/bias:AC=
;
_user_specified_name#!multi_head_attention_4/key/kernel:?D;
9
_user_specified_name!multi_head_attention_4/key/bias:CE?
=
_user_specified_name%#multi_head_attention_4/value/kernel:AF=
;
_user_specified_name#!multi_head_attention_4/value/bias:NGJ
H
_user_specified_name0.multi_head_attention_4/attention_output/kernel:LHH
F
_user_specified_name.,multi_head_attention_4/attention_output/bias:CI?
=
_user_specified_name%#multi_head_attention_5/query/kernel:AJ=
;
_user_specified_name#!multi_head_attention_5/query/bias:AK=
;
_user_specified_name#!multi_head_attention_5/key/kernel:?L;
9
_user_specified_name!multi_head_attention_5/key/bias:CM?
=
_user_specified_name%#multi_head_attention_5/value/kernel:AN=
;
_user_specified_name#!multi_head_attention_5/value/bias:NOJ
H
_user_specified_name0.multi_head_attention_5/attention_output/kernel:LPH
F
_user_specified_name.,multi_head_attention_5/attention_output/bias:=Q9

_output_shapes
: 

_user_specified_nameConst
�
E
)__inference_dropout_layer_call_fn_4471153

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
GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4469637[
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4469413	
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
8__inference_multi_head_attention_1_layer_call_fn_4471245	
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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4469679j
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
_user_specified_name	4471227:'#
!
_user_specified_name	4471229:'#
!
_user_specified_name	4471231:'#
!
_user_specified_name	4471233:'#
!
_user_specified_name	4471235:'#
!
_user_specified_name	4471237:'#
!
_user_specified_name	4471239:'	#
!
_user_specified_name	4471241
�	
�
D__inference_dense_5_layer_call_and_return_conditional_losses_4469558

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

e
F__inference_dropout_5_layer_call_and_return_conditional_losses_4472190

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
7__inference_layer_normalization_8_layer_call_fn_4472122

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_8_layer_call_and_return_conditional_losses_4469466j
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
_user_specified_name	4472116:'#
!
_user_specified_name	4472118
�

e
F__inference_dropout_3_layer_call_and_return_conditional_losses_4469269

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
�
�
D__inference_dense_3_layer_call_and_return_conditional_losses_4472168

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
+__inference_dropout_5_layer_call_fn_4472173

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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4469503j
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
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_4469834

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
R__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4471542

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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4471687	
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

e
F__inference_dropout_5_layer_call_and_return_conditional_losses_4469503

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
G
+__inference_dropout_1_layer_call_fn_4471494

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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4469712[
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
B__inference_dense_layer_call_and_return_conditional_losses_4468877

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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4472051	
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
�
�
7__inference_layer_normalization_4_layer_call_fn_4471520

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4469112j
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
_user_specified_name	4471514:'#
!
_user_specified_name	4471516
�
�
8__inference_multi_head_attention_1_layer_call_fn_4471223	
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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4468958j
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
_user_specified_name	4471205:'#
!
_user_specified_name	4471207:'#
!
_user_specified_name	4471209:'#
!
_user_specified_name	4471211:'#
!
_user_specified_name	4471213:'#
!
_user_specified_name	4471215:'#
!
_user_specified_name	4471217:'	#
!
_user_specified_name	4471219
�
�
D__inference_dense_3_layer_call_and_return_conditional_losses_4469486

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
R__inference_layer_normalization_8_layer_call_and_return_conditional_losses_4469466

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
�%
B__inference_model_layer_call_and_return_conditional_losses_4470010
input_12
multi_head_attention_4469605:.
multi_head_attention_4469607:2
multi_head_attention_4469609:.
multi_head_attention_4469611:2
multi_head_attention_4469613:.
multi_head_attention_4469615:2
multi_head_attention_4469617:*
multi_head_attention_4469619:)
layer_normalization_4469623:)
layer_normalization_4469625:
dense_4469628:
dense_4469630:+
layer_normalization_1_4469640:+
layer_normalization_1_4469642:4
multi_head_attention_1_4469680:0
multi_head_attention_1_4469682:4
multi_head_attention_1_4469684:0
multi_head_attention_1_4469686:4
multi_head_attention_1_4469688:0
multi_head_attention_1_4469690:4
multi_head_attention_1_4469692:,
multi_head_attention_1_4469694:+
layer_normalization_2_4469698:+
layer_normalization_2_4469700:!
dense_1_4469703:
dense_1_4469705:4
multi_head_attention_2_4469749:0
multi_head_attention_2_4469751:4
multi_head_attention_2_4469753:0
multi_head_attention_2_4469755:4
multi_head_attention_2_4469757:0
multi_head_attention_2_4469759:4
multi_head_attention_2_4469761:,
multi_head_attention_2_4469763:+
layer_normalization_4_4469768:+
layer_normalization_4_4469770:+
layer_normalization_3_4469773:+
layer_normalization_3_4469775:4
multi_head_attention_3_4469813:0
multi_head_attention_3_4469815:4
multi_head_attention_3_4469817:0
multi_head_attention_3_4469819:4
multi_head_attention_3_4469821:0
multi_head_attention_3_4469823:4
multi_head_attention_3_4469825:,
multi_head_attention_3_4469827:+
layer_normalization_5_4469837:+
layer_normalization_5_4469839:!
dense_2_4469842:
dense_2_4469844:4
multi_head_attention_4_4469888:0
multi_head_attention_4_4469890:4
multi_head_attention_4_4469892:0
multi_head_attention_4_4469894:4
multi_head_attention_4_4469896:0
multi_head_attention_4_4469898:4
multi_head_attention_4_4469900:,
multi_head_attention_4_4469902:+
layer_normalization_7_4469907:+
layer_normalization_7_4469909:+
layer_normalization_6_4469912:+
layer_normalization_6_4469914:4
multi_head_attention_5_4469952:0
multi_head_attention_5_4469954:4
multi_head_attention_5_4469956:0
multi_head_attention_5_4469958:4
multi_head_attention_5_4469960:0
multi_head_attention_5_4469962:4
multi_head_attention_5_4469964:,
multi_head_attention_5_4469966:+
layer_normalization_8_4469976:+
layer_normalization_8_4469978:!
dense_3_4469981:
dense_3_4469983:+
layer_normalization_9_4469993:+
layer_normalization_9_4469995:!
dense_4_4469999: 
dense_4_4470001: !
dense_5_4470004: 
dense_5_4470006:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�-layer_normalization_4/StatefulPartitionedCall�-layer_normalization_5/StatefulPartitionedCall�-layer_normalization_6/StatefulPartitionedCall�-layer_normalization_7/StatefulPartitionedCall�-layer_normalization_8/StatefulPartitionedCall�-layer_normalization_9/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�.multi_head_attention_2/StatefulPartitionedCall�.multi_head_attention_3/StatefulPartitionedCall�.multi_head_attention_4/StatefulPartitionedCall�.multi_head_attention_5/StatefulPartitionedCall�
tf.__operators__.add/yConst*
_output_shapes

:*
dtype0*�
value�B�"�y4=0�;��<�#=�5ün��<�l��I�]�����;:�뼒a�<�"�qJ=7�@��	���<�� D8�@=��J=�i=���<�E< �3;@�0� �8<G�-=:���$=��t���=��g���� ������)=��F�h�<<ɳ=(q <���;Z
= :<����h��;���<�����:`w;-�<�XL��x��( :<��<����,��Z�<��3=t�8�3U6����;Ȉ����;�Bμ�x<�K��i�3=�3�<)�A=�-���<@E$<s0$=L.<�(	��P�:�<�7ռ�Ű�Z��<ru�<Fi�<��Z<b9�<�z2�@��:�.�<N�<��=�G�<]4C��t<�C��< �ۼ�X:Rf�<� ��<B��<���G�=`K��B���y;����{����<9�.=ڞ�<�Ξ;4���<�"=W�8=��6=0���_�� 5/�,���葩; �r9)�=��<�,=��A=��c<L~T�sD�3���`���=��A�����Q<h��;0(��G�B�4Ȓ�h��;4���c1=F��<�J=�v�F�	��^���-<�3���&=6����躌�-<s�6� ����T�< ��;"���<�%4��/	�y�D=�9�T@����<w�=h�a�d;s<�c�<�X�<q�#=�4���Xu�W<f��<����4<�y�<T���9�<.H�<z�<�"��~<�<���<�NM����<�e�<���z
tf.__operators__.add/AddV2AddV2input_1tf.__operators__.add/y:output:0*
T0*"
_output_shapes
:�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_4469605multi_head_attention_4469607multi_head_attention_4469609multi_head_attention_4469611multi_head_attention_4469613multi_head_attention_4469615multi_head_attention_4469617multi_head_attention_4469619*
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
GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4469604�
tf.__operators__.add_1/AddV2AddV2tf.__operators__.add/AddV2:z:05multi_head_attention/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_1/AddV2:z:0layer_normalization_4469623layer_normalization_4469625*
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
GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4468857�
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0dense_4469628dense_4469630*
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
GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4468877�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4469637�
tf.__operators__.add_2/AddV2AddV24layer_normalization/StatefulPartitionedCall:output:0 dropout/PartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_2/AddV2:z:0layer_normalization_1_4469640layer_normalization_1_4469642*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4468918�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_4469680multi_head_attention_1_4469682multi_head_attention_1_4469684multi_head_attention_1_4469686multi_head_attention_1_4469688multi_head_attention_1_4469690multi_head_attention_1_4469692multi_head_attention_1_4469694*
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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4469679�
tf.__operators__.add_3/AddV2AddV26layer_normalization_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_3/AddV2:z:0layer_normalization_2_4469698layer_normalization_2_4469700*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4468998�
dense_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_1_4469703dense_1_4469705*
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
D__inference_dense_1_layer_call_and_return_conditional_losses_4469018�
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4469712�
.multi_head_attention_2/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_2_4469749multi_head_attention_2_4469751multi_head_attention_2_4469753multi_head_attention_2_4469755multi_head_attention_2_4469757multi_head_attention_2_4469759multi_head_attention_2_4469761multi_head_attention_2_4469763*
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4469748�
tf.__operators__.add_4/AddV2AddV26layer_normalization_2/StatefulPartitionedCall:output:0"dropout_1/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_5/AddV2AddV2tf.__operators__.add/AddV2:z:07multi_head_attention_2/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_5/AddV2:z:0layer_normalization_4_4469768layer_normalization_4_4469770*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4469112�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_4/AddV2:z:0layer_normalization_3_4469773layer_normalization_3_4469775*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4469139�
.multi_head_attention_3/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0multi_head_attention_3_4469813multi_head_attention_3_4469815multi_head_attention_3_4469817multi_head_attention_3_4469819multi_head_attention_3_4469821multi_head_attention_3_4469823multi_head_attention_3_4469825multi_head_attention_3_4469827*
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4469812�
dropout_2/PartitionedCallPartitionedCall7multi_head_attention_3/StatefulPartitionedCall:output:0*
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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4469834�
tf.__operators__.add_6/AddV2AddV26layer_normalization_4/StatefulPartitionedCall:output:0"dropout_2/PartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_5/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_6/AddV2:z:0layer_normalization_5_4469837layer_normalization_5_4469839*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4469232�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_5/StatefulPartitionedCall:output:0dense_2_4469842dense_2_4469844*
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
D__inference_dense_2_layer_call_and_return_conditional_losses_4469252�
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4469851�
.multi_head_attention_4/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_4_4469888multi_head_attention_4_4469890multi_head_attention_4_4469892multi_head_attention_4_4469894multi_head_attention_4_4469896multi_head_attention_4_4469898multi_head_attention_4_4469900multi_head_attention_4_4469902*
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4469887�
tf.__operators__.add_7/AddV2AddV26layer_normalization_5/StatefulPartitionedCall:output:0"dropout_3/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_8/AddV2AddV2tf.__operators__.add/AddV2:z:07multi_head_attention_4/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_7/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_8/AddV2:z:0layer_normalization_7_4469907layer_normalization_7_4469909*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4469346�
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_7/AddV2:z:0layer_normalization_6_4469912layer_normalization_6_4469914*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4469373�
.multi_head_attention_5/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_7/StatefulPartitionedCall:output:06layer_normalization_6/StatefulPartitionedCall:output:0multi_head_attention_5_4469952multi_head_attention_5_4469954multi_head_attention_5_4469956multi_head_attention_5_4469958multi_head_attention_5_4469960multi_head_attention_5_4469962multi_head_attention_5_4469964multi_head_attention_5_4469966*
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4469951�
dropout_4/PartitionedCallPartitionedCall7multi_head_attention_5/StatefulPartitionedCall:output:0*
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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4469973�
tf.__operators__.add_9/AddV2AddV26layer_normalization_7/StatefulPartitionedCall:output:0"dropout_4/PartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_9/AddV2:z:0layer_normalization_8_4469976layer_normalization_8_4469978*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_8_layer_call_and_return_conditional_losses_4469466�
dense_3/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0dense_3_4469981dense_3_4469983*
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4469486�
dropout_5/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4469990�
tf.__operators__.add_10/AddV2AddV26layer_normalization_8/StatefulPartitionedCall:output:0"dropout_5/PartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_9/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_10/AddV2:z:0layer_normalization_9_4469993layer_normalization_9_4469995*
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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_9_layer_call_and_return_conditional_losses_4469527�
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_9/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4468773�
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_4469999dense_4_4470001*
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
GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_4469543�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_4470004dense_5_4470006*
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
GPU 2J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_4469558n
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall.^layer_normalization_4/StatefulPartitionedCall.^layer_normalization_5/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall.^layer_normalization_7/StatefulPartitionedCall.^layer_normalization_8/StatefulPartitionedCall.^layer_normalization_9/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall/^multi_head_attention_2/StatefulPartitionedCall/^multi_head_attention_3/StatefulPartitionedCall/^multi_head_attention_4/StatefulPartitionedCall/^multi_head_attention_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2^
-layer_normalization_4/StatefulPartitionedCall-layer_normalization_4/StatefulPartitionedCall2^
-layer_normalization_5/StatefulPartitionedCall-layer_normalization_5/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2^
-layer_normalization_7/StatefulPartitionedCall-layer_normalization_7/StatefulPartitionedCall2^
-layer_normalization_8/StatefulPartitionedCall-layer_normalization_8/StatefulPartitionedCall2^
-layer_normalization_9/StatefulPartitionedCall-layer_normalization_9/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2`
.multi_head_attention_2/StatefulPartitionedCall.multi_head_attention_2/StatefulPartitionedCall2`
.multi_head_attention_3/StatefulPartitionedCall.multi_head_attention_3/StatefulPartitionedCall2`
.multi_head_attention_4/StatefulPartitionedCall.multi_head_attention_4/StatefulPartitionedCall2`
.multi_head_attention_5/StatefulPartitionedCall.multi_head_attention_5/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:'#
!
_user_specified_name	4469605:'#
!
_user_specified_name	4469607:'#
!
_user_specified_name	4469609:'#
!
_user_specified_name	4469611:'#
!
_user_specified_name	4469613:'#
!
_user_specified_name	4469615:'#
!
_user_specified_name	4469617:'#
!
_user_specified_name	4469619:'	#
!
_user_specified_name	4469623:'
#
!
_user_specified_name	4469625:'#
!
_user_specified_name	4469628:'#
!
_user_specified_name	4469630:'#
!
_user_specified_name	4469640:'#
!
_user_specified_name	4469642:'#
!
_user_specified_name	4469680:'#
!
_user_specified_name	4469682:'#
!
_user_specified_name	4469684:'#
!
_user_specified_name	4469686:'#
!
_user_specified_name	4469688:'#
!
_user_specified_name	4469690:'#
!
_user_specified_name	4469692:'#
!
_user_specified_name	4469694:'#
!
_user_specified_name	4469698:'#
!
_user_specified_name	4469700:'#
!
_user_specified_name	4469703:'#
!
_user_specified_name	4469705:'#
!
_user_specified_name	4469749:'#
!
_user_specified_name	4469751:'#
!
_user_specified_name	4469753:'#
!
_user_specified_name	4469755:'#
!
_user_specified_name	4469757:' #
!
_user_specified_name	4469759:'!#
!
_user_specified_name	4469761:'"#
!
_user_specified_name	4469763:'##
!
_user_specified_name	4469768:'$#
!
_user_specified_name	4469770:'%#
!
_user_specified_name	4469773:'&#
!
_user_specified_name	4469775:''#
!
_user_specified_name	4469813:'(#
!
_user_specified_name	4469815:')#
!
_user_specified_name	4469817:'*#
!
_user_specified_name	4469819:'+#
!
_user_specified_name	4469821:',#
!
_user_specified_name	4469823:'-#
!
_user_specified_name	4469825:'.#
!
_user_specified_name	4469827:'/#
!
_user_specified_name	4469837:'0#
!
_user_specified_name	4469839:'1#
!
_user_specified_name	4469842:'2#
!
_user_specified_name	4469844:'3#
!
_user_specified_name	4469888:'4#
!
_user_specified_name	4469890:'5#
!
_user_specified_name	4469892:'6#
!
_user_specified_name	4469894:'7#
!
_user_specified_name	4469896:'8#
!
_user_specified_name	4469898:'9#
!
_user_specified_name	4469900:':#
!
_user_specified_name	4469902:';#
!
_user_specified_name	4469907:'<#
!
_user_specified_name	4469909:'=#
!
_user_specified_name	4469912:'>#
!
_user_specified_name	4469914:'?#
!
_user_specified_name	4469952:'@#
!
_user_specified_name	4469954:'A#
!
_user_specified_name	4469956:'B#
!
_user_specified_name	4469958:'C#
!
_user_specified_name	4469960:'D#
!
_user_specified_name	4469962:'E#
!
_user_specified_name	4469964:'F#
!
_user_specified_name	4469966:'G#
!
_user_specified_name	4469976:'H#
!
_user_specified_name	4469978:'I#
!
_user_specified_name	4469981:'J#
!
_user_specified_name	4469983:'K#
!
_user_specified_name	4469993:'L#
!
_user_specified_name	4469995:'M#
!
_user_specified_name	4469999:'N#
!
_user_specified_name	4470001:'O#
!
_user_specified_name	4470004:'P#
!
_user_specified_name	4470006
�
�
7__inference_layer_normalization_1_layer_call_fn_4471179

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4468918j
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
_user_specified_name	4471173:'#
!
_user_specified_name	4471175
�
�
D__inference_dense_2_layer_call_and_return_conditional_losses_4471769

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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4468817	
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
R__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4469373

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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4471848	
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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4471053	
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
b
D__inference_dropout_layer_call_and_return_conditional_losses_4469637

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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4471709

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
R__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4471972

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
D__inference_dense_1_layer_call_and_return_conditional_losses_4471370

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
B__inference_dense_layer_call_and_return_conditional_losses_4471143

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
8__inference_multi_head_attention_3_layer_call_fn_4471595	
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4469179j
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
_user_specified_name	4471577:'#
!
_user_specified_name	4471579:'#
!
_user_specified_name	4471581:'#
!
_user_specified_name	4471583:'#
!
_user_specified_name	4471585:'#
!
_user_specified_name	4471587:'#
!
_user_specified_name	4471589:'	#
!
_user_specified_name	4471591
�

e
F__inference_dropout_4_layer_call_and_return_conditional_losses_4469442

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
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4472237

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
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4468998

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
R__inference_layer_normalization_8_layer_call_and_return_conditional_losses_4472144

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
R__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4469232

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
R__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4471941

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
7__inference_layer_normalization_3_layer_call_fn_4471551

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
GPU 2J 8� *[
fVRT
R__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4469139j
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
_user_specified_name	4471545:'#
!
_user_specified_name	4471547
�

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_4469035

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
�
�
D__inference_dense_1_layer_call_and_return_conditional_losses_4469018

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
�
�
5__inference_layer_normalization_layer_call_fn_4471097

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
GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4468857j
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
_user_specified_name	4471091:'#
!
_user_specified_name	4471093
�	
�
D__inference_dense_4_layer_call_and_return_conditional_losses_4472256

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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4469812	
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
)__inference_dense_5_layer_call_fn_4472265

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
GPU 2J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_4469558f
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
_user_specified_name	4472259:'#
!
_user_specified_name	4472261
�+
�
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4469748	
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
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4471119

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
+__inference_dropout_3_layer_call_fn_4471893

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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4469851[
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
 
_user_specified_nameinputs"�L
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
serving_default_input_1:02
dense_5'
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
'__inference_model_layer_call_fn_4470175
'__inference_model_layer_call_fn_4470340�
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
B__inference_model_layer_call_and_return_conditional_losses_4469565
B__inference_model_layer_call_and_return_conditional_losses_4470010�
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
"__inference__wrapped_model_4468767input_1"�
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
6__inference_multi_head_attention_layer_call_fn_4470996
6__inference_multi_head_attention_layer_call_fn_4471018�
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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4471053
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4471088�
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
5__inference_layer_normalization_layer_call_fn_4471097�
���
FullArgSpec
args�

jinputs
varargs
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
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4471119�
���
FullArgSpec
args�

jinputs
varargs
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
':%2layer_normalization/gamma
&:$2layer_normalization/beta
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
'__inference_dense_layer_call_fn_4471128�
���
FullArgSpec
args�

jinputs
varargs
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
�
�trace_02�
B__inference_dense_layer_call_and_return_conditional_losses_4471143�
���
FullArgSpec
args�

jinputs
varargs
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
:2dense/kernel
:2
dense/bias
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
)__inference_dropout_layer_call_fn_4471148
)__inference_dropout_layer_call_fn_4471153�
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
D__inference_dropout_layer_call_and_return_conditional_losses_4471165
D__inference_dropout_layer_call_and_return_conditional_losses_4471170�
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
7__inference_layer_normalization_1_layer_call_fn_4471179�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4471201�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_1/gamma
(:&2layer_normalization_1/beta
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
8__inference_multi_head_attention_1_layer_call_fn_4471223
8__inference_multi_head_attention_1_layer_call_fn_4471245�
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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4471280
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4471315�
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
7__inference_layer_normalization_2_layer_call_fn_4471324�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4471346�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_2/gamma
(:&2layer_normalization_2/beta
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
)__inference_dense_1_layer_call_fn_4471355�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_1_layer_call_and_return_conditional_losses_4471370�
���
FullArgSpec
args�

jinputs
varargs
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
 :2dense_1/kernel
:2dense_1/bias
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
8__inference_multi_head_attention_2_layer_call_fn_4471392
8__inference_multi_head_attention_2_layer_call_fn_4471414�
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4471449
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4471484�
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
+__inference_dropout_1_layer_call_fn_4471489
+__inference_dropout_1_layer_call_fn_4471494�
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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4471506
F__inference_dropout_1_layer_call_and_return_conditional_losses_4471511�
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
7__inference_layer_normalization_4_layer_call_fn_4471520�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4471542�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_4/gamma
(:&2layer_normalization_4/beta
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
7__inference_layer_normalization_3_layer_call_fn_4471551�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4471573�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_3/gamma
(:&2layer_normalization_3/beta
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
8__inference_multi_head_attention_3_layer_call_fn_4471595
8__inference_multi_head_attention_3_layer_call_fn_4471617�
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4471652
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4471687�
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
+__inference_dropout_2_layer_call_fn_4471692
+__inference_dropout_2_layer_call_fn_4471697�
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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4471709
F__inference_dropout_2_layer_call_and_return_conditional_losses_4471714�
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
7__inference_layer_normalization_5_layer_call_fn_4471723�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4471745�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_5/gamma
(:&2layer_normalization_5/beta
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
)__inference_dense_2_layer_call_fn_4471754�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_2_layer_call_and_return_conditional_losses_4471769�
���
FullArgSpec
args�

jinputs
varargs
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
 :2dense_2/kernel
:2dense_2/bias
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
8__inference_multi_head_attention_4_layer_call_fn_4471791
8__inference_multi_head_attention_4_layer_call_fn_4471813�
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4471848
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4471883�
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
+__inference_dropout_3_layer_call_fn_4471888
+__inference_dropout_3_layer_call_fn_4471893�
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4471905
F__inference_dropout_3_layer_call_and_return_conditional_losses_4471910�
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
7__inference_layer_normalization_7_layer_call_fn_4471919�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4471941�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_7/gamma
(:&2layer_normalization_7/beta
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
7__inference_layer_normalization_6_layer_call_fn_4471950�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4471972�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_6/gamma
(:&2layer_normalization_6/beta
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
�trace_12�
8__inference_multi_head_attention_5_layer_call_fn_4471994
8__inference_multi_head_attention_5_layer_call_fn_4472016�
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4472051
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4472086�
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
+__inference_dropout_4_layer_call_fn_4472091
+__inference_dropout_4_layer_call_fn_4472096�
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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4472108
F__inference_dropout_4_layer_call_and_return_conditional_losses_4472113�
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
7__inference_layer_normalization_8_layer_call_fn_4472122�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_8_layer_call_and_return_conditional_losses_4472144�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_8/gamma
(:&2layer_normalization_8/beta
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
)__inference_dense_3_layer_call_fn_4472153�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4472168�
���
FullArgSpec
args�

jinputs
varargs
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
 :2dense_3/kernel
:2dense_3/bias
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
+__inference_dropout_5_layer_call_fn_4472173
+__inference_dropout_5_layer_call_fn_4472178�
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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4472190
F__inference_dropout_5_layer_call_and_return_conditional_losses_4472195�
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
7__inference_layer_normalization_9_layer_call_fn_4472204�
���
FullArgSpec
args�

jinputs
varargs
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
R__inference_layer_normalization_9_layer_call_and_return_conditional_losses_4472226�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_9/gamma
(:&2layer_normalization_9/beta
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
:__inference_global_average_pooling1d_layer_call_fn_4472231�
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
�trace_02�
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4472237�
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
)__inference_dense_4_layer_call_fn_4472246�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_4_layer_call_and_return_conditional_losses_4472256�
���
FullArgSpec
args�

jinputs
varargs
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
 : 2dense_4/kernel
: 2dense_4/bias
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
)__inference_dense_5_layer_call_fn_4472265�
���
FullArgSpec
args�

jinputs
varargs
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
D__inference_dense_5_layer_call_and_return_conditional_losses_4472275�
���
FullArgSpec
args�

jinputs
varargs
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
 : 2dense_5/kernel
:2dense_5/bias
 "
trackable_dict_wrapper
7:52!multi_head_attention/query/kernel
1:/2multi_head_attention/query/bias
5:32multi_head_attention/key/kernel
/:-2multi_head_attention/key/bias
7:52!multi_head_attention/value/kernel
1:/2multi_head_attention/value/bias
B:@2,multi_head_attention/attention_output/kernel
8:62*multi_head_attention/attention_output/bias
9:72#multi_head_attention_1/query/kernel
3:12!multi_head_attention_1/query/bias
7:52!multi_head_attention_1/key/kernel
1:/2multi_head_attention_1/key/bias
9:72#multi_head_attention_1/value/kernel
3:12!multi_head_attention_1/value/bias
D:B2.multi_head_attention_1/attention_output/kernel
::82,multi_head_attention_1/attention_output/bias
9:72#multi_head_attention_2/query/kernel
3:12!multi_head_attention_2/query/bias
7:52!multi_head_attention_2/key/kernel
1:/2multi_head_attention_2/key/bias
9:72#multi_head_attention_2/value/kernel
3:12!multi_head_attention_2/value/bias
D:B2.multi_head_attention_2/attention_output/kernel
::82,multi_head_attention_2/attention_output/bias
9:72#multi_head_attention_3/query/kernel
3:12!multi_head_attention_3/query/bias
7:52!multi_head_attention_3/key/kernel
1:/2multi_head_attention_3/key/bias
9:72#multi_head_attention_3/value/kernel
3:12!multi_head_attention_3/value/bias
D:B2.multi_head_attention_3/attention_output/kernel
::82,multi_head_attention_3/attention_output/bias
9:72#multi_head_attention_4/query/kernel
3:12!multi_head_attention_4/query/bias
7:52!multi_head_attention_4/key/kernel
1:/2multi_head_attention_4/key/bias
9:72#multi_head_attention_4/value/kernel
3:12!multi_head_attention_4/value/bias
D:B2.multi_head_attention_4/attention_output/kernel
::82,multi_head_attention_4/attention_output/bias
9:72#multi_head_attention_5/query/kernel
3:12!multi_head_attention_5/query/bias
7:52!multi_head_attention_5/key/kernel
1:/2multi_head_attention_5/key/bias
9:72#multi_head_attention_5/value/kernel
3:12!multi_head_attention_5/value/bias
D:B2.multi_head_attention_5/attention_output/kernel
::82,multi_head_attention_5/attention_output/bias
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
'__inference_model_layer_call_fn_4470175input_1"�
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
'__inference_model_layer_call_fn_4470340input_1"�
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
B__inference_model_layer_call_and_return_conditional_losses_4469565input_1"�
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
B__inference_model_layer_call_and_return_conditional_losses_4470010input_1"�
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
%__inference_signature_wrapper_4470974input_1"�
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
6__inference_multi_head_attention_layer_call_fn_4470996queryvalue"�
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
6__inference_multi_head_attention_layer_call_fn_4471018queryvalue"�
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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4471053queryvalue"�
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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4471088queryvalue"�
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
5__inference_layer_normalization_layer_call_fn_4471097inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4471119inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
'__inference_dense_layer_call_fn_4471128inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
B__inference_dense_layer_call_and_return_conditional_losses_4471143inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
)__inference_dropout_layer_call_fn_4471148inputs"�
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
)__inference_dropout_layer_call_fn_4471153inputs"�
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
D__inference_dropout_layer_call_and_return_conditional_losses_4471165inputs"�
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
D__inference_dropout_layer_call_and_return_conditional_losses_4471170inputs"�
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
7__inference_layer_normalization_1_layer_call_fn_4471179inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4471201inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
8__inference_multi_head_attention_1_layer_call_fn_4471223queryvalue"�
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
8__inference_multi_head_attention_1_layer_call_fn_4471245queryvalue"�
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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4471280queryvalue"�
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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4471315queryvalue"�
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
7__inference_layer_normalization_2_layer_call_fn_4471324inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4471346inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
)__inference_dense_1_layer_call_fn_4471355inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
D__inference_dense_1_layer_call_and_return_conditional_losses_4471370inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
8__inference_multi_head_attention_2_layer_call_fn_4471392queryvalue"�
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
8__inference_multi_head_attention_2_layer_call_fn_4471414queryvalue"�
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4471449queryvalue"�
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4471484queryvalue"�
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
+__inference_dropout_1_layer_call_fn_4471489inputs"�
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
+__inference_dropout_1_layer_call_fn_4471494inputs"�
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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4471506inputs"�
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
F__inference_dropout_1_layer_call_and_return_conditional_losses_4471511inputs"�
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
7__inference_layer_normalization_4_layer_call_fn_4471520inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4471542inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
7__inference_layer_normalization_3_layer_call_fn_4471551inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4471573inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
8__inference_multi_head_attention_3_layer_call_fn_4471595queryvalue"�
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
8__inference_multi_head_attention_3_layer_call_fn_4471617queryvalue"�
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4471652queryvalue"�
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4471687queryvalue"�
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
+__inference_dropout_2_layer_call_fn_4471692inputs"�
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
+__inference_dropout_2_layer_call_fn_4471697inputs"�
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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4471709inputs"�
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
F__inference_dropout_2_layer_call_and_return_conditional_losses_4471714inputs"�
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
7__inference_layer_normalization_5_layer_call_fn_4471723inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4471745inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
)__inference_dense_2_layer_call_fn_4471754inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
D__inference_dense_2_layer_call_and_return_conditional_losses_4471769inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
8__inference_multi_head_attention_4_layer_call_fn_4471791queryvalue"�
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
8__inference_multi_head_attention_4_layer_call_fn_4471813queryvalue"�
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4471848queryvalue"�
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4471883queryvalue"�
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
+__inference_dropout_3_layer_call_fn_4471888inputs"�
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
+__inference_dropout_3_layer_call_fn_4471893inputs"�
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4471905inputs"�
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4471910inputs"�
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
7__inference_layer_normalization_7_layer_call_fn_4471919inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4471941inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
7__inference_layer_normalization_6_layer_call_fn_4471950inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4471972inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
8__inference_multi_head_attention_5_layer_call_fn_4471994queryvalue"�
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
8__inference_multi_head_attention_5_layer_call_fn_4472016queryvalue"�
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4472051queryvalue"�
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4472086queryvalue"�
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
+__inference_dropout_4_layer_call_fn_4472091inputs"�
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
+__inference_dropout_4_layer_call_fn_4472096inputs"�
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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4472108inputs"�
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
F__inference_dropout_4_layer_call_and_return_conditional_losses_4472113inputs"�
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
7__inference_layer_normalization_8_layer_call_fn_4472122inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_8_layer_call_and_return_conditional_losses_4472144inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
)__inference_dense_3_layer_call_fn_4472153inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4472168inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
+__inference_dropout_5_layer_call_fn_4472173inputs"�
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
+__inference_dropout_5_layer_call_fn_4472178inputs"�
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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4472190inputs"�
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
F__inference_dropout_5_layer_call_and_return_conditional_losses_4472195inputs"�
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
7__inference_layer_normalization_9_layer_call_fn_4472204inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
R__inference_layer_normalization_9_layer_call_and_return_conditional_losses_4472226inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
:__inference_global_average_pooling1d_layer_call_fn_4472231inputs"�
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
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4472237inputs"�
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
)__inference_dense_4_layer_call_fn_4472246inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
D__inference_dense_4_layer_call_and_return_conditional_losses_4472256inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
)__inference_dense_5_layer_call_fn_4472265inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
D__inference_dense_5_layer_call_and_return_conditional_losses_4472275inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
"__inference__wrapped_model_4468767����������LMUVij������������������������������������������������������������������+�(
!�
�
input_1
� "(�%
#
dense_5�
dense_5�
D__inference_dense_1_layer_call_and_return_conditional_losses_4471370[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_1_layer_call_fn_4471355P��*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_2_layer_call_and_return_conditional_losses_4471769[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_2_layer_call_fn_4471754P��*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_3_layer_call_and_return_conditional_losses_4472168[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� }
)__inference_dense_3_layer_call_fn_4472153P��*�'
 �
�
inputs
� "�
unknown�
D__inference_dense_4_layer_call_and_return_conditional_losses_4472256S��&�#
�
�
inputs
� "#� 
�
tensor_0 
� u
)__inference_dense_4_layer_call_fn_4472246H��&�#
�
�
inputs
� "�
unknown �
D__inference_dense_5_layer_call_and_return_conditional_losses_4472275S��&�#
�
�
inputs 
� "#� 
�
tensor_0
� u
)__inference_dense_5_layer_call_fn_4472265H��&�#
�
�
inputs 
� "�
unknown�
B__inference_dense_layer_call_and_return_conditional_losses_4471143YUV*�'
 �
�
inputs
� "'�$
�
tensor_0
� y
'__inference_dense_layer_call_fn_4471128NUV*�'
 �
�
inputs
� "�
unknown�
F__inference_dropout_1_layer_call_and_return_conditional_losses_4471506Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_1_layer_call_and_return_conditional_losses_4471511Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_1_layer_call_fn_4471489N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_1_layer_call_fn_4471494N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_2_layer_call_and_return_conditional_losses_4471709Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_2_layer_call_and_return_conditional_losses_4471714Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_2_layer_call_fn_4471692N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_2_layer_call_fn_4471697N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_3_layer_call_and_return_conditional_losses_4471905Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_3_layer_call_and_return_conditional_losses_4471910Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_3_layer_call_fn_4471888N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_3_layer_call_fn_4471893N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_4_layer_call_and_return_conditional_losses_4472108Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_4_layer_call_and_return_conditional_losses_4472113Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_4_layer_call_fn_4472091N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_4_layer_call_fn_4472096N.�+
$�!
�
inputs
p 
� "�
unknown�
F__inference_dropout_5_layer_call_and_return_conditional_losses_4472190Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
F__inference_dropout_5_layer_call_and_return_conditional_losses_4472195Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� }
+__inference_dropout_5_layer_call_fn_4472173N.�+
$�!
�
inputs
p
� "�
unknown}
+__inference_dropout_5_layer_call_fn_4472178N.�+
$�!
�
inputs
p 
� "�
unknown�
D__inference_dropout_layer_call_and_return_conditional_losses_4471165Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
D__inference_dropout_layer_call_and_return_conditional_losses_4471170Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� {
)__inference_dropout_layer_call_fn_4471148N.�+
$�!
�
inputs
p
� "�
unknown{
)__inference_dropout_layer_call_fn_4471153N.�+
$�!
�
inputs
p 
� "�
unknown�
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4472237�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
:__inference_global_average_pooling1d_layer_call_fn_4472231wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4471201Yij*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_1_layer_call_fn_4471179Nij*�'
 �
�
inputs
� "�
unknown�
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4471346[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_2_layer_call_fn_4471324P��*�'
 �
�
inputs
� "�
unknown�
R__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4471573[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_3_layer_call_fn_4471551P��*�'
 �
�
inputs
� "�
unknown�
R__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4471542[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_4_layer_call_fn_4471520P��*�'
 �
�
inputs
� "�
unknown�
R__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4471745[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_5_layer_call_fn_4471723P��*�'
 �
�
inputs
� "�
unknown�
R__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4471972[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_6_layer_call_fn_4471950P��*�'
 �
�
inputs
� "�
unknown�
R__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4471941[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_7_layer_call_fn_4471919P��*�'
 �
�
inputs
� "�
unknown�
R__inference_layer_normalization_8_layer_call_and_return_conditional_losses_4472144[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_8_layer_call_fn_4472122P��*�'
 �
�
inputs
� "�
unknown�
R__inference_layer_normalization_9_layer_call_and_return_conditional_losses_4472226[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
7__inference_layer_normalization_9_layer_call_fn_4472204P��*�'
 �
�
inputs
� "�
unknown�
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4471119YLM*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
5__inference_layer_normalization_layer_call_fn_4471097NLM*�'
 �
�
inputs
� "�
unknown�
B__inference_model_layer_call_and_return_conditional_losses_4469565����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_1
p

 
� "#� 
�
tensor_0
� �
B__inference_model_layer_call_and_return_conditional_losses_4470010����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_1
p 

 
� "#� 
�
tensor_0
� �
'__inference_model_layer_call_fn_4470175����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_1
p

 
� "�
unknown�
'__inference_model_layer_call_fn_4470340����������LMUVij������������������������������������������������������������������3�0
)�&
�
input_1
p 

 
� "�
unknown�
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4471280���������Y�V
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
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4471315���������Y�V
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
8__inference_multi_head_attention_1_layer_call_fn_4471223���������Y�V
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
8__inference_multi_head_attention_1_layer_call_fn_4471245���������Y�V
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4471449���������Y�V
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
S__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4471484���������Y�V
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
8__inference_multi_head_attention_2_layer_call_fn_4471392���������Y�V
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
8__inference_multi_head_attention_2_layer_call_fn_4471414���������Y�V
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4471652���������Y�V
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
S__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4471687���������Y�V
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
8__inference_multi_head_attention_3_layer_call_fn_4471595���������Y�V
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
8__inference_multi_head_attention_3_layer_call_fn_4471617���������Y�V
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4471848���������Y�V
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
S__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4471883���������Y�V
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
8__inference_multi_head_attention_4_layer_call_fn_4471791���������Y�V
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
8__inference_multi_head_attention_4_layer_call_fn_4471813���������Y�V
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4472051���������Y�V
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
S__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4472086���������Y�V
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
8__inference_multi_head_attention_5_layer_call_fn_4471994���������Y�V
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
8__inference_multi_head_attention_5_layer_call_fn_4472016���������Y�V
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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4471053���������Y�V
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
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4471088���������Y�V
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
6__inference_multi_head_attention_layer_call_fn_4470996���������Y�V
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
6__inference_multi_head_attention_layer_call_fn_4471018���������Y�V
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
%__inference_signature_wrapper_4470974����������LMUVij������������������������������������������������������������������6�3
� 
,�)
'
input_1�
input_1"(�%
#
dense_5�
dense_5