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
�
ConstConst*
_output_shapes

:*
dtype0*�
value�B�"�HH<��̺��l<�&=(�B� ��;Y�=n�<�����X=�0=��5��)
;�:�����=A� ҸFZ�<t�f���f<�bA�Aa;=���(.B��3�;�E�LI<��l���`���=��=P���h�`�nȃ<0��;0|��7P=�=?���<a�/=:K��?�L~<:�Լ6z
� �?<��ļN��F������b��<��5=���<�����?=.7�<M�Ҽf���	�MhF�-�>=ڍ:���ͼh:�;���;&����k��웼��`�@;�������g=�հ��>*=�Y��h=}���YF�ɼ��K= Լ���D�<��< ���PDK� �B�P�'�0��	�K=j���'���8��w#< <%���1�@�C<���<GU#=� X�Ӗ޼-ࢼ`�K;�̭<
I�cN3�j�;���"=MH=Zo3��b�<T؊�}�)� ��9.F�<);L=�<�"��<�
� Gg��R]� I"<���-bּ�<M{ =���XY2<�"=Za(��l�;������c= #ڼ$�V< ��;�ź;�ъ<  �ޙ���+=��=����C�44h<#�2= �w�����0=`!E���׼Q�K=����dJ_<!!=��F���\�Ӏ��ʋ)��b�;�����=�"=��f<��:�U�����<3����[;; ˸9�[�<-¼�<��<@��-�5�y�B{�< 9�;:�	�3 .�hE ��.=��t<�.=��
����<
�
-multi_head_attention_17/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_17/attention_output/bias
�
Amulti_head_attention_17/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_17/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_17/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_17/attention_output/kernel
�
Cmulti_head_attention_17/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_17/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_17/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_17/value/bias
�
6multi_head_attention_17/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_17/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_17/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_17/value/kernel
�
8multi_head_attention_17/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_17/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_17/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_17/key/bias
�
4multi_head_attention_17/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_17/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_17/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_17/key/kernel
�
6multi_head_attention_17/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_17/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_17/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_17/query/bias
�
6multi_head_attention_17/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_17/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_17/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_17/query/kernel
�
8multi_head_attention_17/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_17/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_16/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_16/attention_output/bias
�
Amulti_head_attention_16/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_16/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_16/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_16/attention_output/kernel
�
Cmulti_head_attention_16/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_16/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_16/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_16/value/bias
�
6multi_head_attention_16/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_16/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_16/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_16/value/kernel
�
8multi_head_attention_16/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_16/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_16/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_16/key/bias
�
4multi_head_attention_16/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_16/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_16/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_16/key/kernel
�
6multi_head_attention_16/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_16/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_16/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_16/query/bias
�
6multi_head_attention_16/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_16/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_16/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_16/query/kernel
�
8multi_head_attention_16/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_16/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_15/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_15/attention_output/bias
�
Amulti_head_attention_15/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_15/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_15/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_15/attention_output/kernel
�
Cmulti_head_attention_15/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_15/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_15/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_15/value/bias
�
6multi_head_attention_15/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_15/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_15/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_15/value/kernel
�
8multi_head_attention_15/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_15/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_15/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_15/key/bias
�
4multi_head_attention_15/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_15/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_15/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_15/key/kernel
�
6multi_head_attention_15/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_15/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_15/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_15/query/bias
�
6multi_head_attention_15/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_15/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_15/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_15/query/kernel
�
8multi_head_attention_15/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_15/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_14/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_14/attention_output/bias
�
Amulti_head_attention_14/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_14/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_14/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_14/attention_output/kernel
�
Cmulti_head_attention_14/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_14/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_14/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_14/value/bias
�
6multi_head_attention_14/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_14/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_14/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_14/value/kernel
�
8multi_head_attention_14/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_14/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_14/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_14/key/bias
�
4multi_head_attention_14/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_14/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_14/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_14/key/kernel
�
6multi_head_attention_14/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_14/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_14/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_14/query/bias
�
6multi_head_attention_14/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_14/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_14/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_14/query/kernel
�
8multi_head_attention_14/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_14/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_13/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_13/attention_output/bias
�
Amulti_head_attention_13/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_13/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_13/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_13/attention_output/kernel
�
Cmulti_head_attention_13/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_13/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_13/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_13/value/bias
�
6multi_head_attention_13/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_13/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_13/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_13/value/kernel
�
8multi_head_attention_13/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_13/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_13/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_13/key/bias
�
4multi_head_attention_13/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_13/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_13/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_13/key/kernel
�
6multi_head_attention_13/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_13/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_13/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_13/query/bias
�
6multi_head_attention_13/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_13/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_13/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_13/query/kernel
�
8multi_head_attention_13/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_13/query/kernel*"
_output_shapes
:*
dtype0
�
-multi_head_attention_12/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_12/attention_output/bias
�
Amulti_head_attention_12/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_12/attention_output/bias*
_output_shapes
:*
dtype0
�
/multi_head_attention_12/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_12/attention_output/kernel
�
Cmulti_head_attention_12/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_12/attention_output/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_12/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_12/value/bias
�
6multi_head_attention_12/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_12/value/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_12/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_12/value/kernel
�
8multi_head_attention_12/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_12/value/kernel*"
_output_shapes
:*
dtype0
�
 multi_head_attention_12/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" multi_head_attention_12/key/bias
�
4multi_head_attention_12/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_12/key/bias*
_output_shapes

:*
dtype0
�
"multi_head_attention_12/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_12/key/kernel
�
6multi_head_attention_12/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_12/key/kernel*"
_output_shapes
:*
dtype0
�
"multi_head_attention_12/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"multi_head_attention_12/query/bias
�
6multi_head_attention_12/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_12/query/bias*
_output_shapes

:*
dtype0
�
$multi_head_attention_12/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_12/query/kernel
�
8multi_head_attention_12/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_12/query/kernel*"
_output_shapes
:*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

: *
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
: *
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

: *
dtype0
�
layer_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_29/beta
�
/layer_normalization_29/beta/Read/ReadVariableOpReadVariableOplayer_normalization_29/beta*
_output_shapes
:*
dtype0
�
layer_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_29/gamma
�
0layer_normalization_29/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_29/gamma*
_output_shapes
:*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_28/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_28/beta
�
/layer_normalization_28/beta/Read/ReadVariableOpReadVariableOplayer_normalization_28/beta*
_output_shapes
:*
dtype0
�
layer_normalization_28/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_28/gamma
�
0layer_normalization_28/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_28/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_26/beta
�
/layer_normalization_26/beta/Read/ReadVariableOpReadVariableOplayer_normalization_26/beta*
_output_shapes
:*
dtype0
�
layer_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_26/gamma
�
0layer_normalization_26/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_26/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_27/beta
�
/layer_normalization_27/beta/Read/ReadVariableOpReadVariableOplayer_normalization_27/beta*
_output_shapes
:*
dtype0
�
layer_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_27/gamma
�
0layer_normalization_27/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_27/gamma*
_output_shapes
:*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_25/beta
�
/layer_normalization_25/beta/Read/ReadVariableOpReadVariableOplayer_normalization_25/beta*
_output_shapes
:*
dtype0
�
layer_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_25/gamma
�
0layer_normalization_25/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_25/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_23/beta
�
/layer_normalization_23/beta/Read/ReadVariableOpReadVariableOplayer_normalization_23/beta*
_output_shapes
:*
dtype0
�
layer_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_23/gamma
�
0layer_normalization_23/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_23/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_24/beta
�
/layer_normalization_24/beta/Read/ReadVariableOpReadVariableOplayer_normalization_24/beta*
_output_shapes
:*
dtype0
�
layer_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_24/gamma
�
0layer_normalization_24/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_24/gamma*
_output_shapes
:*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_22/beta
�
/layer_normalization_22/beta/Read/ReadVariableOpReadVariableOplayer_normalization_22/beta*
_output_shapes
:*
dtype0
�
layer_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_22/gamma
�
0layer_normalization_22/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_22/gamma*
_output_shapes
:*
dtype0
�
layer_normalization_21/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_21/beta
�
/layer_normalization_21/beta/Read/ReadVariableOpReadVariableOplayer_normalization_21/beta*
_output_shapes
:*
dtype0
�
layer_normalization_21/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_21/gamma
�
0layer_normalization_21/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_21/gamma*
_output_shapes
:*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:*
dtype0
�
layer_normalization_20/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_20/beta
�
/layer_normalization_20/beta/Read/ReadVariableOpReadVariableOplayer_normalization_20/beta*
_output_shapes
:*
dtype0
�
layer_normalization_20/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_20/gamma
�
0layer_normalization_20/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_20/gamma*
_output_shapes
:*
dtype0
p
serving_default_input_3Placeholder*"
_output_shapes
:*
dtype0*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3Const$multi_head_attention_12/query/kernel"multi_head_attention_12/query/bias"multi_head_attention_12/key/kernel multi_head_attention_12/key/bias$multi_head_attention_12/value/kernel"multi_head_attention_12/value/bias/multi_head_attention_12/attention_output/kernel-multi_head_attention_12/attention_output/biaslayer_normalization_20/gammalayer_normalization_20/betadense_12/kerneldense_12/biaslayer_normalization_21/gammalayer_normalization_21/beta$multi_head_attention_13/query/kernel"multi_head_attention_13/query/bias"multi_head_attention_13/key/kernel multi_head_attention_13/key/bias$multi_head_attention_13/value/kernel"multi_head_attention_13/value/bias/multi_head_attention_13/attention_output/kernel-multi_head_attention_13/attention_output/biaslayer_normalization_22/gammalayer_normalization_22/betadense_13/kerneldense_13/bias$multi_head_attention_14/query/kernel"multi_head_attention_14/query/bias"multi_head_attention_14/key/kernel multi_head_attention_14/key/bias$multi_head_attention_14/value/kernel"multi_head_attention_14/value/bias/multi_head_attention_14/attention_output/kernel-multi_head_attention_14/attention_output/biaslayer_normalization_24/gammalayer_normalization_24/betalayer_normalization_23/gammalayer_normalization_23/beta$multi_head_attention_15/query/kernel"multi_head_attention_15/query/bias"multi_head_attention_15/key/kernel multi_head_attention_15/key/bias$multi_head_attention_15/value/kernel"multi_head_attention_15/value/bias/multi_head_attention_15/attention_output/kernel-multi_head_attention_15/attention_output/biaslayer_normalization_25/gammalayer_normalization_25/betadense_14/kerneldense_14/bias$multi_head_attention_16/query/kernel"multi_head_attention_16/query/bias"multi_head_attention_16/key/kernel multi_head_attention_16/key/bias$multi_head_attention_16/value/kernel"multi_head_attention_16/value/bias/multi_head_attention_16/attention_output/kernel-multi_head_attention_16/attention_output/biaslayer_normalization_27/gammalayer_normalization_27/betalayer_normalization_26/gammalayer_normalization_26/beta$multi_head_attention_17/query/kernel"multi_head_attention_17/query/bias"multi_head_attention_17/key/kernel multi_head_attention_17/key/bias$multi_head_attention_17/value/kernel"multi_head_attention_17/value/bias/multi_head_attention_17/attention_output/kernel-multi_head_attention_17/attention_output/biaslayer_normalization_28/gammalayer_normalization_28/betadense_15/kerneldense_15/biaslayer_normalization_29/gammalayer_normalization_29/betadense_16/kerneldense_16/biasdense_17/kerneldense_17/bias*]
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
GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_16435

