��0
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
�
ConstConst*
_output_shapes

:*
dtype0*�
value�B�"�y4=0�;��<�#=�5ün��<�l��I�]�����;:�뼒a�<�"�qJ=7�@��	���<�� D8�@=��J=�i=���<�E< �3;@�0� �8<G�-=:���$=��t���=��g���� ������)=��F�h�<<ɳ=(q <���;Z
= :<����h��;���<�����:`w;-�<�XL��x��( :<��<����,��Z�<��3=t�8�3U6����;Ȉ����;�Bμ�x<�K��i�3=�3�<)�A=�-���<@E$<s0$=L.<�(	��P�:�<�7ռ�Ű�Z��<ru�<Fi�<��Z<b9�<�z2�@��:�.�<N�<��=�G�<]4C��t<�C��< �ۼ�X:Rf�<� ��<B��<���G�=`K��B���y;����{����<9�.=ڞ�<�Ξ;4���<�"=W�8=��6=0���_�� 5/�,���葩; �r9)�=��<�,=��A=��c<L~T�sD�3���`���=��A�����Q<h��;0(��G�B�4Ȓ�h��;4���c1=F��<�J=�v�F�	��^���-<�3���&=6����躌�-<s�6� ����T�< ��;"���<�%4��/	�y�D=�9�T@����<w�=h�a�d;s<�c�<�X�<q�#=�4���Xu�W<f��<����4<�y�<T���9�<.H�<z�<�"��~<�<���<�NM����<�e�<���
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Const!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biaslayer_normalization/gammalayer_normalization/betadense/kernel
dense/biaslayer_normalization_1/gammalayer_normalization_1/beta#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biaslayer_normalization_2/gammalayer_normalization_2/betadense_1/kerneldense_1/bias#multi_head_attention_2/query/kernel!multi_head_attention_2/query/bias!multi_head_attention_2/key/kernelmulti_head_attention_2/key/bias#multi_head_attention_2/value/kernel!multi_head_attention_2/value/bias.multi_head_attention_2/attention_output/kernel,multi_head_attention_2/attention_output/biaslayer_normalization_4/gammalayer_normalization_4/betalayer_normalization_3/gammalayer_normalization_3/beta#multi_head_attention_3/query/kernel!multi_head_attention_3/query/bias!multi_head_attention_3/key/kernelmulti_head_attention_3/key/bias#multi_head_attention_3/value/kernel!multi_head_attention_3/value/bias.multi_head_attention_3/attention_output/kernel,multi_head_attention_3/attention_output/biaslayer_normalization_5/gammalayer_normalization_5/betadense_2/kerneldense_2/bias#multi_head_attention_4/query/kernel!multi_head_attention_4/query/bias!multi_head_attention_4/key/kernelmulti_head_attention_4/key/bias#multi_head_attention_4/value/kernel!multi_head_attention_4/value/bias.multi_head_attention_4/attention_output/kernel,multi_head_attention_4/attention_output/biaslayer_normalization_7/gammalayer_normalization_7/betalayer_normalization_6/gammalayer_normalization_6/beta#multi_head_attention_5/query/kernel!multi_head_attention_5/query/bias!multi_head_attention_5/key/kernelmulti_head_attention_5/key/bias#multi_head_attention_5/value/kernel!multi_head_attention_5/value/bias.multi_head_attention_5/attention_output/kernel,multi_head_attention_5/attention_output/biaslayer_normalization_8/gammalayer_normalization_8/betadense_3/kerneldense_3/biaslayer_normalization_9/gammalayer_normalization_9/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*]
TinV
T2R*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*r
_read_only_resource_inputsT
RP	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQ*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_3911

NoOpNoOp
��
Const_1Const"/device:CPU:0*
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
signatures*
* 

2	keras_api* 
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9_query_dense
:
_key_dense
;_value_dense
<_softmax
=_dropout_layer
>_output_dense*

?	keras_api* 
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Faxis
	Ggamma
Hbeta*
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias*
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses
W_random_generator* 

X	keras_api* 
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
_axis
	`gamma
abeta*
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_query_dense
i
_key_dense
j_value_dense
k_softmax
l_dropout_layer
m_output_dense*

n	keras_api* 
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
uaxis
	vgamma
wbeta*
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias*
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
�_output_dense*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 

�	keras_api* 

�	keras_api* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta*
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
�_output_dense*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 

�	keras_api* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
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
�_output_dense*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 

�	keras_api* 

�	keras_api* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta*
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
�_output_dense*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 

�	keras_api* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 

�	keras_api* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�0
�1
�2
�3
�4
�5
�6
�7
G8
H9
O10
P11
`12
a13
�14
�15
�16
�17
�18
�19
�20
�21
v22
w23
~24
25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
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
G8
H9
O10
P11
`12
a13
�14
�15
�16
�17
�18
�19
�20
�21
v22
w23
~24
25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
0_default_save_signature
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�	capture_0* 

�serving_default* 
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
* 

G0
H1*

G0
H1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
hb
VARIABLE_VALUElayer_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUElayer_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 

`0
a1*

`0
a1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
* 

v0
w1*

v0
w1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*

~0
1*

~0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
* 
* 
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
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
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
* 
jd
VARIABLE_VALUElayer_normalization_4/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_4/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
jd
VARIABLE_VALUElayer_normalization_3/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_3/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
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
VARIABLE_VALUElayer_normalization_7/gamma6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_7/beta5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_6/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_6/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
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

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
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
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
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
VARIABLE_VALUElayer_normalization_8/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_8/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_3/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
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
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
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
VARIABLE_VALUElayer_normalization_9/gamma6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_9/beta5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
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
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
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
_Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_4/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEdense_5/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_5/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
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

�	capture_0* 

�	capture_0* 

�	capture_0* 

�	capture_0* 
* 

�	capture_0* 
* 
.
90
:1
;2
<3
=4
>5*
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
�
�non_trainable_variables
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
.
h0
i1
j2
k3
l4
m5*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
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
�layer_metrics
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer_normalization/gammalayer_normalization/betadense/kernel
dense/biaslayer_normalization_1/gammalayer_normalization_1/betalayer_normalization_2/gammalayer_normalization_2/betadense_1/kerneldense_1/biaslayer_normalization_4/gammalayer_normalization_4/betalayer_normalization_3/gammalayer_normalization_3/betalayer_normalization_5/gammalayer_normalization_5/betadense_2/kerneldense_2/biaslayer_normalization_7/gammalayer_normalization_7/betalayer_normalization_6/gammalayer_normalization_6/betalayer_normalization_8/gammalayer_normalization_8/betadense_3/kerneldense_3/biaslayer_normalization_9/gammalayer_normalization_9/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/bias#multi_head_attention_2/query/kernel!multi_head_attention_2/query/bias!multi_head_attention_2/key/kernelmulti_head_attention_2/key/bias#multi_head_attention_2/value/kernel!multi_head_attention_2/value/bias.multi_head_attention_2/attention_output/kernel,multi_head_attention_2/attention_output/bias#multi_head_attention_3/query/kernel!multi_head_attention_3/query/bias!multi_head_attention_3/key/kernelmulti_head_attention_3/key/bias#multi_head_attention_3/value/kernel!multi_head_attention_3/value/bias.multi_head_attention_3/attention_output/kernel,multi_head_attention_3/attention_output/bias#multi_head_attention_4/query/kernel!multi_head_attention_4/query/bias!multi_head_attention_4/key/kernelmulti_head_attention_4/key/bias#multi_head_attention_4/value/kernel!multi_head_attention_4/value/bias.multi_head_attention_4/attention_output/kernel,multi_head_attention_4/attention_output/bias#multi_head_attention_5/query/kernel!multi_head_attention_5/query/bias!multi_head_attention_5/key/kernelmulti_head_attention_5/key/bias#multi_head_attention_5/value/kernel!multi_head_attention_5/value/bias.multi_head_attention_5/attention_output/kernel,multi_head_attention_5/attention_output/biasConst_1*]
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
GPU 2J 8� *&
f!R
__inference__traced_save_5715
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_5964Ē#
�
a
(__inference_dropout_5_layer_call_fn_5110

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
GPU 2J 8� *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_2434j
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
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_2882	
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
O__inference_layer_normalization_9_layer_call_and_return_conditional_losses_2458

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
D
(__inference_dropout_1_layer_call_fn_4431

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
GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2643[
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
M__inference_layer_normalization_layer_call_and_return_conditional_losses_1788

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
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_4448

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
5__inference_multi_head_attention_4_layer_call_fn_4750	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_2818j
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

_user_specified_namevalue:$ 

_user_specified_name4732:$ 

_user_specified_name4734:$ 

_user_specified_name4736:$ 

_user_specified_name4738:$ 

_user_specified_name4740:$ 

_user_specified_name4742:$ 

_user_specified_name4744:$	 

_user_specified_name4746
�
�
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4909

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
a
(__inference_dropout_4_layer_call_fn_5028

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
GPU 2J 8� *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_2373j
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
__inference__traced_save_5715
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
Fread_79_disablecopyonread_multi_head_attention_5_attention_output_bias:
savev2_const_1
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0savev2_const_1"/device:CPU:0*&
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
_user_specified_name.,multi_head_attention_5/attention_output/bias:?Q;

_output_shapes
: 
!
_user_specified_name	Const_1
�
�
O__inference_layer_normalization_8_layer_call_and_return_conditional_losses_2397

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

b
C__inference_dropout_4_layer_call_and_return_conditional_losses_2373

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
A__inference_dense_2_layer_call_and_return_conditional_losses_4706

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
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_5023	
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
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4624	
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
$__inference_dense_layer_call_fn_4065

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
GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1808j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4059:$ 

_user_specified_name4061
�
�
?__inference_dense_layer_call_and_return_conditional_losses_1808

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
A__inference_dense_4_layer_call_and_return_conditional_losses_2474

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
�
�
A__inference_dense_1_layer_call_and_return_conditional_losses_4307

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
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_2643

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
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_2743	
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

`
A__inference_dropout_layer_call_and_return_conditional_losses_1825

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
a
C__inference_dropout_5_layer_call_and_return_conditional_losses_5132

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
5__inference_multi_head_attention_4_layer_call_fn_4728	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_2236j
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

_user_specified_namevalue:$ 

_user_specified_name4710:$ 

_user_specified_name4712:$ 

_user_specified_name4714:$ 

_user_specified_name4716:$ 

_user_specified_name4718:$ 

_user_specified_name4720:$ 

_user_specified_name4722:$	 

_user_specified_name4724
�
a
C__inference_dropout_5_layer_call_and_return_conditional_losses_2921

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
&__inference_dense_2_layer_call_fn_4691

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
GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_2183j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4685:$ 

_user_specified_name4687
�
D
(__inference_dropout_3_layer_call_fn_4830

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
GPU 2J 8� *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2782[
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

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_1966

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
?__inference_dense_layer_call_and_return_conditional_losses_4080

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
5__inference_multi_head_attention_2_layer_call_fn_4351	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_2679j
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

_user_specified_namevalue:$ 

_user_specified_name4333:$ 

_user_specified_name4335:$ 

_user_specified_name4337:$ 

_user_specified_name4339:$ 

_user_specified_name4341:$ 

_user_specified_name4343:$ 

_user_specified_name4345:$	 

_user_specified_name4347
�

b
C__inference_dropout_5_layer_call_and_return_conditional_losses_5127

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
4__inference_layer_normalization_3_layer_call_fn_4488

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_2070j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4482:$ 

_user_specified_name4484
�+
�
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_1748	
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
4__inference_layer_normalization_2_layer_call_fn_4261

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1929j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4255:$ 

_user_specified_name4257
��
�#
?__inference_model_layer_call_and_return_conditional_losses_2941
input_1 
tf___operators___add_addv2_y/
multi_head_attention_2536:+
multi_head_attention_2538:/
multi_head_attention_2540:+
multi_head_attention_2542:/
multi_head_attention_2544:+
multi_head_attention_2546:/
multi_head_attention_2548:'
multi_head_attention_2550:&
layer_normalization_2554:&
layer_normalization_2556:

dense_2559:

dense_2561:(
layer_normalization_1_2571:(
layer_normalization_1_2573:1
multi_head_attention_1_2611:-
multi_head_attention_1_2613:1
multi_head_attention_1_2615:-
multi_head_attention_1_2617:1
multi_head_attention_1_2619:-
multi_head_attention_1_2621:1
multi_head_attention_1_2623:)
multi_head_attention_1_2625:(
layer_normalization_2_2629:(
layer_normalization_2_2631:
dense_1_2634:
dense_1_2636:1
multi_head_attention_2_2680:-
multi_head_attention_2_2682:1
multi_head_attention_2_2684:-
multi_head_attention_2_2686:1
multi_head_attention_2_2688:-
multi_head_attention_2_2690:1
multi_head_attention_2_2692:)
multi_head_attention_2_2694:(
layer_normalization_4_2699:(
layer_normalization_4_2701:(
layer_normalization_3_2704:(
layer_normalization_3_2706:1
multi_head_attention_3_2744:-
multi_head_attention_3_2746:1
multi_head_attention_3_2748:-
multi_head_attention_3_2750:1
multi_head_attention_3_2752:-
multi_head_attention_3_2754:1
multi_head_attention_3_2756:)
multi_head_attention_3_2758:(
layer_normalization_5_2768:(
layer_normalization_5_2770:
dense_2_2773:
dense_2_2775:1
multi_head_attention_4_2819:-
multi_head_attention_4_2821:1
multi_head_attention_4_2823:-
multi_head_attention_4_2825:1
multi_head_attention_4_2827:-
multi_head_attention_4_2829:1
multi_head_attention_4_2831:)
multi_head_attention_4_2833:(
layer_normalization_7_2838:(
layer_normalization_7_2840:(
layer_normalization_6_2843:(
layer_normalization_6_2845:1
multi_head_attention_5_2883:-
multi_head_attention_5_2885:1
multi_head_attention_5_2887:-
multi_head_attention_5_2889:1
multi_head_attention_5_2891:-
multi_head_attention_5_2893:1
multi_head_attention_5_2895:)
multi_head_attention_5_2897:(
layer_normalization_8_2907:(
layer_normalization_8_2909:
dense_3_2912:
dense_3_2914:(
layer_normalization_9_2924:(
layer_normalization_9_2926:
dense_4_2930: 
dense_4_2932: 
dense_5_2935: 
dense_5_2937:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�-layer_normalization_4/StatefulPartitionedCall�-layer_normalization_5/StatefulPartitionedCall�-layer_normalization_6/StatefulPartitionedCall�-layer_normalization_7/StatefulPartitionedCall�-layer_normalization_8/StatefulPartitionedCall�-layer_normalization_9/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�.multi_head_attention_2/StatefulPartitionedCall�.multi_head_attention_3/StatefulPartitionedCall�.multi_head_attention_4/StatefulPartitionedCall�.multi_head_attention_5/StatefulPartitionedCallw
tf.__operators__.add/AddV2AddV2input_1tf___operators___add_addv2_y*
T0*"
_output_shapes
:�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_2536multi_head_attention_2538multi_head_attention_2540multi_head_attention_2542multi_head_attention_2544multi_head_attention_2546multi_head_attention_2548multi_head_attention_2550*
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
GPU 2J 8� *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_2535�
tf.__operators__.add_1/AddV2AddV2tf.__operators__.add/AddV2:z:05multi_head_attention/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_1/AddV2:z:0layer_normalization_2554layer_normalization_2556*
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
GPU 2J 8� *V
fQRO
M__inference_layer_normalization_layer_call_and_return_conditional_losses_1788�
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0
dense_2559
dense_2561*
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
GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1808�
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
GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_2568�
tf.__operators__.add_2/AddV2AddV24layer_normalization/StatefulPartitionedCall:output:0 dropout/PartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_2/AddV2:z:0layer_normalization_1_2571layer_normalization_1_2573*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1849�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_2611multi_head_attention_1_2613multi_head_attention_1_2615multi_head_attention_1_2617multi_head_attention_1_2619multi_head_attention_1_2621multi_head_attention_1_2623multi_head_attention_1_2625*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_2610�
tf.__operators__.add_3/AddV2AddV26layer_normalization_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_3/AddV2:z:0layer_normalization_2_2629layer_normalization_2_2631*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1929�
dense_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_1_2634dense_1_2636*
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
GPU 2J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1949�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2643�
.multi_head_attention_2/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_2_2680multi_head_attention_2_2682multi_head_attention_2_2684multi_head_attention_2_2686multi_head_attention_2_2688multi_head_attention_2_2690multi_head_attention_2_2692multi_head_attention_2_2694*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_2679�
tf.__operators__.add_4/AddV2AddV26layer_normalization_2/StatefulPartitionedCall:output:0"dropout_1/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_5/AddV2AddV2tf.__operators__.add/AddV2:z:07multi_head_attention_2/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_5/AddV2:z:0layer_normalization_4_2699layer_normalization_4_2701*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_4_layer_call_and_return_conditional_losses_2043�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_4/AddV2:z:0layer_normalization_3_2704layer_normalization_3_2706*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_2070�
.multi_head_attention_3/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0multi_head_attention_3_2744multi_head_attention_3_2746multi_head_attention_3_2748multi_head_attention_3_2750multi_head_attention_3_2752multi_head_attention_3_2754multi_head_attention_3_2756multi_head_attention_3_2758*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_2743�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_2765�
tf.__operators__.add_6/AddV2AddV26layer_normalization_4/StatefulPartitionedCall:output:0"dropout_2/PartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_5/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_6/AddV2:z:0layer_normalization_5_2768layer_normalization_5_2770*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_5_layer_call_and_return_conditional_losses_2163�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_5/StatefulPartitionedCall:output:0dense_2_2773dense_2_2775*
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
GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_2183�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2782�
.multi_head_attention_4/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_4_2819multi_head_attention_4_2821multi_head_attention_4_2823multi_head_attention_4_2825multi_head_attention_4_2827multi_head_attention_4_2829multi_head_attention_4_2831multi_head_attention_4_2833*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_2818�
tf.__operators__.add_7/AddV2AddV26layer_normalization_5/StatefulPartitionedCall:output:0"dropout_3/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_8/AddV2AddV2tf.__operators__.add/AddV2:z:07multi_head_attention_4/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_7/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_8/AddV2:z:0layer_normalization_7_2838layer_normalization_7_2840*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_7_layer_call_and_return_conditional_losses_2277�
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_7/AddV2:z:0layer_normalization_6_2843layer_normalization_6_2845*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2304�
.multi_head_attention_5/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_7/StatefulPartitionedCall:output:06layer_normalization_6/StatefulPartitionedCall:output:0multi_head_attention_5_2883multi_head_attention_5_2885multi_head_attention_5_2887multi_head_attention_5_2889multi_head_attention_5_2891multi_head_attention_5_2893multi_head_attention_5_2895multi_head_attention_5_2897*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_2882�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_2904�
tf.__operators__.add_9/AddV2AddV26layer_normalization_7/StatefulPartitionedCall:output:0"dropout_4/PartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_9/AddV2:z:0layer_normalization_8_2907layer_normalization_8_2909*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_8_layer_call_and_return_conditional_losses_2397�
dense_3/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0dense_3_2912dense_3_2914*
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
GPU 2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_2417�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_2921�
tf.__operators__.add_10/AddV2AddV26layer_normalization_8/StatefulPartitionedCall:output:0"dropout_5/PartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_9/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_10/AddV2:z:0layer_normalization_9_2924layer_normalization_9_2926*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_9_layer_call_and_return_conditional_losses_2458�
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
GPU 2J 8� *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1704�
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_2930dense_4_2932*
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
GPU 2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_2474�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_2935dense_5_2937*
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
GPU 2J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_2489n
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
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
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
_user_specified_name	input_1:A=

_output_shapes

:

_user_specified_namey:$ 

_user_specified_name2536:$ 

_user_specified_name2538:$ 

_user_specified_name2540:$ 

_user_specified_name2542:$ 

_user_specified_name2544:$ 

_user_specified_name2546:$ 

_user_specified_name2548:$	 

_user_specified_name2550:$
 

_user_specified_name2554:$ 

_user_specified_name2556:$ 

_user_specified_name2559:$ 

_user_specified_name2561:$ 

_user_specified_name2571:$ 

_user_specified_name2573:$ 

_user_specified_name2611:$ 

_user_specified_name2613:$ 

_user_specified_name2615:$ 

_user_specified_name2617:$ 

_user_specified_name2619:$ 

_user_specified_name2621:$ 

_user_specified_name2623:$ 

_user_specified_name2625:$ 

_user_specified_name2629:$ 

_user_specified_name2631:$ 

_user_specified_name2634:$ 

_user_specified_name2636:$ 

_user_specified_name2680:$ 

_user_specified_name2682:$ 

_user_specified_name2684:$ 

_user_specified_name2686:$  

_user_specified_name2688:$! 

_user_specified_name2690:$" 

_user_specified_name2692:$# 

_user_specified_name2694:$$ 

_user_specified_name2699:$% 

_user_specified_name2701:$& 

_user_specified_name2704:$' 

_user_specified_name2706:$( 

_user_specified_name2744:$) 

_user_specified_name2746:$* 

_user_specified_name2748:$+ 

_user_specified_name2750:$, 

_user_specified_name2752:$- 

_user_specified_name2754:$. 

_user_specified_name2756:$/ 

_user_specified_name2758:$0 

_user_specified_name2768:$1 

_user_specified_name2770:$2 

_user_specified_name2773:$3 

_user_specified_name2775:$4 

_user_specified_name2819:$5 

_user_specified_name2821:$6 

_user_specified_name2823:$7 

_user_specified_name2825:$8 

_user_specified_name2827:$9 

_user_specified_name2829:$: 

_user_specified_name2831:$; 

_user_specified_name2833:$< 

_user_specified_name2838:$= 

_user_specified_name2840:$> 

_user_specified_name2843:$? 

_user_specified_name2845:$@ 

_user_specified_name2883:$A 

_user_specified_name2885:$B 

_user_specified_name2887:$C 

_user_specified_name2889:$D 

_user_specified_name2891:$E 

_user_specified_name2893:$F 

_user_specified_name2895:$G 

_user_specified_name2897:$H 

_user_specified_name2907:$I 

_user_specified_name2909:$J 

_user_specified_name2912:$K 

_user_specified_name2914:$L 

_user_specified_name2924:$M 

_user_specified_name2926:$N 

_user_specified_name2930:$O 

_user_specified_name2932:$P 

_user_specified_name2935:$Q 

_user_specified_name2937
�
�
&__inference_dense_5_layer_call_fn_5202

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
GPU 2J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_2489f
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
 
_user_specified_nameinputs:$ 

_user_specified_name5196:$ 

_user_specified_name5198
�
n
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1704

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
�+
�
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4820	
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
��
�%
?__inference_model_layer_call_and_return_conditional_losses_2496
input_1 
tf___operators___add_addv2_y/
multi_head_attention_1749:+
multi_head_attention_1751:/
multi_head_attention_1753:+
multi_head_attention_1755:/
multi_head_attention_1757:+
multi_head_attention_1759:/
multi_head_attention_1761:'
multi_head_attention_1763:&
layer_normalization_1789:&
layer_normalization_1791:

dense_1809:

dense_1811:(
layer_normalization_1_1850:(
layer_normalization_1_1852:1
multi_head_attention_1_1890:-
multi_head_attention_1_1892:1
multi_head_attention_1_1894:-
multi_head_attention_1_1896:1
multi_head_attention_1_1898:-
multi_head_attention_1_1900:1
multi_head_attention_1_1902:)
multi_head_attention_1_1904:(
layer_normalization_2_1930:(
layer_normalization_2_1932:
dense_1_1950:
dense_1_1952:1
multi_head_attention_2_2003:-
multi_head_attention_2_2005:1
multi_head_attention_2_2007:-
multi_head_attention_2_2009:1
multi_head_attention_2_2011:-
multi_head_attention_2_2013:1
multi_head_attention_2_2015:)
multi_head_attention_2_2017:(
layer_normalization_4_2044:(
layer_normalization_4_2046:(
layer_normalization_3_2071:(
layer_normalization_3_2073:1
multi_head_attention_3_2111:-
multi_head_attention_3_2113:1
multi_head_attention_3_2115:-
multi_head_attention_3_2117:1
multi_head_attention_3_2119:-
multi_head_attention_3_2121:1
multi_head_attention_3_2123:)
multi_head_attention_3_2125:(
layer_normalization_5_2164:(
layer_normalization_5_2166:
dense_2_2184:
dense_2_2186:1
multi_head_attention_4_2237:-
multi_head_attention_4_2239:1
multi_head_attention_4_2241:-
multi_head_attention_4_2243:1
multi_head_attention_4_2245:-
multi_head_attention_4_2247:1
multi_head_attention_4_2249:)
multi_head_attention_4_2251:(
layer_normalization_7_2278:(
layer_normalization_7_2280:(
layer_normalization_6_2305:(
layer_normalization_6_2307:1
multi_head_attention_5_2345:-
multi_head_attention_5_2347:1
multi_head_attention_5_2349:-
multi_head_attention_5_2351:1
multi_head_attention_5_2353:-
multi_head_attention_5_2355:1
multi_head_attention_5_2357:)
multi_head_attention_5_2359:(
layer_normalization_8_2398:(
layer_normalization_8_2400:
dense_3_2418:
dense_3_2420:(
layer_normalization_9_2459:(
layer_normalization_9_2461:
dense_4_2475: 
dense_4_2477: 
dense_5_2490: 
dense_5_2492:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�!dropout_5/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�-layer_normalization_4/StatefulPartitionedCall�-layer_normalization_5/StatefulPartitionedCall�-layer_normalization_6/StatefulPartitionedCall�-layer_normalization_7/StatefulPartitionedCall�-layer_normalization_8/StatefulPartitionedCall�-layer_normalization_9/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�.multi_head_attention_2/StatefulPartitionedCall�.multi_head_attention_3/StatefulPartitionedCall�.multi_head_attention_4/StatefulPartitionedCall�.multi_head_attention_5/StatefulPartitionedCallw
tf.__operators__.add/AddV2AddV2input_1tf___operators___add_addv2_y*
T0*"
_output_shapes
:�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_1749multi_head_attention_1751multi_head_attention_1753multi_head_attention_1755multi_head_attention_1757multi_head_attention_1759multi_head_attention_1761multi_head_attention_1763*
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
GPU 2J 8� *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_1748�
tf.__operators__.add_1/AddV2AddV2tf.__operators__.add/AddV2:z:05multi_head_attention/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_1/AddV2:z:0layer_normalization_1789layer_normalization_1791*
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
GPU 2J 8� *V
fQRO
M__inference_layer_normalization_layer_call_and_return_conditional_losses_1788�
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0
dense_1809
dense_1811*
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
GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1808�
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
GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_1825�
tf.__operators__.add_2/AddV2AddV24layer_normalization/StatefulPartitionedCall:output:0(dropout/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_2/AddV2:z:0layer_normalization_1_1850layer_normalization_1_1852*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1849�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_1890multi_head_attention_1_1892multi_head_attention_1_1894multi_head_attention_1_1896multi_head_attention_1_1898multi_head_attention_1_1900multi_head_attention_1_1902multi_head_attention_1_1904*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_1889�
tf.__operators__.add_3/AddV2AddV26layer_normalization_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_3/AddV2:z:0layer_normalization_2_1930layer_normalization_2_1932*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1929�
dense_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_1_1950dense_1_1952*
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
GPU 2J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1949�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1966�
.multi_head_attention_2/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_2_2003multi_head_attention_2_2005multi_head_attention_2_2007multi_head_attention_2_2009multi_head_attention_2_2011multi_head_attention_2_2013multi_head_attention_2_2015multi_head_attention_2_2017*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_2002�
tf.__operators__.add_4/AddV2AddV26layer_normalization_2/StatefulPartitionedCall:output:0*dropout_1/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_5/AddV2AddV2tf.__operators__.add/AddV2:z:07multi_head_attention_2/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_5/AddV2:z:0layer_normalization_4_2044layer_normalization_4_2046*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_4_layer_call_and_return_conditional_losses_2043�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_4/AddV2:z:0layer_normalization_3_2071layer_normalization_3_2073*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_2070�
.multi_head_attention_3/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0multi_head_attention_3_2111multi_head_attention_3_2113multi_head_attention_3_2115multi_head_attention_3_2117multi_head_attention_3_2119multi_head_attention_3_2121multi_head_attention_3_2123multi_head_attention_3_2125*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_2110�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_2139�
tf.__operators__.add_6/AddV2AddV26layer_normalization_4/StatefulPartitionedCall:output:0*dropout_2/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_5/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_6/AddV2:z:0layer_normalization_5_2164layer_normalization_5_2166*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_5_layer_call_and_return_conditional_losses_2163�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_5/StatefulPartitionedCall:output:0dense_2_2184dense_2_2186*
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
GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_2183�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2200�
.multi_head_attention_4/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0tf.__operators__.add/AddV2:z:0multi_head_attention_4_2237multi_head_attention_4_2239multi_head_attention_4_2241multi_head_attention_4_2243multi_head_attention_4_2245multi_head_attention_4_2247multi_head_attention_4_2249multi_head_attention_4_2251*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_2236�
tf.__operators__.add_7/AddV2AddV26layer_normalization_5/StatefulPartitionedCall:output:0*dropout_3/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_8/AddV2AddV2tf.__operators__.add/AddV2:z:07multi_head_attention_4/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_7/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_8/AddV2:z:0layer_normalization_7_2278layer_normalization_7_2280*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_7_layer_call_and_return_conditional_losses_2277�
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_7/AddV2:z:0layer_normalization_6_2305layer_normalization_6_2307*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2304�
.multi_head_attention_5/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_7/StatefulPartitionedCall:output:06layer_normalization_6/StatefulPartitionedCall:output:0multi_head_attention_5_2345multi_head_attention_5_2347multi_head_attention_5_2349multi_head_attention_5_2351multi_head_attention_5_2353multi_head_attention_5_2355multi_head_attention_5_2357multi_head_attention_5_2359*
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_2344�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_2373�
tf.__operators__.add_9/AddV2AddV26layer_normalization_7/StatefulPartitionedCall:output:0*dropout_4/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_9/AddV2:z:0layer_normalization_8_2398layer_normalization_8_2400*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_8_layer_call_and_return_conditional_losses_2397�
dense_3/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0dense_3_2418dense_3_2420*
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
GPU 2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_2417�
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
GPU 2J 8� *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_2434�
tf.__operators__.add_10/AddV2AddV26layer_normalization_8/StatefulPartitionedCall:output:0*dropout_5/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
-layer_normalization_9/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_10/AddV2:z:0layer_normalization_9_2459layer_normalization_9_2461*
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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_9_layer_call_and_return_conditional_losses_2458�
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
GPU 2J 8� *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1704�
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_2475dense_4_2477*
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
GPU 2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_2474�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_2490dense_5_2492*
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
GPU 2J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_2489n
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
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
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
_user_specified_name	input_1:A=

_output_shapes

:

_user_specified_namey:$ 

_user_specified_name1749:$ 

_user_specified_name1751:$ 

_user_specified_name1753:$ 

_user_specified_name1755:$ 

_user_specified_name1757:$ 

_user_specified_name1759:$ 

_user_specified_name1761:$	 

_user_specified_name1763:$
 

_user_specified_name1789:$ 

_user_specified_name1791:$ 

_user_specified_name1809:$ 

_user_specified_name1811:$ 

_user_specified_name1850:$ 

_user_specified_name1852:$ 

_user_specified_name1890:$ 

_user_specified_name1892:$ 

_user_specified_name1894:$ 

_user_specified_name1896:$ 

_user_specified_name1898:$ 

_user_specified_name1900:$ 

_user_specified_name1902:$ 

_user_specified_name1904:$ 

_user_specified_name1930:$ 

_user_specified_name1932:$ 

_user_specified_name1950:$ 

_user_specified_name1952:$ 

_user_specified_name2003:$ 

_user_specified_name2005:$ 

_user_specified_name2007:$ 

_user_specified_name2009:$  

_user_specified_name2011:$! 

_user_specified_name2013:$" 

_user_specified_name2015:$# 

_user_specified_name2017:$$ 

_user_specified_name2044:$% 

_user_specified_name2046:$& 

_user_specified_name2071:$' 

_user_specified_name2073:$( 

_user_specified_name2111:$) 

_user_specified_name2113:$* 

_user_specified_name2115:$+ 

_user_specified_name2117:$, 

_user_specified_name2119:$- 

_user_specified_name2121:$. 

_user_specified_name2123:$/ 

_user_specified_name2125:$0 

_user_specified_name2164:$1 

_user_specified_name2166:$2 

_user_specified_name2184:$3 

_user_specified_name2186:$4 

_user_specified_name2237:$5 

_user_specified_name2239:$6 

_user_specified_name2241:$7 

_user_specified_name2243:$8 

_user_specified_name2245:$9 

_user_specified_name2247:$: 

_user_specified_name2249:$; 

_user_specified_name2251:$< 

_user_specified_name2278:$= 

_user_specified_name2280:$> 

_user_specified_name2305:$? 

_user_specified_name2307:$@ 

_user_specified_name2345:$A 

_user_specified_name2347:$B 

_user_specified_name2349:$C 

_user_specified_name2351:$D 

_user_specified_name2353:$E 

_user_specified_name2355:$F 

_user_specified_name2357:$G 

_user_specified_name2359:$H 

_user_specified_name2398:$I 

_user_specified_name2400:$J 

_user_specified_name2418:$K 

_user_specified_name2420:$L 

_user_specified_name2459:$M 

_user_specified_name2461:$N 

_user_specified_name2475:$O 

_user_specified_name2477:$P 

_user_specified_name2490:$Q 

_user_specified_name2492
�+
�
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4421	
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
4__inference_layer_normalization_5_layer_call_fn_4660

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_5_layer_call_and_return_conditional_losses_2163j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4654:$ 

_user_specified_name4656
�+
�
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4589	
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
4__inference_layer_normalization_1_layer_call_fn_4116

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1849j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4110:$ 

_user_specified_name4112
�
�
5__inference_multi_head_attention_1_layer_call_fn_4182	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_2610j
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

_user_specified_namevalue:$ 

_user_specified_name4164:$ 

_user_specified_name4166:$ 

_user_specified_name4168:$ 

_user_specified_name4170:$ 

_user_specified_name4172:$ 

_user_specified_name4174:$ 

_user_specified_name4176:$	 

_user_specified_name4178
�
a
C__inference_dropout_4_layer_call_and_return_conditional_losses_5050

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
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1929

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
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4988	
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
S
7__inference_global_average_pooling1d_layer_call_fn_5168

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
GPU 2J 8� *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1704i
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
�

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_4443

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
5__inference_multi_head_attention_2_layer_call_fn_4329	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_2002j
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

_user_specified_namevalue:$ 

_user_specified_name4311:$ 

_user_specified_name4313:$ 

_user_specified_name4315:$ 

_user_specified_name4317:$ 

_user_specified_name4319:$ 

_user_specified_name4321:$ 

_user_specified_name4323:$	 

_user_specified_name4325
�+
�
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_1889	
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
�
�
A__inference_dense_3_layer_call_and_return_conditional_losses_5105

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
4__inference_layer_normalization_9_layer_call_fn_5141

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_9_layer_call_and_return_conditional_losses_2458j
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
 
_user_specified_nameinputs:$ 

_user_specified_name5135:$ 

_user_specified_name5137
�
�
A__inference_dense_3_layer_call_and_return_conditional_losses_2417

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
�;
�
$__inference_model_layer_call_fn_3275
input_1
unknown
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13: 

unknown_14:

unknown_15: 

unknown_16:

unknown_17: 

unknown_18:

unknown_19: 

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:

unknown_25: 

unknown_26:

unknown_27: 

unknown_28:

unknown_29: 

unknown_30:

unknown_31: 

unknown_32:

unknown_33:

unknown_34:

unknown_35:

unknown_36:

unknown_37: 

unknown_38:

unknown_39: 

unknown_40:

unknown_41: 

unknown_42:

unknown_43: 

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48:

unknown_49: 

unknown_50:

unknown_51: 

unknown_52:

unknown_53: 

unknown_54:

unknown_55: 

unknown_56:

unknown_57:

unknown_58:

unknown_59:

unknown_60:

unknown_61: 

unknown_62:

unknown_63: 

unknown_64:

unknown_65: 

unknown_66:

unknown_67: 

unknown_68:

unknown_69:

unknown_70:

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75:

unknown_76: 

unknown_77: 

unknown_78: 

unknown_79:
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
unknown_78
unknown_79*]
TinV
T2R*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*r
_read_only_resource_inputsT
RP	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQ*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_2941f
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
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:D@

_output_shapes

:

_user_specified_name3111:$ 

_user_specified_name3113:$ 

_user_specified_name3115:$ 

_user_specified_name3117:$ 

_user_specified_name3119:$ 

_user_specified_name3121:$ 

_user_specified_name3123:$ 

_user_specified_name3125:$	 

_user_specified_name3127:$
 

_user_specified_name3129:$ 

_user_specified_name3131:$ 

_user_specified_name3133:$ 

_user_specified_name3135:$ 

_user_specified_name3137:$ 

_user_specified_name3139:$ 

_user_specified_name3141:$ 

_user_specified_name3143:$ 

_user_specified_name3145:$ 

_user_specified_name3147:$ 

_user_specified_name3149:$ 

_user_specified_name3151:$ 

_user_specified_name3153:$ 

_user_specified_name3155:$ 

_user_specified_name3157:$ 

_user_specified_name3159:$ 

_user_specified_name3161:$ 

_user_specified_name3163:$ 

_user_specified_name3165:$ 

_user_specified_name3167:$ 

_user_specified_name3169:$ 

_user_specified_name3171:$  

_user_specified_name3173:$! 

_user_specified_name3175:$" 

_user_specified_name3177:$# 

_user_specified_name3179:$$ 

_user_specified_name3181:$% 

_user_specified_name3183:$& 

_user_specified_name3185:$' 

_user_specified_name3187:$( 

_user_specified_name3189:$) 

_user_specified_name3191:$* 

_user_specified_name3193:$+ 

_user_specified_name3195:$, 

_user_specified_name3197:$- 

_user_specified_name3199:$. 

_user_specified_name3201:$/ 

_user_specified_name3203:$0 

_user_specified_name3205:$1 

_user_specified_name3207:$2 

_user_specified_name3209:$3 

_user_specified_name3211:$4 

_user_specified_name3213:$5 

_user_specified_name3215:$6 

_user_specified_name3217:$7 

_user_specified_name3219:$8 

_user_specified_name3221:$9 

_user_specified_name3223:$: 

_user_specified_name3225:$; 

_user_specified_name3227:$< 

_user_specified_name3229:$= 

_user_specified_name3231:$> 

_user_specified_name3233:$? 

_user_specified_name3235:$@ 

_user_specified_name3237:$A 

_user_specified_name3239:$B 

_user_specified_name3241:$C 

_user_specified_name3243:$D 

_user_specified_name3245:$E 

_user_specified_name3247:$F 

_user_specified_name3249:$G 

_user_specified_name3251:$H 

_user_specified_name3253:$I 

_user_specified_name3255:$J 

_user_specified_name3257:$K 

_user_specified_name3259:$L 

_user_specified_name3261:$M 

_user_specified_name3263:$N 

_user_specified_name3265:$O 

_user_specified_name3267:$P 

_user_specified_name3269:$Q 

_user_specified_name3271
�
�
O__inference_layer_normalization_7_layer_call_and_return_conditional_losses_2277

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
D
(__inference_dropout_2_layer_call_fn_4634

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
GPU 2J 8� *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_2765[
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
�
3__inference_multi_head_attention_layer_call_fn_3955	
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
GPU 2J 8� *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_2535j
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

_user_specified_namevalue:$ 

_user_specified_name3937:$ 

_user_specified_name3939:$ 

_user_specified_name3941:$ 

_user_specified_name3943:$ 

_user_specified_name3945:$ 

_user_specified_name3947:$ 

_user_specified_name3949:$	 

_user_specified_name3951
�;
�
$__inference_model_layer_call_fn_3108
input_1
unknown
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13: 

unknown_14:

unknown_15: 

unknown_16:

unknown_17: 

unknown_18:

unknown_19: 

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:

unknown_25: 

unknown_26:

unknown_27: 

unknown_28:

unknown_29: 

unknown_30:

unknown_31: 

unknown_32:

unknown_33:

unknown_34:

unknown_35:

unknown_36:

unknown_37: 

unknown_38:

unknown_39: 

unknown_40:

unknown_41: 

unknown_42:

unknown_43: 

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48:

unknown_49: 

unknown_50:

unknown_51: 

unknown_52:

unknown_53: 

unknown_54:

unknown_55: 

unknown_56:

unknown_57:

unknown_58:

unknown_59:

unknown_60:

unknown_61: 

unknown_62:

unknown_63: 

unknown_64:

unknown_65: 

unknown_66:

unknown_67: 

unknown_68:

unknown_69:

unknown_70:

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75:

unknown_76: 

unknown_77: 

unknown_78: 

unknown_79:
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
unknown_78
unknown_79*]
TinV
T2R*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*r
_read_only_resource_inputsT
RP	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQ*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_2496f
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
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:D@

_output_shapes

:

_user_specified_name2944:$ 

_user_specified_name2946:$ 

_user_specified_name2948:$ 

_user_specified_name2950:$ 

_user_specified_name2952:$ 

_user_specified_name2954:$ 

_user_specified_name2956:$ 

_user_specified_name2958:$	 

_user_specified_name2960:$
 

_user_specified_name2962:$ 

_user_specified_name2964:$ 

_user_specified_name2966:$ 

_user_specified_name2968:$ 

_user_specified_name2970:$ 

_user_specified_name2972:$ 

_user_specified_name2974:$ 

_user_specified_name2976:$ 

_user_specified_name2978:$ 

_user_specified_name2980:$ 

_user_specified_name2982:$ 

_user_specified_name2984:$ 

_user_specified_name2986:$ 

_user_specified_name2988:$ 

_user_specified_name2990:$ 

_user_specified_name2992:$ 

_user_specified_name2994:$ 

_user_specified_name2996:$ 

_user_specified_name2998:$ 

_user_specified_name3000:$ 

_user_specified_name3002:$ 

_user_specified_name3004:$  

_user_specified_name3006:$! 

_user_specified_name3008:$" 

_user_specified_name3010:$# 

_user_specified_name3012:$$ 

_user_specified_name3014:$% 

_user_specified_name3016:$& 

_user_specified_name3018:$' 

_user_specified_name3020:$( 

_user_specified_name3022:$) 

_user_specified_name3024:$* 

_user_specified_name3026:$+ 

_user_specified_name3028:$, 

_user_specified_name3030:$- 

_user_specified_name3032:$. 

_user_specified_name3034:$/ 

_user_specified_name3036:$0 

_user_specified_name3038:$1 

_user_specified_name3040:$2 

_user_specified_name3042:$3 

_user_specified_name3044:$4 

_user_specified_name3046:$5 

_user_specified_name3048:$6 

_user_specified_name3050:$7 

_user_specified_name3052:$8 

_user_specified_name3054:$9 

_user_specified_name3056:$: 

_user_specified_name3058:$; 

_user_specified_name3060:$< 

_user_specified_name3062:$= 

_user_specified_name3064:$> 

_user_specified_name3066:$? 

_user_specified_name3068:$@ 

_user_specified_name3070:$A 

_user_specified_name3072:$B 

_user_specified_name3074:$C 

_user_specified_name3076:$D 

_user_specified_name3078:$E 

_user_specified_name3080:$F 

_user_specified_name3082:$G 

_user_specified_name3084:$H 

_user_specified_name3086:$I 

_user_specified_name3088:$J 

_user_specified_name3090:$K 

_user_specified_name3092:$L 

_user_specified_name3094:$M 

_user_specified_name3096:$N 

_user_specified_name3098:$O 

_user_specified_name3100:$P 

_user_specified_name3102:$Q 

_user_specified_name3104
�
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_2765

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
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_2344	
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
_
&__inference_dropout_layer_call_fn_4085

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
GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_1825j
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
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_2818	
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
�
A__inference_dense_5_layer_call_and_return_conditional_losses_5212

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
�
�
O__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4878

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
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_2002	
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
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_4025	
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
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_2679	
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
O__inference_layer_normalization_4_layer_call_and_return_conditional_losses_2043

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
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4217	
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
O__inference_layer_normalization_5_layer_call_and_return_conditional_losses_2163

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
D
(__inference_dropout_4_layer_call_fn_5033

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
GPU 2J 8� *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_2904[
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
��
�9
 __inference__traced_restore_5964
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
�
�
5__inference_multi_head_attention_3_layer_call_fn_4554	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_2743j
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

_user_specified_namevalue:$ 

_user_specified_name4536:$ 

_user_specified_name4538:$ 

_user_specified_name4540:$ 

_user_specified_name4542:$ 

_user_specified_name4544:$ 

_user_specified_name4546:$ 

_user_specified_name4548:$	 

_user_specified_name4550
�
�
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4510

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
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4252	
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
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1849

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
A__inference_dense_4_layer_call_and_return_conditional_losses_5193

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
5__inference_multi_head_attention_5_layer_call_fn_4931	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_2344j
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

_user_specified_namevalue:$ 

_user_specified_name4913:$ 

_user_specified_name4915:$ 

_user_specified_name4917:$ 

_user_specified_name4919:$ 

_user_specified_name4921:$ 

_user_specified_name4923:$ 

_user_specified_name4925:$	 

_user_specified_name4927
�
�
&__inference_dense_4_layer_call_fn_5183

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
GPU 2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_2474f
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
 
_user_specified_nameinputs:$ 

_user_specified_name5177:$ 

_user_specified_name5179
�

b
C__inference_dropout_5_layer_call_and_return_conditional_losses_2434

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
a
C__inference_dropout_4_layer_call_and_return_conditional_losses_2904

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
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_3990	
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
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_2610	
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
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_2535	
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
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_4651

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
�:
�
"__inference_signature_wrapper_3911
input_1
unknown
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13: 

unknown_14:

unknown_15: 

unknown_16:

unknown_17: 

unknown_18:

unknown_19: 

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:

unknown_25: 

unknown_26:

unknown_27: 

unknown_28:

unknown_29: 

unknown_30:

unknown_31: 

unknown_32:

unknown_33:

unknown_34:

unknown_35:

unknown_36:

unknown_37: 

unknown_38:

unknown_39: 

unknown_40:

unknown_41: 

unknown_42:

unknown_43: 

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48:

unknown_49: 

unknown_50:

unknown_51: 

unknown_52:

unknown_53: 

unknown_54:

unknown_55: 

unknown_56:

unknown_57:

unknown_58:

unknown_59:

unknown_60:

unknown_61: 

unknown_62:

unknown_63: 

unknown_64:

unknown_65: 

unknown_66:

unknown_67: 

unknown_68:

unknown_69:

unknown_70:

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75:

unknown_76: 

unknown_77: 

unknown_78: 

unknown_79:
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
unknown_78
unknown_79*]
TinV
T2R*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*r
_read_only_resource_inputsT
RP	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQ*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_1698f
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
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_1:D@

_output_shapes

:

_user_specified_name3747:$ 

_user_specified_name3749:$ 

_user_specified_name3751:$ 

_user_specified_name3753:$ 

_user_specified_name3755:$ 

_user_specified_name3757:$ 

_user_specified_name3759:$ 

_user_specified_name3761:$	 

_user_specified_name3763:$
 

_user_specified_name3765:$ 

_user_specified_name3767:$ 

_user_specified_name3769:$ 

_user_specified_name3771:$ 

_user_specified_name3773:$ 

_user_specified_name3775:$ 

_user_specified_name3777:$ 

_user_specified_name3779:$ 

_user_specified_name3781:$ 

_user_specified_name3783:$ 

_user_specified_name3785:$ 

_user_specified_name3787:$ 

_user_specified_name3789:$ 

_user_specified_name3791:$ 

_user_specified_name3793:$ 

_user_specified_name3795:$ 

_user_specified_name3797:$ 

_user_specified_name3799:$ 

_user_specified_name3801:$ 

_user_specified_name3803:$ 

_user_specified_name3805:$ 

_user_specified_name3807:$  

_user_specified_name3809:$! 

_user_specified_name3811:$" 

_user_specified_name3813:$# 

_user_specified_name3815:$$ 

_user_specified_name3817:$% 

_user_specified_name3819:$& 

_user_specified_name3821:$' 

_user_specified_name3823:$( 

_user_specified_name3825:$) 

_user_specified_name3827:$* 

_user_specified_name3829:$+ 

_user_specified_name3831:$, 

_user_specified_name3833:$- 

_user_specified_name3835:$. 

_user_specified_name3837:$/ 

_user_specified_name3839:$0 

_user_specified_name3841:$1 

_user_specified_name3843:$2 

_user_specified_name3845:$3 

_user_specified_name3847:$4 

_user_specified_name3849:$5 

_user_specified_name3851:$6 

_user_specified_name3853:$7 

_user_specified_name3855:$8 

_user_specified_name3857:$9 

_user_specified_name3859:$: 

_user_specified_name3861:$; 

_user_specified_name3863:$< 

_user_specified_name3865:$= 

_user_specified_name3867:$> 

_user_specified_name3869:$? 

_user_specified_name3871:$@ 

_user_specified_name3873:$A 

_user_specified_name3875:$B 

_user_specified_name3877:$C 

_user_specified_name3879:$D 

_user_specified_name3881:$E 

_user_specified_name3883:$F 

_user_specified_name3885:$G 

_user_specified_name3887:$H 

_user_specified_name3889:$I 

_user_specified_name3891:$J 

_user_specified_name3893:$K 

_user_specified_name3895:$L 

_user_specified_name3897:$M 

_user_specified_name3899:$N 

_user_specified_name3901:$O 

_user_specified_name3903:$P 

_user_specified_name3905:$Q 

_user_specified_name3907
�
�
A__inference_dense_2_layer_call_and_return_conditional_losses_2183

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
5__inference_multi_head_attention_5_layer_call_fn_4953	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_2882j
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

_user_specified_namevalue:$ 

_user_specified_name4935:$ 

_user_specified_name4937:$ 

_user_specified_name4939:$ 

_user_specified_name4941:$ 

_user_specified_name4943:$ 

_user_specified_name4945:$ 

_user_specified_name4947:$	 

_user_specified_name4949
�+
�
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_2236	
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
O__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4682

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
O__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4479

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
a
(__inference_dropout_2_layer_call_fn_4629

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
GPU 2J 8� *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_2139j
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
&__inference_dense_1_layer_call_fn_4292

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
GPU 2J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1949j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4286:$ 

_user_specified_name4288
�
B
&__inference_dropout_layer_call_fn_4090

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
GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_2568[
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
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_2110	
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

b
C__inference_dropout_2_layer_call_and_return_conditional_losses_2139

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
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_2782

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
4__inference_layer_normalization_6_layer_call_fn_4887

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2304j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4881:$ 

_user_specified_name4883
�
a
(__inference_dropout_3_layer_call_fn_4825

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
GPU 2J 8� *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2200j
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
�
A__inference_dense_5_layer_call_and_return_conditional_losses_2489

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
_
A__inference_dropout_layer_call_and_return_conditional_losses_4107

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
M__inference_layer_normalization_layer_call_and_return_conditional_losses_4056

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
n
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_5174

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
a
(__inference_dropout_1_layer_call_fn_4426

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
GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1966j
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
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4386	
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
&__inference_dense_3_layer_call_fn_5090

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
GPU 2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_2417j
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
 
_user_specified_nameinputs:$ 

_user_specified_name5084:$ 

_user_specified_name5086
�
�
5__inference_multi_head_attention_3_layer_call_fn_4532	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_2110j
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

_user_specified_namevalue:$ 

_user_specified_name4514:$ 

_user_specified_name4516:$ 

_user_specified_name4518:$ 

_user_specified_name4520:$ 

_user_specified_name4522:$ 

_user_specified_name4524:$ 

_user_specified_name4526:$	 

_user_specified_name4528
�
�
4__inference_layer_normalization_4_layer_call_fn_4457

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_4_layer_call_and_return_conditional_losses_2043j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4451:$ 

_user_specified_name4453
�
�
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4138

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
_
A__inference_dropout_layer_call_and_return_conditional_losses_2568

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
4__inference_layer_normalization_8_layer_call_fn_5059

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_8_layer_call_and_return_conditional_losses_2397j
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
 
_user_specified_nameinputs:$ 

_user_specified_name5053:$ 

_user_specified_name5055
��
�Y
__inference__wrapped_model_1698
input_1&
"model_tf___operators___add_addv2_y\
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
identity��"model/dense/BiasAdd/ReadVariableOp�$model/dense/Tensordot/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�&model/dense_1/Tensordot/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�&model/dense_2/Tensordot/ReadVariableOp�$model/dense_3/BiasAdd/ReadVariableOp�&model/dense_3/Tensordot/ReadVariableOp�$model/dense_4/BiasAdd/ReadVariableOp�#model/dense_4/MatMul/ReadVariableOp�$model/dense_5/BiasAdd/ReadVariableOp�#model/dense_5/MatMul/ReadVariableOp�2model/layer_normalization/batchnorm/ReadVariableOp�6model/layer_normalization/batchnorm/mul/ReadVariableOp�4model/layer_normalization_1/batchnorm/ReadVariableOp�8model/layer_normalization_1/batchnorm/mul/ReadVariableOp�4model/layer_normalization_2/batchnorm/ReadVariableOp�8model/layer_normalization_2/batchnorm/mul/ReadVariableOp�4model/layer_normalization_3/batchnorm/ReadVariableOp�8model/layer_normalization_3/batchnorm/mul/ReadVariableOp�4model/layer_normalization_4/batchnorm/ReadVariableOp�8model/layer_normalization_4/batchnorm/mul/ReadVariableOp�4model/layer_normalization_5/batchnorm/ReadVariableOp�8model/layer_normalization_5/batchnorm/mul/ReadVariableOp�4model/layer_normalization_6/batchnorm/ReadVariableOp�8model/layer_normalization_6/batchnorm/mul/ReadVariableOp�4model/layer_normalization_7/batchnorm/ReadVariableOp�8model/layer_normalization_7/batchnorm/mul/ReadVariableOp�4model/layer_normalization_8/batchnorm/ReadVariableOp�8model/layer_normalization_8/batchnorm/mul/ReadVariableOp�4model/layer_normalization_9/batchnorm/ReadVariableOp�8model/layer_normalization_9/batchnorm/mul/ReadVariableOp�>model/multi_head_attention/attention_output/add/ReadVariableOp�Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�1model/multi_head_attention/key/add/ReadVariableOp�;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp�3model/multi_head_attention/query/add/ReadVariableOp�=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp�3model/multi_head_attention/value/add/ReadVariableOp�=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_1/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_1/key/add/ReadVariableOp�=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_1/query/add/ReadVariableOp�?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_1/value/add/ReadVariableOp�?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_2/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_2/key/add/ReadVariableOp�=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_2/query/add/ReadVariableOp�?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_2/value/add/ReadVariableOp�?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_3/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_3/key/add/ReadVariableOp�=model/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_3/query/add/ReadVariableOp�?model/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_3/value/add/ReadVariableOp�?model/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_4/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_4/key/add/ReadVariableOp�=model/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_4/query/add/ReadVariableOp�?model/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_4/value/add/ReadVariableOp�?model/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_5/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_5/key/add/ReadVariableOp�=model/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_5/query/add/ReadVariableOp�?model/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_5/value/add/ReadVariableOp�?model/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp�
 model/tf.__operators__.add/AddV2AddV2input_1"model_tf___operators___add_addv2_y*
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
,model/multi_head_attention_1/softmax/SoftmaxSoftmax3model/multi_head_attention_1/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
-model/multi_head_attention_1/dropout/IdentityIdentity6model/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_1/einsum_1/EinsumEinsum6model/multi_head_attention_1/dropout/Identity:output:0*model/multi_head_attention_1/value/add:z:0*
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
,model/multi_head_attention_2/softmax/SoftmaxSoftmax3model/multi_head_attention_2/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
-model/multi_head_attention_2/dropout/IdentityIdentity6model/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_2/einsum_1/EinsumEinsum6model/multi_head_attention_2/dropout/Identity:output:0*model/multi_head_attention_2/value/add:z:0*
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
,model/multi_head_attention_3/softmax/SoftmaxSoftmax3model/multi_head_attention_3/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
-model/multi_head_attention_3/dropout/IdentityIdentity6model/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_3/einsum_1/EinsumEinsum6model/multi_head_attention_3/dropout/Identity:output:0*model/multi_head_attention_3/value/add:z:0*
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
,model/multi_head_attention_4/softmax/SoftmaxSoftmax3model/multi_head_attention_4/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
-model/multi_head_attention_4/dropout/IdentityIdentity6model/multi_head_attention_4/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_4/einsum_1/EinsumEinsum6model/multi_head_attention_4/dropout/Identity:output:0*model/multi_head_attention_4/value/add:z:0*
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
,model/multi_head_attention_5/softmax/SoftmaxSoftmax3model/multi_head_attention_5/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
-model/multi_head_attention_5/dropout/IdentityIdentity6model/multi_head_attention_5/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
,model/multi_head_attention_5/einsum_1/EinsumEinsum6model/multi_head_attention_5/dropout/Identity:output:0*model/multi_head_attention_5/value/add:z:0*
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
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
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
_user_specified_name	input_1:A=

_output_shapes

:

_user_specified_namey:($
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
resource:(Q$
"
_user_specified_name
resource
�
�
O__inference_layer_normalization_8_layer_call_and_return_conditional_losses_5081

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

b
C__inference_dropout_3_layer_call_and_return_conditional_losses_4842

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
5__inference_multi_head_attention_1_layer_call_fn_4160	
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
GPU 2J 8� *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_1889j
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

_user_specified_namevalue:$ 

_user_specified_name4142:$ 

_user_specified_name4144:$ 

_user_specified_name4146:$ 

_user_specified_name4148:$ 

_user_specified_name4150:$ 

_user_specified_name4152:$ 

_user_specified_name4154:$	 

_user_specified_name4156
�
�
4__inference_layer_normalization_7_layer_call_fn_4856

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
GPU 2J 8� *X
fSRQ
O__inference_layer_normalization_7_layer_call_and_return_conditional_losses_2277j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4850:$ 

_user_specified_name4852
�
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_4847

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
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2304

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

`
A__inference_dropout_layer_call_and_return_conditional_losses_4102

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
3__inference_multi_head_attention_layer_call_fn_3933	
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
GPU 2J 8� *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_1748j
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

_user_specified_namevalue:$ 

_user_specified_name3915:$ 

_user_specified_name3917:$ 

_user_specified_name3919:$ 

_user_specified_name3921:$ 

_user_specified_name3923:$ 

_user_specified_name3925:$ 

_user_specified_name3927:$	 

_user_specified_name3929
�
�
2__inference_layer_normalization_layer_call_fn_4034

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
GPU 2J 8� *V
fQRO
M__inference_layer_normalization_layer_call_and_return_conditional_losses_1788j
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
 
_user_specified_nameinputs:$ 

_user_specified_name4028:$ 

_user_specified_name4030
�

b
C__inference_dropout_2_layer_call_and_return_conditional_losses_4646

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
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_2070

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
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4785	
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
O__inference_layer_normalization_9_layer_call_and_return_conditional_losses_5163

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

b
C__inference_dropout_4_layer_call_and_return_conditional_losses_5045

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

b
C__inference_dropout_3_layer_call_and_return_conditional_losses_2200

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
A__inference_dense_1_layer_call_and_return_conditional_losses_1949

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
�
D
(__inference_dropout_5_layer_call_fn_5115

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
GPU 2J 8� *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_2921[
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
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4283

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
signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
2	keras_api"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9_query_dense
:
_key_dense
;_value_dense
<_softmax
=_dropout_layer
>_output_dense"
_tf_keras_layer
(
?	keras_api"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Faxis
	Ggamma
Hbeta"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses
W_random_generator"
_tf_keras_layer
(
X	keras_api"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
_axis
	`gamma
abeta"
_tf_keras_layer
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_query_dense
i
_key_dense
j_value_dense
k_softmax
l_dropout_layer
m_output_dense"
_tf_keras_layer
(
n	keras_api"
_tf_keras_layer
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
uaxis
	vgamma
wbeta"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias"
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
�_output_dense"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
)
�	keras_api"
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
	�beta"
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
	�beta"
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
�_output_dense"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
)
�	keras_api"
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
	�beta"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
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
�_output_dense"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
)
�	keras_api"
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
	�beta"
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
	�beta"
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
�_output_dense"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
)
�	keras_api"
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
	�beta"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
)
�	keras_api"
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
	�beta"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
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
G8
H9
O10
P11
`12
a13
�14
�15
�16
�17
�18
�19
�20
�21
v22
w23
~24
25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
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
G8
H9
O10
P11
`12
a13
�14
�15
�16
�17
�18
�19
�20
�21
v22
w23
~24
25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
0_default_save_signature
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
$__inference_model_layer_call_fn_3108
$__inference_model_layer_call_fn_3275�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
?__inference_model_layer_call_and_return_conditional_losses_2496
?__inference_model_layer_call_and_return_conditional_losses_2941�
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
 z�trace_0z�trace_1
�
�	capture_0B�
__inference__wrapped_model_1698input_1"�
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
 z�	capture_0
-
�serving_default"
signature_map
"
_generic_user_object
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
3__inference_multi_head_attention_layer_call_fn_3933
3__inference_multi_head_attention_layer_call_fn_3955�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_3990
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_4025�
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
"
_generic_user_object
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_layer_normalization_layer_call_fn_4034�
���
FullArgSpec
args�

jinputs
varargs
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
M__inference_layer_normalization_layer_call_and_return_conditional_losses_4056�
���
FullArgSpec
args�

jinputs
varargs
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
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
$__inference_dense_layer_call_fn_4065�
���
FullArgSpec
args�

jinputs
varargs
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
?__inference_dense_layer_call_and_return_conditional_losses_4080�
���
FullArgSpec
args�

jinputs
varargs
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
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
&__inference_dropout_layer_call_fn_4085
&__inference_dropout_layer_call_fn_4090�
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
A__inference_dropout_layer_call_and_return_conditional_losses_4102
A__inference_dropout_layer_call_and_return_conditional_losses_4107�
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
"
_generic_user_object
"
_generic_user_object
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_layer_normalization_1_layer_call_fn_4116�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4138�
���
FullArgSpec
args�

jinputs
varargs
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
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_multi_head_attention_1_layer_call_fn_4160
5__inference_multi_head_attention_1_layer_call_fn_4182�
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
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4217
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4252�
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
"
_generic_user_object
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_layer_normalization_2_layer_call_fn_4261�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4283�
���
FullArgSpec
args�

jinputs
varargs
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
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_1_layer_call_fn_4292�
���
FullArgSpec
args�

jinputs
varargs
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
�
�trace_02�
A__inference_dense_1_layer_call_and_return_conditional_losses_4307�
���
FullArgSpec
args�

jinputs
varargs
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
5__inference_multi_head_attention_2_layer_call_fn_4329
5__inference_multi_head_attention_2_layer_call_fn_4351�
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
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4386
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4421�
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
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
�
�trace_0
�trace_12�
(__inference_dropout_1_layer_call_fn_4426
(__inference_dropout_1_layer_call_fn_4431�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_dropout_1_layer_call_and_return_conditional_losses_4443
C__inference_dropout_1_layer_call_and_return_conditional_losses_4448�
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
 z�trace_0z�trace_1
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
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
4__inference_layer_normalization_4_layer_call_fn_4457�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4479�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_4/gamma
(:&2layer_normalization_4/beta
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
4__inference_layer_normalization_3_layer_call_fn_4488�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4510�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_3/gamma
(:&2layer_normalization_3/beta
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
5__inference_multi_head_attention_3_layer_call_fn_4532
5__inference_multi_head_attention_3_layer_call_fn_4554�
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
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4589
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4624�
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
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
(__inference_dropout_2_layer_call_fn_4629
(__inference_dropout_2_layer_call_fn_4634�
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
C__inference_dropout_2_layer_call_and_return_conditional_losses_4646
C__inference_dropout_2_layer_call_and_return_conditional_losses_4651�
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
"
_generic_user_object
"
_generic_user_object
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
4__inference_layer_normalization_5_layer_call_fn_4660�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4682�
���
FullArgSpec
args�

jinputs
varargs
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
&__inference_dense_2_layer_call_fn_4691�
���
FullArgSpec
args�

jinputs
varargs
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
�
�trace_02�
A__inference_dense_2_layer_call_and_return_conditional_losses_4706�
���
FullArgSpec
args�

jinputs
varargs
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
5__inference_multi_head_attention_4_layer_call_fn_4728
5__inference_multi_head_attention_4_layer_call_fn_4750�
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
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4785
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4820�
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
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
(__inference_dropout_3_layer_call_fn_4825
(__inference_dropout_3_layer_call_fn_4830�
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
C__inference_dropout_3_layer_call_and_return_conditional_losses_4842
C__inference_dropout_3_layer_call_and_return_conditional_losses_4847�
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
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
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
4__inference_layer_normalization_7_layer_call_fn_4856�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4878�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_7/gamma
(:&2layer_normalization_7/beta
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
4__inference_layer_normalization_6_layer_call_fn_4887�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4909�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_6/gamma
(:&2layer_normalization_6/beta
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
5__inference_multi_head_attention_5_layer_call_fn_4931
5__inference_multi_head_attention_5_layer_call_fn_4953�
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
�trace_0
�trace_12�
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4988
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_5023�
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
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
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_dropout_4_layer_call_fn_5028
(__inference_dropout_4_layer_call_fn_5033�
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
C__inference_dropout_4_layer_call_and_return_conditional_losses_5045
C__inference_dropout_4_layer_call_and_return_conditional_losses_5050�
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
"
_generic_user_object
"
_generic_user_object
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
4__inference_layer_normalization_8_layer_call_fn_5059�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_8_layer_call_and_return_conditional_losses_5081�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_8/gamma
(:&2layer_normalization_8/beta
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
&__inference_dense_3_layer_call_fn_5090�
���
FullArgSpec
args�

jinputs
varargs
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
�
�trace_02�
A__inference_dense_3_layer_call_and_return_conditional_losses_5105�
���
FullArgSpec
args�

jinputs
varargs
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
 :2dense_3/kernel
:2dense_3/bias
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
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_dropout_5_layer_call_fn_5110
(__inference_dropout_5_layer_call_fn_5115�
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
C__inference_dropout_5_layer_call_and_return_conditional_losses_5127
C__inference_dropout_5_layer_call_and_return_conditional_losses_5132�
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
"
_generic_user_object
"
_generic_user_object
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
4__inference_layer_normalization_9_layer_call_fn_5141�
���
FullArgSpec
args�

jinputs
varargs
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
O__inference_layer_normalization_9_layer_call_and_return_conditional_losses_5163�
���
FullArgSpec
args�

jinputs
varargs
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
):'2layer_normalization_9/gamma
(:&2layer_normalization_9/beta
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
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
7__inference_global_average_pooling1d_layer_call_fn_5168�
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
 z�trace_0
�
�trace_02�
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_5174�
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
 z�trace_0
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
&__inference_dense_4_layer_call_fn_5183�
���
FullArgSpec
args�

jinputs
varargs
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
�
�trace_02�
A__inference_dense_4_layer_call_and_return_conditional_losses_5193�
���
FullArgSpec
args�

jinputs
varargs
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
 : 2dense_4/kernel
: 2dense_4/bias
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
&__inference_dense_5_layer_call_fn_5202�
���
FullArgSpec
args�

jinputs
varargs
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
�
�trace_02�
A__inference_dense_5_layer_call_and_return_conditional_losses_5212�
���
FullArgSpec
args�

jinputs
varargs
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
 : 2dense_5/kernel
:2dense_5/bias
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
�
�	capture_0B�
$__inference_model_layer_call_fn_3108input_1"�
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
 z�	capture_0
�
�	capture_0B�
$__inference_model_layer_call_fn_3275input_1"�
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
 z�	capture_0
�
�	capture_0B�
?__inference_model_layer_call_and_return_conditional_losses_2496input_1"�
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
 z�	capture_0
�
�	capture_0B�
?__inference_model_layer_call_and_return_conditional_losses_2941input_1"�
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
 z�	capture_0
J
Constjtf.TrackableConstant
�
�	capture_0B�
"__inference_signature_wrapper_3911input_1"�
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
 z�	capture_0
 "
trackable_list_wrapper
J
90
:1
;2
<3
=4
>5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_multi_head_attention_layer_call_fn_3933queryvalue"�
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
3__inference_multi_head_attention_layer_call_fn_3955queryvalue"�
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
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_3990queryvalue"�
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
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_4025queryvalue"�
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
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
"
_generic_user_object
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
2__inference_layer_normalization_layer_call_fn_4034inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
M__inference_layer_normalization_layer_call_and_return_conditional_losses_4056inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
$__inference_dense_layer_call_fn_4065inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
?__inference_dense_layer_call_and_return_conditional_losses_4080inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
&__inference_dropout_layer_call_fn_4085inputs"�
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
&__inference_dropout_layer_call_fn_4090inputs"�
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
A__inference_dropout_layer_call_and_return_conditional_losses_4102inputs"�
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
A__inference_dropout_layer_call_and_return_conditional_losses_4107inputs"�
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
4__inference_layer_normalization_1_layer_call_fn_4116inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4138inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
h0
i1
j2
k3
l4
m5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_multi_head_attention_1_layer_call_fn_4160queryvalue"�
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
5__inference_multi_head_attention_1_layer_call_fn_4182queryvalue"�
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
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4217queryvalue"�
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
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4252queryvalue"�
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
"
_generic_user_object
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
4__inference_layer_normalization_2_layer_call_fn_4261inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4283inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
&__inference_dense_1_layer_call_fn_4292inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
A__inference_dense_1_layer_call_and_return_conditional_losses_4307inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
5__inference_multi_head_attention_2_layer_call_fn_4329queryvalue"�
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
5__inference_multi_head_attention_2_layer_call_fn_4351queryvalue"�
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
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4386queryvalue"�
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
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4421queryvalue"�
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
"
_generic_user_object
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
(__inference_dropout_1_layer_call_fn_4426inputs"�
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
(__inference_dropout_1_layer_call_fn_4431inputs"�
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
C__inference_dropout_1_layer_call_and_return_conditional_losses_4443inputs"�
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
C__inference_dropout_1_layer_call_and_return_conditional_losses_4448inputs"�
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
4__inference_layer_normalization_4_layer_call_fn_4457inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4479inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
4__inference_layer_normalization_3_layer_call_fn_4488inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4510inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
5__inference_multi_head_attention_3_layer_call_fn_4532queryvalue"�
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
5__inference_multi_head_attention_3_layer_call_fn_4554queryvalue"�
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
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4589queryvalue"�
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
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4624queryvalue"�
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
"
_generic_user_object
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
(__inference_dropout_2_layer_call_fn_4629inputs"�
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
(__inference_dropout_2_layer_call_fn_4634inputs"�
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
C__inference_dropout_2_layer_call_and_return_conditional_losses_4646inputs"�
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
C__inference_dropout_2_layer_call_and_return_conditional_losses_4651inputs"�
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
4__inference_layer_normalization_5_layer_call_fn_4660inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4682inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
&__inference_dense_2_layer_call_fn_4691inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
A__inference_dense_2_layer_call_and_return_conditional_losses_4706inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
5__inference_multi_head_attention_4_layer_call_fn_4728queryvalue"�
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
5__inference_multi_head_attention_4_layer_call_fn_4750queryvalue"�
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
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4785queryvalue"�
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
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4820queryvalue"�
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
"
_generic_user_object
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
(__inference_dropout_3_layer_call_fn_4825inputs"�
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
(__inference_dropout_3_layer_call_fn_4830inputs"�
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
C__inference_dropout_3_layer_call_and_return_conditional_losses_4842inputs"�
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
C__inference_dropout_3_layer_call_and_return_conditional_losses_4847inputs"�
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
4__inference_layer_normalization_7_layer_call_fn_4856inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4878inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
4__inference_layer_normalization_6_layer_call_fn_4887inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4909inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
5__inference_multi_head_attention_5_layer_call_fn_4931queryvalue"�
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
5__inference_multi_head_attention_5_layer_call_fn_4953queryvalue"�
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
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4988queryvalue"�
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
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_5023queryvalue"�
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
"
_generic_user_object
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
(__inference_dropout_4_layer_call_fn_5028inputs"�
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
(__inference_dropout_4_layer_call_fn_5033inputs"�
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
C__inference_dropout_4_layer_call_and_return_conditional_losses_5045inputs"�
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
C__inference_dropout_4_layer_call_and_return_conditional_losses_5050inputs"�
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
4__inference_layer_normalization_8_layer_call_fn_5059inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_8_layer_call_and_return_conditional_losses_5081inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
&__inference_dense_3_layer_call_fn_5090inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
A__inference_dense_3_layer_call_and_return_conditional_losses_5105inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
(__inference_dropout_5_layer_call_fn_5110inputs"�
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
(__inference_dropout_5_layer_call_fn_5115inputs"�
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
C__inference_dropout_5_layer_call_and_return_conditional_losses_5127inputs"�
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
C__inference_dropout_5_layer_call_and_return_conditional_losses_5132inputs"�
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
4__inference_layer_normalization_9_layer_call_fn_5141inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
O__inference_layer_normalization_9_layer_call_and_return_conditional_losses_5163inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
7__inference_global_average_pooling1d_layer_call_fn_5168inputs"�
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
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_5174inputs"�
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
&__inference_dense_4_layer_call_fn_5183inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
A__inference_dense_4_layer_call_and_return_conditional_losses_5193inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
&__inference_dense_5_layer_call_fn_5202inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
A__inference_dense_5_layer_call_and_return_conditional_losses_5212inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
trackable_dict_wrapper�
__inference__wrapped_model_1698�����������GHOP`a��������vw~������������������������������������������������������+�(
!�
�
input_1
� "(�%
#
dense_5�
dense_5�
A__inference_dense_1_layer_call_and_return_conditional_losses_4307Y~*�'
 �
�
inputs
� "'�$
�
tensor_0
� x
&__inference_dense_1_layer_call_fn_4292N~*�'
 �
�
inputs
� "�
unknown�
A__inference_dense_2_layer_call_and_return_conditional_losses_4706[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� z
&__inference_dense_2_layer_call_fn_4691P��*�'
 �
�
inputs
� "�
unknown�
A__inference_dense_3_layer_call_and_return_conditional_losses_5105[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� z
&__inference_dense_3_layer_call_fn_5090P��*�'
 �
�
inputs
� "�
unknown�
A__inference_dense_4_layer_call_and_return_conditional_losses_5193S��&�#
�
�
inputs
� "#� 
�
tensor_0 
� r
&__inference_dense_4_layer_call_fn_5183H��&�#
�
�
inputs
� "�
unknown �
A__inference_dense_5_layer_call_and_return_conditional_losses_5212S��&�#
�
�
inputs 
� "#� 
�
tensor_0
� r
&__inference_dense_5_layer_call_fn_5202H��&�#
�
�
inputs 
� "�
unknown�
?__inference_dense_layer_call_and_return_conditional_losses_4080YOP*�'
 �
�
inputs
� "'�$
�
tensor_0
� v
$__inference_dense_layer_call_fn_4065NOP*�'
 �
�
inputs
� "�
unknown�
C__inference_dropout_1_layer_call_and_return_conditional_losses_4443Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
C__inference_dropout_1_layer_call_and_return_conditional_losses_4448Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� z
(__inference_dropout_1_layer_call_fn_4426N.�+
$�!
�
inputs
p
� "�
unknownz
(__inference_dropout_1_layer_call_fn_4431N.�+
$�!
�
inputs
p 
� "�
unknown�
C__inference_dropout_2_layer_call_and_return_conditional_losses_4646Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
C__inference_dropout_2_layer_call_and_return_conditional_losses_4651Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� z
(__inference_dropout_2_layer_call_fn_4629N.�+
$�!
�
inputs
p
� "�
unknownz
(__inference_dropout_2_layer_call_fn_4634N.�+
$�!
�
inputs
p 
� "�
unknown�
C__inference_dropout_3_layer_call_and_return_conditional_losses_4842Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
C__inference_dropout_3_layer_call_and_return_conditional_losses_4847Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� z
(__inference_dropout_3_layer_call_fn_4825N.�+
$�!
�
inputs
p
� "�
unknownz
(__inference_dropout_3_layer_call_fn_4830N.�+
$�!
�
inputs
p 
� "�
unknown�
C__inference_dropout_4_layer_call_and_return_conditional_losses_5045Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
C__inference_dropout_4_layer_call_and_return_conditional_losses_5050Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� z
(__inference_dropout_4_layer_call_fn_5028N.�+
$�!
�
inputs
p
� "�
unknownz
(__inference_dropout_4_layer_call_fn_5033N.�+
$�!
�
inputs
p 
� "�
unknown�
C__inference_dropout_5_layer_call_and_return_conditional_losses_5127Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
C__inference_dropout_5_layer_call_and_return_conditional_losses_5132Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� z
(__inference_dropout_5_layer_call_fn_5110N.�+
$�!
�
inputs
p
� "�
unknownz
(__inference_dropout_5_layer_call_fn_5115N.�+
$�!
�
inputs
p 
� "�
unknown�
A__inference_dropout_layer_call_and_return_conditional_losses_4102Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
A__inference_dropout_layer_call_and_return_conditional_losses_4107Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� x
&__inference_dropout_layer_call_fn_4085N.�+
$�!
�
inputs
p
� "�
unknownx
&__inference_dropout_layer_call_fn_4090N.�+
$�!
�
inputs
p 
� "�
unknown�
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_5174�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
7__inference_global_average_pooling1d_layer_call_fn_5168wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4138Y`a*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_1_layer_call_fn_4116N`a*�'
 �
�
inputs
� "�
unknown�
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4283Yvw*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_2_layer_call_fn_4261Nvw*�'
 �
�
inputs
� "�
unknown�
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_4510[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_3_layer_call_fn_4488P��*�'
 �
�
inputs
� "�
unknown�
O__inference_layer_normalization_4_layer_call_and_return_conditional_losses_4479[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_4_layer_call_fn_4457P��*�'
 �
�
inputs
� "�
unknown�
O__inference_layer_normalization_5_layer_call_and_return_conditional_losses_4682[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_5_layer_call_fn_4660P��*�'
 �
�
inputs
� "�
unknown�
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_4909[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_6_layer_call_fn_4887P��*�'
 �
�
inputs
� "�
unknown�
O__inference_layer_normalization_7_layer_call_and_return_conditional_losses_4878[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_7_layer_call_fn_4856P��*�'
 �
�
inputs
� "�
unknown�
O__inference_layer_normalization_8_layer_call_and_return_conditional_losses_5081[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_8_layer_call_fn_5059P��*�'
 �
�
inputs
� "�
unknown�
O__inference_layer_normalization_9_layer_call_and_return_conditional_losses_5163[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
4__inference_layer_normalization_9_layer_call_fn_5141P��*�'
 �
�
inputs
� "�
unknown�
M__inference_layer_normalization_layer_call_and_return_conditional_losses_4056YGH*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
2__inference_layer_normalization_layer_call_fn_4034NGH*�'
 �
�
inputs
� "�
unknown�
?__inference_model_layer_call_and_return_conditional_losses_2496�����������GHOP`a��������vw~������������������������������������������������������3�0
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
?__inference_model_layer_call_and_return_conditional_losses_2941�����������GHOP`a��������vw~������������������������������������������������������3�0
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
$__inference_model_layer_call_fn_3108�����������GHOP`a��������vw~������������������������������������������������������3�0
)�&
�
input_1
p

 
� "�
unknown�
$__inference_model_layer_call_fn_3275�����������GHOP`a��������vw~������������������������������������������������������3�0
)�&
�
input_1
p 

 
� "�
unknown�
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4217���������Y�V
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
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4252���������Y�V
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
5__inference_multi_head_attention_1_layer_call_fn_4160���������Y�V
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
5__inference_multi_head_attention_1_layer_call_fn_4182���������Y�V
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
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4386���������Y�V
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
P__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_4421���������Y�V
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
5__inference_multi_head_attention_2_layer_call_fn_4329���������Y�V
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
5__inference_multi_head_attention_2_layer_call_fn_4351���������Y�V
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
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4589���������Y�V
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
P__inference_multi_head_attention_3_layer_call_and_return_conditional_losses_4624���������Y�V
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
5__inference_multi_head_attention_3_layer_call_fn_4532���������Y�V
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
5__inference_multi_head_attention_3_layer_call_fn_4554���������Y�V
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
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4785���������Y�V
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
P__inference_multi_head_attention_4_layer_call_and_return_conditional_losses_4820���������Y�V
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
5__inference_multi_head_attention_4_layer_call_fn_4728���������Y�V
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
5__inference_multi_head_attention_4_layer_call_fn_4750���������Y�V
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
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_4988���������Y�V
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
P__inference_multi_head_attention_5_layer_call_and_return_conditional_losses_5023���������Y�V
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
5__inference_multi_head_attention_5_layer_call_fn_4931���������Y�V
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
5__inference_multi_head_attention_5_layer_call_fn_4953���������Y�V
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
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_3990���������Y�V
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
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_4025���������Y�V
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
3__inference_multi_head_attention_layer_call_fn_3933���������Y�V
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
3__inference_multi_head_attention_layer_call_fn_3955���������Y�V
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
"__inference_signature_wrapper_3911�����������GHOP`a��������vw~������������������������������������������������������6�3
� 
,�)
'
input_1�
input_1"(�%
#
dense_5�
dense_5