NoOpNoOp
�
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
ke
VARIABLE_VALUElayer_normalization_20/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_20/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_21/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_21/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_22/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_22/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_24/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_24/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUElayer_normalization_23/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_23/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
lf
VARIABLE_VALUElayer_normalization_25/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_25/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_14/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_14/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
lf
VARIABLE_VALUElayer_normalization_27/gamma6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_27/beta5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUElayer_normalization_26/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_26/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
lf
VARIABLE_VALUElayer_normalization_28/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_28/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
`Z
VARIABLE_VALUEdense_15/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_15/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
lf
VARIABLE_VALUElayer_normalization_29/gamma6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_29/beta5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE*
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
`Z
VARIABLE_VALUEdense_16/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_16/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
`Z
VARIABLE_VALUEdense_17/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_17/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$multi_head_attention_12/query/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"multi_head_attention_12/query/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"multi_head_attention_12/key/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE multi_head_attention_12/key/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$multi_head_attention_12/value/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"multi_head_attention_12/value/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/multi_head_attention_12/attention_output/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-multi_head_attention_12/attention_output/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_13/query/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_13/query/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_13/key/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_13/key/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_13/value/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_13/value/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_13/attention_output/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_13/attention_output/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_14/query/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_14/query/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_14/key/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_14/key/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_14/value/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_14/value/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_14/attention_output/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_14/attention_output/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_15/query/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_15/query/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_15/key/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_15/key/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_15/value/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_15/value/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_15/attention_output/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_15/attention_output/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_16/query/kernel'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_16/query/bias'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_16/key/kernel'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_16/key/bias'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_16/value/kernel'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_16/value/bias'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_16/attention_output/kernel'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_16/attention_output/bias'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_17/query/kernel'variables/62/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_17/query/bias'variables/63/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_17/key/kernel'variables/64/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_17/key/bias'variables/65/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_17/value/kernel'variables/66/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_17/value/bias'variables/67/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_17/attention_output/kernel'variables/68/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_17/attention_output/bias'variables/69/.ATTRIBUTES/VARIABLE_VALUE*
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer_normalization_20/gammalayer_normalization_20/betadense_12/kerneldense_12/biaslayer_normalization_21/gammalayer_normalization_21/betalayer_normalization_22/gammalayer_normalization_22/betadense_13/kerneldense_13/biaslayer_normalization_24/gammalayer_normalization_24/betalayer_normalization_23/gammalayer_normalization_23/betalayer_normalization_25/gammalayer_normalization_25/betadense_14/kerneldense_14/biaslayer_normalization_27/gammalayer_normalization_27/betalayer_normalization_26/gammalayer_normalization_26/betalayer_normalization_28/gammalayer_normalization_28/betadense_15/kerneldense_15/biaslayer_normalization_29/gammalayer_normalization_29/betadense_16/kerneldense_16/biasdense_17/kerneldense_17/bias$multi_head_attention_12/query/kernel"multi_head_attention_12/query/bias"multi_head_attention_12/key/kernel multi_head_attention_12/key/bias$multi_head_attention_12/value/kernel"multi_head_attention_12/value/bias/multi_head_attention_12/attention_output/kernel-multi_head_attention_12/attention_output/bias$multi_head_attention_13/query/kernel"multi_head_attention_13/query/bias"multi_head_attention_13/key/kernel multi_head_attention_13/key/bias$multi_head_attention_13/value/kernel"multi_head_attention_13/value/bias/multi_head_attention_13/attention_output/kernel-multi_head_attention_13/attention_output/bias$multi_head_attention_14/query/kernel"multi_head_attention_14/query/bias"multi_head_attention_14/key/kernel multi_head_attention_14/key/bias$multi_head_attention_14/value/kernel"multi_head_attention_14/value/bias/multi_head_attention_14/attention_output/kernel-multi_head_attention_14/attention_output/bias$multi_head_attention_15/query/kernel"multi_head_attention_15/query/bias"multi_head_attention_15/key/kernel multi_head_attention_15/key/bias$multi_head_attention_15/value/kernel"multi_head_attention_15/value/bias/multi_head_attention_15/attention_output/kernel-multi_head_attention_15/attention_output/bias$multi_head_attention_16/query/kernel"multi_head_attention_16/query/bias"multi_head_attention_16/key/kernel multi_head_attention_16/key/bias$multi_head_attention_16/value/kernel"multi_head_attention_16/value/bias/multi_head_attention_16/attention_output/kernel-multi_head_attention_16/attention_output/bias$multi_head_attention_17/query/kernel"multi_head_attention_17/query/bias"multi_head_attention_17/key/kernel multi_head_attention_17/key/bias$multi_head_attention_17/value/kernel"multi_head_attention_17/value/bias/multi_head_attention_17/attention_output/kernel-multi_head_attention_17/attention_output/biasConst_1*]
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
GPU 2J 8� *'
f"R 
__inference__traced_save_18239
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization_20/gammalayer_normalization_20/betadense_12/kerneldense_12/biaslayer_normalization_21/gammalayer_normalization_21/betalayer_normalization_22/gammalayer_normalization_22/betadense_13/kerneldense_13/biaslayer_normalization_24/gammalayer_normalization_24/betalayer_normalization_23/gammalayer_normalization_23/betalayer_normalization_25/gammalayer_normalization_25/betadense_14/kerneldense_14/biaslayer_normalization_27/gammalayer_normalization_27/betalayer_normalization_26/gammalayer_normalization_26/betalayer_normalization_28/gammalayer_normalization_28/betadense_15/kerneldense_15/biaslayer_normalization_29/gammalayer_normalization_29/betadense_16/kerneldense_16/biasdense_17/kerneldense_17/bias$multi_head_attention_12/query/kernel"multi_head_attention_12/query/bias"multi_head_attention_12/key/kernel multi_head_attention_12/key/bias$multi_head_attention_12/value/kernel"multi_head_attention_12/value/bias/multi_head_attention_12/attention_output/kernel-multi_head_attention_12/attention_output/bias$multi_head_attention_13/query/kernel"multi_head_attention_13/query/bias"multi_head_attention_13/key/kernel multi_head_attention_13/key/bias$multi_head_attention_13/value/kernel"multi_head_attention_13/value/bias/multi_head_attention_13/attention_output/kernel-multi_head_attention_13/attention_output/bias$multi_head_attention_14/query/kernel"multi_head_attention_14/query/bias"multi_head_attention_14/key/kernel multi_head_attention_14/key/bias$multi_head_attention_14/value/kernel"multi_head_attention_14/value/bias/multi_head_attention_14/attention_output/kernel-multi_head_attention_14/attention_output/bias$multi_head_attention_15/query/kernel"multi_head_attention_15/query/bias"multi_head_attention_15/key/kernel multi_head_attention_15/key/bias$multi_head_attention_15/value/kernel"multi_head_attention_15/value/bias/multi_head_attention_15/attention_output/kernel-multi_head_attention_15/attention_output/bias$multi_head_attention_16/query/kernel"multi_head_attention_16/query/bias"multi_head_attention_16/key/kernel multi_head_attention_16/key/bias$multi_head_attention_16/value/kernel"multi_head_attention_16/value/bias/multi_head_attention_16/attention_output/kernel-multi_head_attention_16/attention_output/bias$multi_head_attention_17/query/kernel"multi_head_attention_17/query/bias"multi_head_attention_17/key/kernel multi_head_attention_17/key/bias$multi_head_attention_17/value/kernel"multi_head_attention_17/value/bias/multi_head_attention_17/attention_output/kernel-multi_head_attention_17/attention_output/bias*\
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_18488��#
�	
�
C__inference_dense_17_layer_call_and_return_conditional_losses_17736

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
6__inference_layer_normalization_23_layer_call_fn_17012

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_14594j
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
 
_user_specified_nameinputs:%!

_user_specified_name17006:%!

_user_specified_name17008
�

d
E__inference_dropout_16_layer_call_and_return_conditional_losses_14897

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
Q__inference_layer_normalization_25_layer_call_and_return_conditional_losses_14687

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
6__inference_layer_normalization_26_layer_call_fn_17411

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_26_layer_call_and_return_conditional_losses_14828j
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
 
_user_specified_nameinputs:%!

_user_specified_name17405:%!

_user_specified_name17407
�+
�
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_15134	
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
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_15306

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

d
E__inference_dropout_17_layer_call_and_return_conditional_losses_17651

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
F
*__inference_dropout_14_layer_call_fn_17158

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
GPU 2J 8� *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_15289[
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
Q__inference_layer_normalization_21_layer_call_and_return_conditional_losses_14373

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
q
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_14228

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
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_14413	
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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_14868	
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
6__inference_layer_normalization_22_layer_call_fn_16785

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_14453j
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
 
_user_specified_nameinputs:%!

_user_specified_name16779:%!

_user_specified_name16781
�
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_17371

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
6__inference_layer_normalization_21_layer_call_fn_16640

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_21_layer_call_and_return_conditional_losses_14373j
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
 
_user_specified_nameinputs:%!

_user_specified_name16634:%!

_user_specified_name16636
��
�'
B__inference_model_2_layer_call_and_return_conditional_losses_15020
input_3#
tf___operators___add_22_addv2_y3
multi_head_attention_12_14273:/
multi_head_attention_12_14275:3
multi_head_attention_12_14277:/
multi_head_attention_12_14279:3
multi_head_attention_12_14281:/
multi_head_attention_12_14283:3
multi_head_attention_12_14285:+
multi_head_attention_12_14287:*
layer_normalization_20_14313:*
layer_normalization_20_14315: 
dense_12_14333:
dense_12_14335:*
layer_normalization_21_14374:*
layer_normalization_21_14376:3
multi_head_attention_13_14414:/
multi_head_attention_13_14416:3
multi_head_attention_13_14418:/
multi_head_attention_13_14420:3
multi_head_attention_13_14422:/
multi_head_attention_13_14424:3
multi_head_attention_13_14426:+
multi_head_attention_13_14428:*
layer_normalization_22_14454:*
layer_normalization_22_14456: 
dense_13_14474:
dense_13_14476:3
multi_head_attention_14_14527:/
multi_head_attention_14_14529:3
multi_head_attention_14_14531:/
multi_head_attention_14_14533:3
multi_head_attention_14_14535:/
multi_head_attention_14_14537:3
multi_head_attention_14_14539:+
multi_head_attention_14_14541:*
layer_normalization_24_14568:*
layer_normalization_24_14570:*
layer_normalization_23_14595:*
layer_normalization_23_14597:3
multi_head_attention_15_14635:/
multi_head_attention_15_14637:3
multi_head_attention_15_14639:/
multi_head_attention_15_14641:3
multi_head_attention_15_14643:/
multi_head_attention_15_14645:3
multi_head_attention_15_14647:+
multi_head_attention_15_14649:*
layer_normalization_25_14688:*
layer_normalization_25_14690: 
dense_14_14708:
dense_14_14710:3
multi_head_attention_16_14761:/
multi_head_attention_16_14763:3
multi_head_attention_16_14765:/
multi_head_attention_16_14767:3
multi_head_attention_16_14769:/
multi_head_attention_16_14771:3
multi_head_attention_16_14773:+
multi_head_attention_16_14775:*
layer_normalization_27_14802:*
layer_normalization_27_14804:*
layer_normalization_26_14829:*
layer_normalization_26_14831:3
multi_head_attention_17_14869:/
multi_head_attention_17_14871:3
multi_head_attention_17_14873:/
multi_head_attention_17_14875:3
multi_head_attention_17_14877:/
multi_head_attention_17_14879:3
multi_head_attention_17_14881:+
multi_head_attention_17_14883:*
layer_normalization_28_14922:*
layer_normalization_28_14924: 
dense_15_14942:
dense_15_14944:*
layer_normalization_29_14983:*
layer_normalization_29_14985: 
dense_16_14999: 
dense_16_15001:  
dense_17_15014: 
dense_17_15016:
identity�� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall� dense_14/StatefulPartitionedCall� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall�"dropout_12/StatefulPartitionedCall�"dropout_13/StatefulPartitionedCall�"dropout_14/StatefulPartitionedCall�"dropout_15/StatefulPartitionedCall�"dropout_16/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�.layer_normalization_20/StatefulPartitionedCall�.layer_normalization_21/StatefulPartitionedCall�.layer_normalization_22/StatefulPartitionedCall�.layer_normalization_23/StatefulPartitionedCall�.layer_normalization_24/StatefulPartitionedCall�.layer_normalization_25/StatefulPartitionedCall�.layer_normalization_26/StatefulPartitionedCall�.layer_normalization_27/StatefulPartitionedCall�.layer_normalization_28/StatefulPartitionedCall�.layer_normalization_29/StatefulPartitionedCall�/multi_head_attention_12/StatefulPartitionedCall�/multi_head_attention_13/StatefulPartitionedCall�/multi_head_attention_14/StatefulPartitionedCall�/multi_head_attention_15/StatefulPartitionedCall�/multi_head_attention_16/StatefulPartitionedCall�/multi_head_attention_17/StatefulPartitionedCall}
tf.__operators__.add_22/AddV2AddV2input_3tf___operators___add_22_addv2_y*
T0*"
_output_shapes
:�
/multi_head_attention_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_22/AddV2:z:0!tf.__operators__.add_22/AddV2:z:0multi_head_attention_12_14273multi_head_attention_12_14275multi_head_attention_12_14277multi_head_attention_12_14279multi_head_attention_12_14281multi_head_attention_12_14283multi_head_attention_12_14285multi_head_attention_12_14287*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_14272�
tf.__operators__.add_23/AddV2AddV2!tf.__operators__.add_22/AddV2:z:08multi_head_attention_12/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_23/AddV2:z:0layer_normalization_20_14313layer_normalization_20_14315*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_20_layer_call_and_return_conditional_losses_14312�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_20/StatefulPartitionedCall:output:0dense_12_14333dense_12_14335*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_14332�
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_14349�
tf.__operators__.add_24/AddV2AddV27layer_normalization_20/StatefulPartitionedCall:output:0+dropout_12/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_24/AddV2:z:0layer_normalization_21_14374layer_normalization_21_14376*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_21_layer_call_and_return_conditional_losses_14373�
/multi_head_attention_13/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_21/StatefulPartitionedCall:output:07layer_normalization_21/StatefulPartitionedCall:output:0multi_head_attention_13_14414multi_head_attention_13_14416multi_head_attention_13_14418multi_head_attention_13_14420multi_head_attention_13_14422multi_head_attention_13_14424multi_head_attention_13_14426multi_head_attention_13_14428*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_14413�
tf.__operators__.add_25/AddV2AddV27layer_normalization_21/StatefulPartitionedCall:output:08multi_head_attention_13/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_25/AddV2:z:0layer_normalization_22_14454layer_normalization_22_14456*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_14453�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:0dense_13_14474dense_13_14476*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_14473�
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_14490�
/multi_head_attention_14/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_22/AddV2:z:0!tf.__operators__.add_22/AddV2:z:0multi_head_attention_14_14527multi_head_attention_14_14529multi_head_attention_14_14531multi_head_attention_14_14533multi_head_attention_14_14535multi_head_attention_14_14537multi_head_attention_14_14539multi_head_attention_14_14541*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_14526�
tf.__operators__.add_26/AddV2AddV27layer_normalization_22/StatefulPartitionedCall:output:0+dropout_13/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_27/AddV2AddV2!tf.__operators__.add_22/AddV2:z:08multi_head_attention_14/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_24/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0layer_normalization_24_14568layer_normalization_24_14570*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_24_layer_call_and_return_conditional_losses_14567�
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_26/AddV2:z:0layer_normalization_23_14595layer_normalization_23_14597*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_14594�
/multi_head_attention_15/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_24/StatefulPartitionedCall:output:07layer_normalization_23/StatefulPartitionedCall:output:0multi_head_attention_15_14635multi_head_attention_15_14637multi_head_attention_15_14639multi_head_attention_15_14641multi_head_attention_15_14643multi_head_attention_15_14645multi_head_attention_15_14647multi_head_attention_15_14649*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_14634�
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall8multi_head_attention_15/StatefulPartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_14663�
tf.__operators__.add_28/AddV2AddV27layer_normalization_24/StatefulPartitionedCall:output:0+dropout_14/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_25/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_28/AddV2:z:0layer_normalization_25_14688layer_normalization_25_14690*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_25_layer_call_and_return_conditional_losses_14687�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_25/StatefulPartitionedCall:output:0dense_14_14708dense_14_14710*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_14707�
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_14724�
/multi_head_attention_16/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_22/AddV2:z:0!tf.__operators__.add_22/AddV2:z:0multi_head_attention_16_14761multi_head_attention_16_14763multi_head_attention_16_14765multi_head_attention_16_14767multi_head_attention_16_14769multi_head_attention_16_14771multi_head_attention_16_14773multi_head_attention_16_14775*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_14760�
tf.__operators__.add_29/AddV2AddV27layer_normalization_25/StatefulPartitionedCall:output:0+dropout_15/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_30/AddV2AddV2!tf.__operators__.add_22/AddV2:z:08multi_head_attention_16/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_27/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_30/AddV2:z:0layer_normalization_27_14802layer_normalization_27_14804*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_27_layer_call_and_return_conditional_losses_14801�
.layer_normalization_26/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0layer_normalization_26_14829layer_normalization_26_14831*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_26_layer_call_and_return_conditional_losses_14828�
/multi_head_attention_17/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_27/StatefulPartitionedCall:output:07layer_normalization_26/StatefulPartitionedCall:output:0multi_head_attention_17_14869multi_head_attention_17_14871multi_head_attention_17_14873multi_head_attention_17_14875multi_head_attention_17_14877multi_head_attention_17_14879multi_head_attention_17_14881multi_head_attention_17_14883*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_14868�
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall8multi_head_attention_17/StatefulPartitionedCall:output:0#^dropout_15/StatefulPartitionedCall*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_14897�
tf.__operators__.add_31/AddV2AddV27layer_normalization_27/StatefulPartitionedCall:output:0+dropout_16/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_28/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0layer_normalization_28_14922layer_normalization_28_14924*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_28_layer_call_and_return_conditional_losses_14921�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_28/StatefulPartitionedCall:output:0dense_15_14942dense_15_14944*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_14941�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_14958�
tf.__operators__.add_32/AddV2AddV27layer_normalization_28/StatefulPartitionedCall:output:0+dropout_17/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_29/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_32/AddV2:z:0layer_normalization_29_14983layer_normalization_29_14985*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_29_layer_call_and_return_conditional_losses_14982�
*global_average_pooling1d_2/PartitionedCallPartitionedCall7layer_normalization_29/StatefulPartitionedCall:output:0*
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
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_14228�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0dense_16_14999dense_16_15001*
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
GPU 2J 8� *L
fGRE
C__inference_dense_16_layer_call_and_return_conditional_losses_14998�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_15014dense_17_15016*
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
GPU 2J 8� *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_15013o
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�	
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall/^layer_normalization_20/StatefulPartitionedCall/^layer_normalization_21/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall/^layer_normalization_24/StatefulPartitionedCall/^layer_normalization_25/StatefulPartitionedCall/^layer_normalization_26/StatefulPartitionedCall/^layer_normalization_27/StatefulPartitionedCall/^layer_normalization_28/StatefulPartitionedCall/^layer_normalization_29/StatefulPartitionedCall0^multi_head_attention_12/StatefulPartitionedCall0^multi_head_attention_13/StatefulPartitionedCall0^multi_head_attention_14/StatefulPartitionedCall0^multi_head_attention_15/StatefulPartitionedCall0^multi_head_attention_16/StatefulPartitionedCall0^multi_head_attention_17/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2`
.layer_normalization_20/StatefulPartitionedCall.layer_normalization_20/StatefulPartitionedCall2`
.layer_normalization_21/StatefulPartitionedCall.layer_normalization_21/StatefulPartitionedCall2`
.layer_normalization_22/StatefulPartitionedCall.layer_normalization_22/StatefulPartitionedCall2`
.layer_normalization_23/StatefulPartitionedCall.layer_normalization_23/StatefulPartitionedCall2`
.layer_normalization_24/StatefulPartitionedCall.layer_normalization_24/StatefulPartitionedCall2`
.layer_normalization_25/StatefulPartitionedCall.layer_normalization_25/StatefulPartitionedCall2`
.layer_normalization_26/StatefulPartitionedCall.layer_normalization_26/StatefulPartitionedCall2`
.layer_normalization_27/StatefulPartitionedCall.layer_normalization_27/StatefulPartitionedCall2`
.layer_normalization_28/StatefulPartitionedCall.layer_normalization_28/StatefulPartitionedCall2`
.layer_normalization_29/StatefulPartitionedCall.layer_normalization_29/StatefulPartitionedCall2b
/multi_head_attention_12/StatefulPartitionedCall/multi_head_attention_12/StatefulPartitionedCall2b
/multi_head_attention_13/StatefulPartitionedCall/multi_head_attention_13/StatefulPartitionedCall2b
/multi_head_attention_14/StatefulPartitionedCall/multi_head_attention_14/StatefulPartitionedCall2b
/multi_head_attention_15/StatefulPartitionedCall/multi_head_attention_15/StatefulPartitionedCall2b
/multi_head_attention_16/StatefulPartitionedCall/multi_head_attention_16/StatefulPartitionedCall2b
/multi_head_attention_17/StatefulPartitionedCall/multi_head_attention_17/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_3:A=

_output_shapes

:

_user_specified_namey:%!

_user_specified_name14273:%!

_user_specified_name14275:%!

_user_specified_name14277:%!

_user_specified_name14279:%!

_user_specified_name14281:%!

_user_specified_name14283:%!

_user_specified_name14285:%	!

_user_specified_name14287:%
!

_user_specified_name14313:%!

_user_specified_name14315:%!

_user_specified_name14333:%!

_user_specified_name14335:%!

_user_specified_name14374:%!

_user_specified_name14376:%!

_user_specified_name14414:%!

_user_specified_name14416:%!

_user_specified_name14418:%!

_user_specified_name14420:%!

_user_specified_name14422:%!

_user_specified_name14424:%!

_user_specified_name14426:%!

_user_specified_name14428:%!

_user_specified_name14454:%!

_user_specified_name14456:%!

_user_specified_name14474:%!

_user_specified_name14476:%!

_user_specified_name14527:%!

_user_specified_name14529:%!

_user_specified_name14531:%!

_user_specified_name14533:% !

_user_specified_name14535:%!!

_user_specified_name14537:%"!

_user_specified_name14539:%#!

_user_specified_name14541:%$!

_user_specified_name14568:%%!

_user_specified_name14570:%&!

_user_specified_name14595:%'!

_user_specified_name14597:%(!

_user_specified_name14635:%)!

_user_specified_name14637:%*!

_user_specified_name14639:%+!

_user_specified_name14641:%,!

_user_specified_name14643:%-!

_user_specified_name14645:%.!

_user_specified_name14647:%/!

_user_specified_name14649:%0!

_user_specified_name14688:%1!

_user_specified_name14690:%2!

_user_specified_name14708:%3!

_user_specified_name14710:%4!

_user_specified_name14761:%5!

_user_specified_name14763:%6!

_user_specified_name14765:%7!

_user_specified_name14767:%8!

_user_specified_name14769:%9!

_user_specified_name14771:%:!

_user_specified_name14773:%;!

_user_specified_name14775:%<!

_user_specified_name14802:%=!

_user_specified_name14804:%>!

_user_specified_name14829:%?!

_user_specified_name14831:%@!

_user_specified_name14869:%A!

_user_specified_name14871:%B!

_user_specified_name14873:%C!

_user_specified_name14875:%D!

_user_specified_name14877:%E!

_user_specified_name14879:%F!

_user_specified_name14881:%G!

_user_specified_name14883:%H!

_user_specified_name14922:%I!

_user_specified_name14924:%J!

_user_specified_name14942:%K!

_user_specified_name14944:%L!

_user_specified_name14983:%M!

_user_specified_name14985:%N!

_user_specified_name14999:%O!

_user_specified_name15001:%P!

_user_specified_name15014:%Q!

_user_specified_name15016
�
V
:__inference_global_average_pooling1d_2_layer_call_fn_17692

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
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_14228i
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
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_14594

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
Q__inference_layer_normalization_20_layer_call_and_return_conditional_losses_16580

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
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_16549	
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
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_14272	
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
Q__inference_layer_normalization_24_layer_call_and_return_conditional_losses_17003

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
7__inference_multi_head_attention_13_layer_call_fn_16706	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_15134j
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

_user_specified_namevalue:%!

_user_specified_name16688:%!

_user_specified_name16690:%!

_user_specified_name16692:%!

_user_specified_name16694:%!

_user_specified_name16696:%!

_user_specified_name16698:%!

_user_specified_name16700:%	!

_user_specified_name16702
�+
�
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_14526	
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
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_16776	
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

d
E__inference_dropout_12_layer_call_and_return_conditional_losses_14349

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
6__inference_layer_normalization_28_layer_call_fn_17583

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_28_layer_call_and_return_conditional_losses_14921j
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
 
_user_specified_nameinputs:%!

_user_specified_name17577:%!

_user_specified_name17579
�
c
*__inference_dropout_15_layer_call_fn_17349

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
GPU 2J 8� *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_14724j
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
C__inference_dense_15_layer_call_and_return_conditional_losses_17629

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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_17547	
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
c
E__inference_dropout_12_layer_call_and_return_conditional_losses_15092

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
Q__inference_layer_normalization_27_layer_call_and_return_conditional_losses_17402

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
6__inference_layer_normalization_25_layer_call_fn_17184

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_25_layer_call_and_return_conditional_losses_14687j
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
 
_user_specified_nameinputs:%!

_user_specified_name17178:%!

_user_specified_name17180
�
c
*__inference_dropout_12_layer_call_fn_16609

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
GPU 2J 8� *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_14349j
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
C__inference_dense_14_layer_call_and_return_conditional_losses_14707

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
C__inference_dense_12_layer_call_and_return_conditional_losses_16604

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

d
E__inference_dropout_14_layer_call_and_return_conditional_losses_14663

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
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_17034

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
6__inference_layer_normalization_24_layer_call_fn_16981

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_24_layer_call_and_return_conditional_losses_14567j
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
 
_user_specified_nameinputs:%!

_user_specified_name16975:%!

_user_specified_name16977
ρ
�:
!__inference__traced_restore_18488
file_prefix;
-assignvariableop_layer_normalization_20_gamma:<
.assignvariableop_1_layer_normalization_20_beta:4
"assignvariableop_2_dense_12_kernel:.
 assignvariableop_3_dense_12_bias:=
/assignvariableop_4_layer_normalization_21_gamma:<
.assignvariableop_5_layer_normalization_21_beta:=
/assignvariableop_6_layer_normalization_22_gamma:<
.assignvariableop_7_layer_normalization_22_beta:4
"assignvariableop_8_dense_13_kernel:.
 assignvariableop_9_dense_13_bias:>
0assignvariableop_10_layer_normalization_24_gamma:=
/assignvariableop_11_layer_normalization_24_beta:>
0assignvariableop_12_layer_normalization_23_gamma:=
/assignvariableop_13_layer_normalization_23_beta:>
0assignvariableop_14_layer_normalization_25_gamma:=
/assignvariableop_15_layer_normalization_25_beta:5
#assignvariableop_16_dense_14_kernel:/
!assignvariableop_17_dense_14_bias:>
0assignvariableop_18_layer_normalization_27_gamma:=
/assignvariableop_19_layer_normalization_27_beta:>
0assignvariableop_20_layer_normalization_26_gamma:=
/assignvariableop_21_layer_normalization_26_beta:>
0assignvariableop_22_layer_normalization_28_gamma:=
/assignvariableop_23_layer_normalization_28_beta:5
#assignvariableop_24_dense_15_kernel:/
!assignvariableop_25_dense_15_bias:>
0assignvariableop_26_layer_normalization_29_gamma:=
/assignvariableop_27_layer_normalization_29_beta:5
#assignvariableop_28_dense_16_kernel: /
!assignvariableop_29_dense_16_bias: 5
#assignvariableop_30_dense_17_kernel: /
!assignvariableop_31_dense_17_bias:N
8assignvariableop_32_multi_head_attention_12_query_kernel:H
6assignvariableop_33_multi_head_attention_12_query_bias:L
6assignvariableop_34_multi_head_attention_12_key_kernel:F
4assignvariableop_35_multi_head_attention_12_key_bias:N
8assignvariableop_36_multi_head_attention_12_value_kernel:H
6assignvariableop_37_multi_head_attention_12_value_bias:Y
Cassignvariableop_38_multi_head_attention_12_attention_output_kernel:O
Aassignvariableop_39_multi_head_attention_12_attention_output_bias:N
8assignvariableop_40_multi_head_attention_13_query_kernel:H
6assignvariableop_41_multi_head_attention_13_query_bias:L
6assignvariableop_42_multi_head_attention_13_key_kernel:F
4assignvariableop_43_multi_head_attention_13_key_bias:N
8assignvariableop_44_multi_head_attention_13_value_kernel:H
6assignvariableop_45_multi_head_attention_13_value_bias:Y
Cassignvariableop_46_multi_head_attention_13_attention_output_kernel:O
Aassignvariableop_47_multi_head_attention_13_attention_output_bias:N
8assignvariableop_48_multi_head_attention_14_query_kernel:H
6assignvariableop_49_multi_head_attention_14_query_bias:L
6assignvariableop_50_multi_head_attention_14_key_kernel:F
4assignvariableop_51_multi_head_attention_14_key_bias:N
8assignvariableop_52_multi_head_attention_14_value_kernel:H
6assignvariableop_53_multi_head_attention_14_value_bias:Y
Cassignvariableop_54_multi_head_attention_14_attention_output_kernel:O
Aassignvariableop_55_multi_head_attention_14_attention_output_bias:N
8assignvariableop_56_multi_head_attention_15_query_kernel:H
6assignvariableop_57_multi_head_attention_15_query_bias:L
6assignvariableop_58_multi_head_attention_15_key_kernel:F
4assignvariableop_59_multi_head_attention_15_key_bias:N
8assignvariableop_60_multi_head_attention_15_value_kernel:H
6assignvariableop_61_multi_head_attention_15_value_bias:Y
Cassignvariableop_62_multi_head_attention_15_attention_output_kernel:O
Aassignvariableop_63_multi_head_attention_15_attention_output_bias:N
8assignvariableop_64_multi_head_attention_16_query_kernel:H
6assignvariableop_65_multi_head_attention_16_query_bias:L
6assignvariableop_66_multi_head_attention_16_key_kernel:F
4assignvariableop_67_multi_head_attention_16_key_bias:N
8assignvariableop_68_multi_head_attention_16_value_kernel:H
6assignvariableop_69_multi_head_attention_16_value_bias:Y
Cassignvariableop_70_multi_head_attention_16_attention_output_kernel:O
Aassignvariableop_71_multi_head_attention_16_attention_output_bias:N
8assignvariableop_72_multi_head_attention_17_query_kernel:H
6assignvariableop_73_multi_head_attention_17_query_bias:L
6assignvariableop_74_multi_head_attention_17_key_kernel:F
4assignvariableop_75_multi_head_attention_17_key_bias:N
8assignvariableop_76_multi_head_attention_17_value_kernel:H
6assignvariableop_77_multi_head_attention_17_value_bias:Y
Cassignvariableop_78_multi_head_attention_17_attention_output_kernel:O
Aassignvariableop_79_multi_head_attention_17_attention_output_bias:
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
AssignVariableOpAssignVariableOp-assignvariableop_layer_normalization_20_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp.assignvariableop_1_layer_normalization_20_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_12_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_12_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp/assignvariableop_4_layer_normalization_21_gammaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp.assignvariableop_5_layer_normalization_21_betaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_layer_normalization_22_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_layer_normalization_22_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_13_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_13_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp0assignvariableop_10_layer_normalization_24_gammaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_layer_normalization_24_betaIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_layer_normalization_23_gammaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_layer_normalization_23_betaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_layer_normalization_25_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_layer_normalization_25_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_14_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_14_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp0assignvariableop_18_layer_normalization_27_gammaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_layer_normalization_27_betaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_layer_normalization_26_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_layer_normalization_26_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_layer_normalization_28_gammaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_layer_normalization_28_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_15_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_15_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_layer_normalization_29_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_layer_normalization_29_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_16_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_16_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_17_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_17_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp8assignvariableop_32_multi_head_attention_12_query_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_multi_head_attention_12_query_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_multi_head_attention_12_key_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp4assignvariableop_35_multi_head_attention_12_key_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp8assignvariableop_36_multi_head_attention_12_value_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_multi_head_attention_12_value_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpCassignvariableop_38_multi_head_attention_12_attention_output_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpAassignvariableop_39_multi_head_attention_12_attention_output_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp8assignvariableop_40_multi_head_attention_13_query_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp6assignvariableop_41_multi_head_attention_13_query_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp6assignvariableop_42_multi_head_attention_13_key_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp4assignvariableop_43_multi_head_attention_13_key_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp8assignvariableop_44_multi_head_attention_13_value_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp6assignvariableop_45_multi_head_attention_13_value_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpCassignvariableop_46_multi_head_attention_13_attention_output_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpAassignvariableop_47_multi_head_attention_13_attention_output_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp8assignvariableop_48_multi_head_attention_14_query_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp6assignvariableop_49_multi_head_attention_14_query_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp6assignvariableop_50_multi_head_attention_14_key_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp4assignvariableop_51_multi_head_attention_14_key_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp8assignvariableop_52_multi_head_attention_14_value_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp6assignvariableop_53_multi_head_attention_14_value_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpCassignvariableop_54_multi_head_attention_14_attention_output_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpAassignvariableop_55_multi_head_attention_14_attention_output_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp8assignvariableop_56_multi_head_attention_15_query_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp6assignvariableop_57_multi_head_attention_15_query_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp6assignvariableop_58_multi_head_attention_15_key_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp4assignvariableop_59_multi_head_attention_15_key_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp8assignvariableop_60_multi_head_attention_15_value_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp6assignvariableop_61_multi_head_attention_15_value_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpCassignvariableop_62_multi_head_attention_15_attention_output_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOpAassignvariableop_63_multi_head_attention_15_attention_output_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp8assignvariableop_64_multi_head_attention_16_query_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp6assignvariableop_65_multi_head_attention_16_query_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp6assignvariableop_66_multi_head_attention_16_key_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp4assignvariableop_67_multi_head_attention_16_key_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp8assignvariableop_68_multi_head_attention_16_value_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp6assignvariableop_69_multi_head_attention_16_value_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpCassignvariableop_70_multi_head_attention_16_attention_output_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpAassignvariableop_71_multi_head_attention_16_attention_output_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp8assignvariableop_72_multi_head_attention_17_query_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp6assignvariableop_73_multi_head_attention_17_query_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp6assignvariableop_74_multi_head_attention_17_key_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp4assignvariableop_75_multi_head_attention_17_key_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp8assignvariableop_76_multi_head_attention_17_value_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp6assignvariableop_77_multi_head_attention_17_value_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpCassignvariableop_78_multi_head_attention_17_attention_output_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpAassignvariableop_79_multi_head_attention_17_attention_output_biasIdentity_79:output:0"/device:CPU:0*&
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
_user_specified_namelayer_normalization_20/gamma:;7
5
_user_specified_namelayer_normalization_20/beta:/+
)
_user_specified_namedense_12/kernel:-)
'
_user_specified_namedense_12/bias:<8
6
_user_specified_namelayer_normalization_21/gamma:;7
5
_user_specified_namelayer_normalization_21/beta:<8
6
_user_specified_namelayer_normalization_22/gamma:;7
5
_user_specified_namelayer_normalization_22/beta:/	+
)
_user_specified_namedense_13/kernel:-
)
'
_user_specified_namedense_13/bias:<8
6
_user_specified_namelayer_normalization_24/gamma:;7
5
_user_specified_namelayer_normalization_24/beta:<8
6
_user_specified_namelayer_normalization_23/gamma:;7
5
_user_specified_namelayer_normalization_23/beta:<8
6
_user_specified_namelayer_normalization_25/gamma:;7
5
_user_specified_namelayer_normalization_25/beta:/+
)
_user_specified_namedense_14/kernel:-)
'
_user_specified_namedense_14/bias:<8
6
_user_specified_namelayer_normalization_27/gamma:;7
5
_user_specified_namelayer_normalization_27/beta:<8
6
_user_specified_namelayer_normalization_26/gamma:;7
5
_user_specified_namelayer_normalization_26/beta:<8
6
_user_specified_namelayer_normalization_28/gamma:;7
5
_user_specified_namelayer_normalization_28/beta:/+
)
_user_specified_namedense_15/kernel:-)
'
_user_specified_namedense_15/bias:<8
6
_user_specified_namelayer_normalization_29/gamma:;7
5
_user_specified_namelayer_normalization_29/beta:/+
)
_user_specified_namedense_16/kernel:-)
'
_user_specified_namedense_16/bias:/+
)
_user_specified_namedense_17/kernel:- )
'
_user_specified_namedense_17/bias:D!@
>
_user_specified_name&$multi_head_attention_12/query/kernel:B">
<
_user_specified_name$"multi_head_attention_12/query/bias:B#>
<
_user_specified_name$"multi_head_attention_12/key/kernel:@$<
:
_user_specified_name" multi_head_attention_12/key/bias:D%@
>
_user_specified_name&$multi_head_attention_12/value/kernel:B&>
<
_user_specified_name$"multi_head_attention_12/value/bias:O'K
I
_user_specified_name1/multi_head_attention_12/attention_output/kernel:M(I
G
_user_specified_name/-multi_head_attention_12/attention_output/bias:D)@
>
_user_specified_name&$multi_head_attention_13/query/kernel:B*>
<
_user_specified_name$"multi_head_attention_13/query/bias:B+>
<
_user_specified_name$"multi_head_attention_13/key/kernel:@,<
:
_user_specified_name" multi_head_attention_13/key/bias:D-@
>
_user_specified_name&$multi_head_attention_13/value/kernel:B.>
<
_user_specified_name$"multi_head_attention_13/value/bias:O/K
I
_user_specified_name1/multi_head_attention_13/attention_output/kernel:M0I
G
_user_specified_name/-multi_head_attention_13/attention_output/bias:D1@
>
_user_specified_name&$multi_head_attention_14/query/kernel:B2>
<
_user_specified_name$"multi_head_attention_14/query/bias:B3>
<
_user_specified_name$"multi_head_attention_14/key/kernel:@4<
:
_user_specified_name" multi_head_attention_14/key/bias:D5@
>
_user_specified_name&$multi_head_attention_14/value/kernel:B6>
<
_user_specified_name$"multi_head_attention_14/value/bias:O7K
I
_user_specified_name1/multi_head_attention_14/attention_output/kernel:M8I
G
_user_specified_name/-multi_head_attention_14/attention_output/bias:D9@
>
_user_specified_name&$multi_head_attention_15/query/kernel:B:>
<
_user_specified_name$"multi_head_attention_15/query/bias:B;>
<
_user_specified_name$"multi_head_attention_15/key/kernel:@<<
:
_user_specified_name" multi_head_attention_15/key/bias:D=@
>
_user_specified_name&$multi_head_attention_15/value/kernel:B>>
<
_user_specified_name$"multi_head_attention_15/value/bias:O?K
I
_user_specified_name1/multi_head_attention_15/attention_output/kernel:M@I
G
_user_specified_name/-multi_head_attention_15/attention_output/bias:DA@
>
_user_specified_name&$multi_head_attention_16/query/kernel:BB>
<
_user_specified_name$"multi_head_attention_16/query/bias:BC>
<
_user_specified_name$"multi_head_attention_16/key/kernel:@D<
:
_user_specified_name" multi_head_attention_16/key/bias:DE@
>
_user_specified_name&$multi_head_attention_16/value/kernel:BF>
<
_user_specified_name$"multi_head_attention_16/value/bias:OGK
I
_user_specified_name1/multi_head_attention_16/attention_output/kernel:MHI
G
_user_specified_name/-multi_head_attention_16/attention_output/bias:DI@
>
_user_specified_name&$multi_head_attention_17/query/kernel:BJ>
<
_user_specified_name$"multi_head_attention_17/query/bias:BK>
<
_user_specified_name$"multi_head_attention_17/key/kernel:@L<
:
_user_specified_name" multi_head_attention_17/key/bias:DM@
>
_user_specified_name&$multi_head_attention_17/value/kernel:BN>
<
_user_specified_name$"multi_head_attention_17/value/bias:OOK
I
_user_specified_name1/multi_head_attention_17/attention_output/kernel:MPI
G
_user_specified_name/-multi_head_attention_17/attention_output/bias
�
�
C__inference_dense_15_layer_call_and_return_conditional_losses_14941

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
Q__inference_layer_normalization_28_layer_call_and_return_conditional_losses_14921

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
c
E__inference_dropout_13_layer_call_and_return_conditional_losses_16972

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
C__inference_dense_12_layer_call_and_return_conditional_losses_14332

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
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_17309	
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
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_16910	
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
(__inference_dense_16_layer_call_fn_17707

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
GPU 2J 8� *L
fGRE
C__inference_dense_16_layer_call_and_return_conditional_losses_14998f
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
 
_user_specified_nameinputs:%!

_user_specified_name17701:%!

_user_specified_name17703
�+
�
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_16514	
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
Q__inference_layer_normalization_25_layer_call_and_return_conditional_losses_17206

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
7__inference_multi_head_attention_17_layer_call_fn_17455	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_14868j
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

_user_specified_namevalue:%!

_user_specified_name17437:%!

_user_specified_name17439:%!

_user_specified_name17441:%!

_user_specified_name17443:%!

_user_specified_name17445:%!

_user_specified_name17447:%!

_user_specified_name17449:%	!

_user_specified_name17451
�
�
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_16807

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
F
*__inference_dropout_15_layer_call_fn_17354

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
GPU 2J 8� *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_15306[
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
7__inference_multi_head_attention_15_layer_call_fn_17056	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_14634j
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

_user_specified_namevalue:%!

_user_specified_name17038:%!

_user_specified_name17040:%!

_user_specified_name17042:%!

_user_specified_name17044:%!

_user_specified_name17046:%!

_user_specified_name17048:%!

_user_specified_name17050:%	!

_user_specified_name17052
�+
�
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_17148	
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
6__inference_layer_normalization_27_layer_call_fn_17380

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_27_layer_call_and_return_conditional_losses_14801j
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
 
_user_specified_nameinputs:%!

_user_specified_name17374:%!

_user_specified_name17376
�
�
Q__inference_layer_normalization_21_layer_call_and_return_conditional_losses_16662

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
Q__inference_layer_normalization_26_layer_call_and_return_conditional_losses_17433

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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_17512	
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
(__inference_dense_12_layer_call_fn_16589

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
GPU 2J 8� *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_14332j
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
 
_user_specified_nameinputs:%!

_user_specified_name16583:%!

_user_specified_name16585
�
c
E__inference_dropout_14_layer_call_and_return_conditional_losses_17175

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
C__inference_dense_13_layer_call_and_return_conditional_losses_16831

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
F
*__inference_dropout_16_layer_call_fn_17557

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
GPU 2J 8� *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_15428[
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
c
*__inference_dropout_14_layer_call_fn_17153

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
GPU 2J 8� *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_14663j
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
�;
�
'__inference_model_2_layer_call_fn_15632
input_3
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
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_15020f
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
_user_specified_name	input_3:EA

_output_shapes

:

_user_specified_name15468:%!

_user_specified_name15470:%!

_user_specified_name15472:%!

_user_specified_name15474:%!

_user_specified_name15476:%!

_user_specified_name15478:%!

_user_specified_name15480:%!

_user_specified_name15482:%	!

_user_specified_name15484:%
!

_user_specified_name15486:%!

_user_specified_name15488:%!

_user_specified_name15490:%!

_user_specified_name15492:%!

_user_specified_name15494:%!

_user_specified_name15496:%!

_user_specified_name15498:%!

_user_specified_name15500:%!

_user_specified_name15502:%!

_user_specified_name15504:%!

_user_specified_name15506:%!

_user_specified_name15508:%!

_user_specified_name15510:%!

_user_specified_name15512:%!

_user_specified_name15514:%!

_user_specified_name15516:%!

_user_specified_name15518:%!

_user_specified_name15520:%!

_user_specified_name15522:%!

_user_specified_name15524:%!

_user_specified_name15526:%!

_user_specified_name15528:% !

_user_specified_name15530:%!!

_user_specified_name15532:%"!

_user_specified_name15534:%#!

_user_specified_name15536:%$!

_user_specified_name15538:%%!

_user_specified_name15540:%&!

_user_specified_name15542:%'!

_user_specified_name15544:%(!

_user_specified_name15546:%)!

_user_specified_name15548:%*!

_user_specified_name15550:%+!

_user_specified_name15552:%,!

_user_specified_name15554:%-!

_user_specified_name15556:%.!

_user_specified_name15558:%/!

_user_specified_name15560:%0!

_user_specified_name15562:%1!

_user_specified_name15564:%2!

_user_specified_name15566:%3!

_user_specified_name15568:%4!

_user_specified_name15570:%5!

_user_specified_name15572:%6!

_user_specified_name15574:%7!

_user_specified_name15576:%8!

_user_specified_name15578:%9!

_user_specified_name15580:%:!

_user_specified_name15582:%;!

_user_specified_name15584:%<!

_user_specified_name15586:%=!

_user_specified_name15588:%>!

_user_specified_name15590:%?!

_user_specified_name15592:%@!

_user_specified_name15594:%A!

_user_specified_name15596:%B!

_user_specified_name15598:%C!

_user_specified_name15600:%D!

_user_specified_name15602:%E!

_user_specified_name15604:%F!

_user_specified_name15606:%G!

_user_specified_name15608:%H!

_user_specified_name15610:%I!

_user_specified_name15612:%J!

_user_specified_name15614:%K!

_user_specified_name15616:%L!

_user_specified_name15618:%M!

_user_specified_name15620:%N!

_user_specified_name15622:%O!

_user_specified_name15624:%P!

_user_specified_name15626:%Q!

_user_specified_name15628
�	
�
C__inference_dense_16_layer_call_and_return_conditional_losses_17717

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
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_17344	
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
7__inference_multi_head_attention_14_layer_call_fn_16853	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_14526j
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

_user_specified_namevalue:%!

_user_specified_name16835:%!

_user_specified_name16837:%!

_user_specified_name16839:%!

_user_specified_name16841:%!

_user_specified_name16843:%!

_user_specified_name16845:%!

_user_specified_name16847:%	!

_user_specified_name16849
�
�
Q__inference_layer_normalization_26_layer_call_and_return_conditional_losses_14828

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
6__inference_layer_normalization_29_layer_call_fn_17665

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_29_layer_call_and_return_conditional_losses_14982j
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
 
_user_specified_nameinputs:%!

_user_specified_name17659:%!

_user_specified_name17661
�
�
(__inference_dense_17_layer_call_fn_17726

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
GPU 2J 8� *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_15013f
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
 
_user_specified_nameinputs:%!

_user_specified_name17720:%!

_user_specified_name17722
�+
�
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_17113	
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
(__inference_dense_13_layer_call_fn_16816

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
GPU 2J 8� *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_14473j
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
 
_user_specified_nameinputs:%!

_user_specified_name16810:%!

_user_specified_name16812
�
c
*__inference_dropout_13_layer_call_fn_16950

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
GPU 2J 8� *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_14490j
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
��
�%
B__inference_model_2_layer_call_and_return_conditional_losses_15465
input_3#
tf___operators___add_22_addv2_y3
multi_head_attention_12_15060:/
multi_head_attention_12_15062:3
multi_head_attention_12_15064:/
multi_head_attention_12_15066:3
multi_head_attention_12_15068:/
multi_head_attention_12_15070:3
multi_head_attention_12_15072:+
multi_head_attention_12_15074:*
layer_normalization_20_15078:*
layer_normalization_20_15080: 
dense_12_15083:
dense_12_15085:*
layer_normalization_21_15095:*
layer_normalization_21_15097:3
multi_head_attention_13_15135:/
multi_head_attention_13_15137:3
multi_head_attention_13_15139:/
multi_head_attention_13_15141:3
multi_head_attention_13_15143:/
multi_head_attention_13_15145:3
multi_head_attention_13_15147:+
multi_head_attention_13_15149:*
layer_normalization_22_15153:*
layer_normalization_22_15155: 
dense_13_15158:
dense_13_15160:3
multi_head_attention_14_15204:/
multi_head_attention_14_15206:3
multi_head_attention_14_15208:/
multi_head_attention_14_15210:3
multi_head_attention_14_15212:/
multi_head_attention_14_15214:3
multi_head_attention_14_15216:+
multi_head_attention_14_15218:*
layer_normalization_24_15223:*
layer_normalization_24_15225:*
layer_normalization_23_15228:*
layer_normalization_23_15230:3
multi_head_attention_15_15268:/
multi_head_attention_15_15270:3
multi_head_attention_15_15272:/
multi_head_attention_15_15274:3
multi_head_attention_15_15276:/
multi_head_attention_15_15278:3
multi_head_attention_15_15280:+
multi_head_attention_15_15282:*
layer_normalization_25_15292:*
layer_normalization_25_15294: 
dense_14_15297:
dense_14_15299:3
multi_head_attention_16_15343:/
multi_head_attention_16_15345:3
multi_head_attention_16_15347:/
multi_head_attention_16_15349:3
multi_head_attention_16_15351:/
multi_head_attention_16_15353:3
multi_head_attention_16_15355:+
multi_head_attention_16_15357:*
layer_normalization_27_15362:*
layer_normalization_27_15364:*
layer_normalization_26_15367:*
layer_normalization_26_15369:3
multi_head_attention_17_15407:/
multi_head_attention_17_15409:3
multi_head_attention_17_15411:/
multi_head_attention_17_15413:3
multi_head_attention_17_15415:/
multi_head_attention_17_15417:3
multi_head_attention_17_15419:+
multi_head_attention_17_15421:*
layer_normalization_28_15431:*
layer_normalization_28_15433: 
dense_15_15436:
dense_15_15438:*
layer_normalization_29_15448:*
layer_normalization_29_15450: 
dense_16_15454: 
dense_16_15456:  
dense_17_15459: 
dense_17_15461:
identity�� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall� dense_14/StatefulPartitionedCall� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall�.layer_normalization_20/StatefulPartitionedCall�.layer_normalization_21/StatefulPartitionedCall�.layer_normalization_22/StatefulPartitionedCall�.layer_normalization_23/StatefulPartitionedCall�.layer_normalization_24/StatefulPartitionedCall�.layer_normalization_25/StatefulPartitionedCall�.layer_normalization_26/StatefulPartitionedCall�.layer_normalization_27/StatefulPartitionedCall�.layer_normalization_28/StatefulPartitionedCall�.layer_normalization_29/StatefulPartitionedCall�/multi_head_attention_12/StatefulPartitionedCall�/multi_head_attention_13/StatefulPartitionedCall�/multi_head_attention_14/StatefulPartitionedCall�/multi_head_attention_15/StatefulPartitionedCall�/multi_head_attention_16/StatefulPartitionedCall�/multi_head_attention_17/StatefulPartitionedCall}
tf.__operators__.add_22/AddV2AddV2input_3tf___operators___add_22_addv2_y*
T0*"
_output_shapes
:�
/multi_head_attention_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_22/AddV2:z:0!tf.__operators__.add_22/AddV2:z:0multi_head_attention_12_15060multi_head_attention_12_15062multi_head_attention_12_15064multi_head_attention_12_15066multi_head_attention_12_15068multi_head_attention_12_15070multi_head_attention_12_15072multi_head_attention_12_15074*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_15059�
tf.__operators__.add_23/AddV2AddV2!tf.__operators__.add_22/AddV2:z:08multi_head_attention_12/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_23/AddV2:z:0layer_normalization_20_15078layer_normalization_20_15080*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_20_layer_call_and_return_conditional_losses_14312�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_20/StatefulPartitionedCall:output:0dense_12_15083dense_12_15085*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_14332�
dropout_12/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_15092�
tf.__operators__.add_24/AddV2AddV27layer_normalization_20/StatefulPartitionedCall:output:0#dropout_12/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_24/AddV2:z:0layer_normalization_21_15095layer_normalization_21_15097*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_21_layer_call_and_return_conditional_losses_14373�
/multi_head_attention_13/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_21/StatefulPartitionedCall:output:07layer_normalization_21/StatefulPartitionedCall:output:0multi_head_attention_13_15135multi_head_attention_13_15137multi_head_attention_13_15139multi_head_attention_13_15141multi_head_attention_13_15143multi_head_attention_13_15145multi_head_attention_13_15147multi_head_attention_13_15149*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_15134�
tf.__operators__.add_25/AddV2AddV27layer_normalization_21/StatefulPartitionedCall:output:08multi_head_attention_13/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_25/AddV2:z:0layer_normalization_22_15153layer_normalization_22_15155*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_14453�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:0dense_13_15158dense_13_15160*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_14473�
dropout_13/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_15167�
/multi_head_attention_14/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_22/AddV2:z:0!tf.__operators__.add_22/AddV2:z:0multi_head_attention_14_15204multi_head_attention_14_15206multi_head_attention_14_15208multi_head_attention_14_15210multi_head_attention_14_15212multi_head_attention_14_15214multi_head_attention_14_15216multi_head_attention_14_15218*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_15203�
tf.__operators__.add_26/AddV2AddV27layer_normalization_22/StatefulPartitionedCall:output:0#dropout_13/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_27/AddV2AddV2!tf.__operators__.add_22/AddV2:z:08multi_head_attention_14/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_24/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0layer_normalization_24_15223layer_normalization_24_15225*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_24_layer_call_and_return_conditional_losses_14567�
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_26/AddV2:z:0layer_normalization_23_15228layer_normalization_23_15230*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_14594�
/multi_head_attention_15/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_24/StatefulPartitionedCall:output:07layer_normalization_23/StatefulPartitionedCall:output:0multi_head_attention_15_15268multi_head_attention_15_15270multi_head_attention_15_15272multi_head_attention_15_15274multi_head_attention_15_15276multi_head_attention_15_15278multi_head_attention_15_15280multi_head_attention_15_15282*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_15267�
dropout_14/PartitionedCallPartitionedCall8multi_head_attention_15/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_15289�
tf.__operators__.add_28/AddV2AddV27layer_normalization_24/StatefulPartitionedCall:output:0#dropout_14/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_25/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_28/AddV2:z:0layer_normalization_25_15292layer_normalization_25_15294*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_25_layer_call_and_return_conditional_losses_14687�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_25/StatefulPartitionedCall:output:0dense_14_15297dense_14_15299*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_14707�
dropout_15/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_15306�
/multi_head_attention_16/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_22/AddV2:z:0!tf.__operators__.add_22/AddV2:z:0multi_head_attention_16_15343multi_head_attention_16_15345multi_head_attention_16_15347multi_head_attention_16_15349multi_head_attention_16_15351multi_head_attention_16_15353multi_head_attention_16_15355multi_head_attention_16_15357*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_15342�
tf.__operators__.add_29/AddV2AddV27layer_normalization_25/StatefulPartitionedCall:output:0#dropout_15/PartitionedCall:output:0*
T0*"
_output_shapes
:�
tf.__operators__.add_30/AddV2AddV2!tf.__operators__.add_22/AddV2:z:08multi_head_attention_16/StatefulPartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_27/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_30/AddV2:z:0layer_normalization_27_15362layer_normalization_27_15364*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_27_layer_call_and_return_conditional_losses_14801�
.layer_normalization_26/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0layer_normalization_26_15367layer_normalization_26_15369*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_26_layer_call_and_return_conditional_losses_14828�
/multi_head_attention_17/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_27/StatefulPartitionedCall:output:07layer_normalization_26/StatefulPartitionedCall:output:0multi_head_attention_17_15407multi_head_attention_17_15409multi_head_attention_17_15411multi_head_attention_17_15413multi_head_attention_17_15415multi_head_attention_17_15417multi_head_attention_17_15419multi_head_attention_17_15421*
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_15406�
dropout_16/PartitionedCallPartitionedCall8multi_head_attention_17/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_15428�
tf.__operators__.add_31/AddV2AddV27layer_normalization_27/StatefulPartitionedCall:output:0#dropout_16/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_28/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0layer_normalization_28_15431layer_normalization_28_15433*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_28_layer_call_and_return_conditional_losses_14921�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_28/StatefulPartitionedCall:output:0dense_15_15436dense_15_15438*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_14941�
dropout_17/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_15445�
tf.__operators__.add_32/AddV2AddV27layer_normalization_28/StatefulPartitionedCall:output:0#dropout_17/PartitionedCall:output:0*
T0*"
_output_shapes
:�
.layer_normalization_29/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_32/AddV2:z:0layer_normalization_29_15448layer_normalization_29_15450*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_29_layer_call_and_return_conditional_losses_14982�
*global_average_pooling1d_2/PartitionedCallPartitionedCall7layer_normalization_29/StatefulPartitionedCall:output:0*
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
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_14228�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0dense_16_15454dense_16_15456*
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
GPU 2J 8� *L
fGRE
C__inference_dense_16_layer_call_and_return_conditional_losses_14998�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_15459dense_17_15461*
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
GPU 2J 8� *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_15013o
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall/^layer_normalization_20/StatefulPartitionedCall/^layer_normalization_21/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall/^layer_normalization_24/StatefulPartitionedCall/^layer_normalization_25/StatefulPartitionedCall/^layer_normalization_26/StatefulPartitionedCall/^layer_normalization_27/StatefulPartitionedCall/^layer_normalization_28/StatefulPartitionedCall/^layer_normalization_29/StatefulPartitionedCall0^multi_head_attention_12/StatefulPartitionedCall0^multi_head_attention_13/StatefulPartitionedCall0^multi_head_attention_14/StatefulPartitionedCall0^multi_head_attention_15/StatefulPartitionedCall0^multi_head_attention_16/StatefulPartitionedCall0^multi_head_attention_17/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2`
.layer_normalization_20/StatefulPartitionedCall.layer_normalization_20/StatefulPartitionedCall2`
.layer_normalization_21/StatefulPartitionedCall.layer_normalization_21/StatefulPartitionedCall2`
.layer_normalization_22/StatefulPartitionedCall.layer_normalization_22/StatefulPartitionedCall2`
.layer_normalization_23/StatefulPartitionedCall.layer_normalization_23/StatefulPartitionedCall2`
.layer_normalization_24/StatefulPartitionedCall.layer_normalization_24/StatefulPartitionedCall2`
.layer_normalization_25/StatefulPartitionedCall.layer_normalization_25/StatefulPartitionedCall2`
.layer_normalization_26/StatefulPartitionedCall.layer_normalization_26/StatefulPartitionedCall2`
.layer_normalization_27/StatefulPartitionedCall.layer_normalization_27/StatefulPartitionedCall2`
.layer_normalization_28/StatefulPartitionedCall.layer_normalization_28/StatefulPartitionedCall2`
.layer_normalization_29/StatefulPartitionedCall.layer_normalization_29/StatefulPartitionedCall2b
/multi_head_attention_12/StatefulPartitionedCall/multi_head_attention_12/StatefulPartitionedCall2b
/multi_head_attention_13/StatefulPartitionedCall/multi_head_attention_13/StatefulPartitionedCall2b
/multi_head_attention_14/StatefulPartitionedCall/multi_head_attention_14/StatefulPartitionedCall2b
/multi_head_attention_15/StatefulPartitionedCall/multi_head_attention_15/StatefulPartitionedCall2b
/multi_head_attention_16/StatefulPartitionedCall/multi_head_attention_16/StatefulPartitionedCall2b
/multi_head_attention_17/StatefulPartitionedCall/multi_head_attention_17/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_3:A=

_output_shapes

:

_user_specified_namey:%!

_user_specified_name15060:%!

_user_specified_name15062:%!

_user_specified_name15064:%!

_user_specified_name15066:%!

_user_specified_name15068:%!

_user_specified_name15070:%!

_user_specified_name15072:%	!

_user_specified_name15074:%
!

_user_specified_name15078:%!

_user_specified_name15080:%!

_user_specified_name15083:%!

_user_specified_name15085:%!

_user_specified_name15095:%!

_user_specified_name15097:%!

_user_specified_name15135:%!

_user_specified_name15137:%!

_user_specified_name15139:%!

_user_specified_name15141:%!

_user_specified_name15143:%!

_user_specified_name15145:%!

_user_specified_name15147:%!

_user_specified_name15149:%!

_user_specified_name15153:%!

_user_specified_name15155:%!

_user_specified_name15158:%!

_user_specified_name15160:%!

_user_specified_name15204:%!

_user_specified_name15206:%!

_user_specified_name15208:%!

_user_specified_name15210:% !

_user_specified_name15212:%!!

_user_specified_name15214:%"!

_user_specified_name15216:%#!

_user_specified_name15218:%$!

_user_specified_name15223:%%!

_user_specified_name15225:%&!

_user_specified_name15228:%'!

_user_specified_name15230:%(!

_user_specified_name15268:%)!

_user_specified_name15270:%*!

_user_specified_name15272:%+!

_user_specified_name15274:%,!

_user_specified_name15276:%-!

_user_specified_name15278:%.!

_user_specified_name15280:%/!

_user_specified_name15282:%0!

_user_specified_name15292:%1!

_user_specified_name15294:%2!

_user_specified_name15297:%3!

_user_specified_name15299:%4!

_user_specified_name15343:%5!

_user_specified_name15345:%6!

_user_specified_name15347:%7!

_user_specified_name15349:%8!

_user_specified_name15351:%9!

_user_specified_name15353:%:!

_user_specified_name15355:%;!

_user_specified_name15357:%<!

_user_specified_name15362:%=!

_user_specified_name15364:%>!

_user_specified_name15367:%?!

_user_specified_name15369:%@!

_user_specified_name15407:%A!

_user_specified_name15409:%B!

_user_specified_name15411:%C!

_user_specified_name15413:%D!

_user_specified_name15415:%E!

_user_specified_name15417:%F!

_user_specified_name15419:%G!

_user_specified_name15421:%H!

_user_specified_name15431:%I!

_user_specified_name15433:%J!

_user_specified_name15436:%K!

_user_specified_name15438:%L!

_user_specified_name15448:%M!

_user_specified_name15450:%N!

_user_specified_name15454:%O!

_user_specified_name15456:%P!

_user_specified_name15459:%Q!

_user_specified_name15461
�
�
7__inference_multi_head_attention_16_layer_call_fn_17274	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_15342j
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

_user_specified_namevalue:%!

_user_specified_name17256:%!

_user_specified_name17258:%!

_user_specified_name17260:%!

_user_specified_name17262:%!

_user_specified_name17264:%!

_user_specified_name17266:%!

_user_specified_name17268:%	!

_user_specified_name17270
�
c
*__inference_dropout_17_layer_call_fn_17634

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
GPU 2J 8� *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_14958j
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
7__inference_multi_head_attention_17_layer_call_fn_17477	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_15406j
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

_user_specified_namevalue:%!

_user_specified_name17459:%!

_user_specified_name17461:%!

_user_specified_name17463:%!

_user_specified_name17465:%!

_user_specified_name17467:%!

_user_specified_name17469:%!

_user_specified_name17471:%	!

_user_specified_name17473
�

d
E__inference_dropout_17_layer_call_and_return_conditional_losses_14958

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
c
E__inference_dropout_17_layer_call_and_return_conditional_losses_17656

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
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_14760	
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
�;
�
'__inference_model_2_layer_call_fn_15799
input_3
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
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_15465f
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
_user_specified_name	input_3:EA

_output_shapes

:

_user_specified_name15635:%!

_user_specified_name15637:%!

_user_specified_name15639:%!

_user_specified_name15641:%!

_user_specified_name15643:%!

_user_specified_name15645:%!

_user_specified_name15647:%!

_user_specified_name15649:%	!

_user_specified_name15651:%
!

_user_specified_name15653:%!

_user_specified_name15655:%!

_user_specified_name15657:%!

_user_specified_name15659:%!

_user_specified_name15661:%!

_user_specified_name15663:%!

_user_specified_name15665:%!

_user_specified_name15667:%!

_user_specified_name15669:%!

_user_specified_name15671:%!

_user_specified_name15673:%!

_user_specified_name15675:%!

_user_specified_name15677:%!

_user_specified_name15679:%!

_user_specified_name15681:%!

_user_specified_name15683:%!

_user_specified_name15685:%!

_user_specified_name15687:%!

_user_specified_name15689:%!

_user_specified_name15691:%!

_user_specified_name15693:%!

_user_specified_name15695:% !

_user_specified_name15697:%!!

_user_specified_name15699:%"!

_user_specified_name15701:%#!

_user_specified_name15703:%$!

_user_specified_name15705:%%!

_user_specified_name15707:%&!

_user_specified_name15709:%'!

_user_specified_name15711:%(!

_user_specified_name15713:%)!

_user_specified_name15715:%*!

_user_specified_name15717:%+!

_user_specified_name15719:%,!

_user_specified_name15721:%-!

_user_specified_name15723:%.!

_user_specified_name15725:%/!

_user_specified_name15727:%0!

_user_specified_name15729:%1!

_user_specified_name15731:%2!

_user_specified_name15733:%3!

_user_specified_name15735:%4!

_user_specified_name15737:%5!

_user_specified_name15739:%6!

_user_specified_name15741:%7!

_user_specified_name15743:%8!

_user_specified_name15745:%9!

_user_specified_name15747:%:!

_user_specified_name15749:%;!

_user_specified_name15751:%<!

_user_specified_name15753:%=!

_user_specified_name15755:%>!

_user_specified_name15757:%?!

_user_specified_name15759:%@!

_user_specified_name15761:%A!

_user_specified_name15763:%B!

_user_specified_name15765:%C!

_user_specified_name15767:%D!

_user_specified_name15769:%E!

_user_specified_name15771:%F!

_user_specified_name15773:%G!

_user_specified_name15775:%H!

_user_specified_name15777:%I!

_user_specified_name15779:%J!

_user_specified_name15781:%K!

_user_specified_name15783:%L!

_user_specified_name15785:%M!

_user_specified_name15787:%N!

_user_specified_name15789:%O!

_user_specified_name15791:%P!

_user_specified_name15793:%Q!

_user_specified_name15795
�
�
7__inference_multi_head_attention_12_layer_call_fn_16479	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_15059j
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

_user_specified_namevalue:%!

_user_specified_name16461:%!

_user_specified_name16463:%!

_user_specified_name16465:%!

_user_specified_name16467:%!

_user_specified_name16469:%!

_user_specified_name16471:%!

_user_specified_name16473:%	!

_user_specified_name16475
�+
�
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_14634	
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
q
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_17698

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
F
*__inference_dropout_13_layer_call_fn_16955

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
GPU 2J 8� *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_15167[
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
F
*__inference_dropout_12_layer_call_fn_16614

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
GPU 2J 8� *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_15092[
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
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_15203	
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
7__inference_multi_head_attention_12_layer_call_fn_16457	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_14272j
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

_user_specified_namevalue:%!

_user_specified_name16439:%!

_user_specified_name16441:%!

_user_specified_name16443:%!

_user_specified_name16445:%!

_user_specified_name16447:%!

_user_specified_name16449:%!

_user_specified_name16451:%	!

_user_specified_name16453
�+
�
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_15059	
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
F
*__inference_dropout_17_layer_call_fn_17639

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
GPU 2J 8� *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_15445[
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
C__inference_dense_14_layer_call_and_return_conditional_losses_17230

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

d
E__inference_dropout_16_layer_call_and_return_conditional_losses_17569

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
Q__inference_layer_normalization_24_layer_call_and_return_conditional_losses_14567

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
(__inference_dense_14_layer_call_fn_17215

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
GPU 2J 8� *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_14707j
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
 
_user_specified_nameinputs:%!

_user_specified_name17209:%!

_user_specified_name17211
�
c
*__inference_dropout_16_layer_call_fn_17552

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
GPU 2J 8� *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_14897j
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

d
E__inference_dropout_13_layer_call_and_return_conditional_losses_16967

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
C__inference_dense_13_layer_call_and_return_conditional_losses_14473

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
Q__inference_layer_normalization_29_layer_call_and_return_conditional_losses_14982

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
(__inference_dense_15_layer_call_fn_17614

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
GPU 2J 8� *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_14941j
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
 
_user_specified_nameinputs:%!

_user_specified_name17608:%!

_user_specified_name17610
�+
�
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_15342	
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

d
E__inference_dropout_15_layer_call_and_return_conditional_losses_14724

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
Q__inference_layer_normalization_28_layer_call_and_return_conditional_losses_17605

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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_15406	
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
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_16741	
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
Q__inference_layer_normalization_27_layer_call_and_return_conditional_losses_14801

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
c
E__inference_dropout_13_layer_call_and_return_conditional_losses_15167

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
Ď
�]
 __inference__wrapped_model_14222
input_3+
'model_2_tf___operators___add_22_addv2_ya
Kmodel_2_multi_head_attention_12_query_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_12_query_add_readvariableop_resource:_
Imodel_2_multi_head_attention_12_key_einsum_einsum_readvariableop_resource:Q
?model_2_multi_head_attention_12_key_add_readvariableop_resource:a
Kmodel_2_multi_head_attention_12_value_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_12_value_add_readvariableop_resource:l
Vmodel_2_multi_head_attention_12_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_2_multi_head_attention_12_attention_output_add_readvariableop_resource:R
Dmodel_2_layer_normalization_20_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_20_batchnorm_readvariableop_resource:D
2model_2_dense_12_tensordot_readvariableop_resource:>
0model_2_dense_12_biasadd_readvariableop_resource:R
Dmodel_2_layer_normalization_21_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_21_batchnorm_readvariableop_resource:a
Kmodel_2_multi_head_attention_13_query_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_13_query_add_readvariableop_resource:_
Imodel_2_multi_head_attention_13_key_einsum_einsum_readvariableop_resource:Q
?model_2_multi_head_attention_13_key_add_readvariableop_resource:a
Kmodel_2_multi_head_attention_13_value_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_13_value_add_readvariableop_resource:l
Vmodel_2_multi_head_attention_13_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_2_multi_head_attention_13_attention_output_add_readvariableop_resource:R
Dmodel_2_layer_normalization_22_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_22_batchnorm_readvariableop_resource:D
2model_2_dense_13_tensordot_readvariableop_resource:>
0model_2_dense_13_biasadd_readvariableop_resource:a
Kmodel_2_multi_head_attention_14_query_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_14_query_add_readvariableop_resource:_
Imodel_2_multi_head_attention_14_key_einsum_einsum_readvariableop_resource:Q
?model_2_multi_head_attention_14_key_add_readvariableop_resource:a
Kmodel_2_multi_head_attention_14_value_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_14_value_add_readvariableop_resource:l
Vmodel_2_multi_head_attention_14_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_2_multi_head_attention_14_attention_output_add_readvariableop_resource:R
Dmodel_2_layer_normalization_24_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_24_batchnorm_readvariableop_resource:R
Dmodel_2_layer_normalization_23_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_23_batchnorm_readvariableop_resource:a
Kmodel_2_multi_head_attention_15_query_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_15_query_add_readvariableop_resource:_
Imodel_2_multi_head_attention_15_key_einsum_einsum_readvariableop_resource:Q
?model_2_multi_head_attention_15_key_add_readvariableop_resource:a
Kmodel_2_multi_head_attention_15_value_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_15_value_add_readvariableop_resource:l
Vmodel_2_multi_head_attention_15_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_2_multi_head_attention_15_attention_output_add_readvariableop_resource:R
Dmodel_2_layer_normalization_25_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_25_batchnorm_readvariableop_resource:D
2model_2_dense_14_tensordot_readvariableop_resource:>
0model_2_dense_14_biasadd_readvariableop_resource:a
Kmodel_2_multi_head_attention_16_query_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_16_query_add_readvariableop_resource:_
Imodel_2_multi_head_attention_16_key_einsum_einsum_readvariableop_resource:Q
?model_2_multi_head_attention_16_key_add_readvariableop_resource:a
Kmodel_2_multi_head_attention_16_value_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_16_value_add_readvariableop_resource:l
Vmodel_2_multi_head_attention_16_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_2_multi_head_attention_16_attention_output_add_readvariableop_resource:R
Dmodel_2_layer_normalization_27_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_27_batchnorm_readvariableop_resource:R
Dmodel_2_layer_normalization_26_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_26_batchnorm_readvariableop_resource:a
Kmodel_2_multi_head_attention_17_query_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_17_query_add_readvariableop_resource:_
Imodel_2_multi_head_attention_17_key_einsum_einsum_readvariableop_resource:Q
?model_2_multi_head_attention_17_key_add_readvariableop_resource:a
Kmodel_2_multi_head_attention_17_value_einsum_einsum_readvariableop_resource:S
Amodel_2_multi_head_attention_17_value_add_readvariableop_resource:l
Vmodel_2_multi_head_attention_17_attention_output_einsum_einsum_readvariableop_resource:Z
Lmodel_2_multi_head_attention_17_attention_output_add_readvariableop_resource:R
Dmodel_2_layer_normalization_28_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_28_batchnorm_readvariableop_resource:D
2model_2_dense_15_tensordot_readvariableop_resource:>
0model_2_dense_15_biasadd_readvariableop_resource:R
Dmodel_2_layer_normalization_29_batchnorm_mul_readvariableop_resource:N
@model_2_layer_normalization_29_batchnorm_readvariableop_resource:A
/model_2_dense_16_matmul_readvariableop_resource: >
0model_2_dense_16_biasadd_readvariableop_resource: A
/model_2_dense_17_matmul_readvariableop_resource: >
0model_2_dense_17_biasadd_readvariableop_resource:
identity��'model_2/dense_12/BiasAdd/ReadVariableOp�)model_2/dense_12/Tensordot/ReadVariableOp�'model_2/dense_13/BiasAdd/ReadVariableOp�)model_2/dense_13/Tensordot/ReadVariableOp�'model_2/dense_14/BiasAdd/ReadVariableOp�)model_2/dense_14/Tensordot/ReadVariableOp�'model_2/dense_15/BiasAdd/ReadVariableOp�)model_2/dense_15/Tensordot/ReadVariableOp�'model_2/dense_16/BiasAdd/ReadVariableOp�&model_2/dense_16/MatMul/ReadVariableOp�'model_2/dense_17/BiasAdd/ReadVariableOp�&model_2/dense_17/MatMul/ReadVariableOp�7model_2/layer_normalization_20/batchnorm/ReadVariableOp�;model_2/layer_normalization_20/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_21/batchnorm/ReadVariableOp�;model_2/layer_normalization_21/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_22/batchnorm/ReadVariableOp�;model_2/layer_normalization_22/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_23/batchnorm/ReadVariableOp�;model_2/layer_normalization_23/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_24/batchnorm/ReadVariableOp�;model_2/layer_normalization_24/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_25/batchnorm/ReadVariableOp�;model_2/layer_normalization_25/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_26/batchnorm/ReadVariableOp�;model_2/layer_normalization_26/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_27/batchnorm/ReadVariableOp�;model_2/layer_normalization_27/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_28/batchnorm/ReadVariableOp�;model_2/layer_normalization_28/batchnorm/mul/ReadVariableOp�7model_2/layer_normalization_29/batchnorm/ReadVariableOp�;model_2/layer_normalization_29/batchnorm/mul/ReadVariableOp�Cmodel_2/multi_head_attention_12/attention_output/add/ReadVariableOp�Mmodel_2/multi_head_attention_12/attention_output/einsum/Einsum/ReadVariableOp�6model_2/multi_head_attention_12/key/add/ReadVariableOp�@model_2/multi_head_attention_12/key/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_12/query/add/ReadVariableOp�Bmodel_2/multi_head_attention_12/query/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_12/value/add/ReadVariableOp�Bmodel_2/multi_head_attention_12/value/einsum/Einsum/ReadVariableOp�Cmodel_2/multi_head_attention_13/attention_output/add/ReadVariableOp�Mmodel_2/multi_head_attention_13/attention_output/einsum/Einsum/ReadVariableOp�6model_2/multi_head_attention_13/key/add/ReadVariableOp�@model_2/multi_head_attention_13/key/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_13/query/add/ReadVariableOp�Bmodel_2/multi_head_attention_13/query/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_13/value/add/ReadVariableOp�Bmodel_2/multi_head_attention_13/value/einsum/Einsum/ReadVariableOp�Cmodel_2/multi_head_attention_14/attention_output/add/ReadVariableOp�Mmodel_2/multi_head_attention_14/attention_output/einsum/Einsum/ReadVariableOp�6model_2/multi_head_attention_14/key/add/ReadVariableOp�@model_2/multi_head_attention_14/key/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_14/query/add/ReadVariableOp�Bmodel_2/multi_head_attention_14/query/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_14/value/add/ReadVariableOp�Bmodel_2/multi_head_attention_14/value/einsum/Einsum/ReadVariableOp�Cmodel_2/multi_head_attention_15/attention_output/add/ReadVariableOp�Mmodel_2/multi_head_attention_15/attention_output/einsum/Einsum/ReadVariableOp�6model_2/multi_head_attention_15/key/add/ReadVariableOp�@model_2/multi_head_attention_15/key/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_15/query/add/ReadVariableOp�Bmodel_2/multi_head_attention_15/query/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_15/value/add/ReadVariableOp�Bmodel_2/multi_head_attention_15/value/einsum/Einsum/ReadVariableOp�Cmodel_2/multi_head_attention_16/attention_output/add/ReadVariableOp�Mmodel_2/multi_head_attention_16/attention_output/einsum/Einsum/ReadVariableOp�6model_2/multi_head_attention_16/key/add/ReadVariableOp�@model_2/multi_head_attention_16/key/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_16/query/add/ReadVariableOp�Bmodel_2/multi_head_attention_16/query/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_16/value/add/ReadVariableOp�Bmodel_2/multi_head_attention_16/value/einsum/Einsum/ReadVariableOp�Cmodel_2/multi_head_attention_17/attention_output/add/ReadVariableOp�Mmodel_2/multi_head_attention_17/attention_output/einsum/Einsum/ReadVariableOp�6model_2/multi_head_attention_17/key/add/ReadVariableOp�@model_2/multi_head_attention_17/key/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_17/query/add/ReadVariableOp�Bmodel_2/multi_head_attention_17/query/einsum/Einsum/ReadVariableOp�8model_2/multi_head_attention_17/value/add/ReadVariableOp�Bmodel_2/multi_head_attention_17/value/einsum/Einsum/ReadVariableOp�
%model_2/tf.__operators__.add_22/AddV2AddV2input_3'model_2_tf___operators___add_22_addv2_y*
T0*"
_output_shapes
:�
Bmodel_2/multi_head_attention_12/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_12_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_12/query/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Jmodel_2/multi_head_attention_12/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_12/query/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_12_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_12/query/addAddV2<model_2/multi_head_attention_12/query/einsum/Einsum:output:0@model_2/multi_head_attention_12/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_2/multi_head_attention_12/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_2_multi_head_attention_12_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_2/multi_head_attention_12/key/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Hmodel_2/multi_head_attention_12/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_2/multi_head_attention_12/key/add/ReadVariableOpReadVariableOp?model_2_multi_head_attention_12_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_2/multi_head_attention_12/key/addAddV2:model_2/multi_head_attention_12/key/einsum/Einsum:output:0>model_2/multi_head_attention_12/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_2/multi_head_attention_12/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_12_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_12/value/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Jmodel_2/multi_head_attention_12/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_12/value/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_12_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_12/value/addAddV2<model_2/multi_head_attention_12/value/einsum/Einsum:output:0@model_2/multi_head_attention_12/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_2/multi_head_attention_12/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_2/multi_head_attention_12/MulMul-model_2/multi_head_attention_12/query/add:z:0.model_2/multi_head_attention_12/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_2/multi_head_attention_12/einsum/EinsumEinsum+model_2/multi_head_attention_12/key/add:z:0'model_2/multi_head_attention_12/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
/model_2/multi_head_attention_12/softmax/SoftmaxSoftmax6model_2/multi_head_attention_12/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
0model_2/multi_head_attention_12/dropout/IdentityIdentity9model_2/multi_head_attention_12/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_2/multi_head_attention_12/einsum_1/EinsumEinsum9model_2/multi_head_attention_12/dropout/Identity:output:0-model_2/multi_head_attention_12/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_2/multi_head_attention_12/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_2_multi_head_attention_12_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_2/multi_head_attention_12/attention_output/einsum/EinsumEinsum8model_2/multi_head_attention_12/einsum_1/Einsum:output:0Umodel_2/multi_head_attention_12/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_2/multi_head_attention_12/attention_output/add/ReadVariableOpReadVariableOpLmodel_2_multi_head_attention_12_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_2/multi_head_attention_12/attention_output/addAddV2Gmodel_2/multi_head_attention_12/attention_output/einsum/Einsum:output:0Kmodel_2/multi_head_attention_12/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_23/AddV2AddV2)model_2/tf.__operators__.add_22/AddV2:z:08model_2/multi_head_attention_12/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_20/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_20/moments/meanMean)model_2/tf.__operators__.add_23/AddV2:z:0Fmodel_2/layer_normalization_20/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_20/moments/StopGradientStopGradient4model_2/layer_normalization_20/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_20/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_23/AddV2:z:0<model_2/layer_normalization_20/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_20/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_20/moments/varianceMean<model_2/layer_normalization_20/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_20/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_20/batchnorm/addAddV28model_2/layer_normalization_20/moments/variance:output:07model_2/layer_normalization_20/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_20/batchnorm/RsqrtRsqrt0model_2/layer_normalization_20/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_20/batchnorm/mulMul2model_2/layer_normalization_20/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_20/batchnorm/mul_1Mul)model_2/tf.__operators__.add_23/AddV2:z:00model_2/layer_normalization_20/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_20/batchnorm/mul_2Mul4model_2/layer_normalization_20/moments/mean:output:00model_2/layer_normalization_20/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_20/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_20_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_20/batchnorm/subSub?model_2/layer_normalization_20/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_20/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_20/batchnorm/add_1AddV22model_2/layer_normalization_20/batchnorm/mul_1:z:00model_2/layer_normalization_20/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
)model_2/dense_12/Tensordot/ReadVariableOpReadVariableOp2model_2_dense_12_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0y
(model_2/dense_12/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
"model_2/dense_12/Tensordot/ReshapeReshape2model_2/layer_normalization_20/batchnorm/add_1:z:01model_2/dense_12/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
!model_2/dense_12/Tensordot/MatMulMatMul+model_2/dense_12/Tensordot/Reshape:output:01model_2/dense_12/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
 model_2/dense_12/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_2/dense_12/TensordotReshape+model_2/dense_12/Tensordot/MatMul:product:0)model_2/dense_12/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
'model_2/dense_12/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/dense_12/BiasAddBiasAdd#model_2/dense_12/Tensordot:output:0/model_2/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:m
model_2/dense_12/ReluRelu!model_2/dense_12/BiasAdd:output:0*
T0*"
_output_shapes
:y
model_2/dropout_12/IdentityIdentity#model_2/dense_12/Relu:activations:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_24/AddV2AddV22model_2/layer_normalization_20/batchnorm/add_1:z:0$model_2/dropout_12/Identity:output:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_21/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_21/moments/meanMean)model_2/tf.__operators__.add_24/AddV2:z:0Fmodel_2/layer_normalization_21/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_21/moments/StopGradientStopGradient4model_2/layer_normalization_21/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_21/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_24/AddV2:z:0<model_2/layer_normalization_21/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_21/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_21/moments/varianceMean<model_2/layer_normalization_21/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_21/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_21/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_21/batchnorm/addAddV28model_2/layer_normalization_21/moments/variance:output:07model_2/layer_normalization_21/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_21/batchnorm/RsqrtRsqrt0model_2/layer_normalization_21/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_21/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_21_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_21/batchnorm/mulMul2model_2/layer_normalization_21/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_21/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_21/batchnorm/mul_1Mul)model_2/tf.__operators__.add_24/AddV2:z:00model_2/layer_normalization_21/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_21/batchnorm/mul_2Mul4model_2/layer_normalization_21/moments/mean:output:00model_2/layer_normalization_21/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_21/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_21_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_21/batchnorm/subSub?model_2/layer_normalization_21/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_21/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_21/batchnorm/add_1AddV22model_2/layer_normalization_21/batchnorm/mul_1:z:00model_2/layer_normalization_21/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Bmodel_2/multi_head_attention_13/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_13_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_13/query/einsum/EinsumEinsum2model_2/layer_normalization_21/batchnorm/add_1:z:0Jmodel_2/multi_head_attention_13/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_13/query/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_13_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_13/query/addAddV2<model_2/multi_head_attention_13/query/einsum/Einsum:output:0@model_2/multi_head_attention_13/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_2/multi_head_attention_13/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_2_multi_head_attention_13_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_2/multi_head_attention_13/key/einsum/EinsumEinsum2model_2/layer_normalization_21/batchnorm/add_1:z:0Hmodel_2/multi_head_attention_13/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_2/multi_head_attention_13/key/add/ReadVariableOpReadVariableOp?model_2_multi_head_attention_13_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_2/multi_head_attention_13/key/addAddV2:model_2/multi_head_attention_13/key/einsum/Einsum:output:0>model_2/multi_head_attention_13/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_2/multi_head_attention_13/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_13_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_13/value/einsum/EinsumEinsum2model_2/layer_normalization_21/batchnorm/add_1:z:0Jmodel_2/multi_head_attention_13/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_13/value/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_13_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_13/value/addAddV2<model_2/multi_head_attention_13/value/einsum/Einsum:output:0@model_2/multi_head_attention_13/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_2/multi_head_attention_13/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_2/multi_head_attention_13/MulMul-model_2/multi_head_attention_13/query/add:z:0.model_2/multi_head_attention_13/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_2/multi_head_attention_13/einsum/EinsumEinsum+model_2/multi_head_attention_13/key/add:z:0'model_2/multi_head_attention_13/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
/model_2/multi_head_attention_13/softmax/SoftmaxSoftmax6model_2/multi_head_attention_13/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
0model_2/multi_head_attention_13/dropout/IdentityIdentity9model_2/multi_head_attention_13/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_2/multi_head_attention_13/einsum_1/EinsumEinsum9model_2/multi_head_attention_13/dropout/Identity:output:0-model_2/multi_head_attention_13/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_2/multi_head_attention_13/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_2_multi_head_attention_13_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_2/multi_head_attention_13/attention_output/einsum/EinsumEinsum8model_2/multi_head_attention_13/einsum_1/Einsum:output:0Umodel_2/multi_head_attention_13/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_2/multi_head_attention_13/attention_output/add/ReadVariableOpReadVariableOpLmodel_2_multi_head_attention_13_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_2/multi_head_attention_13/attention_output/addAddV2Gmodel_2/multi_head_attention_13/attention_output/einsum/Einsum:output:0Kmodel_2/multi_head_attention_13/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_25/AddV2AddV22model_2/layer_normalization_21/batchnorm/add_1:z:08model_2/multi_head_attention_13/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_22/moments/meanMean)model_2/tf.__operators__.add_25/AddV2:z:0Fmodel_2/layer_normalization_22/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_22/moments/StopGradientStopGradient4model_2/layer_normalization_22/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_22/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_25/AddV2:z:0<model_2/layer_normalization_22/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_22/moments/varianceMean<model_2/layer_normalization_22/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_22/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_22/batchnorm/addAddV28model_2/layer_normalization_22/moments/variance:output:07model_2/layer_normalization_22/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_22/batchnorm/RsqrtRsqrt0model_2/layer_normalization_22/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_22/batchnorm/mulMul2model_2/layer_normalization_22/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_22/batchnorm/mul_1Mul)model_2/tf.__operators__.add_25/AddV2:z:00model_2/layer_normalization_22/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_22/batchnorm/mul_2Mul4model_2/layer_normalization_22/moments/mean:output:00model_2/layer_normalization_22/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_22/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_22_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_22/batchnorm/subSub?model_2/layer_normalization_22/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_22/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_22/batchnorm/add_1AddV22model_2/layer_normalization_22/batchnorm/mul_1:z:00model_2/layer_normalization_22/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
)model_2/dense_13/Tensordot/ReadVariableOpReadVariableOp2model_2_dense_13_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0y
(model_2/dense_13/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
"model_2/dense_13/Tensordot/ReshapeReshape2model_2/layer_normalization_22/batchnorm/add_1:z:01model_2/dense_13/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
!model_2/dense_13/Tensordot/MatMulMatMul+model_2/dense_13/Tensordot/Reshape:output:01model_2/dense_13/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
 model_2/dense_13/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_2/dense_13/TensordotReshape+model_2/dense_13/Tensordot/MatMul:product:0)model_2/dense_13/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
'model_2/dense_13/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/dense_13/BiasAddBiasAdd#model_2/dense_13/Tensordot:output:0/model_2/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:m
model_2/dense_13/ReluRelu!model_2/dense_13/BiasAdd:output:0*
T0*"
_output_shapes
:y
model_2/dropout_13/IdentityIdentity#model_2/dense_13/Relu:activations:0*
T0*"
_output_shapes
:�
Bmodel_2/multi_head_attention_14/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_14_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_14/query/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Jmodel_2/multi_head_attention_14/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_14/query/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_14_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_14/query/addAddV2<model_2/multi_head_attention_14/query/einsum/Einsum:output:0@model_2/multi_head_attention_14/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_2/multi_head_attention_14/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_2_multi_head_attention_14_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_2/multi_head_attention_14/key/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Hmodel_2/multi_head_attention_14/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_2/multi_head_attention_14/key/add/ReadVariableOpReadVariableOp?model_2_multi_head_attention_14_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_2/multi_head_attention_14/key/addAddV2:model_2/multi_head_attention_14/key/einsum/Einsum:output:0>model_2/multi_head_attention_14/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_2/multi_head_attention_14/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_14_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_14/value/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Jmodel_2/multi_head_attention_14/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_14/value/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_14_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_14/value/addAddV2<model_2/multi_head_attention_14/value/einsum/Einsum:output:0@model_2/multi_head_attention_14/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_2/multi_head_attention_14/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_2/multi_head_attention_14/MulMul-model_2/multi_head_attention_14/query/add:z:0.model_2/multi_head_attention_14/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_2/multi_head_attention_14/einsum/EinsumEinsum+model_2/multi_head_attention_14/key/add:z:0'model_2/multi_head_attention_14/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
/model_2/multi_head_attention_14/softmax/SoftmaxSoftmax6model_2/multi_head_attention_14/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
0model_2/multi_head_attention_14/dropout/IdentityIdentity9model_2/multi_head_attention_14/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_2/multi_head_attention_14/einsum_1/EinsumEinsum9model_2/multi_head_attention_14/dropout/Identity:output:0-model_2/multi_head_attention_14/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_2/multi_head_attention_14/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_2_multi_head_attention_14_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_2/multi_head_attention_14/attention_output/einsum/EinsumEinsum8model_2/multi_head_attention_14/einsum_1/Einsum:output:0Umodel_2/multi_head_attention_14/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_2/multi_head_attention_14/attention_output/add/ReadVariableOpReadVariableOpLmodel_2_multi_head_attention_14_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_2/multi_head_attention_14/attention_output/addAddV2Gmodel_2/multi_head_attention_14/attention_output/einsum/Einsum:output:0Kmodel_2/multi_head_attention_14/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_26/AddV2AddV22model_2/layer_normalization_22/batchnorm/add_1:z:0$model_2/dropout_13/Identity:output:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_27/AddV2AddV2)model_2/tf.__operators__.add_22/AddV2:z:08model_2/multi_head_attention_14/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_24/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_24/moments/meanMean)model_2/tf.__operators__.add_27/AddV2:z:0Fmodel_2/layer_normalization_24/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_24/moments/StopGradientStopGradient4model_2/layer_normalization_24/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_24/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_27/AddV2:z:0<model_2/layer_normalization_24/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_24/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_24/moments/varianceMean<model_2/layer_normalization_24/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_24/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_24/batchnorm/addAddV28model_2/layer_normalization_24/moments/variance:output:07model_2/layer_normalization_24/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_24/batchnorm/RsqrtRsqrt0model_2/layer_normalization_24/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_24/batchnorm/mulMul2model_2/layer_normalization_24/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_24/batchnorm/mul_1Mul)model_2/tf.__operators__.add_27/AddV2:z:00model_2/layer_normalization_24/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_24/batchnorm/mul_2Mul4model_2/layer_normalization_24/moments/mean:output:00model_2/layer_normalization_24/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_24/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_24_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_24/batchnorm/subSub?model_2/layer_normalization_24/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_24/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_24/batchnorm/add_1AddV22model_2/layer_normalization_24/batchnorm/mul_1:z:00model_2/layer_normalization_24/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_23/moments/meanMean)model_2/tf.__operators__.add_26/AddV2:z:0Fmodel_2/layer_normalization_23/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_23/moments/StopGradientStopGradient4model_2/layer_normalization_23/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_23/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_26/AddV2:z:0<model_2/layer_normalization_23/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_23/moments/varianceMean<model_2/layer_normalization_23/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_23/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_23/batchnorm/addAddV28model_2/layer_normalization_23/moments/variance:output:07model_2/layer_normalization_23/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_23/batchnorm/RsqrtRsqrt0model_2/layer_normalization_23/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_23/batchnorm/mulMul2model_2/layer_normalization_23/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_23/batchnorm/mul_1Mul)model_2/tf.__operators__.add_26/AddV2:z:00model_2/layer_normalization_23/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_23/batchnorm/mul_2Mul4model_2/layer_normalization_23/moments/mean:output:00model_2/layer_normalization_23/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_23/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_23_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_23/batchnorm/subSub?model_2/layer_normalization_23/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_23/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_23/batchnorm/add_1AddV22model_2/layer_normalization_23/batchnorm/mul_1:z:00model_2/layer_normalization_23/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Bmodel_2/multi_head_attention_15/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_15_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_15/query/einsum/EinsumEinsum2model_2/layer_normalization_24/batchnorm/add_1:z:0Jmodel_2/multi_head_attention_15/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_15/query/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_15_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_15/query/addAddV2<model_2/multi_head_attention_15/query/einsum/Einsum:output:0@model_2/multi_head_attention_15/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_2/multi_head_attention_15/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_2_multi_head_attention_15_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_2/multi_head_attention_15/key/einsum/EinsumEinsum2model_2/layer_normalization_23/batchnorm/add_1:z:0Hmodel_2/multi_head_attention_15/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_2/multi_head_attention_15/key/add/ReadVariableOpReadVariableOp?model_2_multi_head_attention_15_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_2/multi_head_attention_15/key/addAddV2:model_2/multi_head_attention_15/key/einsum/Einsum:output:0>model_2/multi_head_attention_15/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_2/multi_head_attention_15/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_15_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_15/value/einsum/EinsumEinsum2model_2/layer_normalization_23/batchnorm/add_1:z:0Jmodel_2/multi_head_attention_15/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_15/value/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_15_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_15/value/addAddV2<model_2/multi_head_attention_15/value/einsum/Einsum:output:0@model_2/multi_head_attention_15/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_2/multi_head_attention_15/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_2/multi_head_attention_15/MulMul-model_2/multi_head_attention_15/query/add:z:0.model_2/multi_head_attention_15/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_2/multi_head_attention_15/einsum/EinsumEinsum+model_2/multi_head_attention_15/key/add:z:0'model_2/multi_head_attention_15/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
/model_2/multi_head_attention_15/softmax/SoftmaxSoftmax6model_2/multi_head_attention_15/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
0model_2/multi_head_attention_15/dropout/IdentityIdentity9model_2/multi_head_attention_15/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_2/multi_head_attention_15/einsum_1/EinsumEinsum9model_2/multi_head_attention_15/dropout/Identity:output:0-model_2/multi_head_attention_15/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_2/multi_head_attention_15/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_2_multi_head_attention_15_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_2/multi_head_attention_15/attention_output/einsum/EinsumEinsum8model_2/multi_head_attention_15/einsum_1/Einsum:output:0Umodel_2/multi_head_attention_15/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_2/multi_head_attention_15/attention_output/add/ReadVariableOpReadVariableOpLmodel_2_multi_head_attention_15_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_2/multi_head_attention_15/attention_output/addAddV2Gmodel_2/multi_head_attention_15/attention_output/einsum/Einsum:output:0Kmodel_2/multi_head_attention_15/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
model_2/dropout_14/IdentityIdentity8model_2/multi_head_attention_15/attention_output/add:z:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_28/AddV2AddV22model_2/layer_normalization_24/batchnorm/add_1:z:0$model_2/dropout_14/Identity:output:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_25/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_25/moments/meanMean)model_2/tf.__operators__.add_28/AddV2:z:0Fmodel_2/layer_normalization_25/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_25/moments/StopGradientStopGradient4model_2/layer_normalization_25/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_25/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_28/AddV2:z:0<model_2/layer_normalization_25/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_25/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_25/moments/varianceMean<model_2/layer_normalization_25/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_25/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_25/batchnorm/addAddV28model_2/layer_normalization_25/moments/variance:output:07model_2/layer_normalization_25/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_25/batchnorm/RsqrtRsqrt0model_2/layer_normalization_25/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_25/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_25_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_25/batchnorm/mulMul2model_2/layer_normalization_25/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_25/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_25/batchnorm/mul_1Mul)model_2/tf.__operators__.add_28/AddV2:z:00model_2/layer_normalization_25/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_25/batchnorm/mul_2Mul4model_2/layer_normalization_25/moments/mean:output:00model_2/layer_normalization_25/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_25/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_25_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_25/batchnorm/subSub?model_2/layer_normalization_25/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_25/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_25/batchnorm/add_1AddV22model_2/layer_normalization_25/batchnorm/mul_1:z:00model_2/layer_normalization_25/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
)model_2/dense_14/Tensordot/ReadVariableOpReadVariableOp2model_2_dense_14_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0y
(model_2/dense_14/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
"model_2/dense_14/Tensordot/ReshapeReshape2model_2/layer_normalization_25/batchnorm/add_1:z:01model_2/dense_14/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
!model_2/dense_14/Tensordot/MatMulMatMul+model_2/dense_14/Tensordot/Reshape:output:01model_2/dense_14/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
 model_2/dense_14/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_2/dense_14/TensordotReshape+model_2/dense_14/Tensordot/MatMul:product:0)model_2/dense_14/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
'model_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/dense_14/BiasAddBiasAdd#model_2/dense_14/Tensordot:output:0/model_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:m
model_2/dense_14/ReluRelu!model_2/dense_14/BiasAdd:output:0*
T0*"
_output_shapes
:y
model_2/dropout_15/IdentityIdentity#model_2/dense_14/Relu:activations:0*
T0*"
_output_shapes
:�
Bmodel_2/multi_head_attention_16/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_16_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_16/query/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Jmodel_2/multi_head_attention_16/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_16/query/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_16_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_16/query/addAddV2<model_2/multi_head_attention_16/query/einsum/Einsum:output:0@model_2/multi_head_attention_16/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_2/multi_head_attention_16/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_2_multi_head_attention_16_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_2/multi_head_attention_16/key/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Hmodel_2/multi_head_attention_16/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_2/multi_head_attention_16/key/add/ReadVariableOpReadVariableOp?model_2_multi_head_attention_16_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_2/multi_head_attention_16/key/addAddV2:model_2/multi_head_attention_16/key/einsum/Einsum:output:0>model_2/multi_head_attention_16/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_2/multi_head_attention_16/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_16_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_16/value/einsum/EinsumEinsum)model_2/tf.__operators__.add_22/AddV2:z:0Jmodel_2/multi_head_attention_16/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_16/value/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_16_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_16/value/addAddV2<model_2/multi_head_attention_16/value/einsum/Einsum:output:0@model_2/multi_head_attention_16/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_2/multi_head_attention_16/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_2/multi_head_attention_16/MulMul-model_2/multi_head_attention_16/query/add:z:0.model_2/multi_head_attention_16/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_2/multi_head_attention_16/einsum/EinsumEinsum+model_2/multi_head_attention_16/key/add:z:0'model_2/multi_head_attention_16/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
/model_2/multi_head_attention_16/softmax/SoftmaxSoftmax6model_2/multi_head_attention_16/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
0model_2/multi_head_attention_16/dropout/IdentityIdentity9model_2/multi_head_attention_16/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_2/multi_head_attention_16/einsum_1/EinsumEinsum9model_2/multi_head_attention_16/dropout/Identity:output:0-model_2/multi_head_attention_16/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_2/multi_head_attention_16/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_2_multi_head_attention_16_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_2/multi_head_attention_16/attention_output/einsum/EinsumEinsum8model_2/multi_head_attention_16/einsum_1/Einsum:output:0Umodel_2/multi_head_attention_16/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_2/multi_head_attention_16/attention_output/add/ReadVariableOpReadVariableOpLmodel_2_multi_head_attention_16_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_2/multi_head_attention_16/attention_output/addAddV2Gmodel_2/multi_head_attention_16/attention_output/einsum/Einsum:output:0Kmodel_2/multi_head_attention_16/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_29/AddV2AddV22model_2/layer_normalization_25/batchnorm/add_1:z:0$model_2/dropout_15/Identity:output:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_30/AddV2AddV2)model_2/tf.__operators__.add_22/AddV2:z:08model_2/multi_head_attention_16/attention_output/add:z:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_27/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_27/moments/meanMean)model_2/tf.__operators__.add_30/AddV2:z:0Fmodel_2/layer_normalization_27/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_27/moments/StopGradientStopGradient4model_2/layer_normalization_27/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_27/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_30/AddV2:z:0<model_2/layer_normalization_27/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_27/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_27/moments/varianceMean<model_2/layer_normalization_27/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_27/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_27/batchnorm/addAddV28model_2/layer_normalization_27/moments/variance:output:07model_2/layer_normalization_27/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_27/batchnorm/RsqrtRsqrt0model_2/layer_normalization_27/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_27/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_27_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_27/batchnorm/mulMul2model_2/layer_normalization_27/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_27/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_27/batchnorm/mul_1Mul)model_2/tf.__operators__.add_30/AddV2:z:00model_2/layer_normalization_27/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_27/batchnorm/mul_2Mul4model_2/layer_normalization_27/moments/mean:output:00model_2/layer_normalization_27/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_27/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_27_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_27/batchnorm/subSub?model_2/layer_normalization_27/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_27/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_27/batchnorm/add_1AddV22model_2/layer_normalization_27/batchnorm/mul_1:z:00model_2/layer_normalization_27/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_26/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_26/moments/meanMean)model_2/tf.__operators__.add_29/AddV2:z:0Fmodel_2/layer_normalization_26/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_26/moments/StopGradientStopGradient4model_2/layer_normalization_26/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_26/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_29/AddV2:z:0<model_2/layer_normalization_26/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_26/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_26/moments/varianceMean<model_2/layer_normalization_26/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_26/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_26/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_26/batchnorm/addAddV28model_2/layer_normalization_26/moments/variance:output:07model_2/layer_normalization_26/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_26/batchnorm/RsqrtRsqrt0model_2/layer_normalization_26/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_26/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_26_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_26/batchnorm/mulMul2model_2/layer_normalization_26/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_26/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_26/batchnorm/mul_1Mul)model_2/tf.__operators__.add_29/AddV2:z:00model_2/layer_normalization_26/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_26/batchnorm/mul_2Mul4model_2/layer_normalization_26/moments/mean:output:00model_2/layer_normalization_26/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_26/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_26_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_26/batchnorm/subSub?model_2/layer_normalization_26/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_26/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_26/batchnorm/add_1AddV22model_2/layer_normalization_26/batchnorm/mul_1:z:00model_2/layer_normalization_26/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
Bmodel_2/multi_head_attention_17/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_17_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_17/query/einsum/EinsumEinsum2model_2/layer_normalization_27/batchnorm/add_1:z:0Jmodel_2/multi_head_attention_17/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_17/query/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_17_query_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_17/query/addAddV2<model_2/multi_head_attention_17/query/einsum/Einsum:output:0@model_2/multi_head_attention_17/query/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
@model_2/multi_head_attention_17/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_2_multi_head_attention_17_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
1model_2/multi_head_attention_17/key/einsum/EinsumEinsum2model_2/layer_normalization_26/batchnorm/add_1:z:0Hmodel_2/multi_head_attention_17/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
6model_2/multi_head_attention_17/key/add/ReadVariableOpReadVariableOp?model_2_multi_head_attention_17_key_add_readvariableop_resource*
_output_shapes

:*
dtype0�
'model_2/multi_head_attention_17/key/addAddV2:model_2/multi_head_attention_17/key/einsum/Einsum:output:0>model_2/multi_head_attention_17/key/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:�
Bmodel_2/multi_head_attention_17/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_2_multi_head_attention_17_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
3model_2/multi_head_attention_17/value/einsum/EinsumEinsum2model_2/layer_normalization_26/batchnorm/add_1:z:0Jmodel_2/multi_head_attention_17/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*&
_output_shapes
:*
equationabc,cde->abde�
8model_2/multi_head_attention_17/value/add/ReadVariableOpReadVariableOpAmodel_2_multi_head_attention_17_value_add_readvariableop_resource*
_output_shapes

:*
dtype0�
)model_2/multi_head_attention_17/value/addAddV2<model_2/multi_head_attention_17/value/einsum/Einsum:output:0@model_2/multi_head_attention_17/value/add/ReadVariableOp:value:0*
T0*&
_output_shapes
:j
%model_2/multi_head_attention_17/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��>�
#model_2/multi_head_attention_17/MulMul-model_2/multi_head_attention_17/query/add:z:0.model_2/multi_head_attention_17/Mul/y:output:0*
T0*&
_output_shapes
:�
-model_2/multi_head_attention_17/einsum/EinsumEinsum+model_2/multi_head_attention_17/key/add:z:0'model_2/multi_head_attention_17/Mul:z:0*
N*
T0*&
_output_shapes
:*
equationaecd,abcd->acbe�
/model_2/multi_head_attention_17/softmax/SoftmaxSoftmax6model_2/multi_head_attention_17/einsum/Einsum:output:0*
T0*&
_output_shapes
:�
0model_2/multi_head_attention_17/dropout/IdentityIdentity9model_2/multi_head_attention_17/softmax/Softmax:softmax:0*
T0*&
_output_shapes
:�
/model_2/multi_head_attention_17/einsum_1/EinsumEinsum9model_2/multi_head_attention_17/dropout/Identity:output:0-model_2/multi_head_attention_17/value/add:z:0*
N*
T0*&
_output_shapes
:*
equationacbe,aecd->abcd�
Mmodel_2/multi_head_attention_17/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_2_multi_head_attention_17_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0�
>model_2/multi_head_attention_17/attention_output/einsum/EinsumEinsum8model_2/multi_head_attention_17/einsum_1/Einsum:output:0Umodel_2/multi_head_attention_17/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*"
_output_shapes
:*
equationabcd,cde->abe�
Cmodel_2/multi_head_attention_17/attention_output/add/ReadVariableOpReadVariableOpLmodel_2_multi_head_attention_17_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_2/multi_head_attention_17/attention_output/addAddV2Gmodel_2/multi_head_attention_17/attention_output/einsum/Einsum:output:0Kmodel_2/multi_head_attention_17/attention_output/add/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
model_2/dropout_16/IdentityIdentity8model_2/multi_head_attention_17/attention_output/add:z:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_31/AddV2AddV22model_2/layer_normalization_27/batchnorm/add_1:z:0$model_2/dropout_16/Identity:output:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_28/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_28/moments/meanMean)model_2/tf.__operators__.add_31/AddV2:z:0Fmodel_2/layer_normalization_28/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_28/moments/StopGradientStopGradient4model_2/layer_normalization_28/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_28/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_31/AddV2:z:0<model_2/layer_normalization_28/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_28/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_28/moments/varianceMean<model_2/layer_normalization_28/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_28/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_28/batchnorm/addAddV28model_2/layer_normalization_28/moments/variance:output:07model_2/layer_normalization_28/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_28/batchnorm/RsqrtRsqrt0model_2/layer_normalization_28/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_28/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_28_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_28/batchnorm/mulMul2model_2/layer_normalization_28/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_28/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_28/batchnorm/mul_1Mul)model_2/tf.__operators__.add_31/AddV2:z:00model_2/layer_normalization_28/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_28/batchnorm/mul_2Mul4model_2/layer_normalization_28/moments/mean:output:00model_2/layer_normalization_28/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_28/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_28_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_28/batchnorm/subSub?model_2/layer_normalization_28/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_28/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_28/batchnorm/add_1AddV22model_2/layer_normalization_28/batchnorm/mul_1:z:00model_2/layer_normalization_28/batchnorm/sub:z:0*
T0*"
_output_shapes
:�
)model_2/dense_15/Tensordot/ReadVariableOpReadVariableOp2model_2_dense_15_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0y
(model_2/dense_15/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
"model_2/dense_15/Tensordot/ReshapeReshape2model_2/layer_normalization_28/batchnorm/add_1:z:01model_2/dense_15/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
!model_2/dense_15/Tensordot/MatMulMatMul+model_2/dense_15/Tensordot/Reshape:output:01model_2/dense_15/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
 model_2/dense_15/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
model_2/dense_15/TensordotReshape+model_2/dense_15/Tensordot/MatMul:product:0)model_2/dense_15/Tensordot/shape:output:0*
T0*"
_output_shapes
:�
'model_2/dense_15/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/dense_15/BiasAddBiasAdd#model_2/dense_15/Tensordot:output:0/model_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:m
model_2/dense_15/ReluRelu!model_2/dense_15/BiasAdd:output:0*
T0*"
_output_shapes
:y
model_2/dropout_17/IdentityIdentity#model_2/dense_15/Relu:activations:0*
T0*"
_output_shapes
:�
%model_2/tf.__operators__.add_32/AddV2AddV22model_2/layer_normalization_28/batchnorm/add_1:z:0$model_2/dropout_17/Identity:output:0*
T0*"
_output_shapes
:�
=model_2/layer_normalization_29/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model_2/layer_normalization_29/moments/meanMean)model_2/tf.__operators__.add_32/AddV2:z:0Fmodel_2/layer_normalization_29/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
3model_2/layer_normalization_29/moments/StopGradientStopGradient4model_2/layer_normalization_29/moments/mean:output:0*
T0*"
_output_shapes
:�
8model_2/layer_normalization_29/moments/SquaredDifferenceSquaredDifference)model_2/tf.__operators__.add_32/AddV2:z:0<model_2/layer_normalization_29/moments/StopGradient:output:0*
T0*"
_output_shapes
:�
Amodel_2/layer_normalization_29/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
/model_2/layer_normalization_29/moments/varianceMean<model_2/layer_normalization_29/moments/SquaredDifference:z:0Jmodel_2/layer_normalization_29/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(s
.model_2/layer_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
,model_2/layer_normalization_29/batchnorm/addAddV28model_2/layer_normalization_29/moments/variance:output:07model_2/layer_normalization_29/batchnorm/add/y:output:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_29/batchnorm/RsqrtRsqrt0model_2/layer_normalization_29/batchnorm/add:z:0*
T0*"
_output_shapes
:�
;model_2/layer_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_layer_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_29/batchnorm/mulMul2model_2/layer_normalization_29/batchnorm/Rsqrt:y:0Cmodel_2/layer_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_29/batchnorm/mul_1Mul)model_2/tf.__operators__.add_32/AddV2:z:00model_2/layer_normalization_29/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_29/batchnorm/mul_2Mul4model_2/layer_normalization_29/moments/mean:output:00model_2/layer_normalization_29/batchnorm/mul:z:0*
T0*"
_output_shapes
:�
7model_2/layer_normalization_29/batchnorm/ReadVariableOpReadVariableOp@model_2_layer_normalization_29_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_2/layer_normalization_29/batchnorm/subSub?model_2/layer_normalization_29/batchnorm/ReadVariableOp:value:02model_2/layer_normalization_29/batchnorm/mul_2:z:0*
T0*"
_output_shapes
:�
.model_2/layer_normalization_29/batchnorm/add_1AddV22model_2/layer_normalization_29/batchnorm/mul_1:z:00model_2/layer_normalization_29/batchnorm/sub:z:0*
T0*"
_output_shapes
:{
9model_2/global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_2/global_average_pooling1d_2/MeanMean2model_2/layer_normalization_29/batchnorm/add_1:z:0Bmodel_2/global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*
_output_shapes

:�
&model_2/dense_16/MatMul/ReadVariableOpReadVariableOp/model_2_dense_16_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_2/dense_16/MatMulMatMul0model_2/global_average_pooling1d_2/Mean:output:0.model_2/dense_16/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: �
'model_2/dense_16/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_2/dense_16/BiasAddBiasAdd!model_2/dense_16/MatMul:product:0/model_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: �
&model_2/dense_17/MatMul/ReadVariableOpReadVariableOp/model_2_dense_17_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_2/dense_17/MatMulMatMul!model_2/dense_16/BiasAdd:output:0.model_2/dense_17/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
'model_2/dense_17/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/dense_17/BiasAddBiasAdd!model_2/dense_17/MatMul:product:0/model_2/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:g
IdentityIdentity!model_2/dense_17/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:�&
NoOpNoOp(^model_2/dense_12/BiasAdd/ReadVariableOp*^model_2/dense_12/Tensordot/ReadVariableOp(^model_2/dense_13/BiasAdd/ReadVariableOp*^model_2/dense_13/Tensordot/ReadVariableOp(^model_2/dense_14/BiasAdd/ReadVariableOp*^model_2/dense_14/Tensordot/ReadVariableOp(^model_2/dense_15/BiasAdd/ReadVariableOp*^model_2/dense_15/Tensordot/ReadVariableOp(^model_2/dense_16/BiasAdd/ReadVariableOp'^model_2/dense_16/MatMul/ReadVariableOp(^model_2/dense_17/BiasAdd/ReadVariableOp'^model_2/dense_17/MatMul/ReadVariableOp8^model_2/layer_normalization_20/batchnorm/ReadVariableOp<^model_2/layer_normalization_20/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_21/batchnorm/ReadVariableOp<^model_2/layer_normalization_21/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_22/batchnorm/ReadVariableOp<^model_2/layer_normalization_22/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_23/batchnorm/ReadVariableOp<^model_2/layer_normalization_23/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_24/batchnorm/ReadVariableOp<^model_2/layer_normalization_24/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_25/batchnorm/ReadVariableOp<^model_2/layer_normalization_25/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_26/batchnorm/ReadVariableOp<^model_2/layer_normalization_26/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_27/batchnorm/ReadVariableOp<^model_2/layer_normalization_27/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_28/batchnorm/ReadVariableOp<^model_2/layer_normalization_28/batchnorm/mul/ReadVariableOp8^model_2/layer_normalization_29/batchnorm/ReadVariableOp<^model_2/layer_normalization_29/batchnorm/mul/ReadVariableOpD^model_2/multi_head_attention_12/attention_output/add/ReadVariableOpN^model_2/multi_head_attention_12/attention_output/einsum/Einsum/ReadVariableOp7^model_2/multi_head_attention_12/key/add/ReadVariableOpA^model_2/multi_head_attention_12/key/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_12/query/add/ReadVariableOpC^model_2/multi_head_attention_12/query/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_12/value/add/ReadVariableOpC^model_2/multi_head_attention_12/value/einsum/Einsum/ReadVariableOpD^model_2/multi_head_attention_13/attention_output/add/ReadVariableOpN^model_2/multi_head_attention_13/attention_output/einsum/Einsum/ReadVariableOp7^model_2/multi_head_attention_13/key/add/ReadVariableOpA^model_2/multi_head_attention_13/key/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_13/query/add/ReadVariableOpC^model_2/multi_head_attention_13/query/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_13/value/add/ReadVariableOpC^model_2/multi_head_attention_13/value/einsum/Einsum/ReadVariableOpD^model_2/multi_head_attention_14/attention_output/add/ReadVariableOpN^model_2/multi_head_attention_14/attention_output/einsum/Einsum/ReadVariableOp7^model_2/multi_head_attention_14/key/add/ReadVariableOpA^model_2/multi_head_attention_14/key/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_14/query/add/ReadVariableOpC^model_2/multi_head_attention_14/query/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_14/value/add/ReadVariableOpC^model_2/multi_head_attention_14/value/einsum/Einsum/ReadVariableOpD^model_2/multi_head_attention_15/attention_output/add/ReadVariableOpN^model_2/multi_head_attention_15/attention_output/einsum/Einsum/ReadVariableOp7^model_2/multi_head_attention_15/key/add/ReadVariableOpA^model_2/multi_head_attention_15/key/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_15/query/add/ReadVariableOpC^model_2/multi_head_attention_15/query/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_15/value/add/ReadVariableOpC^model_2/multi_head_attention_15/value/einsum/Einsum/ReadVariableOpD^model_2/multi_head_attention_16/attention_output/add/ReadVariableOpN^model_2/multi_head_attention_16/attention_output/einsum/Einsum/ReadVariableOp7^model_2/multi_head_attention_16/key/add/ReadVariableOpA^model_2/multi_head_attention_16/key/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_16/query/add/ReadVariableOpC^model_2/multi_head_attention_16/query/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_16/value/add/ReadVariableOpC^model_2/multi_head_attention_16/value/einsum/Einsum/ReadVariableOpD^model_2/multi_head_attention_17/attention_output/add/ReadVariableOpN^model_2/multi_head_attention_17/attention_output/einsum/Einsum/ReadVariableOp7^model_2/multi_head_attention_17/key/add/ReadVariableOpA^model_2/multi_head_attention_17/key/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_17/query/add/ReadVariableOpC^model_2/multi_head_attention_17/query/einsum/Einsum/ReadVariableOp9^model_2/multi_head_attention_17/value/add/ReadVariableOpC^model_2/multi_head_attention_17/value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_2/dense_12/BiasAdd/ReadVariableOp'model_2/dense_12/BiasAdd/ReadVariableOp2V
)model_2/dense_12/Tensordot/ReadVariableOp)model_2/dense_12/Tensordot/ReadVariableOp2R
'model_2/dense_13/BiasAdd/ReadVariableOp'model_2/dense_13/BiasAdd/ReadVariableOp2V
)model_2/dense_13/Tensordot/ReadVariableOp)model_2/dense_13/Tensordot/ReadVariableOp2R
'model_2/dense_14/BiasAdd/ReadVariableOp'model_2/dense_14/BiasAdd/ReadVariableOp2V
)model_2/dense_14/Tensordot/ReadVariableOp)model_2/dense_14/Tensordot/ReadVariableOp2R
'model_2/dense_15/BiasAdd/ReadVariableOp'model_2/dense_15/BiasAdd/ReadVariableOp2V
)model_2/dense_15/Tensordot/ReadVariableOp)model_2/dense_15/Tensordot/ReadVariableOp2R
'model_2/dense_16/BiasAdd/ReadVariableOp'model_2/dense_16/BiasAdd/ReadVariableOp2P
&model_2/dense_16/MatMul/ReadVariableOp&model_2/dense_16/MatMul/ReadVariableOp2R
'model_2/dense_17/BiasAdd/ReadVariableOp'model_2/dense_17/BiasAdd/ReadVariableOp2P
&model_2/dense_17/MatMul/ReadVariableOp&model_2/dense_17/MatMul/ReadVariableOp2r
7model_2/layer_normalization_20/batchnorm/ReadVariableOp7model_2/layer_normalization_20/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_20/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_20/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_21/batchnorm/ReadVariableOp7model_2/layer_normalization_21/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_21/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_21/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_22/batchnorm/ReadVariableOp7model_2/layer_normalization_22/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_22/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_22/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_23/batchnorm/ReadVariableOp7model_2/layer_normalization_23/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_23/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_23/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_24/batchnorm/ReadVariableOp7model_2/layer_normalization_24/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_24/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_24/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_25/batchnorm/ReadVariableOp7model_2/layer_normalization_25/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_25/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_25/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_26/batchnorm/ReadVariableOp7model_2/layer_normalization_26/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_26/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_26/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_27/batchnorm/ReadVariableOp7model_2/layer_normalization_27/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_27/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_27/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_28/batchnorm/ReadVariableOp7model_2/layer_normalization_28/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_28/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_28/batchnorm/mul/ReadVariableOp2r
7model_2/layer_normalization_29/batchnorm/ReadVariableOp7model_2/layer_normalization_29/batchnorm/ReadVariableOp2z
;model_2/layer_normalization_29/batchnorm/mul/ReadVariableOp;model_2/layer_normalization_29/batchnorm/mul/ReadVariableOp2�
Cmodel_2/multi_head_attention_12/attention_output/add/ReadVariableOpCmodel_2/multi_head_attention_12/attention_output/add/ReadVariableOp2�
Mmodel_2/multi_head_attention_12/attention_output/einsum/Einsum/ReadVariableOpMmodel_2/multi_head_attention_12/attention_output/einsum/Einsum/ReadVariableOp2p
6model_2/multi_head_attention_12/key/add/ReadVariableOp6model_2/multi_head_attention_12/key/add/ReadVariableOp2�
@model_2/multi_head_attention_12/key/einsum/Einsum/ReadVariableOp@model_2/multi_head_attention_12/key/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_12/query/add/ReadVariableOp8model_2/multi_head_attention_12/query/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_12/query/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_12/query/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_12/value/add/ReadVariableOp8model_2/multi_head_attention_12/value/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_12/value/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_12/value/einsum/Einsum/ReadVariableOp2�
Cmodel_2/multi_head_attention_13/attention_output/add/ReadVariableOpCmodel_2/multi_head_attention_13/attention_output/add/ReadVariableOp2�
Mmodel_2/multi_head_attention_13/attention_output/einsum/Einsum/ReadVariableOpMmodel_2/multi_head_attention_13/attention_output/einsum/Einsum/ReadVariableOp2p
6model_2/multi_head_attention_13/key/add/ReadVariableOp6model_2/multi_head_attention_13/key/add/ReadVariableOp2�
@model_2/multi_head_attention_13/key/einsum/Einsum/ReadVariableOp@model_2/multi_head_attention_13/key/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_13/query/add/ReadVariableOp8model_2/multi_head_attention_13/query/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_13/query/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_13/query/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_13/value/add/ReadVariableOp8model_2/multi_head_attention_13/value/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_13/value/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_13/value/einsum/Einsum/ReadVariableOp2�
Cmodel_2/multi_head_attention_14/attention_output/add/ReadVariableOpCmodel_2/multi_head_attention_14/attention_output/add/ReadVariableOp2�
Mmodel_2/multi_head_attention_14/attention_output/einsum/Einsum/ReadVariableOpMmodel_2/multi_head_attention_14/attention_output/einsum/Einsum/ReadVariableOp2p
6model_2/multi_head_attention_14/key/add/ReadVariableOp6model_2/multi_head_attention_14/key/add/ReadVariableOp2�
@model_2/multi_head_attention_14/key/einsum/Einsum/ReadVariableOp@model_2/multi_head_attention_14/key/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_14/query/add/ReadVariableOp8model_2/multi_head_attention_14/query/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_14/query/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_14/query/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_14/value/add/ReadVariableOp8model_2/multi_head_attention_14/value/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_14/value/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_14/value/einsum/Einsum/ReadVariableOp2�
Cmodel_2/multi_head_attention_15/attention_output/add/ReadVariableOpCmodel_2/multi_head_attention_15/attention_output/add/ReadVariableOp2�
Mmodel_2/multi_head_attention_15/attention_output/einsum/Einsum/ReadVariableOpMmodel_2/multi_head_attention_15/attention_output/einsum/Einsum/ReadVariableOp2p
6model_2/multi_head_attention_15/key/add/ReadVariableOp6model_2/multi_head_attention_15/key/add/ReadVariableOp2�
@model_2/multi_head_attention_15/key/einsum/Einsum/ReadVariableOp@model_2/multi_head_attention_15/key/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_15/query/add/ReadVariableOp8model_2/multi_head_attention_15/query/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_15/query/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_15/query/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_15/value/add/ReadVariableOp8model_2/multi_head_attention_15/value/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_15/value/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_15/value/einsum/Einsum/ReadVariableOp2�
Cmodel_2/multi_head_attention_16/attention_output/add/ReadVariableOpCmodel_2/multi_head_attention_16/attention_output/add/ReadVariableOp2�
Mmodel_2/multi_head_attention_16/attention_output/einsum/Einsum/ReadVariableOpMmodel_2/multi_head_attention_16/attention_output/einsum/Einsum/ReadVariableOp2p
6model_2/multi_head_attention_16/key/add/ReadVariableOp6model_2/multi_head_attention_16/key/add/ReadVariableOp2�
@model_2/multi_head_attention_16/key/einsum/Einsum/ReadVariableOp@model_2/multi_head_attention_16/key/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_16/query/add/ReadVariableOp8model_2/multi_head_attention_16/query/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_16/query/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_16/query/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_16/value/add/ReadVariableOp8model_2/multi_head_attention_16/value/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_16/value/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_16/value/einsum/Einsum/ReadVariableOp2�
Cmodel_2/multi_head_attention_17/attention_output/add/ReadVariableOpCmodel_2/multi_head_attention_17/attention_output/add/ReadVariableOp2�
Mmodel_2/multi_head_attention_17/attention_output/einsum/Einsum/ReadVariableOpMmodel_2/multi_head_attention_17/attention_output/einsum/Einsum/ReadVariableOp2p
6model_2/multi_head_attention_17/key/add/ReadVariableOp6model_2/multi_head_attention_17/key/add/ReadVariableOp2�
@model_2/multi_head_attention_17/key/einsum/Einsum/ReadVariableOp@model_2/multi_head_attention_17/key/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_17/query/add/ReadVariableOp8model_2/multi_head_attention_17/query/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_17/query/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_17/query/einsum/Einsum/ReadVariableOp2t
8model_2/multi_head_attention_17/value/add/ReadVariableOp8model_2/multi_head_attention_17/value/add/ReadVariableOp2�
Bmodel_2/multi_head_attention_17/value/einsum/Einsum/ReadVariableOpBmodel_2/multi_head_attention_17/value/einsum/Einsum/ReadVariableOp:K G
"
_output_shapes
:
!
_user_specified_name	input_3:A=

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
�
c
E__inference_dropout_14_layer_call_and_return_conditional_losses_15289

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

d
E__inference_dropout_12_layer_call_and_return_conditional_losses_16626

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
Q__inference_layer_normalization_29_layer_call_and_return_conditional_losses_17687

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
7__inference_multi_head_attention_16_layer_call_fn_17252	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_14760j
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

_user_specified_namevalue:%!

_user_specified_name17234:%!

_user_specified_name17236:%!

_user_specified_name17238:%!

_user_specified_name17240:%!

_user_specified_name17242:%!

_user_specified_name17244:%!

_user_specified_name17246:%	!

_user_specified_name17248
�+
�
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_15267	
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

d
E__inference_dropout_14_layer_call_and_return_conditional_losses_17170

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
7__inference_multi_head_attention_15_layer_call_fn_17078	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_15267j
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

_user_specified_namevalue:%!

_user_specified_name17060:%!

_user_specified_name17062:%!

_user_specified_name17064:%!

_user_specified_name17066:%!

_user_specified_name17068:%!

_user_specified_name17070:%!

_user_specified_name17072:%	!

_user_specified_name17074
��
�Q
__inference__traced_save_18239
file_prefixA
3read_disablecopyonread_layer_normalization_20_gamma:B
4read_1_disablecopyonread_layer_normalization_20_beta::
(read_2_disablecopyonread_dense_12_kernel:4
&read_3_disablecopyonread_dense_12_bias:C
5read_4_disablecopyonread_layer_normalization_21_gamma:B
4read_5_disablecopyonread_layer_normalization_21_beta:C
5read_6_disablecopyonread_layer_normalization_22_gamma:B
4read_7_disablecopyonread_layer_normalization_22_beta::
(read_8_disablecopyonread_dense_13_kernel:4
&read_9_disablecopyonread_dense_13_bias:D
6read_10_disablecopyonread_layer_normalization_24_gamma:C
5read_11_disablecopyonread_layer_normalization_24_beta:D
6read_12_disablecopyonread_layer_normalization_23_gamma:C
5read_13_disablecopyonread_layer_normalization_23_beta:D
6read_14_disablecopyonread_layer_normalization_25_gamma:C
5read_15_disablecopyonread_layer_normalization_25_beta:;
)read_16_disablecopyonread_dense_14_kernel:5
'read_17_disablecopyonread_dense_14_bias:D
6read_18_disablecopyonread_layer_normalization_27_gamma:C
5read_19_disablecopyonread_layer_normalization_27_beta:D
6read_20_disablecopyonread_layer_normalization_26_gamma:C
5read_21_disablecopyonread_layer_normalization_26_beta:D
6read_22_disablecopyonread_layer_normalization_28_gamma:C
5read_23_disablecopyonread_layer_normalization_28_beta:;
)read_24_disablecopyonread_dense_15_kernel:5
'read_25_disablecopyonread_dense_15_bias:D
6read_26_disablecopyonread_layer_normalization_29_gamma:C
5read_27_disablecopyonread_layer_normalization_29_beta:;
)read_28_disablecopyonread_dense_16_kernel: 5
'read_29_disablecopyonread_dense_16_bias: ;
)read_30_disablecopyonread_dense_17_kernel: 5
'read_31_disablecopyonread_dense_17_bias:T
>read_32_disablecopyonread_multi_head_attention_12_query_kernel:N
<read_33_disablecopyonread_multi_head_attention_12_query_bias:R
<read_34_disablecopyonread_multi_head_attention_12_key_kernel:L
:read_35_disablecopyonread_multi_head_attention_12_key_bias:T
>read_36_disablecopyonread_multi_head_attention_12_value_kernel:N
<read_37_disablecopyonread_multi_head_attention_12_value_bias:_
Iread_38_disablecopyonread_multi_head_attention_12_attention_output_kernel:U
Gread_39_disablecopyonread_multi_head_attention_12_attention_output_bias:T
>read_40_disablecopyonread_multi_head_attention_13_query_kernel:N
<read_41_disablecopyonread_multi_head_attention_13_query_bias:R
<read_42_disablecopyonread_multi_head_attention_13_key_kernel:L
:read_43_disablecopyonread_multi_head_attention_13_key_bias:T
>read_44_disablecopyonread_multi_head_attention_13_value_kernel:N
<read_45_disablecopyonread_multi_head_attention_13_value_bias:_
Iread_46_disablecopyonread_multi_head_attention_13_attention_output_kernel:U
Gread_47_disablecopyonread_multi_head_attention_13_attention_output_bias:T
>read_48_disablecopyonread_multi_head_attention_14_query_kernel:N
<read_49_disablecopyonread_multi_head_attention_14_query_bias:R
<read_50_disablecopyonread_multi_head_attention_14_key_kernel:L
:read_51_disablecopyonread_multi_head_attention_14_key_bias:T
>read_52_disablecopyonread_multi_head_attention_14_value_kernel:N
<read_53_disablecopyonread_multi_head_attention_14_value_bias:_
Iread_54_disablecopyonread_multi_head_attention_14_attention_output_kernel:U
Gread_55_disablecopyonread_multi_head_attention_14_attention_output_bias:T
>read_56_disablecopyonread_multi_head_attention_15_query_kernel:N
<read_57_disablecopyonread_multi_head_attention_15_query_bias:R
<read_58_disablecopyonread_multi_head_attention_15_key_kernel:L
:read_59_disablecopyonread_multi_head_attention_15_key_bias:T
>read_60_disablecopyonread_multi_head_attention_15_value_kernel:N
<read_61_disablecopyonread_multi_head_attention_15_value_bias:_
Iread_62_disablecopyonread_multi_head_attention_15_attention_output_kernel:U
Gread_63_disablecopyonread_multi_head_attention_15_attention_output_bias:T
>read_64_disablecopyonread_multi_head_attention_16_query_kernel:N
<read_65_disablecopyonread_multi_head_attention_16_query_bias:R
<read_66_disablecopyonread_multi_head_attention_16_key_kernel:L
:read_67_disablecopyonread_multi_head_attention_16_key_bias:T
>read_68_disablecopyonread_multi_head_attention_16_value_kernel:N
<read_69_disablecopyonread_multi_head_attention_16_value_bias:_
Iread_70_disablecopyonread_multi_head_attention_16_attention_output_kernel:U
Gread_71_disablecopyonread_multi_head_attention_16_attention_output_bias:T
>read_72_disablecopyonread_multi_head_attention_17_query_kernel:N
<read_73_disablecopyonread_multi_head_attention_17_query_bias:R
<read_74_disablecopyonread_multi_head_attention_17_key_kernel:L
:read_75_disablecopyonread_multi_head_attention_17_key_bias:T
>read_76_disablecopyonread_multi_head_attention_17_value_kernel:N
<read_77_disablecopyonread_multi_head_attention_17_value_bias:_
Iread_78_disablecopyonread_multi_head_attention_17_attention_output_kernel:U
Gread_79_disablecopyonread_multi_head_attention_17_attention_output_bias:
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
Read/DisableCopyOnReadDisableCopyOnRead3read_disablecopyonread_layer_normalization_20_gamma"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp3read_disablecopyonread_layer_normalization_20_gamma^Read/DisableCopyOnRead"/device:CPU:0*
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
Read_1/DisableCopyOnReadDisableCopyOnRead4read_1_disablecopyonread_layer_normalization_20_beta"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp4read_1_disablecopyonread_layer_normalization_20_beta^Read_1/DisableCopyOnRead"/device:CPU:0*
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
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_12_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
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
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_12_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_12_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
Read_4/DisableCopyOnReadDisableCopyOnRead5read_4_disablecopyonread_layer_normalization_21_gamma"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp5read_4_disablecopyonread_layer_normalization_21_gamma^Read_4/DisableCopyOnRead"/device:CPU:0*
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
Read_5/DisableCopyOnReadDisableCopyOnRead4read_5_disablecopyonread_layer_normalization_21_beta"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp4read_5_disablecopyonread_layer_normalization_21_beta^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead5read_6_disablecopyonread_layer_normalization_22_gamma"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp5read_6_disablecopyonread_layer_normalization_22_gamma^Read_6/DisableCopyOnRead"/device:CPU:0*
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
Read_7/DisableCopyOnReadDisableCopyOnRead4read_7_disablecopyonread_layer_normalization_22_beta"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp4read_7_disablecopyonread_layer_normalization_22_beta^Read_7/DisableCopyOnRead"/device:CPU:0*
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
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_dense_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_dense_13_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_dense_13_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_dense_13_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
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
Read_10/DisableCopyOnReadDisableCopyOnRead6read_10_disablecopyonread_layer_normalization_24_gamma"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp6read_10_disablecopyonread_layer_normalization_24_gamma^Read_10/DisableCopyOnRead"/device:CPU:0*
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
Read_11/DisableCopyOnReadDisableCopyOnRead5read_11_disablecopyonread_layer_normalization_24_beta"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp5read_11_disablecopyonread_layer_normalization_24_beta^Read_11/DisableCopyOnRead"/device:CPU:0*
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
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_layer_normalization_23_gamma"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_layer_normalization_23_gamma^Read_12/DisableCopyOnRead"/device:CPU:0*
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
Read_13/DisableCopyOnReadDisableCopyOnRead5read_13_disablecopyonread_layer_normalization_23_beta"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp5read_13_disablecopyonread_layer_normalization_23_beta^Read_13/DisableCopyOnRead"/device:CPU:0*
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
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_layer_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_layer_normalization_25_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
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
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_layer_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_layer_normalization_25_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
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
Read_16/DisableCopyOnReadDisableCopyOnRead)read_16_disablecopyonread_dense_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp)read_16_disablecopyonread_dense_14_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
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
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_dense_14_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_dense_14_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
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
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_layer_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp6read_18_disablecopyonread_layer_normalization_27_gamma^Read_18/DisableCopyOnRead"/device:CPU:0*
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
Read_19/DisableCopyOnReadDisableCopyOnRead5read_19_disablecopyonread_layer_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp5read_19_disablecopyonread_layer_normalization_27_beta^Read_19/DisableCopyOnRead"/device:CPU:0*
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
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_layer_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_layer_normalization_26_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
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
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_layer_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_layer_normalization_26_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
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
Read_22/DisableCopyOnReadDisableCopyOnRead6read_22_disablecopyonread_layer_normalization_28_gamma"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp6read_22_disablecopyonread_layer_normalization_28_gamma^Read_22/DisableCopyOnRead"/device:CPU:0*
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
Read_23/DisableCopyOnReadDisableCopyOnRead5read_23_disablecopyonread_layer_normalization_28_beta"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp5read_23_disablecopyonread_layer_normalization_28_beta^Read_23/DisableCopyOnRead"/device:CPU:0*
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
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_dense_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_dense_15_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
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
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_dense_15_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_dense_15_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
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
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_layer_normalization_29_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_layer_normalization_29_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
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
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_layer_normalization_29_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_layer_normalization_29_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
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
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp)read_28_disablecopyonread_dense_16_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
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
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_dense_16_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
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
Read_30/DisableCopyOnReadDisableCopyOnRead)read_30_disablecopyonread_dense_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_dense_17_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
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
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_dense_17_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_dense_17_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
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
Read_32/DisableCopyOnReadDisableCopyOnRead>read_32_disablecopyonread_multi_head_attention_12_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp>read_32_disablecopyonread_multi_head_attention_12_query_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*"
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
Read_33/DisableCopyOnReadDisableCopyOnRead<read_33_disablecopyonread_multi_head_attention_12_query_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp<read_33_disablecopyonread_multi_head_attention_12_query_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
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
Read_34/DisableCopyOnReadDisableCopyOnRead<read_34_disablecopyonread_multi_head_attention_12_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp<read_34_disablecopyonread_multi_head_attention_12_key_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*"
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
Read_35/DisableCopyOnReadDisableCopyOnRead:read_35_disablecopyonread_multi_head_attention_12_key_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp:read_35_disablecopyonread_multi_head_attention_12_key_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
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
Read_36/DisableCopyOnReadDisableCopyOnRead>read_36_disablecopyonread_multi_head_attention_12_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp>read_36_disablecopyonread_multi_head_attention_12_value_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*"
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
Read_37/DisableCopyOnReadDisableCopyOnRead<read_37_disablecopyonread_multi_head_attention_12_value_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp<read_37_disablecopyonread_multi_head_attention_12_value_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
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
Read_38/DisableCopyOnReadDisableCopyOnReadIread_38_disablecopyonread_multi_head_attention_12_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOpIread_38_disablecopyonread_multi_head_attention_12_attention_output_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*"
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
Read_39/DisableCopyOnReadDisableCopyOnReadGread_39_disablecopyonread_multi_head_attention_12_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOpGread_39_disablecopyonread_multi_head_attention_12_attention_output_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
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
Read_40/DisableCopyOnReadDisableCopyOnRead>read_40_disablecopyonread_multi_head_attention_13_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp>read_40_disablecopyonread_multi_head_attention_13_query_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*"
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
Read_41/DisableCopyOnReadDisableCopyOnRead<read_41_disablecopyonread_multi_head_attention_13_query_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp<read_41_disablecopyonread_multi_head_attention_13_query_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
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
Read_42/DisableCopyOnReadDisableCopyOnRead<read_42_disablecopyonread_multi_head_attention_13_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp<read_42_disablecopyonread_multi_head_attention_13_key_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*"
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
Read_43/DisableCopyOnReadDisableCopyOnRead:read_43_disablecopyonread_multi_head_attention_13_key_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp:read_43_disablecopyonread_multi_head_attention_13_key_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
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
Read_44/DisableCopyOnReadDisableCopyOnRead>read_44_disablecopyonread_multi_head_attention_13_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp>read_44_disablecopyonread_multi_head_attention_13_value_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*"
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
Read_45/DisableCopyOnReadDisableCopyOnRead<read_45_disablecopyonread_multi_head_attention_13_value_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp<read_45_disablecopyonread_multi_head_attention_13_value_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
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
Read_46/DisableCopyOnReadDisableCopyOnReadIread_46_disablecopyonread_multi_head_attention_13_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOpIread_46_disablecopyonread_multi_head_attention_13_attention_output_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*"
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
Read_47/DisableCopyOnReadDisableCopyOnReadGread_47_disablecopyonread_multi_head_attention_13_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOpGread_47_disablecopyonread_multi_head_attention_13_attention_output_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
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
Read_48/DisableCopyOnReadDisableCopyOnRead>read_48_disablecopyonread_multi_head_attention_14_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp>read_48_disablecopyonread_multi_head_attention_14_query_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*"
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
Read_49/DisableCopyOnReadDisableCopyOnRead<read_49_disablecopyonread_multi_head_attention_14_query_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp<read_49_disablecopyonread_multi_head_attention_14_query_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
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
Read_50/DisableCopyOnReadDisableCopyOnRead<read_50_disablecopyonread_multi_head_attention_14_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp<read_50_disablecopyonread_multi_head_attention_14_key_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*"
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
Read_51/DisableCopyOnReadDisableCopyOnRead:read_51_disablecopyonread_multi_head_attention_14_key_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp:read_51_disablecopyonread_multi_head_attention_14_key_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
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
Read_52/DisableCopyOnReadDisableCopyOnRead>read_52_disablecopyonread_multi_head_attention_14_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp>read_52_disablecopyonread_multi_head_attention_14_value_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*"
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
Read_53/DisableCopyOnReadDisableCopyOnRead<read_53_disablecopyonread_multi_head_attention_14_value_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp<read_53_disablecopyonread_multi_head_attention_14_value_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
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
Read_54/DisableCopyOnReadDisableCopyOnReadIread_54_disablecopyonread_multi_head_attention_14_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOpIread_54_disablecopyonread_multi_head_attention_14_attention_output_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*"
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
Read_55/DisableCopyOnReadDisableCopyOnReadGread_55_disablecopyonread_multi_head_attention_14_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOpGread_55_disablecopyonread_multi_head_attention_14_attention_output_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
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
Read_56/DisableCopyOnReadDisableCopyOnRead>read_56_disablecopyonread_multi_head_attention_15_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp>read_56_disablecopyonread_multi_head_attention_15_query_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*"
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
Read_57/DisableCopyOnReadDisableCopyOnRead<read_57_disablecopyonread_multi_head_attention_15_query_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp<read_57_disablecopyonread_multi_head_attention_15_query_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
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
Read_58/DisableCopyOnReadDisableCopyOnRead<read_58_disablecopyonread_multi_head_attention_15_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp<read_58_disablecopyonread_multi_head_attention_15_key_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*"
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
Read_59/DisableCopyOnReadDisableCopyOnRead:read_59_disablecopyonread_multi_head_attention_15_key_bias"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp:read_59_disablecopyonread_multi_head_attention_15_key_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
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
Read_60/DisableCopyOnReadDisableCopyOnRead>read_60_disablecopyonread_multi_head_attention_15_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp>read_60_disablecopyonread_multi_head_attention_15_value_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*"
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
Read_61/DisableCopyOnReadDisableCopyOnRead<read_61_disablecopyonread_multi_head_attention_15_value_bias"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp<read_61_disablecopyonread_multi_head_attention_15_value_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
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
Read_62/DisableCopyOnReadDisableCopyOnReadIread_62_disablecopyonread_multi_head_attention_15_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOpIread_62_disablecopyonread_multi_head_attention_15_attention_output_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*"
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
Read_63/DisableCopyOnReadDisableCopyOnReadGread_63_disablecopyonread_multi_head_attention_15_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOpGread_63_disablecopyonread_multi_head_attention_15_attention_output_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
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
Read_64/DisableCopyOnReadDisableCopyOnRead>read_64_disablecopyonread_multi_head_attention_16_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp>read_64_disablecopyonread_multi_head_attention_16_query_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*"
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
Read_65/DisableCopyOnReadDisableCopyOnRead<read_65_disablecopyonread_multi_head_attention_16_query_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp<read_65_disablecopyonread_multi_head_attention_16_query_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
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
Read_66/DisableCopyOnReadDisableCopyOnRead<read_66_disablecopyonread_multi_head_attention_16_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp<read_66_disablecopyonread_multi_head_attention_16_key_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*"
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
Read_67/DisableCopyOnReadDisableCopyOnRead:read_67_disablecopyonread_multi_head_attention_16_key_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp:read_67_disablecopyonread_multi_head_attention_16_key_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
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
Read_68/DisableCopyOnReadDisableCopyOnRead>read_68_disablecopyonread_multi_head_attention_16_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp>read_68_disablecopyonread_multi_head_attention_16_value_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*"
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
Read_69/DisableCopyOnReadDisableCopyOnRead<read_69_disablecopyonread_multi_head_attention_16_value_bias"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp<read_69_disablecopyonread_multi_head_attention_16_value_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
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
Read_70/DisableCopyOnReadDisableCopyOnReadIread_70_disablecopyonread_multi_head_attention_16_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOpIread_70_disablecopyonread_multi_head_attention_16_attention_output_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*"
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
Read_71/DisableCopyOnReadDisableCopyOnReadGread_71_disablecopyonread_multi_head_attention_16_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOpGread_71_disablecopyonread_multi_head_attention_16_attention_output_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
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
Read_72/DisableCopyOnReadDisableCopyOnRead>read_72_disablecopyonread_multi_head_attention_17_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp>read_72_disablecopyonread_multi_head_attention_17_query_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*"
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
Read_73/DisableCopyOnReadDisableCopyOnRead<read_73_disablecopyonread_multi_head_attention_17_query_bias"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp<read_73_disablecopyonread_multi_head_attention_17_query_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
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
Read_74/DisableCopyOnReadDisableCopyOnRead<read_74_disablecopyonread_multi_head_attention_17_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp<read_74_disablecopyonread_multi_head_attention_17_key_kernel^Read_74/DisableCopyOnRead"/device:CPU:0*"
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
Read_75/DisableCopyOnReadDisableCopyOnRead:read_75_disablecopyonread_multi_head_attention_17_key_bias"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp:read_75_disablecopyonread_multi_head_attention_17_key_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
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
Read_76/DisableCopyOnReadDisableCopyOnRead>read_76_disablecopyonread_multi_head_attention_17_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp>read_76_disablecopyonread_multi_head_attention_17_value_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*"
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
Read_77/DisableCopyOnReadDisableCopyOnRead<read_77_disablecopyonread_multi_head_attention_17_value_bias"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp<read_77_disablecopyonread_multi_head_attention_17_value_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
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
Read_78/DisableCopyOnReadDisableCopyOnReadIread_78_disablecopyonread_multi_head_attention_17_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOpIread_78_disablecopyonread_multi_head_attention_17_attention_output_kernel^Read_78/DisableCopyOnRead"/device:CPU:0*"
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
Read_79/DisableCopyOnReadDisableCopyOnReadGread_79_disablecopyonread_multi_head_attention_17_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOpGread_79_disablecopyonread_multi_head_attention_17_attention_output_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
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
_user_specified_namefile_prefix:<8
6
_user_specified_namelayer_normalization_20/gamma:;7
5
_user_specified_namelayer_normalization_20/beta:/+
)
_user_specified_namedense_12/kernel:-)
'
_user_specified_namedense_12/bias:<8
6
_user_specified_namelayer_normalization_21/gamma:;7
5
_user_specified_namelayer_normalization_21/beta:<8
6
_user_specified_namelayer_normalization_22/gamma:;7
5
_user_specified_namelayer_normalization_22/beta:/	+
)
_user_specified_namedense_13/kernel:-
)
'
_user_specified_namedense_13/bias:<8
6
_user_specified_namelayer_normalization_24/gamma:;7
5
_user_specified_namelayer_normalization_24/beta:<8
6
_user_specified_namelayer_normalization_23/gamma:;7
5
_user_specified_namelayer_normalization_23/beta:<8
6
_user_specified_namelayer_normalization_25/gamma:;7
5
_user_specified_namelayer_normalization_25/beta:/+
)
_user_specified_namedense_14/kernel:-)
'
_user_specified_namedense_14/bias:<8
6
_user_specified_namelayer_normalization_27/gamma:;7
5
_user_specified_namelayer_normalization_27/beta:<8
6
_user_specified_namelayer_normalization_26/gamma:;7
5
_user_specified_namelayer_normalization_26/beta:<8
6
_user_specified_namelayer_normalization_28/gamma:;7
5
_user_specified_namelayer_normalization_28/beta:/+
)
_user_specified_namedense_15/kernel:-)
'
_user_specified_namedense_15/bias:<8
6
_user_specified_namelayer_normalization_29/gamma:;7
5
_user_specified_namelayer_normalization_29/beta:/+
)
_user_specified_namedense_16/kernel:-)
'
_user_specified_namedense_16/bias:/+
)
_user_specified_namedense_17/kernel:- )
'
_user_specified_namedense_17/bias:D!@
>
_user_specified_name&$multi_head_attention_12/query/kernel:B">
<
_user_specified_name$"multi_head_attention_12/query/bias:B#>
<
_user_specified_name$"multi_head_attention_12/key/kernel:@$<
:
_user_specified_name" multi_head_attention_12/key/bias:D%@
>
_user_specified_name&$multi_head_attention_12/value/kernel:B&>
<
_user_specified_name$"multi_head_attention_12/value/bias:O'K
I
_user_specified_name1/multi_head_attention_12/attention_output/kernel:M(I
G
_user_specified_name/-multi_head_attention_12/attention_output/bias:D)@
>
_user_specified_name&$multi_head_attention_13/query/kernel:B*>
<
_user_specified_name$"multi_head_attention_13/query/bias:B+>
<
_user_specified_name$"multi_head_attention_13/key/kernel:@,<
:
_user_specified_name" multi_head_attention_13/key/bias:D-@
>
_user_specified_name&$multi_head_attention_13/value/kernel:B.>
<
_user_specified_name$"multi_head_attention_13/value/bias:O/K
I
_user_specified_name1/multi_head_attention_13/attention_output/kernel:M0I
G
_user_specified_name/-multi_head_attention_13/attention_output/bias:D1@
>
_user_specified_name&$multi_head_attention_14/query/kernel:B2>
<
_user_specified_name$"multi_head_attention_14/query/bias:B3>
<
_user_specified_name$"multi_head_attention_14/key/kernel:@4<
:
_user_specified_name" multi_head_attention_14/key/bias:D5@
>
_user_specified_name&$multi_head_attention_14/value/kernel:B6>
<
_user_specified_name$"multi_head_attention_14/value/bias:O7K
I
_user_specified_name1/multi_head_attention_14/attention_output/kernel:M8I
G
_user_specified_name/-multi_head_attention_14/attention_output/bias:D9@
>
_user_specified_name&$multi_head_attention_15/query/kernel:B:>
<
_user_specified_name$"multi_head_attention_15/query/bias:B;>
<
_user_specified_name$"multi_head_attention_15/key/kernel:@<<
:
_user_specified_name" multi_head_attention_15/key/bias:D=@
>
_user_specified_name&$multi_head_attention_15/value/kernel:B>>
<
_user_specified_name$"multi_head_attention_15/value/bias:O?K
I
_user_specified_name1/multi_head_attention_15/attention_output/kernel:M@I
G
_user_specified_name/-multi_head_attention_15/attention_output/bias:DA@
>
_user_specified_name&$multi_head_attention_16/query/kernel:BB>
<
_user_specified_name$"multi_head_attention_16/query/bias:BC>
<
_user_specified_name$"multi_head_attention_16/key/kernel:@D<
:
_user_specified_name" multi_head_attention_16/key/bias:DE@
>
_user_specified_name&$multi_head_attention_16/value/kernel:BF>
<
_user_specified_name$"multi_head_attention_16/value/bias:OGK
I
_user_specified_name1/multi_head_attention_16/attention_output/kernel:MHI
G
_user_specified_name/-multi_head_attention_16/attention_output/bias:DI@
>
_user_specified_name&$multi_head_attention_17/query/kernel:BJ>
<
_user_specified_name$"multi_head_attention_17/query/bias:BK>
<
_user_specified_name$"multi_head_attention_17/key/kernel:@L<
:
_user_specified_name" multi_head_attention_17/key/bias:DM@
>
_user_specified_name&$multi_head_attention_17/value/kernel:BN>
<
_user_specified_name$"multi_head_attention_17/value/bias:OOK
I
_user_specified_name1/multi_head_attention_17/attention_output/kernel:MPI
G
_user_specified_name/-multi_head_attention_17/attention_output/bias:?Q;

_output_shapes
: 
!
_user_specified_name	Const_1
�
c
E__inference_dropout_12_layer_call_and_return_conditional_losses_16631

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
6__inference_layer_normalization_20_layer_call_fn_16558

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
GPU 2J 8� *Z
fURS
Q__inference_layer_normalization_20_layer_call_and_return_conditional_losses_14312j
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
 
_user_specified_nameinputs:%!

_user_specified_name16552:%!

_user_specified_name16554
�
c
E__inference_dropout_16_layer_call_and_return_conditional_losses_15428

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
C__inference_dense_16_layer_call_and_return_conditional_losses_14998

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

d
E__inference_dropout_15_layer_call_and_return_conditional_losses_17366

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
Q__inference_layer_normalization_20_layer_call_and_return_conditional_losses_14312

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

d
E__inference_dropout_13_layer_call_and_return_conditional_losses_14490

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
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_14453

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
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_16945	
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
7__inference_multi_head_attention_13_layer_call_fn_16684	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_14413j
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

_user_specified_namevalue:%!

_user_specified_name16666:%!

_user_specified_name16668:%!

_user_specified_name16670:%!

_user_specified_name16672:%!

_user_specified_name16674:%!

_user_specified_name16676:%!

_user_specified_name16678:%	!

_user_specified_name16680
�
�
7__inference_multi_head_attention_14_layer_call_fn_16875	
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
GPU 2J 8� *[
fVRT
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_15203j
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

_user_specified_namevalue:%!

_user_specified_name16857:%!

_user_specified_name16859:%!

_user_specified_name16861:%!

_user_specified_name16863:%!

_user_specified_name16865:%!

_user_specified_name16867:%!

_user_specified_name16869:%	!

_user_specified_name16871
�;
�
#__inference_signature_wrapper_16435
input_3
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

StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8� *)
f$R"
 __inference__wrapped_model_14222f
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
_user_specified_name	input_3:EA

_output_shapes

:

_user_specified_name16271:%!

_user_specified_name16273:%!

_user_specified_name16275:%!

_user_specified_name16277:%!

_user_specified_name16279:%!

_user_specified_name16281:%!

_user_specified_name16283:%!

_user_specified_name16285:%	!

_user_specified_name16287:%
!

_user_specified_name16289:%!

_user_specified_name16291:%!

_user_specified_name16293:%!

_user_specified_name16295:%!

_user_specified_name16297:%!

_user_specified_name16299:%!

_user_specified_name16301:%!

_user_specified_name16303:%!

_user_specified_name16305:%!

_user_specified_name16307:%!

_user_specified_name16309:%!

_user_specified_name16311:%!

_user_specified_name16313:%!

_user_specified_name16315:%!

_user_specified_name16317:%!

_user_specified_name16319:%!

_user_specified_name16321:%!

_user_specified_name16323:%!

_user_specified_name16325:%!

_user_specified_name16327:%!

_user_specified_name16329:%!

_user_specified_name16331:% !

_user_specified_name16333:%!!

_user_specified_name16335:%"!

_user_specified_name16337:%#!

_user_specified_name16339:%$!

_user_specified_name16341:%%!

_user_specified_name16343:%&!

_user_specified_name16345:%'!

_user_specified_name16347:%(!

_user_specified_name16349:%)!

_user_specified_name16351:%*!

_user_specified_name16353:%+!

_user_specified_name16355:%,!

_user_specified_name16357:%-!

_user_specified_name16359:%.!

_user_specified_name16361:%/!

_user_specified_name16363:%0!

_user_specified_name16365:%1!

_user_specified_name16367:%2!

_user_specified_name16369:%3!

_user_specified_name16371:%4!

_user_specified_name16373:%5!

_user_specified_name16375:%6!

_user_specified_name16377:%7!

_user_specified_name16379:%8!

_user_specified_name16381:%9!

_user_specified_name16383:%:!

_user_specified_name16385:%;!

_user_specified_name16387:%<!

_user_specified_name16389:%=!

_user_specified_name16391:%>!

_user_specified_name16393:%?!

_user_specified_name16395:%@!

_user_specified_name16397:%A!

_user_specified_name16399:%B!

_user_specified_name16401:%C!

_user_specified_name16403:%D!

_user_specified_name16405:%E!

_user_specified_name16407:%F!

_user_specified_name16409:%G!

_user_specified_name16411:%H!

_user_specified_name16413:%I!

_user_specified_name16415:%J!

_user_specified_name16417:%K!

_user_specified_name16419:%L!

_user_specified_name16421:%M!

_user_specified_name16423:%N!

_user_specified_name16425:%O!

_user_specified_name16427:%P!

_user_specified_name16429:%Q!

_user_specified_name16431
�
c
E__inference_dropout_16_layer_call_and_return_conditional_losses_17574

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
C__inference_dense_17_layer_call_and_return_conditional_losses_15013

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
c
E__inference_dropout_17_layer_call_and_return_conditional_losses_15445

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
input_3+
serving_default_input_3:03
dense_17'
StatefulPartitionedCall:0tensorflow/serving/predict:ï
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
'__inference_model_2_layer_call_fn_15632
'__inference_model_2_layer_call_fn_15799�
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
B__inference_model_2_layer_call_and_return_conditional_losses_15020
B__inference_model_2_layer_call_and_return_conditional_losses_15465�
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
 __inference__wrapped_model_14222input_3"�
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
7__inference_multi_head_attention_12_layer_call_fn_16457
7__inference_multi_head_attention_12_layer_call_fn_16479�
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
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_16514
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_16549�
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
6__inference_layer_normalization_20_layer_call_fn_16558�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_20_layer_call_and_return_conditional_losses_16580�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_20/gamma
):'2layer_normalization_20/beta
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
(__inference_dense_12_layer_call_fn_16589�
���
FullArgSpec
args�

jinputs
varargs
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
C__inference_dense_12_layer_call_and_return_conditional_losses_16604�
���
FullArgSpec
args�

jinputs
varargs
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
!:2dense_12/kernel
:2dense_12/bias
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
�trace_12�
*__inference_dropout_12_layer_call_fn_16609
*__inference_dropout_12_layer_call_fn_16614�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_12_layer_call_and_return_conditional_losses_16626
E__inference_dropout_12_layer_call_and_return_conditional_losses_16631�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_21_layer_call_fn_16640�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_21_layer_call_and_return_conditional_losses_16662�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_21/gamma
):'2layer_normalization_21/beta
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
7__inference_multi_head_attention_13_layer_call_fn_16684
7__inference_multi_head_attention_13_layer_call_fn_16706�
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
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_16741
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_16776�
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
6__inference_layer_normalization_22_layer_call_fn_16785�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_16807�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_22/gamma
):'2layer_normalization_22/beta
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
(__inference_dense_13_layer_call_fn_16816�
���
FullArgSpec
args�

jinputs
varargs
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
C__inference_dense_13_layer_call_and_return_conditional_losses_16831�
���
FullArgSpec
args�

jinputs
varargs
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
!:2dense_13/kernel
:2dense_13/bias
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
7__inference_multi_head_attention_14_layer_call_fn_16853
7__inference_multi_head_attention_14_layer_call_fn_16875�
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
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_16910
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_16945�
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
*__inference_dropout_13_layer_call_fn_16950
*__inference_dropout_13_layer_call_fn_16955�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_13_layer_call_and_return_conditional_losses_16967
E__inference_dropout_13_layer_call_and_return_conditional_losses_16972�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_24_layer_call_fn_16981�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_24_layer_call_and_return_conditional_losses_17003�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_24/gamma
):'2layer_normalization_24/beta
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
6__inference_layer_normalization_23_layer_call_fn_17012�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_17034�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_23/gamma
):'2layer_normalization_23/beta
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
7__inference_multi_head_attention_15_layer_call_fn_17056
7__inference_multi_head_attention_15_layer_call_fn_17078�
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
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_17113
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_17148�
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
*__inference_dropout_14_layer_call_fn_17153
*__inference_dropout_14_layer_call_fn_17158�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_14_layer_call_and_return_conditional_losses_17170
E__inference_dropout_14_layer_call_and_return_conditional_losses_17175�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_25_layer_call_fn_17184�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_25_layer_call_and_return_conditional_losses_17206�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_25/gamma
):'2layer_normalization_25/beta
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
(__inference_dense_14_layer_call_fn_17215�
���
FullArgSpec
args�

jinputs
varargs
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
C__inference_dense_14_layer_call_and_return_conditional_losses_17230�
���
FullArgSpec
args�

jinputs
varargs
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
!:2dense_14/kernel
:2dense_14/bias
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
7__inference_multi_head_attention_16_layer_call_fn_17252
7__inference_multi_head_attention_16_layer_call_fn_17274�
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
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_17309
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_17344�
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
*__inference_dropout_15_layer_call_fn_17349
*__inference_dropout_15_layer_call_fn_17354�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_15_layer_call_and_return_conditional_losses_17366
E__inference_dropout_15_layer_call_and_return_conditional_losses_17371�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_27_layer_call_fn_17380�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_27_layer_call_and_return_conditional_losses_17402�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_27/gamma
):'2layer_normalization_27/beta
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
6__inference_layer_normalization_26_layer_call_fn_17411�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_26_layer_call_and_return_conditional_losses_17433�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_26/gamma
):'2layer_normalization_26/beta
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
7__inference_multi_head_attention_17_layer_call_fn_17455
7__inference_multi_head_attention_17_layer_call_fn_17477�
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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_17512
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_17547�
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
*__inference_dropout_16_layer_call_fn_17552
*__inference_dropout_16_layer_call_fn_17557�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_16_layer_call_and_return_conditional_losses_17569
E__inference_dropout_16_layer_call_and_return_conditional_losses_17574�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_28_layer_call_fn_17583�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_28_layer_call_and_return_conditional_losses_17605�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_28/gamma
):'2layer_normalization_28/beta
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
(__inference_dense_15_layer_call_fn_17614�
���
FullArgSpec
args�

jinputs
varargs
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
C__inference_dense_15_layer_call_and_return_conditional_losses_17629�
���
FullArgSpec
args�

jinputs
varargs
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
!:2dense_15/kernel
:2dense_15/bias
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
*__inference_dropout_17_layer_call_fn_17634
*__inference_dropout_17_layer_call_fn_17639�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_17_layer_call_and_return_conditional_losses_17651
E__inference_dropout_17_layer_call_and_return_conditional_losses_17656�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_29_layer_call_fn_17665�
���
FullArgSpec
args�

jinputs
varargs
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
Q__inference_layer_normalization_29_layer_call_and_return_conditional_losses_17687�
���
FullArgSpec
args�

jinputs
varargs
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
*:(2layer_normalization_29/gamma
):'2layer_normalization_29/beta
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
:__inference_global_average_pooling1d_2_layer_call_fn_17692�
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
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_17698�
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
(__inference_dense_16_layer_call_fn_17707�
���
FullArgSpec
args�

jinputs
varargs
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
C__inference_dense_16_layer_call_and_return_conditional_losses_17717�
���
FullArgSpec
args�

jinputs
varargs
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
!: 2dense_16/kernel
: 2dense_16/bias
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
(__inference_dense_17_layer_call_fn_17726�
���
FullArgSpec
args�

jinputs
varargs
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
C__inference_dense_17_layer_call_and_return_conditional_losses_17736�
���
FullArgSpec
args�

jinputs
varargs
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
!: 2dense_17/kernel
:2dense_17/bias
::82$multi_head_attention_12/query/kernel
4:22"multi_head_attention_12/query/bias
8:62"multi_head_attention_12/key/kernel
2:02 multi_head_attention_12/key/bias
::82$multi_head_attention_12/value/kernel
4:22"multi_head_attention_12/value/bias
E:C2/multi_head_attention_12/attention_output/kernel
;:92-multi_head_attention_12/attention_output/bias
::82$multi_head_attention_13/query/kernel
4:22"multi_head_attention_13/query/bias
8:62"multi_head_attention_13/key/kernel
2:02 multi_head_attention_13/key/bias
::82$multi_head_attention_13/value/kernel
4:22"multi_head_attention_13/value/bias
E:C2/multi_head_attention_13/attention_output/kernel
;:92-multi_head_attention_13/attention_output/bias
::82$multi_head_attention_14/query/kernel
4:22"multi_head_attention_14/query/bias
8:62"multi_head_attention_14/key/kernel
2:02 multi_head_attention_14/key/bias
::82$multi_head_attention_14/value/kernel
4:22"multi_head_attention_14/value/bias
E:C2/multi_head_attention_14/attention_output/kernel
;:92-multi_head_attention_14/attention_output/bias
::82$multi_head_attention_15/query/kernel
4:22"multi_head_attention_15/query/bias
8:62"multi_head_attention_15/key/kernel
2:02 multi_head_attention_15/key/bias
::82$multi_head_attention_15/value/kernel
4:22"multi_head_attention_15/value/bias
E:C2/multi_head_attention_15/attention_output/kernel
;:92-multi_head_attention_15/attention_output/bias
::82$multi_head_attention_16/query/kernel
4:22"multi_head_attention_16/query/bias
8:62"multi_head_attention_16/key/kernel
2:02 multi_head_attention_16/key/bias
::82$multi_head_attention_16/value/kernel
4:22"multi_head_attention_16/value/bias
E:C2/multi_head_attention_16/attention_output/kernel
;:92-multi_head_attention_16/attention_output/bias
::82$multi_head_attention_17/query/kernel
4:22"multi_head_attention_17/query/bias
8:62"multi_head_attention_17/key/kernel
2:02 multi_head_attention_17/key/bias
::82$multi_head_attention_17/value/kernel
4:22"multi_head_attention_17/value/bias
E:C2/multi_head_attention_17/attention_output/kernel
;:92-multi_head_attention_17/attention_output/bias
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
'__inference_model_2_layer_call_fn_15632input_3"�
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
'__inference_model_2_layer_call_fn_15799input_3"�
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
B__inference_model_2_layer_call_and_return_conditional_losses_15020input_3"�
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
B__inference_model_2_layer_call_and_return_conditional_losses_15465input_3"�
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
#__inference_signature_wrapper_16435input_3"�
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
7__inference_multi_head_attention_12_layer_call_fn_16457queryvalue"�
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
7__inference_multi_head_attention_12_layer_call_fn_16479queryvalue"�
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
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_16514queryvalue"�
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
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_16549queryvalue"�
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
6__inference_layer_normalization_20_layer_call_fn_16558inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_20_layer_call_and_return_conditional_losses_16580inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
(__inference_dense_12_layer_call_fn_16589inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
C__inference_dense_12_layer_call_and_return_conditional_losses_16604inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
*__inference_dropout_12_layer_call_fn_16609inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
*__inference_dropout_12_layer_call_fn_16614inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_12_layer_call_and_return_conditional_losses_16626inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_12_layer_call_and_return_conditional_losses_16631inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_21_layer_call_fn_16640inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_21_layer_call_and_return_conditional_losses_16662inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
7__inference_multi_head_attention_13_layer_call_fn_16684queryvalue"�
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
7__inference_multi_head_attention_13_layer_call_fn_16706queryvalue"�
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
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_16741queryvalue"�
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
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_16776queryvalue"�
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
6__inference_layer_normalization_22_layer_call_fn_16785inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_16807inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
(__inference_dense_13_layer_call_fn_16816inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
C__inference_dense_13_layer_call_and_return_conditional_losses_16831inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
7__inference_multi_head_attention_14_layer_call_fn_16853queryvalue"�
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
7__inference_multi_head_attention_14_layer_call_fn_16875queryvalue"�
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
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_16910queryvalue"�
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
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_16945queryvalue"�
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
*__inference_dropout_13_layer_call_fn_16950inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
*__inference_dropout_13_layer_call_fn_16955inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_13_layer_call_and_return_conditional_losses_16967inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_13_layer_call_and_return_conditional_losses_16972inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_24_layer_call_fn_16981inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_24_layer_call_and_return_conditional_losses_17003inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
6__inference_layer_normalization_23_layer_call_fn_17012inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_17034inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
7__inference_multi_head_attention_15_layer_call_fn_17056queryvalue"�
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
7__inference_multi_head_attention_15_layer_call_fn_17078queryvalue"�
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
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_17113queryvalue"�
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
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_17148queryvalue"�
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
*__inference_dropout_14_layer_call_fn_17153inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
*__inference_dropout_14_layer_call_fn_17158inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_14_layer_call_and_return_conditional_losses_17170inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_14_layer_call_and_return_conditional_losses_17175inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_25_layer_call_fn_17184inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_25_layer_call_and_return_conditional_losses_17206inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
(__inference_dense_14_layer_call_fn_17215inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
C__inference_dense_14_layer_call_and_return_conditional_losses_17230inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
7__inference_multi_head_attention_16_layer_call_fn_17252queryvalue"�
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
7__inference_multi_head_attention_16_layer_call_fn_17274queryvalue"�
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
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_17309queryvalue"�
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
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_17344queryvalue"�
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
*__inference_dropout_15_layer_call_fn_17349inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
*__inference_dropout_15_layer_call_fn_17354inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_15_layer_call_and_return_conditional_losses_17366inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_15_layer_call_and_return_conditional_losses_17371inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_27_layer_call_fn_17380inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_27_layer_call_and_return_conditional_losses_17402inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
6__inference_layer_normalization_26_layer_call_fn_17411inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_26_layer_call_and_return_conditional_losses_17433inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
7__inference_multi_head_attention_17_layer_call_fn_17455queryvalue"�
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
7__inference_multi_head_attention_17_layer_call_fn_17477queryvalue"�
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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_17512queryvalue"�
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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_17547queryvalue"�
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
*__inference_dropout_16_layer_call_fn_17552inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
*__inference_dropout_16_layer_call_fn_17557inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_16_layer_call_and_return_conditional_losses_17569inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_16_layer_call_and_return_conditional_losses_17574inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_28_layer_call_fn_17583inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_28_layer_call_and_return_conditional_losses_17605inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
(__inference_dense_15_layer_call_fn_17614inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
C__inference_dense_15_layer_call_and_return_conditional_losses_17629inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
*__inference_dropout_17_layer_call_fn_17634inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
*__inference_dropout_17_layer_call_fn_17639inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_17_layer_call_and_return_conditional_losses_17651inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
E__inference_dropout_17_layer_call_and_return_conditional_losses_17656inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
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
6__inference_layer_normalization_29_layer_call_fn_17665inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
Q__inference_layer_normalization_29_layer_call_and_return_conditional_losses_17687inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
:__inference_global_average_pooling1d_2_layer_call_fn_17692inputs"�
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
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_17698inputs"�
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
(__inference_dense_16_layer_call_fn_17707inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
C__inference_dense_16_layer_call_and_return_conditional_losses_17717inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
(__inference_dense_17_layer_call_fn_17726inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
C__inference_dense_17_layer_call_and_return_conditional_losses_17736inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
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
 __inference__wrapped_model_14222�����������GHOP`a��������vw~������������������������������������������������������+�(
!�
�
input_3
� "*�'
%
dense_17�
dense_17�
C__inference_dense_12_layer_call_and_return_conditional_losses_16604YOP*�'
 �
�
inputs
� "'�$
�
tensor_0
� z
(__inference_dense_12_layer_call_fn_16589NOP*�'
 �
�
inputs
� "�
unknown�
C__inference_dense_13_layer_call_and_return_conditional_losses_16831Y~*�'
 �
�
inputs
� "'�$
�
tensor_0
� z
(__inference_dense_13_layer_call_fn_16816N~*�'
 �
�
inputs
� "�
unknown�
C__inference_dense_14_layer_call_and_return_conditional_losses_17230[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� |
(__inference_dense_14_layer_call_fn_17215P��*�'
 �
�
inputs
� "�
unknown�
C__inference_dense_15_layer_call_and_return_conditional_losses_17629[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� |
(__inference_dense_15_layer_call_fn_17614P��*�'
 �
�
inputs
� "�
unknown�
C__inference_dense_16_layer_call_and_return_conditional_losses_17717S��&�#
�
�
inputs
� "#� 
�
tensor_0 
� t
(__inference_dense_16_layer_call_fn_17707H��&�#
�
�
inputs
� "�
unknown �
C__inference_dense_17_layer_call_and_return_conditional_losses_17736S��&�#
�
�
inputs 
� "#� 
�
tensor_0
� t
(__inference_dense_17_layer_call_fn_17726H��&�#
�
�
inputs 
� "�
unknown�
E__inference_dropout_12_layer_call_and_return_conditional_losses_16626Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
E__inference_dropout_12_layer_call_and_return_conditional_losses_16631Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� |
*__inference_dropout_12_layer_call_fn_16609N.�+
$�!
�
inputs
p
� "�
unknown|
*__inference_dropout_12_layer_call_fn_16614N.�+
$�!
�
inputs
p 
� "�
unknown�
E__inference_dropout_13_layer_call_and_return_conditional_losses_16967Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
E__inference_dropout_13_layer_call_and_return_conditional_losses_16972Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� |
*__inference_dropout_13_layer_call_fn_16950N.�+
$�!
�
inputs
p
� "�
unknown|
*__inference_dropout_13_layer_call_fn_16955N.�+
$�!
�
inputs
p 
� "�
unknown�
E__inference_dropout_14_layer_call_and_return_conditional_losses_17170Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
E__inference_dropout_14_layer_call_and_return_conditional_losses_17175Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� |
*__inference_dropout_14_layer_call_fn_17153N.�+
$�!
�
inputs
p
� "�
unknown|
*__inference_dropout_14_layer_call_fn_17158N.�+
$�!
�
inputs
p 
� "�
unknown�
E__inference_dropout_15_layer_call_and_return_conditional_losses_17366Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
E__inference_dropout_15_layer_call_and_return_conditional_losses_17371Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� |
*__inference_dropout_15_layer_call_fn_17349N.�+
$�!
�
inputs
p
� "�
unknown|
*__inference_dropout_15_layer_call_fn_17354N.�+
$�!
�
inputs
p 
� "�
unknown�
E__inference_dropout_16_layer_call_and_return_conditional_losses_17569Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
E__inference_dropout_16_layer_call_and_return_conditional_losses_17574Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� |
*__inference_dropout_16_layer_call_fn_17552N.�+
$�!
�
inputs
p
� "�
unknown|
*__inference_dropout_16_layer_call_fn_17557N.�+
$�!
�
inputs
p 
� "�
unknown�
E__inference_dropout_17_layer_call_and_return_conditional_losses_17651Y.�+
$�!
�
inputs
p
� "'�$
�
tensor_0
� �
E__inference_dropout_17_layer_call_and_return_conditional_losses_17656Y.�+
$�!
�
inputs
p 
� "'�$
�
tensor_0
� |
*__inference_dropout_17_layer_call_fn_17634N.�+
$�!
�
inputs
p
� "�
unknown|
*__inference_dropout_17_layer_call_fn_17639N.�+
$�!
�
inputs
p 
� "�
unknown�
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_17698�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
:__inference_global_average_pooling1d_2_layer_call_fn_17692wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
Q__inference_layer_normalization_20_layer_call_and_return_conditional_losses_16580YGH*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_20_layer_call_fn_16558NGH*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_21_layer_call_and_return_conditional_losses_16662Y`a*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_21_layer_call_fn_16640N`a*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_16807Yvw*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_22_layer_call_fn_16785Nvw*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_17034[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_23_layer_call_fn_17012P��*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_24_layer_call_and_return_conditional_losses_17003[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_24_layer_call_fn_16981P��*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_25_layer_call_and_return_conditional_losses_17206[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_25_layer_call_fn_17184P��*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_26_layer_call_and_return_conditional_losses_17433[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_26_layer_call_fn_17411P��*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_27_layer_call_and_return_conditional_losses_17402[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_27_layer_call_fn_17380P��*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_28_layer_call_and_return_conditional_losses_17605[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_28_layer_call_fn_17583P��*�'
 �
�
inputs
� "�
unknown�
Q__inference_layer_normalization_29_layer_call_and_return_conditional_losses_17687[��*�'
 �
�
inputs
� "'�$
�
tensor_0
� �
6__inference_layer_normalization_29_layer_call_fn_17665P��*�'
 �
�
inputs
� "�
unknown�
B__inference_model_2_layer_call_and_return_conditional_losses_15020�����������GHOP`a��������vw~������������������������������������������������������3�0
)�&
�
input_3
p

 
� "#� 
�
tensor_0
� �
B__inference_model_2_layer_call_and_return_conditional_losses_15465�����������GHOP`a��������vw~������������������������������������������������������3�0
)�&
�
input_3
p 

 
� "#� 
�
tensor_0
� �
'__inference_model_2_layer_call_fn_15632�����������GHOP`a��������vw~������������������������������������������������������3�0
)�&
�
input_3
p

 
� "�
unknown�
'__inference_model_2_layer_call_fn_15799�����������GHOP`a��������vw~������������������������������������������������������3�0
)�&
�
input_3
p 

 
� "�
unknown�
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_16514���������Y�V
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
R__inference_multi_head_attention_12_layer_call_and_return_conditional_losses_16549���������Y�V
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
7__inference_multi_head_attention_12_layer_call_fn_16457���������Y�V
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
7__inference_multi_head_attention_12_layer_call_fn_16479���������Y�V
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
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_16741���������Y�V
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
R__inference_multi_head_attention_13_layer_call_and_return_conditional_losses_16776���������Y�V
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
7__inference_multi_head_attention_13_layer_call_fn_16684���������Y�V
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
7__inference_multi_head_attention_13_layer_call_fn_16706���������Y�V
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
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_16910���������Y�V
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
R__inference_multi_head_attention_14_layer_call_and_return_conditional_losses_16945���������Y�V
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
7__inference_multi_head_attention_14_layer_call_fn_16853���������Y�V
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
7__inference_multi_head_attention_14_layer_call_fn_16875���������Y�V
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
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_17113���������Y�V
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
R__inference_multi_head_attention_15_layer_call_and_return_conditional_losses_17148���������Y�V
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
7__inference_multi_head_attention_15_layer_call_fn_17056���������Y�V
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
7__inference_multi_head_attention_15_layer_call_fn_17078���������Y�V
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
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_17309���������Y�V
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
R__inference_multi_head_attention_16_layer_call_and_return_conditional_losses_17344���������Y�V
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
7__inference_multi_head_attention_16_layer_call_fn_17252���������Y�V
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
7__inference_multi_head_attention_16_layer_call_fn_17274���������Y�V
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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_17512���������Y�V
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
R__inference_multi_head_attention_17_layer_call_and_return_conditional_losses_17547���������Y�V
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
7__inference_multi_head_attention_17_layer_call_fn_17455���������Y�V
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
7__inference_multi_head_attention_17_layer_call_fn_17477���������Y�V
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
#__inference_signature_wrapper_16435�����������GHOP`a��������vw~������������������������������������������������������6�3
� 
,�)
'
input_3�
input_3"*�'
%
dense_17�
dense_17