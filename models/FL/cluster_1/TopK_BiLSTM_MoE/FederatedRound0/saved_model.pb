ЃС8
» 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
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
resourceѕ
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
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
Ї
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
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
dtypetypeѕ
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
list(type)(0ѕ
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
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
э
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
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
г
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
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
ѕ"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628Щ■3
И
0bidirectional_91/backward_lstm_91/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20bidirectional_91/backward_lstm_91/lstm_cell/bias
▒
Dbidirectional_91/backward_lstm_91/lstm_cell/bias/Read/ReadVariableOpReadVariableOp0bidirectional_91/backward_lstm_91/lstm_cell/bias*
_output_shapes
: *
dtype0
н
<bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel
═
Pbidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp<bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel*
_output_shapes

: *
dtype0
└
2bidirectional_91/backward_lstm_91/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *C
shared_name42bidirectional_91/backward_lstm_91/lstm_cell/kernel
╣
Fbidirectional_91/backward_lstm_91/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp2bidirectional_91/backward_lstm_91/lstm_cell/kernel*
_output_shapes

: *
dtype0
Х
/bidirectional_91/forward_lstm_91/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/bidirectional_91/forward_lstm_91/lstm_cell/bias
»
Cbidirectional_91/forward_lstm_91/lstm_cell/bias/Read/ReadVariableOpReadVariableOp/bidirectional_91/forward_lstm_91/lstm_cell/bias*
_output_shapes
: *
dtype0
м
;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *L
shared_name=;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel
╦
Obidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel*
_output_shapes

: *
dtype0
Й
1bidirectional_91/forward_lstm_91/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *B
shared_name31bidirectional_91/forward_lstm_91/lstm_cell/kernel
и
Ebidirectional_91/forward_lstm_91/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp1bidirectional_91/forward_lstm_91/lstm_cell/kernel*
_output_shapes

: *
dtype0
t
dense_574/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_574/bias
m
"dense_574/bias/Read/ReadVariableOpReadVariableOpdense_574/bias*
_output_shapes
:*
dtype0
|
dense_574/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_574/kernel
u
$dense_574/kernel/Read/ReadVariableOpReadVariableOpdense_574/kernel*
_output_shapes

:*
dtype0
t
dense_569/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_569/bias
m
"dense_569/bias/Read/ReadVariableOpReadVariableOpdense_569/bias*
_output_shapes
:*
dtype0
|
dense_569/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_569/kernel
u
$dense_569/kernel/Read/ReadVariableOpReadVariableOpdense_569/kernel*
_output_shapes

:*
dtype0
t
dense_564/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_564/bias
m
"dense_564/bias/Read/ReadVariableOpReadVariableOpdense_564/bias*
_output_shapes
:*
dtype0
|
dense_564/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_564/kernel
u
$dense_564/kernel/Read/ReadVariableOpReadVariableOpdense_564/kernel*
_output_shapes

:*
dtype0
t
dense_559/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_559/bias
m
"dense_559/bias/Read/ReadVariableOpReadVariableOpdense_559/bias*
_output_shapes
:*
dtype0
|
dense_559/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_559/kernel
u
$dense_559/kernel/Read/ReadVariableOpReadVariableOpdense_559/kernel*
_output_shapes

:*
dtype0
t
dense_575/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_575/bias
m
"dense_575/bias/Read/ReadVariableOpReadVariableOpdense_575/bias*
_output_shapes
:*
dtype0
}
dense_575/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*!
shared_namedense_575/kernel
v
$dense_575/kernel/Read/ReadVariableOpReadVariableOpdense_575/kernel*
_output_shapes
:	ђ*
dtype0
t
dense_558/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_558/bias
m
"dense_558/bias/Read/ReadVariableOpReadVariableOpdense_558/bias*
_output_shapes
:*
dtype0
|
dense_558/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_558/kernel
u
$dense_558/kernel/Read/ReadVariableOpReadVariableOpdense_558/kernel*
_output_shapes

:*
dtype0
p
serving_default_input_2Placeholder*"
_output_shapes
:*
dtype0*
shape:
Я
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2dense_558/kerneldense_558/biasdense_559/kerneldense_559/biasdense_564/kerneldense_564/biasdense_569/kerneldense_569/biasdense_574/kerneldense_574/bias1bidirectional_91/forward_lstm_91/lstm_cell/kernel;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel/bidirectional_91/forward_lstm_91/lstm_cell/bias2bidirectional_91/backward_lstm_91/lstm_cell/kernel<bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel0bidirectional_91/backward_lstm_91/lstm_cell/biasdense_575/kerneldense_575/bias*
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
GPU 2J 8ѓ */
f*R(
&__inference_signature_wrapper_25659930

NoOpNoOp
љz
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╦y
value┴yBЙy Bиy
О
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
д
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
ј
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
ј
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 

0	keras_api* 
и
1layer_with_weights-0
1layer-0
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses*
и
8layer_with_weights-0
8layer-0
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses*
и
?layer_with_weights-0
?layer-0
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
и
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
ј
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
и
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zforward_layer
[backward_layer*
Ц
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b_random_generator* 
ј
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses* 
д
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias*
і
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
і
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
┤
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ёtrace_0
Ёtrace_1* 

єtrace_0
Єtrace_1* 
* 

ѕserving_default* 

 0
!1*

 0
!1*
* 
ў
Ѕnon_trainable_variables
іlayers
Іmetrics
 їlayer_regularization_losses
Їlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

јtrace_0* 

Јtrace_0* 
`Z
VARIABLE_VALUEdense_558/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_558/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
ќ
љnon_trainable_variables
Љlayers
њmetrics
 Њlayer_regularization_losses
ћlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

Ћtrace_0
ќtrace_1* 

Ќtrace_0
ўtrace_1* 
* 
* 
* 
ќ
Ўnon_trainable_variables
џlayers
Џmetrics
 юlayer_regularization_losses
Юlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

ъtrace_0
Ъtrace_1* 

аtrace_0
Аtrace_1* 
* 
г
б	variables
Бtrainable_variables
цregularization_losses
Ц	keras_api
д__call__
+Д&call_and_return_all_conditional_losses

qkernel
rbias*

q0
r1*

q0
r1*
* 
ў
еnon_trainable_variables
Еlayers
фmetrics
 Фlayer_regularization_losses
гlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

Гtrace_0
«trace_1* 

»trace_0
░trace_1* 
г
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
х__call__
+Х&call_and_return_all_conditional_losses

skernel
tbias*

s0
t1*

s0
t1*
* 
ў
иnon_trainable_variables
Иlayers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

╝trace_0
йtrace_1* 

Йtrace_0
┐trace_1* 
г
└	variables
┴trainable_variables
┬regularization_losses
├	keras_api
─__call__
+┼&call_and_return_all_conditional_losses

ukernel
vbias*

u0
v1*

u0
v1*
* 
ў
кnon_trainable_variables
Кlayers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

╦trace_0
╠trace_1* 

═trace_0
╬trace_1* 
г
¤	variables
лtrainable_variables
Лregularization_losses
м	keras_api
М__call__
+н&call_and_return_all_conditional_losses

wkernel
xbias*

w0
x1*

w0
x1*
* 
ў
Нnon_trainable_variables
оlayers
Оmetrics
 пlayer_regularization_losses
┘layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

┌trace_0
█trace_1* 

▄trace_0
Пtrace_1* 
* 
* 
* 
* 
ќ
яnon_trainable_variables
▀layers
Яmetrics
 рlayer_regularization_losses
Рlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

сtrace_0
Сtrace_1* 

тtrace_0
Тtrace_1* 
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
ў
уnon_trainable_variables
Уlayers
жmetrics
 Жlayer_regularization_losses
вlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
:
Вtrace_0
ьtrace_1
Ьtrace_2
№trace_3* 
:
­trace_0
ыtrace_1
Ыtrace_2
зtrace_3* 
╩
З	variables
шtrainable_variables
Шregularization_losses
э	keras_api
Э__call__
+щ&call_and_return_all_conditional_losses
Щ_random_generator
	чcell
Ч
state_spec*
╩
§	variables
■trainable_variables
 regularization_losses
ђ	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
Ѓ_random_generator
	ёcell
Ё
state_spec*
* 
* 
* 
ќ
єnon_trainable_variables
Єlayers
ѕmetrics
 Ѕlayer_regularization_losses
іlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 

Іtrace_0
їtrace_1* 

Їtrace_0
јtrace_1* 
* 
* 
* 
* 
ќ
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 

ћtrace_0* 

Ћtrace_0* 

o0
p1*

o0
p1*
* 
ў
ќnon_trainable_variables
Ќlayers
ўmetrics
 Ўlayer_regularization_losses
џlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

Џtrace_0* 

юtrace_0* 
`Z
VARIABLE_VALUEdense_575/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_575/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_559/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_559/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_564/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_564/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_569/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_569/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_574/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_574/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1bidirectional_91/forward_lstm_91/lstm_cell/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/bidirectional_91/forward_lstm_91/lstm_cell/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2bidirectional_91/backward_lstm_91/lstm_cell/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0bidirectional_91/backward_lstm_91/lstm_cell/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
ѓ
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
ъ
Юnon_trainable_variables
ъlayers
Ъmetrics
 аlayer_regularization_losses
Аlayer_metrics
б	variables
Бtrainable_variables
цregularization_losses
д__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses*

бtrace_0* 

Бtrace_0* 
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
ъ
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
х__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses*

Еtrace_0* 

фtrace_0* 
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
ъ
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
└	variables
┴trainable_variables
┬regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses*

░trace_0* 

▒trace_0* 
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
ъ
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
¤	variables
лtrainable_variables
Лregularization_losses
М__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses*

иtrace_0* 

Иtrace_0* 
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
Ф
╣states
║non_trainable_variables
╗layers
╝metrics
 йlayer_regularization_losses
Йlayer_metrics
З	variables
шtrainable_variables
Шregularization_losses
Э__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses*
:
┐trace_0
└trace_1
┴trace_2
┬trace_3* 
:
├trace_0
─trace_1
┼trace_2
кtrace_3* 
* 
в
К	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses
═_random_generator
╬
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
Ф
¤states
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
§	variables
■trainable_variables
 regularization_losses
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses*
:
Нtrace_0
оtrace_1
Оtrace_2
пtrace_3* 
:
┘trace_0
┌trace_1
█trace_2
▄trace_3* 
* 
в
П	variables
яtrainable_variables
▀regularization_losses
Я	keras_api
р__call__
+Р&call_and_return_all_conditional_losses
с_random_generator
С
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

ч0*
* 
* 
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
ъ
тnon_trainable_variables
Тlayers
уmetrics
 Уlayer_regularization_losses
жlayer_metrics
К	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses*

Жtrace_0
вtrace_1* 

Вtrace_0
ьtrace_1* 
* 
* 
* 
* 

ё0*
* 
* 
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
ъ
Ьnon_trainable_variables
№layers
­metrics
 ыlayer_regularization_losses
Ыlayer_metrics
П	variables
яtrainable_variables
▀regularization_losses
р__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*

зtrace_0
Зtrace_1* 

шtrace_0
Шtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
└
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_558/kerneldense_558/biasdense_575/kerneldense_575/biasdense_559/kerneldense_559/biasdense_564/kerneldense_564/biasdense_569/kerneldense_569/biasdense_574/kerneldense_574/bias1bidirectional_91/forward_lstm_91/lstm_cell/kernel;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel/bidirectional_91/forward_lstm_91/lstm_cell/bias2bidirectional_91/backward_lstm_91/lstm_cell/kernel<bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel0bidirectional_91/backward_lstm_91/lstm_cell/biasConst*
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
GPU 2J 8ѓ **
f%R#
!__inference__traced_save_25663029
╗
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_558/kerneldense_558/biasdense_575/kerneldense_575/biasdense_559/kerneldense_559/biasdense_564/kerneldense_564/biasdense_569/kerneldense_569/biasdense_574/kerneldense_574/bias1bidirectional_91/forward_lstm_91/lstm_cell/kernel;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel/bidirectional_91/forward_lstm_91/lstm_cell/bias2bidirectional_91/backward_lstm_91/lstm_cell/kernel<bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel0bidirectional_91/backward_lstm_91/lstm_cell/bias*
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
GPU 2J 8ѓ *-
f(R&
$__inference__traced_restore_25663092вк2
У8
▒
while_body_25658430
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
Ў
Ї
#forward_lstm_91_while_cond_25659446<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3>
:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25659446___redundant_placeholder0V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25659446___redundant_placeholder1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25659446___redundant_placeholder2V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25659446___redundant_placeholder3"
forward_lstm_91_while_identity
б
forward_lstm_91/while/LessLess!forward_lstm_91_while_placeholder:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:
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
_user_specified_name!forward_lstm_91/strided_slice_1:

_output_shapes
:
У8
▒
while_body_25661995
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
Ў
Ї
#forward_lstm_91_while_cond_25660728<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3>
:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660728___redundant_placeholder0V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660728___redundant_placeholder1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660728___redundant_placeholder2V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660728___redundant_placeholder3"
forward_lstm_91_while_identity
б
forward_lstm_91/while/LessLess!forward_lstm_91_while_placeholder:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:
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
_user_specified_name!forward_lstm_91/strided_slice_1:

_output_shapes
:
їJ
њ
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661650
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25661566*
condR
while_cond_25661565*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
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
╠	
═
while_cond_25661851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25661851___redundant_placeholder06
2while_while_cond_25661851___redundant_placeholder16
2while_while_cond_25661851___redundant_placeholder26
2while_while_cond_25661851___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
И
А
$backward_lstm_91_while_cond_25660869>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3@
<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660869___redundant_placeholder0X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660869___redundant_placeholder1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660869___redundant_placeholder2X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660869___redundant_placeholder3#
backward_lstm_91_while_identity
д
backward_lstm_91/while/LessLess"backward_lstm_91_while_placeholder<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_91/while/IdentityIdentitybackward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:
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
_user_specified_name" backward_lstm_91/strided_slice_1:

_output_shapes
:
ъ
d
H__inference_flatten_91_layer_call_and_return_conditional_losses_25659310

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	ђP
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
С
■
G__inference_dense_564_layer_call_and_return_conditional_losses_25657307

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
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
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : ю
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
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЉL
Љ
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662558

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: є
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25662474*
condR
while_cond_25662473*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
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
б	
й
3__inference_backward_lstm_91_layer_call_fn_25662112

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658514|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
25662104:($
"
_user_specified_name
25662106:($
"
_user_specified_name
25662108
У8
▒
while_body_25662619
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
╠	
═
while_cond_25658739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25658739___redundant_placeholder06
2while_while_cond_25658739___redundant_placeholder16
2while_while_cond_25658739___redundant_placeholder26
2while_while_cond_25658739___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
і

g
H__inference_dropout_91_layer_call_and_return_conditional_losses_25661268

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         Є
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
 *═╠L>А
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ј
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
И
А
$backward_lstm_91_while_cond_25661157>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3@
<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25661157___redundant_placeholder0X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25661157___redundant_placeholder1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25661157___redundant_placeholder2X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25661157___redundant_placeholder3#
backward_lstm_91_while_identity
д
backward_lstm_91/while/LessLess"backward_lstm_91_while_placeholder<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_91/while/IdentityIdentitybackward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:
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
_user_specified_name" backward_lstm_91/strided_slice_1:

_output_shapes
:
ЌL
▒
#forward_lstm_91_while_body_25660441<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3;
7forward_lstm_91_while_forward_lstm_91_strided_slice_1_0w
sforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_91_while_identity$
 forward_lstm_91_while_identity_1$
 forward_lstm_91_while_identity_2$
 forward_lstm_91_while_identity_3$
 forward_lstm_91_while_identity_4$
 forward_lstm_91_while_identity_59
5forward_lstm_91_while_forward_lstm_91_strided_slice_1u
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"         
9forward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_91_while_placeholderPforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0Х
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0с
&forward_lstm_91/while/lstm_cell/MatMulMatMul@forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ║
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0╩
(forward_lstm_91/while/lstm_cell/MatMul_1MatMul#forward_lstm_91_while_placeholder_2?forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ─
#forward_lstm_91/while/lstm_cell/addAddV20forward_lstm_91/while/lstm_cell/MatMul:product:02forward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ┤
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0═
'forward_lstm_91/while/lstm_cell/BiasAddBiasAdd'forward_lstm_91/while/lstm_cell/add:z:0>forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          q
/forward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
%forward_lstm_91/while/lstm_cell/splitSplit8forward_lstm_91/while/lstm_cell/split/split_dim:output:00forward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitћ
'forward_lstm_91/while/lstm_cell/SigmoidSigmoid.forward_lstm_91/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ќ
)forward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_91/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ░
#forward_lstm_91/while/lstm_cell/mulMul-forward_lstm_91/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_91_while_placeholder_3*
T0*'
_output_shapes
:         ј
$forward_lstm_91/while/lstm_cell/ReluRelu.forward_lstm_91/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┐
%forward_lstm_91/while/lstm_cell/mul_1Mul+forward_lstm_91/while/lstm_cell/Sigmoid:y:02forward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ┤
%forward_lstm_91/while/lstm_cell/add_1AddV2'forward_lstm_91/while/lstm_cell/mul:z:0)forward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ќ
)forward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_91/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         І
&forward_lstm_91/while/lstm_cell/Relu_1Relu)forward_lstm_91/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ├
%forward_lstm_91/while/lstm_cell/mul_2Mul-forward_lstm_91/while/lstm_cell/Sigmoid_2:y:04forward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ѓ
:forward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_91_while_placeholder_1!forward_lstm_91_while_placeholder)forward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_91/while/addAddV2!forward_lstm_91_while_placeholder$forward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/while/add_1AddV28forward_lstm_91_while_forward_lstm_91_while_loop_counter&forward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_91/while/Identity_1Identity>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_91/while/Identity_2Identityforward_lstm_91/while/add:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_91/while/Identity_3IdentityJforward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: д
 forward_lstm_91/while/Identity_4Identity)forward_lstm_91/while/lstm_cell/mul_2:z:0^forward_lstm_91/while/NoOp*
T0*'
_output_shapes
:         д
 forward_lstm_91/while/Identity_5Identity)forward_lstm_91/while/lstm_cell/add_1:z:0^forward_lstm_91/while/NoOp*
T0*'
_output_shapes
:         с
forward_lstm_91/while/NoOpNoOp7^forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_91_while_forward_lstm_91_strided_slice_17forward_lstm_91_while_forward_lstm_91_strided_slice_1_0"I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0"M
 forward_lstm_91_while_identity_1)forward_lstm_91/while/Identity_1:output:0"M
 forward_lstm_91_while_identity_2)forward_lstm_91/while/Identity_2:output:0"M
 forward_lstm_91_while_identity_3)forward_lstm_91/while/Identity_3:output:0"M
 forward_lstm_91_while_identity_4)forward_lstm_91/while/Identity_4:output:0"M
 forward_lstm_91_while_identity_5)forward_lstm_91/while/Identity_5:output:0"ё
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2p
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_91/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
╠	
═
while_cond_25658587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25658587___redundant_placeholder06
2while_while_cond_25658587___redundant_placeholder16
2while_while_cond_25658587___redundant_placeholder26
2while_while_cond_25658587___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ь
s
G__inference_lambda_95_layer_call_and_return_conditional_losses_25660020
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
Д	
Я
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657402
dense_569_input$
dense_569_25657396: 
dense_569_25657398:
identityѕб!dense_569/StatefulPartitionedCallЄ
!dense_569/StatefulPartitionedCallStatefulPartitionedCalldense_569_inputdense_569_25657396dense_569_25657398*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_569_layer_call_and_return_conditional_losses_25657390}
IdentityIdentity*dense_569/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_569/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_569/StatefulPartitionedCall!dense_569/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_569_input:($
"
_user_specified_name
25657396:($
"
_user_specified_name
25657398
еJ
љ
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25662079

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25661995*
condR
while_cond_25661994*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
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
С$
о
while_body_25658092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_25658116_0: ,
while_lstm_cell_25658118_0: (
while_lstm_cell_25658120_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_25658116: *
while_lstm_cell_25658118: &
while_lstm_cell_25658120: ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25658116_0while_lstm_cell_25658118_0while_lstm_cell_25658120_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25658078┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_25658116while_lstm_cell_25658116_0"6
while_lstm_cell_25658118while_lstm_cell_25658118_0"6
while_lstm_cell_25658120while_lstm_cell_25658120_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
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
:         :-)
'
_output_shapes
:         :GC
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
25658116:(	$
"
_user_specified_name
25658118:(
$
"
_user_specified_name
25658120
еJ
љ
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661936

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25661852*
condR
while_cond_25661851*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
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
Г
Д
1__inference_sequential_391_layer_call_fn_25657503
dense_574_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_574_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657485s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_574_input:($
"
_user_specified_name
25657497:($
"
_user_specified_name
25657499
й╣
ю
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25661246

inputsJ
8forward_lstm_91_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_91_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_91/whileб0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_91/whilej
forward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_91/strided_sliceStridedSliceforward_lstm_91/Shape:output:0,forward_lstm_91/strided_slice/stack:output:0.forward_lstm_91/strided_slice/stack_1:output:0.forward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_91/zeros/packedPack&forward_lstm_91/strided_slice:output:0'forward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
forward_lstm_91/zerosFill%forward_lstm_91/zeros/packed:output:0$forward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/zeros_1/packedPack&forward_lstm_91/strided_slice:output:0)forward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
forward_lstm_91/zeros_1Fill'forward_lstm_91/zeros_1/packed:output:0&forward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
forward_lstm_91/transpose	Transposeinputs'forward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_91/strided_slice_1StridedSlice forward_lstm_91/Shape_1:output:0.forward_lstm_91/strided_slice_1/stack:output:00forward_lstm_91/strided_slice_1/stack_1:output:00forward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_91/TensorArrayV2TensorListReserve4forward_lstm_91/TensorArrayV2/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      љ
7forward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_91/transpose:y:0Nforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
forward_lstm_91/strided_slice_2StridedSliceforward_lstm_91/transpose:y:0.forward_lstm_91/strided_slice_2/stack:output:00forward_lstm_91/strided_slice_2/stack_1:output:00forward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskе
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
 forward_lstm_91/lstm_cell/MatMulMatMul(forward_lstm_91/strided_slice_2:output:07forward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: г
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0░
"forward_lstm_91/lstm_cell/MatMul_1MatMulforward_lstm_91/zeros:output:09forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Е
forward_lstm_91/lstm_cell/addAddV2*forward_lstm_91/lstm_cell/MatMul:product:0,forward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: д
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0▓
!forward_lstm_91/lstm_cell/BiasAddBiasAdd!forward_lstm_91/lstm_cell/add:z:08forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
forward_lstm_91/lstm_cell/splitSplit2forward_lstm_91/lstm_cell/split/split_dim:output:0*forward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_91/lstm_cell/SigmoidSigmoid(forward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:Ђ
#forward_lstm_91/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
forward_lstm_91/lstm_cell/mulMul'forward_lstm_91/lstm_cell/Sigmoid_1:y:0 forward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_91/lstm_cell/ReluRelu(forward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:ц
forward_lstm_91/lstm_cell/mul_1Mul%forward_lstm_91/lstm_cell/Sigmoid:y:0,forward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
forward_lstm_91/lstm_cell/add_1AddV2!forward_lstm_91/lstm_cell/mul:z:0#forward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ђ
#forward_lstm_91/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_91/lstm_cell/Relu_1Relu#forward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:е
forward_lstm_91/lstm_cell/mul_2Mul'forward_lstm_91/lstm_cell/Sigmoid_2:y:0.forward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      У
forward_lstm_91/TensorArrayV2_1TensorListReserve6forward_lstm_91/TensorArrayV2_1/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
forward_lstm_91/whileWhile+forward_lstm_91/while/loop_counter:output:01forward_lstm_91/while/maximum_iterations:output:0forward_lstm_91/time:output:0(forward_lstm_91/TensorArrayV2_1:handle:0forward_lstm_91/zeros:output:0 forward_lstm_91/zeros_1:output:0(forward_lstm_91/strided_slice_1:output:0Gforward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_91_lstm_cell_matmul_readvariableop_resource:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
#forward_lstm_91_while_body_25661017*/
cond'R%
#forward_lstm_91_while_cond_25661016*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Љ
@forward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ж
2forward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_91/while:output:3Iforward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
forward_lstm_91/strided_slice_3StridedSlice;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_91/strided_slice_3/stack:output:00forward_lstm_91/strided_slice_3/stack_1:output:00forward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
forward_lstm_91/transpose_1	Transpose;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_91/strided_sliceStridedSlicebackward_lstm_91/Shape:output:0-backward_lstm_91/strided_slice/stack:output:0/backward_lstm_91/strided_slice/stack_1:output:0/backward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_91/zeros/packedPack'backward_lstm_91/strided_slice:output:0(backward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
backward_lstm_91/zerosFill&backward_lstm_91/zeros/packed:output:0%backward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_91/zeros_1/packedPack'backward_lstm_91/strided_slice:output:0*backward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
backward_lstm_91/zeros_1Fill(backward_lstm_91/zeros_1/packed:output:0'backward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
backward_lstm_91/transpose	Transposeinputs(backward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_91/strided_slice_1StridedSlice!backward_lstm_91/Shape_1:output:0/backward_lstm_91/strided_slice_1/stack:output:01backward_lstm_91/strided_slice_1/stack_1:output:01backward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_91/TensorArrayV2TensorListReserve5backward_lstm_91/TensorArrayV2/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_91/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
backward_lstm_91/ReverseV2	ReverseV2backward_lstm_91/transpose:y:0(backward_lstm_91/ReverseV2/axis:output:0*
T0*"
_output_shapes
:Ќ
Fbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
8backward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_91/ReverseV2:output:0Obackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
 backward_lstm_91/strided_slice_2StridedSlicebackward_lstm_91/transpose:y:0/backward_lstm_91/strided_slice_2/stack:output:01backward_lstm_91/strided_slice_2/stack_1:output:01backward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskф
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╣
!backward_lstm_91/lstm_cell/MatMulMatMul)backward_lstm_91/strided_slice_2:output:08backward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: «
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0│
#backward_lstm_91/lstm_cell/MatMul_1MatMulbackward_lstm_91/zeros:output:0:backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: г
backward_lstm_91/lstm_cell/addAddV2+backward_lstm_91/lstm_cell/MatMul:product:0-backward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: е
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
"backward_lstm_91/lstm_cell/BiasAddBiasAdd"backward_lstm_91/lstm_cell/add:z:09backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
 backward_lstm_91/lstm_cell/splitSplit3backward_lstm_91/lstm_cell/split/split_dim:output:0+backward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЂ
"backward_lstm_91/lstm_cell/SigmoidSigmoid)backward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_91/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:Џ
backward_lstm_91/lstm_cell/mulMul(backward_lstm_91/lstm_cell/Sigmoid_1:y:0!backward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_91/lstm_cell/ReluRelu)backward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:Д
 backward_lstm_91/lstm_cell/mul_1Mul&backward_lstm_91/lstm_cell/Sigmoid:y:0-backward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ю
 backward_lstm_91/lstm_cell/add_1AddV2"backward_lstm_91/lstm_cell/mul:z:0$backward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_91/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_91/lstm_cell/Relu_1Relu$backward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ф
 backward_lstm_91/lstm_cell/mul_2Mul(backward_lstm_91/lstm_cell/Sigmoid_2:y:0/backward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      в
 backward_lstm_91/TensorArrayV2_1TensorListReserve7backward_lstm_91/TensorArrayV2_1/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
backward_lstm_91/whileWhile,backward_lstm_91/while/loop_counter:output:02backward_lstm_91/while/maximum_iterations:output:0backward_lstm_91/time:output:0)backward_lstm_91/TensorArrayV2_1:handle:0backward_lstm_91/zeros:output:0!backward_lstm_91/zeros_1:output:0)backward_lstm_91/strided_slice_1:output:0Hbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_91_lstm_cell_matmul_readvariableop_resource;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
$backward_lstm_91_while_body_25661158*0
cond(R&
$backward_lstm_91_while_cond_25661157*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations њ
Abackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      В
3backward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_91/while:output:3Jbackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
 backward_lstm_91/strided_slice_3StridedSlice<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_91/strided_slice_3/stack:output:01backward_lstm_91/strided_slice_3/stack_1:output:01backward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
backward_lstm_91/transpose_1	Transpose<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_91/runtimeConst"/device:CPU:0*
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
	ReverseV2	ReverseV2 backward_lstm_91/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
concatConcatV2forward_lstm_91/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:ѕ
NoOpNoOp2^backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_91/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_91/while1^forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_91/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_91/whilebackward_lstm_91/while2d
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_91/whileforward_lstm_91/while:J F
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
С
Ў
,__inference_dense_558_layer_call_fn_25659939

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallО
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
GPU 2J 8ѓ *P
fKRI
G__inference_dense_558_layer_call_and_return_conditional_losses_25658932j
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
25659933:($
"
_user_specified_name
25659935
П8
є
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25657811

inputs$
lstm_cell_25657729: $
lstm_cell_25657731:  
lstm_cell_25657733: 
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЬ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25657729lstm_cell_25657731lstm_cell_25657733*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657728n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Џ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25657729lstm_cell_25657731lstm_cell_25657733*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25657742*
condR
while_cond_25657741*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
25657729:($
"
_user_specified_name
25657731:($
"
_user_specified_name
25657733
њ┐
ъ
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660382
inputs_0J
8forward_lstm_91_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_91_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_91/whileб0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_91/while[
forward_lstm_91/ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤m
#forward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_91/strided_sliceStridedSliceforward_lstm_91/Shape:output:0,forward_lstm_91/strided_slice/stack:output:0.forward_lstm_91/strided_slice/stack_1:output:0.forward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_91/zeros/packedPack&forward_lstm_91/strided_slice:output:0'forward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
forward_lstm_91/zerosFill%forward_lstm_91/zeros/packed:output:0$forward_lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:         b
 forward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/zeros_1/packedPack&forward_lstm_91/strided_slice:output:0)forward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
forward_lstm_91/zeros_1Fill'forward_lstm_91/zeros_1/packed:output:0&forward_lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:         s
forward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          А
forward_lstm_91/transpose	Transposeinputs_0'forward_lstm_91/transpose/perm:output:0*
T0*=
_output_shapes+
):'                           r
forward_lstm_91/Shape_1Shapeforward_lstm_91/transpose:y:0*
T0*
_output_shapes
::ь¤o
%forward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_91/strided_slice_1StridedSlice forward_lstm_91/Shape_1:output:0.forward_lstm_91/strided_slice_1/stack:output:00forward_lstm_91/strided_slice_1/stack_1:output:00forward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_91/TensorArrayV2TensorListReserve4forward_lstm_91/TensorArrayV2/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        љ
7forward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_91/transpose:y:0Nforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┬
forward_lstm_91/strided_slice_2StridedSliceforward_lstm_91/transpose:y:0.forward_lstm_91/strided_slice_2/stack:output:00forward_lstm_91/strided_slice_2/stack_1:output:00forward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskе
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┐
 forward_lstm_91/lstm_cell/MatMulMatMul(forward_lstm_91/strided_slice_2:output:07forward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          г
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╣
"forward_lstm_91/lstm_cell/MatMul_1MatMulforward_lstm_91/zeros:output:09forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ▓
forward_lstm_91/lstm_cell/addAddV2*forward_lstm_91/lstm_cell/MatMul:product:0,forward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          д
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╗
!forward_lstm_91/lstm_cell/BiasAddBiasAdd!forward_lstm_91/lstm_cell/add:z:08forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          k
)forward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ё
forward_lstm_91/lstm_cell/splitSplit2forward_lstm_91/lstm_cell/split/split_dim:output:0*forward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitѕ
!forward_lstm_91/lstm_cell/SigmoidSigmoid(forward_lstm_91/lstm_cell/split:output:0*
T0*'
_output_shapes
:         і
#forward_lstm_91/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_91/lstm_cell/split:output:1*
T0*'
_output_shapes
:         А
forward_lstm_91/lstm_cell/mulMul'forward_lstm_91/lstm_cell/Sigmoid_1:y:0 forward_lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:         ѓ
forward_lstm_91/lstm_cell/ReluRelu(forward_lstm_91/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Г
forward_lstm_91/lstm_cell/mul_1Mul%forward_lstm_91/lstm_cell/Sigmoid:y:0,forward_lstm_91/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         б
forward_lstm_91/lstm_cell/add_1AddV2!forward_lstm_91/lstm_cell/mul:z:0#forward_lstm_91/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         і
#forward_lstm_91/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_91/lstm_cell/split:output:3*
T0*'
_output_shapes
:         
 forward_lstm_91/lstm_cell/Relu_1Relu#forward_lstm_91/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ▒
forward_lstm_91/lstm_cell/mul_2Mul'forward_lstm_91/lstm_cell/Sigmoid_2:y:0.forward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ~
-forward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       У
forward_lstm_91/TensorArrayV2_1TensorListReserve6forward_lstm_91/TensorArrayV2_1/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : └
forward_lstm_91/whileWhile+forward_lstm_91/while/loop_counter:output:01forward_lstm_91/while/maximum_iterations:output:0forward_lstm_91/time:output:0(forward_lstm_91/TensorArrayV2_1:handle:0forward_lstm_91/zeros:output:0 forward_lstm_91/zeros_1:output:0(forward_lstm_91/strided_slice_1:output:0Gforward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_91_lstm_cell_matmul_readvariableop_resource:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_91_while_body_25660153*/
cond'R%
#forward_lstm_91_while_cond_25660152*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Љ
@forward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
2forward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_91/while:output:3Iforward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0x
%forward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
forward_lstm_91/strided_slice_3StridedSlice;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_91/strided_slice_3/stack:output:00forward_lstm_91/strided_slice_3/stack_1:output:00forward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masku
 forward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¤
forward_lstm_91/transpose_1	Transpose;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_91/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  k
forward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_91/ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤n
$backward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_91/strided_sliceStridedSlicebackward_lstm_91/Shape:output:0-backward_lstm_91/strided_slice/stack:output:0/backward_lstm_91/strided_slice/stack_1:output:0/backward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_91/zeros/packedPack'backward_lstm_91/strided_slice:output:0(backward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
backward_lstm_91/zerosFill&backward_lstm_91/zeros/packed:output:0%backward_lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:         c
!backward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_91/zeros_1/packedPack'backward_lstm_91/strided_slice:output:0*backward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
backward_lstm_91/zeros_1Fill(backward_lstm_91/zeros_1/packed:output:0'backward_lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:         t
backward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
backward_lstm_91/transpose	Transposeinputs_0(backward_lstm_91/transpose/perm:output:0*
T0*=
_output_shapes+
):'                           t
backward_lstm_91/Shape_1Shapebackward_lstm_91/transpose:y:0*
T0*
_output_shapes
::ь¤p
&backward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_91/strided_slice_1StridedSlice!backward_lstm_91/Shape_1:output:0/backward_lstm_91/strided_slice_1/stack:output:01backward_lstm_91/strided_slice_1/stack_1:output:01backward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_91/TensorArrayV2TensorListReserve5backward_lstm_91/TensorArrayV2/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_91/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ╣
backward_lstm_91/ReverseV2	ReverseV2backward_lstm_91/transpose:y:0(backward_lstm_91/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           Ќ
Fbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ў
8backward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_91/ReverseV2:output:0Obackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
 backward_lstm_91/strided_slice_2StridedSlicebackward_lstm_91/transpose:y:0/backward_lstm_91/strided_slice_2/stack:output:01backward_lstm_91/strided_slice_2/stack_1:output:01backward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskф
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┬
!backward_lstm_91/lstm_cell/MatMulMatMul)backward_lstm_91/strided_slice_2:output:08backward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          «
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╝
#backward_lstm_91/lstm_cell/MatMul_1MatMulbackward_lstm_91/zeros:output:0:backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
backward_lstm_91/lstm_cell/addAddV2+backward_lstm_91/lstm_cell/MatMul:product:0-backward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          е
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
"backward_lstm_91/lstm_cell/BiasAddBiasAdd"backward_lstm_91/lstm_cell/add:z:09backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*backward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 backward_lstm_91/lstm_cell/splitSplit3backward_lstm_91/lstm_cell/split/split_dim:output:0+backward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"backward_lstm_91/lstm_cell/SigmoidSigmoid)backward_lstm_91/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ї
$backward_lstm_91/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_91/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ц
backward_lstm_91/lstm_cell/mulMul(backward_lstm_91/lstm_cell/Sigmoid_1:y:0!backward_lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:         ё
backward_lstm_91/lstm_cell/ReluRelu)backward_lstm_91/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ░
 backward_lstm_91/lstm_cell/mul_1Mul&backward_lstm_91/lstm_cell/Sigmoid:y:0-backward_lstm_91/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 backward_lstm_91/lstm_cell/add_1AddV2"backward_lstm_91/lstm_cell/mul:z:0$backward_lstm_91/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ї
$backward_lstm_91/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_91/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Ђ
!backward_lstm_91/lstm_cell/Relu_1Relu$backward_lstm_91/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ┤
 backward_lstm_91/lstm_cell/mul_2Mul(backward_lstm_91/lstm_cell/Sigmoid_2:y:0/backward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         
.backward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       в
 backward_lstm_91/TensorArrayV2_1TensorListReserve7backward_lstm_91/TensorArrayV2_1/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╬
backward_lstm_91/whileWhile,backward_lstm_91/while/loop_counter:output:02backward_lstm_91/while/maximum_iterations:output:0backward_lstm_91/time:output:0)backward_lstm_91/TensorArrayV2_1:handle:0backward_lstm_91/zeros:output:0!backward_lstm_91/zeros_1:output:0)backward_lstm_91/strided_slice_1:output:0Hbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_91_lstm_cell_matmul_readvariableop_resource;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_91_while_body_25660294*0
cond(R&
$backward_lstm_91_while_cond_25660293*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations њ
Abackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ■
3backward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_91/while:output:3Jbackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0y
&backward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
 backward_lstm_91/strided_slice_3StridedSlice<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_91/strided_slice_3/stack:output:01backward_lstm_91/strided_slice_3/stack_1:output:01backward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskv
!backward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
backward_lstm_91/transpose_1	Transpose<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_91/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  l
backward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:љ
	ReverseV2	ReverseV2 backward_lstm_91/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ц
concatConcatV2forward_lstm_91/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :                  ѕ
NoOpNoOp2^backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_91/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_91/while1^forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_91/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 2f
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_91/whilebackward_lstm_91/while2d
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_91/whileforward_lstm_91/while:g c
=
_output_shapes+
):'                           
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
У8
▒
while_body_25662474
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
└
Ы
,__inference_lstm_cell_layer_call_fn_25662737

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657728o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
25662725:($
"
_user_specified_name
25662727:($
"
_user_specified_name
25662729
╠	
═
while_cond_25661565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25661565___redundant_placeholder06
2while_while_cond_25661565___redundant_placeholder16
2while_while_cond_25661565___redundant_placeholder26
2while_while_cond_25661565___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╝:
Є
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658161

inputs$
lstm_cell_25658079: $
lstm_cell_25658081:  
lstm_cell_25658083: 
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЬ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25658079lstm_cell_25658081lstm_cell_25658083*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25658078n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Џ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25658079lstm_cell_25658081lstm_cell_25658083*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25658092*
condR
while_cond_25658091*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
25658079:($
"
_user_specified_name
25658081:($
"
_user_specified_name
25658083
Ф
ѓ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662867

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
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
еJ
љ
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25658672

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25658588*
condR
while_cond_25658587*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
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
╠	
═
while_cond_25661994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25661994___redundant_placeholder06
2while_while_cond_25661994___redundant_placeholder16
2while_while_cond_25661994___redundant_placeholder26
2while_while_cond_25661994___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
▄
А
$backward_lstm_91_while_cond_25660581>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3@
<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660581___redundant_placeholder0X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660581___redundant_placeholder1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660581___redundant_placeholder2X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660581___redundant_placeholder3#
backward_lstm_91_while_identity
д
backward_lstm_91/while/LessLess"backward_lstm_91_while_placeholder<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_91/while/IdentityIdentitybackward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_91/strided_slice_1:

_output_shapes
:
к

љ
3__inference_bidirectional_91_layer_call_fn_25660094

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityѕбStatefulPartitionedCallњ
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
GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25659676j
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
25660080:($
"
_user_specified_name
25660082:($
"
_user_specified_name
25660084:($
"
_user_specified_name
25660086:($
"
_user_specified_name
25660088:($
"
_user_specified_name
25660090
к

љ
3__inference_bidirectional_91_layer_call_fn_25660077

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityѕбStatefulPartitionedCallњ
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
GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25659278j
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
25660063:($
"
_user_specified_name
25660065:($
"
_user_specified_name
25660067:($
"
_user_specified_name
25660069:($
"
_user_specified_name
25660071:($
"
_user_specified_name
25660073
Т
q
G__inference_lambda_95_layer_call_and_return_conditional_losses_25658989

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
й
Ї
#forward_lstm_91_while_cond_25660440<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3>
:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660440___redundant_placeholder0V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660440___redundant_placeholder1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660440___redundant_placeholder2V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660440___redundant_placeholder3"
forward_lstm_91_while_identity
б
forward_lstm_91/while/LessLess!forward_lstm_91_while_placeholder:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_91/strided_slice_1:

_output_shapes
:
╠	
═
while_cond_25657596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25657596___redundant_placeholder06
2while_while_cond_25657596___redundant_placeholder16
2while_while_cond_25657596___redundant_placeholder26
2while_while_cond_25657596___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ъ
d
H__inference_flatten_91_layer_call_and_return_conditional_losses_25661284

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	ђP
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
К
f
H__inference_dropout_91_layer_call_and_return_conditional_losses_25661273

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
Б
ђ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657931

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
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
ѕ
Ў
,__inference_dense_574_layer_call_fn_25661432

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_574_layer_call_and_return_conditional_losses_25657473s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
25661426:($
"
_user_specified_name
25661428
┐
f
-__inference_dropout_91_layer_call_fn_25661251

inputs
identityѕбStatefulPartitionedCallЙ
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
GPU 2J 8ѓ *Q
fLRJ
H__inference_dropout_91_layer_call_and_return_conditional_losses_25659303j
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
й╣
ю
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25659278

inputsJ
8forward_lstm_91_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_91_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_91/whileб0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_91/whilej
forward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_91/strided_sliceStridedSliceforward_lstm_91/Shape:output:0,forward_lstm_91/strided_slice/stack:output:0.forward_lstm_91/strided_slice/stack_1:output:0.forward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_91/zeros/packedPack&forward_lstm_91/strided_slice:output:0'forward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
forward_lstm_91/zerosFill%forward_lstm_91/zeros/packed:output:0$forward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/zeros_1/packedPack&forward_lstm_91/strided_slice:output:0)forward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
forward_lstm_91/zeros_1Fill'forward_lstm_91/zeros_1/packed:output:0&forward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
forward_lstm_91/transpose	Transposeinputs'forward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_91/strided_slice_1StridedSlice forward_lstm_91/Shape_1:output:0.forward_lstm_91/strided_slice_1/stack:output:00forward_lstm_91/strided_slice_1/stack_1:output:00forward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_91/TensorArrayV2TensorListReserve4forward_lstm_91/TensorArrayV2/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      љ
7forward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_91/transpose:y:0Nforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
forward_lstm_91/strided_slice_2StridedSliceforward_lstm_91/transpose:y:0.forward_lstm_91/strided_slice_2/stack:output:00forward_lstm_91/strided_slice_2/stack_1:output:00forward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskе
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
 forward_lstm_91/lstm_cell/MatMulMatMul(forward_lstm_91/strided_slice_2:output:07forward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: г
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0░
"forward_lstm_91/lstm_cell/MatMul_1MatMulforward_lstm_91/zeros:output:09forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Е
forward_lstm_91/lstm_cell/addAddV2*forward_lstm_91/lstm_cell/MatMul:product:0,forward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: д
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0▓
!forward_lstm_91/lstm_cell/BiasAddBiasAdd!forward_lstm_91/lstm_cell/add:z:08forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
forward_lstm_91/lstm_cell/splitSplit2forward_lstm_91/lstm_cell/split/split_dim:output:0*forward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_91/lstm_cell/SigmoidSigmoid(forward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:Ђ
#forward_lstm_91/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
forward_lstm_91/lstm_cell/mulMul'forward_lstm_91/lstm_cell/Sigmoid_1:y:0 forward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_91/lstm_cell/ReluRelu(forward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:ц
forward_lstm_91/lstm_cell/mul_1Mul%forward_lstm_91/lstm_cell/Sigmoid:y:0,forward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
forward_lstm_91/lstm_cell/add_1AddV2!forward_lstm_91/lstm_cell/mul:z:0#forward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ђ
#forward_lstm_91/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_91/lstm_cell/Relu_1Relu#forward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:е
forward_lstm_91/lstm_cell/mul_2Mul'forward_lstm_91/lstm_cell/Sigmoid_2:y:0.forward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      У
forward_lstm_91/TensorArrayV2_1TensorListReserve6forward_lstm_91/TensorArrayV2_1/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
forward_lstm_91/whileWhile+forward_lstm_91/while/loop_counter:output:01forward_lstm_91/while/maximum_iterations:output:0forward_lstm_91/time:output:0(forward_lstm_91/TensorArrayV2_1:handle:0forward_lstm_91/zeros:output:0 forward_lstm_91/zeros_1:output:0(forward_lstm_91/strided_slice_1:output:0Gforward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_91_lstm_cell_matmul_readvariableop_resource:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
#forward_lstm_91_while_body_25659049*/
cond'R%
#forward_lstm_91_while_cond_25659048*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Љ
@forward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ж
2forward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_91/while:output:3Iforward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
forward_lstm_91/strided_slice_3StridedSlice;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_91/strided_slice_3/stack:output:00forward_lstm_91/strided_slice_3/stack_1:output:00forward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
forward_lstm_91/transpose_1	Transpose;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_91/strided_sliceStridedSlicebackward_lstm_91/Shape:output:0-backward_lstm_91/strided_slice/stack:output:0/backward_lstm_91/strided_slice/stack_1:output:0/backward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_91/zeros/packedPack'backward_lstm_91/strided_slice:output:0(backward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
backward_lstm_91/zerosFill&backward_lstm_91/zeros/packed:output:0%backward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_91/zeros_1/packedPack'backward_lstm_91/strided_slice:output:0*backward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
backward_lstm_91/zeros_1Fill(backward_lstm_91/zeros_1/packed:output:0'backward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
backward_lstm_91/transpose	Transposeinputs(backward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_91/strided_slice_1StridedSlice!backward_lstm_91/Shape_1:output:0/backward_lstm_91/strided_slice_1/stack:output:01backward_lstm_91/strided_slice_1/stack_1:output:01backward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_91/TensorArrayV2TensorListReserve5backward_lstm_91/TensorArrayV2/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_91/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
backward_lstm_91/ReverseV2	ReverseV2backward_lstm_91/transpose:y:0(backward_lstm_91/ReverseV2/axis:output:0*
T0*"
_output_shapes
:Ќ
Fbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
8backward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_91/ReverseV2:output:0Obackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
 backward_lstm_91/strided_slice_2StridedSlicebackward_lstm_91/transpose:y:0/backward_lstm_91/strided_slice_2/stack:output:01backward_lstm_91/strided_slice_2/stack_1:output:01backward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskф
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╣
!backward_lstm_91/lstm_cell/MatMulMatMul)backward_lstm_91/strided_slice_2:output:08backward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: «
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0│
#backward_lstm_91/lstm_cell/MatMul_1MatMulbackward_lstm_91/zeros:output:0:backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: г
backward_lstm_91/lstm_cell/addAddV2+backward_lstm_91/lstm_cell/MatMul:product:0-backward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: е
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
"backward_lstm_91/lstm_cell/BiasAddBiasAdd"backward_lstm_91/lstm_cell/add:z:09backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
 backward_lstm_91/lstm_cell/splitSplit3backward_lstm_91/lstm_cell/split/split_dim:output:0+backward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЂ
"backward_lstm_91/lstm_cell/SigmoidSigmoid)backward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_91/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:Џ
backward_lstm_91/lstm_cell/mulMul(backward_lstm_91/lstm_cell/Sigmoid_1:y:0!backward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_91/lstm_cell/ReluRelu)backward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:Д
 backward_lstm_91/lstm_cell/mul_1Mul&backward_lstm_91/lstm_cell/Sigmoid:y:0-backward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ю
 backward_lstm_91/lstm_cell/add_1AddV2"backward_lstm_91/lstm_cell/mul:z:0$backward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_91/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_91/lstm_cell/Relu_1Relu$backward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ф
 backward_lstm_91/lstm_cell/mul_2Mul(backward_lstm_91/lstm_cell/Sigmoid_2:y:0/backward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      в
 backward_lstm_91/TensorArrayV2_1TensorListReserve7backward_lstm_91/TensorArrayV2_1/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
backward_lstm_91/whileWhile,backward_lstm_91/while/loop_counter:output:02backward_lstm_91/while/maximum_iterations:output:0backward_lstm_91/time:output:0)backward_lstm_91/TensorArrayV2_1:handle:0backward_lstm_91/zeros:output:0!backward_lstm_91/zeros_1:output:0)backward_lstm_91/strided_slice_1:output:0Hbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_91_lstm_cell_matmul_readvariableop_resource;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
$backward_lstm_91_while_body_25659190*0
cond(R&
$backward_lstm_91_while_cond_25659189*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations њ
Abackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      В
3backward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_91/while:output:3Jbackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
 backward_lstm_91/strided_slice_3StridedSlice<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_91/strided_slice_3/stack:output:01backward_lstm_91/strided_slice_3/stack_1:output:01backward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
backward_lstm_91/transpose_1	Transpose<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_91/runtimeConst"/device:CPU:0*
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
	ReverseV2	ReverseV2 backward_lstm_91/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
concatConcatV2forward_lstm_91/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:ѕ
NoOpNoOp2^backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_91/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_91/while1^forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_91/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_91/whilebackward_lstm_91/while2d
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_91/whileforward_lstm_91/while:J F
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
Н
┼
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25658837

inputs*
forward_lstm_91_25658673: *
forward_lstm_91_25658675: &
forward_lstm_91_25658677: +
backward_lstm_91_25658825: +
backward_lstm_91_25658827: '
backward_lstm_91_25658829: 
identityѕб(backward_lstm_91/StatefulPartitionedCallб'forward_lstm_91/StatefulPartitionedCall╗
'forward_lstm_91/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_91_25658673forward_lstm_91_25658675forward_lstm_91_25658677*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25658672└
(backward_lstm_91/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_91_25658825backward_lstm_91_25658827backward_lstm_91_25658829*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658824X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:А
	ReverseV2	ReverseV21backward_lstm_91/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Х
concatConcatV20forward_lstm_91/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :                  w
NoOpNoOp)^backward_lstm_91/StatefulPartitionedCall(^forward_lstm_91/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 2T
(backward_lstm_91/StatefulPartitionedCall(backward_lstm_91/StatefulPartitionedCall2R
'forward_lstm_91/StatefulPartitionedCall'forward_lstm_91/StatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
25658673:($
"
_user_specified_name
25658675:($
"
_user_specified_name
25658677:($
"
_user_specified_name
25658825:($
"
_user_specified_name
25658827:($
"
_user_specified_name
25658829
лK
Л
$backward_lstm_91_while_body_25659588>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3=
9backward_lstm_91_while_backward_lstm_91_strided_slice_1_0y
ubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_91_while_identity%
!backward_lstm_91_while_identity_1%
!backward_lstm_91_while_identity_2%
!backward_lstm_91_while_identity_3%
!backward_lstm_91_while_identity_4%
!backward_lstm_91_while_identity_5;
7backward_lstm_91_while_backward_lstm_91_strided_slice_1w
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
:backward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_91_while_placeholderQbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0П
'backward_lstm_91/while/lstm_cell/MatMulMatMulAbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ╝
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0─
)backward_lstm_91/while/lstm_cell/MatMul_1MatMul$backward_lstm_91_while_placeholder_2@backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Й
$backward_lstm_91/while/lstm_cell/addAddV21backward_lstm_91/while/lstm_cell/MatMul:product:03backward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Х
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0К
(backward_lstm_91/while/lstm_cell/BiasAddBiasAdd(backward_lstm_91/while/lstm_cell/add:z:0?backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
&backward_lstm_91/while/lstm_cell/splitSplit9backward_lstm_91/while/lstm_cell/split/split_dim:output:01backward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЇ
(backward_lstm_91/while/lstm_cell/SigmoidSigmoid/backward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ј
*backward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:ф
$backward_lstm_91/while/lstm_cell/mulMul.backward_lstm_91/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:Є
%backward_lstm_91/while/lstm_cell/ReluRelu/backward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:╣
&backward_lstm_91/while/lstm_cell/mul_1Mul,backward_lstm_91/while/lstm_cell/Sigmoid:y:03backward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:«
&backward_lstm_91/while/lstm_cell/add_1AddV2(backward_lstm_91/while/lstm_cell/mul:z:0*backward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ј
*backward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ё
'backward_lstm_91/while/lstm_cell/Relu_1Relu*backward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:й
&backward_lstm_91/while/lstm_cell/mul_2Mul.backward_lstm_91/while/lstm_cell/Sigmoid_2:y:05backward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
;backward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_91_while_placeholder_1"backward_lstm_91_while_placeholder*backward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_91/while/addAddV2"backward_lstm_91_while_placeholder%backward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_91/while/add_1AddV2:backward_lstm_91_while_backward_lstm_91_while_loop_counter'backward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_91/while/IdentityIdentity backward_lstm_91/while/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_91/while/Identity_1Identity@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_91/while/Identity_2Identitybackward_lstm_91/while/add:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_91/while/Identity_3IdentityKbackward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: а
!backward_lstm_91/while/Identity_4Identity*backward_lstm_91/while/lstm_cell/mul_2:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes

:а
!backward_lstm_91/while/Identity_5Identity*backward_lstm_91/while/lstm_cell/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes

:у
backward_lstm_91/while/NoOpNoOp8^backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_91_while_backward_lstm_91_strided_slice_19backward_lstm_91_while_backward_lstm_91_strided_slice_1_0"K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0"O
!backward_lstm_91_while_identity_1*backward_lstm_91/while/Identity_1:output:0"O
!backward_lstm_91_while_identity_2*backward_lstm_91/while/Identity_2:output:0"O
!backward_lstm_91_while_identity_3*backward_lstm_91/while/Identity_3:output:0"O
!backward_lstm_91_while_identity_4*backward_lstm_91/while/Identity_4:output:0"O
!backward_lstm_91_while_identity_5*backward_lstm_91/while/Identity_5:output:0"є
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:
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
_user_specified_name" backward_lstm_91/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
╠	
═
while_cond_25658277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25658277___redundant_placeholder06
2while_while_cond_25658277___redundant_placeholder16
2while_while_cond_25658277___redundant_placeholder26
2while_while_cond_25658277___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
њ
X
,__inference_lambda_95_layer_call_fn_25660008
inputs_0
inputs_1
identity║
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_95_layer_call_and_return_conditional_losses_25658989[
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
╠	
═
while_cond_25662183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25662183___redundant_placeholder06
2while_while_cond_25662183___redundant_placeholder16
2while_while_cond_25662183___redundant_placeholder26
2while_while_cond_25662183___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ў
Ї
#forward_lstm_91_while_cond_25661016<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3>
:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25661016___redundant_placeholder0V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25661016___redundant_placeholder1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25661016___redundant_placeholder2V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25661016___redundant_placeholder3"
forward_lstm_91_while_identity
б
forward_lstm_91/while/LessLess!forward_lstm_91_while_placeholder:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:
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
_user_specified_name!forward_lstm_91/strided_slice_1:

_output_shapes
:
њ
X
,__inference_lambda_95_layer_call_fn_25660014
inputs_0
inputs_1
identity║
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_95_layer_call_and_return_conditional_losses_25659387[
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
Г
Д
1__inference_sequential_381_layer_call_fn_25657337
dense_564_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_564_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657319s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_564_input:($
"
_user_specified_name
25657331:($
"
_user_specified_name
25657333
њ
X
,__inference_lambda_93_layer_call_fn_25659966
inputs_0
inputs_1
identity║
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659348[
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
д
■
G__inference_dense_558_layer_call_and_return_conditional_losses_25659954

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђѓ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђd
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
њ┐
ъ
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660670
inputs_0J
8forward_lstm_91_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_91_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_91/whileб0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_91/while[
forward_lstm_91/ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤m
#forward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_91/strided_sliceStridedSliceforward_lstm_91/Shape:output:0,forward_lstm_91/strided_slice/stack:output:0.forward_lstm_91/strided_slice/stack_1:output:0.forward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_91/zeros/packedPack&forward_lstm_91/strided_slice:output:0'forward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
forward_lstm_91/zerosFill%forward_lstm_91/zeros/packed:output:0$forward_lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:         b
 forward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/zeros_1/packedPack&forward_lstm_91/strided_slice:output:0)forward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
forward_lstm_91/zeros_1Fill'forward_lstm_91/zeros_1/packed:output:0&forward_lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:         s
forward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          А
forward_lstm_91/transpose	Transposeinputs_0'forward_lstm_91/transpose/perm:output:0*
T0*=
_output_shapes+
):'                           r
forward_lstm_91/Shape_1Shapeforward_lstm_91/transpose:y:0*
T0*
_output_shapes
::ь¤o
%forward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_91/strided_slice_1StridedSlice forward_lstm_91/Shape_1:output:0.forward_lstm_91/strided_slice_1/stack:output:00forward_lstm_91/strided_slice_1/stack_1:output:00forward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_91/TensorArrayV2TensorListReserve4forward_lstm_91/TensorArrayV2/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        љ
7forward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_91/transpose:y:0Nforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┬
forward_lstm_91/strided_slice_2StridedSliceforward_lstm_91/transpose:y:0.forward_lstm_91/strided_slice_2/stack:output:00forward_lstm_91/strided_slice_2/stack_1:output:00forward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskе
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┐
 forward_lstm_91/lstm_cell/MatMulMatMul(forward_lstm_91/strided_slice_2:output:07forward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          г
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╣
"forward_lstm_91/lstm_cell/MatMul_1MatMulforward_lstm_91/zeros:output:09forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ▓
forward_lstm_91/lstm_cell/addAddV2*forward_lstm_91/lstm_cell/MatMul:product:0,forward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          д
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╗
!forward_lstm_91/lstm_cell/BiasAddBiasAdd!forward_lstm_91/lstm_cell/add:z:08forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          k
)forward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ё
forward_lstm_91/lstm_cell/splitSplit2forward_lstm_91/lstm_cell/split/split_dim:output:0*forward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitѕ
!forward_lstm_91/lstm_cell/SigmoidSigmoid(forward_lstm_91/lstm_cell/split:output:0*
T0*'
_output_shapes
:         і
#forward_lstm_91/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_91/lstm_cell/split:output:1*
T0*'
_output_shapes
:         А
forward_lstm_91/lstm_cell/mulMul'forward_lstm_91/lstm_cell/Sigmoid_1:y:0 forward_lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:         ѓ
forward_lstm_91/lstm_cell/ReluRelu(forward_lstm_91/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Г
forward_lstm_91/lstm_cell/mul_1Mul%forward_lstm_91/lstm_cell/Sigmoid:y:0,forward_lstm_91/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         б
forward_lstm_91/lstm_cell/add_1AddV2!forward_lstm_91/lstm_cell/mul:z:0#forward_lstm_91/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         і
#forward_lstm_91/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_91/lstm_cell/split:output:3*
T0*'
_output_shapes
:         
 forward_lstm_91/lstm_cell/Relu_1Relu#forward_lstm_91/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ▒
forward_lstm_91/lstm_cell/mul_2Mul'forward_lstm_91/lstm_cell/Sigmoid_2:y:0.forward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ~
-forward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       У
forward_lstm_91/TensorArrayV2_1TensorListReserve6forward_lstm_91/TensorArrayV2_1/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : └
forward_lstm_91/whileWhile+forward_lstm_91/while/loop_counter:output:01forward_lstm_91/while/maximum_iterations:output:0forward_lstm_91/time:output:0(forward_lstm_91/TensorArrayV2_1:handle:0forward_lstm_91/zeros:output:0 forward_lstm_91/zeros_1:output:0(forward_lstm_91/strided_slice_1:output:0Gforward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_91_lstm_cell_matmul_readvariableop_resource:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_91_while_body_25660441*/
cond'R%
#forward_lstm_91_while_cond_25660440*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Љ
@forward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
2forward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_91/while:output:3Iforward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0x
%forward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
forward_lstm_91/strided_slice_3StridedSlice;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_91/strided_slice_3/stack:output:00forward_lstm_91/strided_slice_3/stack_1:output:00forward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masku
 forward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¤
forward_lstm_91/transpose_1	Transpose;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_91/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  k
forward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_91/ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤n
$backward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_91/strided_sliceStridedSlicebackward_lstm_91/Shape:output:0-backward_lstm_91/strided_slice/stack:output:0/backward_lstm_91/strided_slice/stack_1:output:0/backward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_91/zeros/packedPack'backward_lstm_91/strided_slice:output:0(backward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
backward_lstm_91/zerosFill&backward_lstm_91/zeros/packed:output:0%backward_lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:         c
!backward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_91/zeros_1/packedPack'backward_lstm_91/strided_slice:output:0*backward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
backward_lstm_91/zeros_1Fill(backward_lstm_91/zeros_1/packed:output:0'backward_lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:         t
backward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
backward_lstm_91/transpose	Transposeinputs_0(backward_lstm_91/transpose/perm:output:0*
T0*=
_output_shapes+
):'                           t
backward_lstm_91/Shape_1Shapebackward_lstm_91/transpose:y:0*
T0*
_output_shapes
::ь¤p
&backward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_91/strided_slice_1StridedSlice!backward_lstm_91/Shape_1:output:0/backward_lstm_91/strided_slice_1/stack:output:01backward_lstm_91/strided_slice_1/stack_1:output:01backward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_91/TensorArrayV2TensorListReserve5backward_lstm_91/TensorArrayV2/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_91/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ╣
backward_lstm_91/ReverseV2	ReverseV2backward_lstm_91/transpose:y:0(backward_lstm_91/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           Ќ
Fbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ў
8backward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_91/ReverseV2:output:0Obackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
 backward_lstm_91/strided_slice_2StridedSlicebackward_lstm_91/transpose:y:0/backward_lstm_91/strided_slice_2/stack:output:01backward_lstm_91/strided_slice_2/stack_1:output:01backward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskф
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┬
!backward_lstm_91/lstm_cell/MatMulMatMul)backward_lstm_91/strided_slice_2:output:08backward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          «
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╝
#backward_lstm_91/lstm_cell/MatMul_1MatMulbackward_lstm_91/zeros:output:0:backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
backward_lstm_91/lstm_cell/addAddV2+backward_lstm_91/lstm_cell/MatMul:product:0-backward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          е
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
"backward_lstm_91/lstm_cell/BiasAddBiasAdd"backward_lstm_91/lstm_cell/add:z:09backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*backward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 backward_lstm_91/lstm_cell/splitSplit3backward_lstm_91/lstm_cell/split/split_dim:output:0+backward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"backward_lstm_91/lstm_cell/SigmoidSigmoid)backward_lstm_91/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ї
$backward_lstm_91/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_91/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ц
backward_lstm_91/lstm_cell/mulMul(backward_lstm_91/lstm_cell/Sigmoid_1:y:0!backward_lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:         ё
backward_lstm_91/lstm_cell/ReluRelu)backward_lstm_91/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ░
 backward_lstm_91/lstm_cell/mul_1Mul&backward_lstm_91/lstm_cell/Sigmoid:y:0-backward_lstm_91/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 backward_lstm_91/lstm_cell/add_1AddV2"backward_lstm_91/lstm_cell/mul:z:0$backward_lstm_91/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ї
$backward_lstm_91/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_91/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Ђ
!backward_lstm_91/lstm_cell/Relu_1Relu$backward_lstm_91/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ┤
 backward_lstm_91/lstm_cell/mul_2Mul(backward_lstm_91/lstm_cell/Sigmoid_2:y:0/backward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         
.backward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       в
 backward_lstm_91/TensorArrayV2_1TensorListReserve7backward_lstm_91/TensorArrayV2_1/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╬
backward_lstm_91/whileWhile,backward_lstm_91/while/loop_counter:output:02backward_lstm_91/while/maximum_iterations:output:0backward_lstm_91/time:output:0)backward_lstm_91/TensorArrayV2_1:handle:0backward_lstm_91/zeros:output:0!backward_lstm_91/zeros_1:output:0)backward_lstm_91/strided_slice_1:output:0Hbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_91_lstm_cell_matmul_readvariableop_resource;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_91_while_body_25660582*0
cond(R&
$backward_lstm_91_while_cond_25660581*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations њ
Abackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ■
3backward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_91/while:output:3Jbackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0y
&backward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
 backward_lstm_91/strided_slice_3StridedSlice<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_91/strided_slice_3/stack:output:01backward_lstm_91/strided_slice_3/stack_1:output:01backward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskv
!backward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
backward_lstm_91/transpose_1	Transpose<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_91/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  l
backward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:љ
	ReverseV2	ReverseV2 backward_lstm_91/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ц
concatConcatV2forward_lstm_91/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :                  ѕ
NoOpNoOp2^backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_91/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_91/while1^forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_91/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 2f
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_91/whilebackward_lstm_91/while2d
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_91/whileforward_lstm_91/while:g c
=
_output_shapes+
):'                           
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
И
А
$backward_lstm_91_while_cond_25659189>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3@
<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25659189___redundant_placeholder0X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25659189___redundant_placeholder1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25659189___redundant_placeholder2X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25659189___redundant_placeholder3#
backward_lstm_91_while_identity
д
backward_lstm_91/while/LessLess"backward_lstm_91_while_placeholder<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_91/while/IdentityIdentitybackward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:
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
_user_specified_name" backward_lstm_91/strided_slice_1:

_output_shapes
:
еJ
љ
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25658362

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25658278*
condR
while_cond_25658277*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
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
ЉL
Љ
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662703

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: є
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25662619*
condR
while_cond_25662618*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
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
і

g
H__inference_dropout_91_layer_call_and_return_conditional_losses_25659303

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         Є
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
 *═╠L>А
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ј
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
С
■
G__inference_dense_559_layer_call_and_return_conditional_losses_25657224

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
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
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : ю
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
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Д	
Я
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657319
dense_564_input$
dense_564_25657313: 
dense_564_25657315:
identityѕб!dense_564/StatefulPartitionedCallЄ
!dense_564/StatefulPartitionedCallStatefulPartitionedCalldense_564_inputdense_564_25657313dense_564_25657315*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_564_layer_call_and_return_conditional_losses_25657307}
IdentityIdentity*dense_564/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_564/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_564/StatefulPartitionedCall!dense_564/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_564_input:($
"
_user_specified_name
25657313:($
"
_user_specified_name
25657315
Г
Д
1__inference_sequential_381_layer_call_fn_25657346
dense_564_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_564_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657328s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_564_input:($
"
_user_specified_name
25657340:($
"
_user_specified_name
25657342
д
њ
3__inference_bidirectional_91_layer_call_fn_25660043
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25658527|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'                           
"
_user_specified_name
inputs_0:($
"
_user_specified_name
25660029:($
"
_user_specified_name
25660031:($
"
_user_specified_name
25660033:($
"
_user_specified_name
25660035:($
"
_user_specified_name
25660037:($
"
_user_specified_name
25660039
╠	
═
while_cond_25662473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25662473___redundant_placeholder06
2while_while_cond_25662473___redundant_placeholder16
2while_while_cond_25662473___redundant_placeholder26
2while_while_cond_25662473___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╠	
═
while_cond_25661708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25661708___redundant_placeholder06
2while_while_cond_25661708___redundant_placeholder16
2while_while_cond_25661708___redundant_placeholder26
2while_while_cond_25661708___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
І
I
-__inference_flatten_91_layer_call_fn_25661278

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_flatten_91_layer_call_and_return_conditional_losses_25659310X
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
Еr
О
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_body_25656951~
ztopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_loop_counterЁ
ђtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_maximum_iterationsF
Btopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholderH
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_1H
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_2H
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_3}
ytopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_strided_slice_1_0║
хtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0s
atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: u
ctopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: p
btopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: C
?topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identityE
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_1E
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_2E
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_3E
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_4E
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_5{
wtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_strided_slice_1И
│topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorq
_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: s
atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: n
`topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕбWtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpбVtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpбXtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp╣
htopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Њ
Ztopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemхtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0Btopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholderqtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Э
Vtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpatopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0й
Gtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMulMatMulatopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ч
Xtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpctopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0ц
Itopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul_1MatMulDtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_2`topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ъ
Dtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/addAddV2Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul:product:0Stopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ш
Wtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpbtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Д
Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/BiasAddBiasAddHtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/add:z:0_topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: њ
Ptopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/splitSplitYtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/split/split_dim:output:0Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split═
Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/SigmoidSigmoidOtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:¤
Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/Sigmoid_1SigmoidOtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:і
Dtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/mulMulNtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/Sigmoid_1:y:0Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:К
Etopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/ReluReluOtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Ў
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/mul_1MulLtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/Sigmoid:y:0Stopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ј
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/add_1AddV2Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/mul:z:0Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:¤
Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/Sigmoid_2SigmoidOtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:─
Gtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/Relu_1ReluJtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ю
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/mul_2MulNtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/Sigmoid_2:y:0Utopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
[topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemDtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_1Btopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholderJtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм~
<topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :№
:topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/addAddV2Btopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholderEtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: ђ
>topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
<topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/add_1AddV2ztopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_loop_counterGtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: В
?topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/IdentityIdentity@topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/add_1:z:0<^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/NoOp*
T0*
_output_shapes
: »
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_1Identityђtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_maximum_iterations<^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/NoOp*
T0*
_output_shapes
: В
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_2Identity>topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/add:z:0<^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ў
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_3Identityktopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/NoOp*
T0*
_output_shapes
: ђ
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_4IdentityJtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/mul_2:z:0<^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/NoOp*
T0*
_output_shapes

:ђ
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_5IdentityJtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/add_1:z:0<^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/NoOp*
T0*
_output_shapes

:у
;topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/NoOpNoOpX^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpW^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpY^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "І
?topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identityHtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity:output:0"Ј
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_1Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_1:output:0"Ј
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_2Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_2:output:0"Ј
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_3Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_3:output:0"Ј
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_4Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_4:output:0"Ј
Atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity_5Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity_5:output:0"к
`topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourcebtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"╚
atopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourcectopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"─
_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_readvariableop_resourceatopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"Ь
│topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorхtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0"З
wtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_strided_slice_1ytopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_strided_slice_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2▓
Wtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpWtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2░
Vtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpVtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2┤
Xtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpXtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:{ w

_output_shapes
: 
]
_user_specified_nameECtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/loop_counter:Ђ}

_output_shapes
: 
c
_user_specified_nameKItopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/maximum_iterations:
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
_user_specified_nameB@topk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1:Љї

_output_shapes
: 
r
_user_specified_nameZXtopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
С
■
G__inference_dense_574_layer_call_and_return_conditional_losses_25657473

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
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
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : ю
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
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
њ
X
,__inference_lambda_93_layer_call_fn_25659960
inputs_0
inputs_1
identity║
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_93_layer_call_and_return_conditional_losses_25658950[
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
ХJ
▒
#forward_lstm_91_while_body_25660729<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3;
7forward_lstm_91_while_forward_lstm_91_strided_slice_1_0w
sforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_91_while_identity$
 forward_lstm_91_while_identity_1$
 forward_lstm_91_while_identity_2$
 forward_lstm_91_while_identity_3$
 forward_lstm_91_while_identity_4$
 forward_lstm_91_while_identity_59
5forward_lstm_91_while_forward_lstm_91_strided_slice_1u
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
9forward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_91_while_placeholderPforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Х
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
&forward_lstm_91/while/lstm_cell/MatMulMatMul@forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ║
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┴
(forward_lstm_91/while/lstm_cell/MatMul_1MatMul#forward_lstm_91_while_placeholder_2?forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ╗
#forward_lstm_91/while/lstm_cell/addAddV20forward_lstm_91/while/lstm_cell/MatMul:product:02forward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ┤
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0─
'forward_lstm_91/while/lstm_cell/BiasAddBiasAdd'forward_lstm_91/while/lstm_cell/add:z:0>forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
%forward_lstm_91/while/lstm_cell/splitSplit8forward_lstm_91/while/lstm_cell/split/split_dim:output:00forward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitІ
'forward_lstm_91/while/lstm_cell/SigmoidSigmoid.forward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ї
)forward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Д
#forward_lstm_91/while/lstm_cell/mulMul-forward_lstm_91/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:Ё
$forward_lstm_91/while/lstm_cell/ReluRelu.forward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Х
%forward_lstm_91/while/lstm_cell/mul_1Mul+forward_lstm_91/while/lstm_cell/Sigmoid:y:02forward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ф
%forward_lstm_91/while/lstm_cell/add_1AddV2'forward_lstm_91/while/lstm_cell/mul:z:0)forward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ї
)forward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ѓ
&forward_lstm_91/while/lstm_cell/Relu_1Relu)forward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:║
%forward_lstm_91/while/lstm_cell/mul_2Mul-forward_lstm_91/while/lstm_cell/Sigmoid_2:y:04forward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:ѓ
:forward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_91_while_placeholder_1!forward_lstm_91_while_placeholder)forward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_91/while/addAddV2!forward_lstm_91_while_placeholder$forward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/while/add_1AddV28forward_lstm_91_while_forward_lstm_91_while_loop_counter&forward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_91/while/Identity_1Identity>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_91/while/Identity_2Identityforward_lstm_91/while/add:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_91/while/Identity_3IdentityJforward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ю
 forward_lstm_91/while/Identity_4Identity)forward_lstm_91/while/lstm_cell/mul_2:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes

:Ю
 forward_lstm_91/while/Identity_5Identity)forward_lstm_91/while/lstm_cell/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes

:с
forward_lstm_91/while/NoOpNoOp7^forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_91_while_forward_lstm_91_strided_slice_17forward_lstm_91_while_forward_lstm_91_strided_slice_1_0"I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0"M
 forward_lstm_91_while_identity_1)forward_lstm_91/while/Identity_1:output:0"M
 forward_lstm_91_while_identity_2)forward_lstm_91/while/Identity_2:output:0"M
 forward_lstm_91_while_identity_3)forward_lstm_91/while/Identity_3:output:0"M
 forward_lstm_91_while_identity_4)forward_lstm_91/while/Identity_4:output:0"M
 forward_lstm_91_while_identity_5)forward_lstm_91/while/Identity_5:output:0"ё
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:
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
_user_specified_name!forward_lstm_91/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
Л	
щ
G__inference_dense_575_layer_call_and_return_conditional_losses_25661303

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
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
:	ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Г
Д
1__inference_sequential_386_layer_call_fn_25657420
dense_569_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_569_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657402s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_569_input:($
"
_user_specified_name
25657414:($
"
_user_specified_name
25657416
╠	
═
while_cond_25662618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25662618___redundant_placeholder06
2while_while_cond_25662618___redundant_placeholder16
2while_while_cond_25662618___redundant_placeholder26
2while_while_cond_25662618___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
к
┴
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_cond_25657091ђ
|topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_loop_counterЄ
ѓtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_maximum_iterationsG
Ctopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholderI
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_1I
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_2I
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_3ѓ
~topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_less_topk_bilstm_moe_bidirectional_91_backward_lstm_91_strided_slice_1Џ
ќtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_cond_25657091___redundant_placeholder0Џ
ќtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_cond_25657091___redundant_placeholder1Џ
ќtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_cond_25657091___redundant_placeholder2Џ
ќtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_cond_25657091___redundant_placeholder3D
@topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity
ф
<topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/LessLessCtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder~topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_less_topk_bilstm_moe_bidirectional_91_backward_lstm_91_strided_slice_1*
T0*
_output_shapes
: »
@topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/IdentityIdentity@topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "Ї
@topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identityItopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::| x

_output_shapes
: 
^
_user_specified_nameFDtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/loop_counter:ѓ~

_output_shapes
: 
d
_user_specified_nameLJtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/maximum_iterations:
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
_user_specified_nameCAtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1:

_output_shapes
:
Т
q
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659348

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
У8
▒
while_body_25661852
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
▀8
▒
while_body_25661709
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
С
■
G__inference_dense_564_layer_call_and_return_conditional_losses_25661383

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
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
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : ю
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
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ќ	
┐
3__inference_backward_lstm_91_layer_call_fn_25662101
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658161|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
25662093:($
"
_user_specified_name
25662095:($
"
_user_specified_name
25662097
Б
ђ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657583

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
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
вK
Њ
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662413
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25662329*
condR
while_cond_25662328*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
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
К
f
H__inference_dropout_91_layer_call_and_return_conditional_losses_25659694

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
ѕ
Ў
,__inference_dense_569_layer_call_fn_25661392

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_569_layer_call_and_return_conditional_losses_25657390s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
25661386:($
"
_user_specified_name
25661388
▒M
Л
$backward_lstm_91_while_body_25660294>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3=
9backward_lstm_91_while_backward_lstm_91_strided_slice_1_0y
ubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_91_while_identity%
!backward_lstm_91_while_identity_1%
!backward_lstm_91_while_identity_2%
!backward_lstm_91_while_identity_3%
!backward_lstm_91_while_identity_4%
!backward_lstm_91_while_identity_5;
7backward_lstm_91_while_backward_lstm_91_strided_slice_1w
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ё
:backward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_91_while_placeholderQbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0И
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Т
'backward_lstm_91/while/lstm_cell/MatMulMatMulAbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╝
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0═
)backward_lstm_91/while/lstm_cell/MatMul_1MatMul$backward_lstm_91_while_placeholder_2@backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          К
$backward_lstm_91/while/lstm_cell/addAddV21backward_lstm_91/while/lstm_cell/MatMul:product:03backward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          Х
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0л
(backward_lstm_91/while/lstm_cell/BiasAddBiasAdd(backward_lstm_91/while/lstm_cell/add:z:0?backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
0backward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
&backward_lstm_91/while/lstm_cell/splitSplit9backward_lstm_91/while/lstm_cell/split/split_dim:output:01backward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitќ
(backward_lstm_91/while/lstm_cell/SigmoidSigmoid/backward_lstm_91/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ў
*backward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_91/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         │
$backward_lstm_91/while/lstm_cell/mulMul.backward_lstm_91/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_91_while_placeholder_3*
T0*'
_output_shapes
:         љ
%backward_lstm_91/while/lstm_cell/ReluRelu/backward_lstm_91/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┬
&backward_lstm_91/while/lstm_cell/mul_1Mul,backward_lstm_91/while/lstm_cell/Sigmoid:y:03backward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         и
&backward_lstm_91/while/lstm_cell/add_1AddV2(backward_lstm_91/while/lstm_cell/mul:z:0*backward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ў
*backward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_91/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Ї
'backward_lstm_91/while/lstm_cell/Relu_1Relu*backward_lstm_91/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         к
&backward_lstm_91/while/lstm_cell/mul_2Mul.backward_lstm_91/while/lstm_cell/Sigmoid_2:y:05backward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         є
;backward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_91_while_placeholder_1"backward_lstm_91_while_placeholder*backward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_91/while/addAddV2"backward_lstm_91_while_placeholder%backward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_91/while/add_1AddV2:backward_lstm_91_while_backward_lstm_91_while_loop_counter'backward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_91/while/IdentityIdentity backward_lstm_91/while/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_91/while/Identity_1Identity@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_91/while/Identity_2Identitybackward_lstm_91/while/add:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_91/while/Identity_3IdentityKbackward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: Е
!backward_lstm_91/while/Identity_4Identity*backward_lstm_91/while/lstm_cell/mul_2:z:0^backward_lstm_91/while/NoOp*
T0*'
_output_shapes
:         Е
!backward_lstm_91/while/Identity_5Identity*backward_lstm_91/while/lstm_cell/add_1:z:0^backward_lstm_91/while/NoOp*
T0*'
_output_shapes
:         у
backward_lstm_91/while/NoOpNoOp8^backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_91_while_backward_lstm_91_strided_slice_19backward_lstm_91_while_backward_lstm_91_strided_slice_1_0"K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0"O
!backward_lstm_91_while_identity_1*backward_lstm_91/while/Identity_1:output:0"O
!backward_lstm_91_while_identity_2*backward_lstm_91/while/Identity_2:output:0"O
!backward_lstm_91_while_identity_3*backward_lstm_91/while/Identity_3:output:0"O
!backward_lstm_91_while_identity_4*backward_lstm_91/while/Identity_4:output:0"O
!backward_lstm_91_while_identity_5*backward_lstm_91/while/Identity_5:output:0"є
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2r
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_91/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
ѕ
Ў
,__inference_dense_564_layer_call_fn_25661352

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_564_layer_call_and_return_conditional_losses_25657307s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
25661346:($
"
_user_specified_name
25661348
Ў
Ї
#forward_lstm_91_while_cond_25659048<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3>
:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25659048___redundant_placeholder0V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25659048___redundant_placeholder1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25659048___redundant_placeholder2V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25659048___redundant_placeholder3"
forward_lstm_91_while_identity
б
forward_lstm_91/while/LessLess!forward_lstm_91_while_placeholder:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:
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
_user_specified_name!forward_lstm_91/strided_slice_1:

_output_shapes
:
╝:
Є
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658014

inputs$
lstm_cell_25657932: $
lstm_cell_25657934:  
lstm_cell_25657936: 
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЬ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25657932lstm_cell_25657934lstm_cell_25657936*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657931n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Џ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25657932lstm_cell_25657934lstm_cell_25657936*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25657945*
condR
while_cond_25657944*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
25657932:($
"
_user_specified_name
25657934:($
"
_user_specified_name
25657936
д
њ
3__inference_bidirectional_91_layer_call_fn_25660060
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25658837|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'                           
"
_user_specified_name
inputs_0:($
"
_user_specified_name
25660046:($
"
_user_specified_name
25660048:($
"
_user_specified_name
25660050:($
"
_user_specified_name
25660052:($
"
_user_specified_name
25660054:($
"
_user_specified_name
25660056
Т
q
G__inference_lambda_95_layer_call_and_return_conditional_losses_25659387

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
└
Ы
,__inference_lstm_cell_layer_call_fn_25662818

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657931o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
25662806:($
"
_user_specified_name
25662808:($
"
_user_specified_name
25662810
Д	
Я
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657485
dense_574_input$
dense_574_25657479: 
dense_574_25657481:
identityѕб!dense_574/StatefulPartitionedCallЄ
!dense_574/StatefulPartitionedCallStatefulPartitionedCalldense_574_inputdense_574_25657479dense_574_25657481*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_574_layer_call_and_return_conditional_losses_25657473}
IdentityIdentity*dense_574/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_574/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_574/StatefulPartitionedCall!dense_574/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_574_input:($
"
_user_specified_name
25657479:($
"
_user_specified_name
25657481
Й
▄
2__inference_topk_bilstm_moe_layer_call_fn_25659785
input_2
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

unknown_15:	ђ

unknown_16:
identityѕбStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8ѓ *V
fQRO
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659703f
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
_user_specified_name	input_2:($
"
_user_specified_name
25659747:($
"
_user_specified_name
25659749:($
"
_user_specified_name
25659751:($
"
_user_specified_name
25659753:($
"
_user_specified_name
25659755:($
"
_user_specified_name
25659757:($
"
_user_specified_name
25659759:($
"
_user_specified_name
25659761:(	$
"
_user_specified_name
25659763:(
$
"
_user_specified_name
25659765:($
"
_user_specified_name
25659767:($
"
_user_specified_name
25659769:($
"
_user_specified_name
25659771:($
"
_user_specified_name
25659773:($
"
_user_specified_name
25659775:($
"
_user_specified_name
25659777:($
"
_user_specified_name
25659779:($
"
_user_specified_name
25659781
╠	
═
while_cond_25658429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25658429___redundant_placeholder06
2while_while_cond_25658429___redundant_placeholder16
2while_while_cond_25658429___redundant_placeholder26
2while_while_cond_25658429___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
С
■
G__inference_dense_569_layer_call_and_return_conditional_losses_25657390

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
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
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : ю
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
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
й
Ї
#forward_lstm_91_while_cond_25660152<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3>
:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660152___redundant_placeholder0V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660152___redundant_placeholder1V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660152___redundant_placeholder2V
Rforward_lstm_91_while_forward_lstm_91_while_cond_25660152___redundant_placeholder3"
forward_lstm_91_while_identity
б
forward_lstm_91/while/LessLess!forward_lstm_91_while_placeholder:forward_lstm_91_while_less_forward_lstm_91_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_91/strided_slice_1:

_output_shapes
:
й╣
ю
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660958

inputsJ
8forward_lstm_91_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_91_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_91/whileб0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_91/whilej
forward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_91/strided_sliceStridedSliceforward_lstm_91/Shape:output:0,forward_lstm_91/strided_slice/stack:output:0.forward_lstm_91/strided_slice/stack_1:output:0.forward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_91/zeros/packedPack&forward_lstm_91/strided_slice:output:0'forward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
forward_lstm_91/zerosFill%forward_lstm_91/zeros/packed:output:0$forward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/zeros_1/packedPack&forward_lstm_91/strided_slice:output:0)forward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
forward_lstm_91/zeros_1Fill'forward_lstm_91/zeros_1/packed:output:0&forward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
forward_lstm_91/transpose	Transposeinputs'forward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_91/strided_slice_1StridedSlice forward_lstm_91/Shape_1:output:0.forward_lstm_91/strided_slice_1/stack:output:00forward_lstm_91/strided_slice_1/stack_1:output:00forward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_91/TensorArrayV2TensorListReserve4forward_lstm_91/TensorArrayV2/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      љ
7forward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_91/transpose:y:0Nforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
forward_lstm_91/strided_slice_2StridedSliceforward_lstm_91/transpose:y:0.forward_lstm_91/strided_slice_2/stack:output:00forward_lstm_91/strided_slice_2/stack_1:output:00forward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskе
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
 forward_lstm_91/lstm_cell/MatMulMatMul(forward_lstm_91/strided_slice_2:output:07forward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: г
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0░
"forward_lstm_91/lstm_cell/MatMul_1MatMulforward_lstm_91/zeros:output:09forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Е
forward_lstm_91/lstm_cell/addAddV2*forward_lstm_91/lstm_cell/MatMul:product:0,forward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: д
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0▓
!forward_lstm_91/lstm_cell/BiasAddBiasAdd!forward_lstm_91/lstm_cell/add:z:08forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
forward_lstm_91/lstm_cell/splitSplit2forward_lstm_91/lstm_cell/split/split_dim:output:0*forward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_91/lstm_cell/SigmoidSigmoid(forward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:Ђ
#forward_lstm_91/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
forward_lstm_91/lstm_cell/mulMul'forward_lstm_91/lstm_cell/Sigmoid_1:y:0 forward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_91/lstm_cell/ReluRelu(forward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:ц
forward_lstm_91/lstm_cell/mul_1Mul%forward_lstm_91/lstm_cell/Sigmoid:y:0,forward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
forward_lstm_91/lstm_cell/add_1AddV2!forward_lstm_91/lstm_cell/mul:z:0#forward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ђ
#forward_lstm_91/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_91/lstm_cell/Relu_1Relu#forward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:е
forward_lstm_91/lstm_cell/mul_2Mul'forward_lstm_91/lstm_cell/Sigmoid_2:y:0.forward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      У
forward_lstm_91/TensorArrayV2_1TensorListReserve6forward_lstm_91/TensorArrayV2_1/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
forward_lstm_91/whileWhile+forward_lstm_91/while/loop_counter:output:01forward_lstm_91/while/maximum_iterations:output:0forward_lstm_91/time:output:0(forward_lstm_91/TensorArrayV2_1:handle:0forward_lstm_91/zeros:output:0 forward_lstm_91/zeros_1:output:0(forward_lstm_91/strided_slice_1:output:0Gforward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_91_lstm_cell_matmul_readvariableop_resource:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
#forward_lstm_91_while_body_25660729*/
cond'R%
#forward_lstm_91_while_cond_25660728*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Љ
@forward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ж
2forward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_91/while:output:3Iforward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
forward_lstm_91/strided_slice_3StridedSlice;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_91/strided_slice_3/stack:output:00forward_lstm_91/strided_slice_3/stack_1:output:00forward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
forward_lstm_91/transpose_1	Transpose;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_91/strided_sliceStridedSlicebackward_lstm_91/Shape:output:0-backward_lstm_91/strided_slice/stack:output:0/backward_lstm_91/strided_slice/stack_1:output:0/backward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_91/zeros/packedPack'backward_lstm_91/strided_slice:output:0(backward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
backward_lstm_91/zerosFill&backward_lstm_91/zeros/packed:output:0%backward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_91/zeros_1/packedPack'backward_lstm_91/strided_slice:output:0*backward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
backward_lstm_91/zeros_1Fill(backward_lstm_91/zeros_1/packed:output:0'backward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
backward_lstm_91/transpose	Transposeinputs(backward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_91/strided_slice_1StridedSlice!backward_lstm_91/Shape_1:output:0/backward_lstm_91/strided_slice_1/stack:output:01backward_lstm_91/strided_slice_1/stack_1:output:01backward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_91/TensorArrayV2TensorListReserve5backward_lstm_91/TensorArrayV2/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_91/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
backward_lstm_91/ReverseV2	ReverseV2backward_lstm_91/transpose:y:0(backward_lstm_91/ReverseV2/axis:output:0*
T0*"
_output_shapes
:Ќ
Fbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
8backward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_91/ReverseV2:output:0Obackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
 backward_lstm_91/strided_slice_2StridedSlicebackward_lstm_91/transpose:y:0/backward_lstm_91/strided_slice_2/stack:output:01backward_lstm_91/strided_slice_2/stack_1:output:01backward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskф
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╣
!backward_lstm_91/lstm_cell/MatMulMatMul)backward_lstm_91/strided_slice_2:output:08backward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: «
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0│
#backward_lstm_91/lstm_cell/MatMul_1MatMulbackward_lstm_91/zeros:output:0:backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: г
backward_lstm_91/lstm_cell/addAddV2+backward_lstm_91/lstm_cell/MatMul:product:0-backward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: е
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
"backward_lstm_91/lstm_cell/BiasAddBiasAdd"backward_lstm_91/lstm_cell/add:z:09backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
 backward_lstm_91/lstm_cell/splitSplit3backward_lstm_91/lstm_cell/split/split_dim:output:0+backward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЂ
"backward_lstm_91/lstm_cell/SigmoidSigmoid)backward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_91/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:Џ
backward_lstm_91/lstm_cell/mulMul(backward_lstm_91/lstm_cell/Sigmoid_1:y:0!backward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_91/lstm_cell/ReluRelu)backward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:Д
 backward_lstm_91/lstm_cell/mul_1Mul&backward_lstm_91/lstm_cell/Sigmoid:y:0-backward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ю
 backward_lstm_91/lstm_cell/add_1AddV2"backward_lstm_91/lstm_cell/mul:z:0$backward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_91/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_91/lstm_cell/Relu_1Relu$backward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ф
 backward_lstm_91/lstm_cell/mul_2Mul(backward_lstm_91/lstm_cell/Sigmoid_2:y:0/backward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      в
 backward_lstm_91/TensorArrayV2_1TensorListReserve7backward_lstm_91/TensorArrayV2_1/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
backward_lstm_91/whileWhile,backward_lstm_91/while/loop_counter:output:02backward_lstm_91/while/maximum_iterations:output:0backward_lstm_91/time:output:0)backward_lstm_91/TensorArrayV2_1:handle:0backward_lstm_91/zeros:output:0!backward_lstm_91/zeros_1:output:0)backward_lstm_91/strided_slice_1:output:0Hbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_91_lstm_cell_matmul_readvariableop_resource;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
$backward_lstm_91_while_body_25660870*0
cond(R&
$backward_lstm_91_while_cond_25660869*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations њ
Abackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      В
3backward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_91/while:output:3Jbackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
 backward_lstm_91/strided_slice_3StridedSlice<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_91/strided_slice_3/stack:output:01backward_lstm_91/strided_slice_3/stack_1:output:01backward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
backward_lstm_91/transpose_1	Transpose<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_91/runtimeConst"/device:CPU:0*
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
	ReverseV2	ReverseV2 backward_lstm_91/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
concatConcatV2forward_lstm_91/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:ѕ
NoOpNoOp2^backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_91/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_91/while1^forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_91/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_91/whilebackward_lstm_91/while2d
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_91/whileforward_lstm_91/while:J F
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
С
■
G__inference_dense_559_layer_call_and_return_conditional_losses_25661343

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
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
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : ю
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
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Д	
Я
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657236
dense_559_input$
dense_559_25657230: 
dense_559_25657232:
identityѕб!dense_559/StatefulPartitionedCallЄ
!dense_559/StatefulPartitionedCallStatefulPartitionedCalldense_559_inputdense_559_25657230dense_559_25657232*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_559_layer_call_and_return_conditional_losses_25657224}
IdentityIdentity*dense_559/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_559/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_559/StatefulPartitionedCall!dense_559/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_559_input:($
"
_user_specified_name
25657230:($
"
_user_specified_name
25657232
ћ	
Й
2__inference_forward_lstm_91_layer_call_fn_25661485
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25657811|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
25661477:($
"
_user_specified_name
25661479:($
"
_user_specified_name
25661481
№
s
G__inference_lambda_94_layer_call_and_return_conditional_losses_25660002
inputs_0
inputs_1
identityѓ
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
№
s
G__inference_lambda_94_layer_call_and_return_conditional_losses_25659996
inputs_0
inputs_1
identityѓ
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
Ѕљ
Ф
#__inference__wrapped_model_25657189
input_2M
;topk_bilstm_moe_dense_558_tensordot_readvariableop_resource:G
9topk_bilstm_moe_dense_558_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_376_dense_559_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_376_dense_559_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_381_dense_564_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_381_dense_564_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_386_dense_569_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_386_dense_569_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_391_dense_574_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_391_dense_574_biasadd_readvariableop_resource:k
Ytopk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_matmul_readvariableop_resource: m
[topk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: h
Ztopk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_biasadd_readvariableop_resource: l
Ztopk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_matmul_readvariableop_resource: n
\topk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: i
[topk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_biasadd_readvariableop_resource: K
8topk_bilstm_moe_dense_575_matmul_readvariableop_resource:	ђG
9topk_bilstm_moe_dense_575_biasadd_readvariableop_resource:
identityѕбRtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpбQtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul/ReadVariableOpбStopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpб7topk_bilstm_moe/bidirectional_91/backward_lstm_91/whileбQtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpбPtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpбRtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpб6topk_bilstm_moe/bidirectional_91/forward_lstm_91/whileб0topk_bilstm_moe/dense_558/BiasAdd/ReadVariableOpб2topk_bilstm_moe/dense_558/Tensordot/ReadVariableOpб0topk_bilstm_moe/dense_575/BiasAdd/ReadVariableOpб/topk_bilstm_moe/dense_575/MatMul/ReadVariableOpб?topk_bilstm_moe/sequential_376/dense_559/BiasAdd/ReadVariableOpбAtopk_bilstm_moe/sequential_376/dense_559/Tensordot/ReadVariableOpб?topk_bilstm_moe/sequential_381/dense_564/BiasAdd/ReadVariableOpбAtopk_bilstm_moe/sequential_381/dense_564/Tensordot/ReadVariableOpб?topk_bilstm_moe/sequential_386/dense_569/BiasAdd/ReadVariableOpбAtopk_bilstm_moe/sequential_386/dense_569/Tensordot/ReadVariableOpб?topk_bilstm_moe/sequential_391/dense_574/BiasAdd/ReadVariableOpбAtopk_bilstm_moe/sequential_391/dense_574/Tensordot/ReadVariableOp«
2topk_bilstm_moe/dense_558/Tensordot/ReadVariableOpReadVariableOp;topk_bilstm_moe_dense_558_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0ѓ
1topk_bilstm_moe/dense_558/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     Ц
+topk_bilstm_moe/dense_558/Tensordot/ReshapeReshapeinput_2:topk_bilstm_moe/dense_558/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђл
*topk_bilstm_moe/dense_558/Tensordot/MatMulMatMul4topk_bilstm_moe/dense_558/Tensordot/Reshape:output:0:topk_bilstm_moe/dense_558/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ~
)topk_bilstm_moe/dense_558/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ┼
#topk_bilstm_moe/dense_558/TensordotReshape4topk_bilstm_moe/dense_558/Tensordot/MatMul:product:02topk_bilstm_moe/dense_558/Tensordot/shape:output:0*
T0*"
_output_shapes
:д
0topk_bilstm_moe/dense_558/BiasAdd/ReadVariableOpReadVariableOp9topk_bilstm_moe_dense_558_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
!topk_bilstm_moe/dense_558/BiasAddBiasAdd,topk_bilstm_moe/dense_558/Tensordot:output:08topk_bilstm_moe/dense_558/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ё
!topk_bilstm_moe/dense_558/SoftmaxSoftmax*topk_bilstm_moe/dense_558/BiasAdd:output:0*
T0*"
_output_shapes
:j
(topk_bilstm_moe/tf.math.top_k_1/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :╦
&topk_bilstm_moe/tf.math.top_k_1/TopKV2TopKV2+topk_bilstm_moe/dense_558/Softmax:softmax:01topk_bilstm_moe/tf.math.top_k_1/TopKV2/k:output:0*
T0*0
_output_shapes
::r
-topk_bilstm_moe/tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?s
.topk_bilstm_moe/tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    l
*topk_bilstm_moe/tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :┴
$topk_bilstm_moe/tf.one_hot_1/one_hotOneHot0topk_bilstm_moe/tf.math.top_k_1/TopKV2:indices:03topk_bilstm_moe/tf.one_hot_1/one_hot/depth:output:06topk_bilstm_moe/tf.one_hot_1/one_hot/on_value:output:07topk_bilstm_moe/tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:С
'topk_bilstm_moe/lambda_93/einsum/EinsumEinsum/topk_bilstm_moe/tf.math.top_k_1/TopKV2:values:0-topk_bilstm_moe/tf.one_hot_1/one_hot:output:0*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abd├
'topk_bilstm_moe/lambda_94/einsum/EinsumEinsuminput_20topk_bilstm_moe/lambda_93/einsum/Einsum:output:0*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc┬
$topk_bilstm_moe/tf.unstack_1/unstackUnpack0topk_bilstm_moe/lambda_94/einsum/Einsum:output:0*
T0*L
_output_shapes:
8::::*	
num╠
Atopk_bilstm_moe/sequential_376/dense_559/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_376_dense_559_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0Љ
@topk_bilstm_moe/sequential_376/dense_559/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     ж
:topk_bilstm_moe/sequential_376/dense_559/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_1/unstack:output:0Itopk_bilstm_moe/sequential_376/dense_559/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђ§
9topk_bilstm_moe/sequential_376/dense_559/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_376/dense_559/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_376/dense_559/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђЇ
8topk_bilstm_moe/sequential_376/dense_559/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ы
2topk_bilstm_moe/sequential_376/dense_559/TensordotReshapeCtopk_bilstm_moe/sequential_376/dense_559/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_376/dense_559/Tensordot/shape:output:0*
T0*"
_output_shapes
:─
?topk_bilstm_moe/sequential_376/dense_559/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_376_dense_559_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
0topk_bilstm_moe/sequential_376/dense_559/BiasAddBiasAdd;topk_bilstm_moe/sequential_376/dense_559/Tensordot:output:0Gtopk_bilstm_moe/sequential_376/dense_559/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ю
-topk_bilstm_moe/sequential_376/dense_559/ReluRelu9topk_bilstm_moe/sequential_376/dense_559/BiasAdd:output:0*
T0*"
_output_shapes
:╠
Atopk_bilstm_moe/sequential_381/dense_564/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_381_dense_564_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0Љ
@topk_bilstm_moe/sequential_381/dense_564/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     ж
:topk_bilstm_moe/sequential_381/dense_564/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_1/unstack:output:1Itopk_bilstm_moe/sequential_381/dense_564/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђ§
9topk_bilstm_moe/sequential_381/dense_564/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_381/dense_564/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_381/dense_564/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђЇ
8topk_bilstm_moe/sequential_381/dense_564/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ы
2topk_bilstm_moe/sequential_381/dense_564/TensordotReshapeCtopk_bilstm_moe/sequential_381/dense_564/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_381/dense_564/Tensordot/shape:output:0*
T0*"
_output_shapes
:─
?topk_bilstm_moe/sequential_381/dense_564/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_381_dense_564_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
0topk_bilstm_moe/sequential_381/dense_564/BiasAddBiasAdd;topk_bilstm_moe/sequential_381/dense_564/Tensordot:output:0Gtopk_bilstm_moe/sequential_381/dense_564/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ю
-topk_bilstm_moe/sequential_381/dense_564/ReluRelu9topk_bilstm_moe/sequential_381/dense_564/BiasAdd:output:0*
T0*"
_output_shapes
:╠
Atopk_bilstm_moe/sequential_386/dense_569/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_386_dense_569_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0Љ
@topk_bilstm_moe/sequential_386/dense_569/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     ж
:topk_bilstm_moe/sequential_386/dense_569/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_1/unstack:output:2Itopk_bilstm_moe/sequential_386/dense_569/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђ§
9topk_bilstm_moe/sequential_386/dense_569/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_386/dense_569/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_386/dense_569/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђЇ
8topk_bilstm_moe/sequential_386/dense_569/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ы
2topk_bilstm_moe/sequential_386/dense_569/TensordotReshapeCtopk_bilstm_moe/sequential_386/dense_569/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_386/dense_569/Tensordot/shape:output:0*
T0*"
_output_shapes
:─
?topk_bilstm_moe/sequential_386/dense_569/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_386_dense_569_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
0topk_bilstm_moe/sequential_386/dense_569/BiasAddBiasAdd;topk_bilstm_moe/sequential_386/dense_569/Tensordot:output:0Gtopk_bilstm_moe/sequential_386/dense_569/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ю
-topk_bilstm_moe/sequential_386/dense_569/ReluRelu9topk_bilstm_moe/sequential_386/dense_569/BiasAdd:output:0*
T0*"
_output_shapes
:╠
Atopk_bilstm_moe/sequential_391/dense_574/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_391_dense_574_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0Љ
@topk_bilstm_moe/sequential_391/dense_574/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     ж
:topk_bilstm_moe/sequential_391/dense_574/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_1/unstack:output:3Itopk_bilstm_moe/sequential_391/dense_574/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђ§
9topk_bilstm_moe/sequential_391/dense_574/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_391/dense_574/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_391/dense_574/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђЇ
8topk_bilstm_moe/sequential_391/dense_574/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ы
2topk_bilstm_moe/sequential_391/dense_574/TensordotReshapeCtopk_bilstm_moe/sequential_391/dense_574/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_391/dense_574/Tensordot/shape:output:0*
T0*"
_output_shapes
:─
?topk_bilstm_moe/sequential_391/dense_574/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_391_dense_574_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
0topk_bilstm_moe/sequential_391/dense_574/BiasAddBiasAdd;topk_bilstm_moe/sequential_391/dense_574/Tensordot:output:0Gtopk_bilstm_moe/sequential_391/dense_574/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ю
-topk_bilstm_moe/sequential_391/dense_574/ReluRelu9topk_bilstm_moe/sequential_391/dense_574/BiasAdd:output:0*
T0*"
_output_shapes
:с
!topk_bilstm_moe/tf.stack_92/stackPack;topk_bilstm_moe/sequential_376/dense_559/Relu:activations:0;topk_bilstm_moe/sequential_381/dense_564/Relu:activations:0;topk_bilstm_moe/sequential_386/dense_569/Relu:activations:0;topk_bilstm_moe/sequential_391/dense_574/Relu:activations:0*
N*
T0*&
_output_shapes
:*

axisР
'topk_bilstm_moe/lambda_95/einsum/EinsumEinsum*topk_bilstm_moe/tf.stack_92/stack:output:00topk_bilstm_moe/lambda_93/einsum/Einsum:output:0*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdІ
6topk_bilstm_moe/bidirectional_91/forward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ј
Dtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: љ
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:љ
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
>topk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_sliceStridedSlice?topk_bilstm_moe/bidirectional_91/forward_lstm_91/Shape:output:0Mtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice/stack:output:0Otopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice/stack_1:output:0Otopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЂ
?topk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :є
=topk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros/packedPackGtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice:output:0Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Ђ
<topk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ш
6topk_bilstm_moe/bidirectional_91/forward_lstm_91/zerosFillFtopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros/packed:output:0Etopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:Ѓ
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :і
?topk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1/packedPackGtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice:output:0Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Ѓ
>topk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ч
8topk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1FillHtopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1/packed:output:0Gtopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:ћ
?topk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ­
:topk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose	Transpose0topk_bilstm_moe/lambda_95/einsum/Einsum:output:0Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:Ї
8topk_bilstm_moe/bidirectional_91/forward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         љ
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: њ
Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:њ
Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
@topk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1StridedSliceAtopk_bilstm_moe/bidirectional_91/forward_lstm_91/Shape_1:output:0Otopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1/stack:output:0Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1/stack_1:output:0Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЌ
Ltopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         К
>topk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2TensorListReserveUtopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2/element_shape:output:0Itopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУми
ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      з
Xtopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor>topk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose:y:0otopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмљ
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: њ
Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:њ
Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
@topk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_2StridedSlice>topk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose:y:0Otopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_2/stack:output:0Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_2/stack_1:output:0Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЖ
Ptopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOpYtopk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ў
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMulMatMulItopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_2:output:0Xtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ь
Rtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp[topk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Њ
Ctopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul_1MatMul?topk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros:output:0Ztopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ї
>topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/addAddV2Ktopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul:product:0Mtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: У
Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpZtopk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ћ
Btopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/BiasAddBiasAddBtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/add:z:0Ytopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: ї
Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :├
@topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/splitSplitStopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/split/split_dim:output:0Ktopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split┴
Btopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/SigmoidSigmoidItopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:├
Dtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/Sigmoid_1SigmoidItopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:ч
>topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/mulMulHtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/Sigmoid_1:y:0Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:╗
?topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/ReluReluItopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:Є
@topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/mul_1MulFtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/Sigmoid:y:0Mtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ч
@topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/add_1AddV2Btopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/mul:z:0Dtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:├
Dtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/Sigmoid_2SigmoidItopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:И
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/Relu_1ReluDtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:І
@topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/mul_2MulHtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/Sigmoid_2:y:0Otopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:Ъ
Ntopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ╦
@topk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2_1TensorListReserveWtopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2_1/element_shape:output:0Itopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
5topk_bilstm_moe/bidirectional_91/forward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : ћ
Itopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Ё
Ctopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж

6topk_bilstm_moe/bidirectional_91/forward_lstm_91/whileWhileLtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/loop_counter:output:0Rtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/maximum_iterations:output:0>topk_bilstm_moe/bidirectional_91/forward_lstm_91/time:output:0Itopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2_1:handle:0?topk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros:output:0Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/zeros_1:output:0Itopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1:output:0htopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ytopk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_matmul_readvariableop_resource[topk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_matmul_1_readvariableop_resourceZtopk_bilstm_moe_bidirectional_91_forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_body_25656951*P
condHRF
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_cond_25656950*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations ▓
atopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ╠
Stopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStack?topk_bilstm_moe/bidirectional_91/forward_lstm_91/while:output:3jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0Ў
Ftopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         њ
Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: њ
Htopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
@topk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_3StridedSlice\topk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0Otopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_3/stack:output:0Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_3/stack_1:output:0Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskќ
Atopk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
<topk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose_1	Transpose\topk_bilstm_moe/bidirectional_91/forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0Jtopk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:ї
8topk_bilstm_moe/bidirectional_91/forward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ї
7topk_bilstm_moe/bidirectional_91/backward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ј
Etopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Љ
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Љ
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╦
?topk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_sliceStridedSlice@topk_bilstm_moe/bidirectional_91/backward_lstm_91/Shape:output:0Ntopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice/stack:output:0Ptopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice/stack_1:output:0Ptopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskѓ
@topk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
>topk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros/packedPackHtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice:output:0Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:ѓ
=topk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    щ
7topk_bilstm_moe/bidirectional_91/backward_lstm_91/zerosFillGtopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros/packed:output:0Ftopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:ё
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ї
@topk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1/packedPackHtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice:output:0Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:ё
?topk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
9topk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1FillItopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1/packed:output:0Htopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:Ћ
@topk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ы
;topk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose	Transpose0topk_bilstm_moe/lambda_95/einsum/Einsum:output:0Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:ј
9topk_bilstm_moe/bidirectional_91/backward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         Љ
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Њ
Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Њ
Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1StridedSliceBtopk_bilstm_moe/bidirectional_91/backward_lstm_91/Shape_1:output:0Ptopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1/stack:output:0Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1/stack_1:output:0Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
Mtopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╩
?topk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2TensorListReserveVtopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2/element_shape:output:0Jtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмі
@topk_bilstm_moe/bidirectional_91/backward_lstm_91/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ђ
;topk_bilstm_moe/bidirectional_91/backward_lstm_91/ReverseV2	ReverseV2?topk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose:y:0Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/ReverseV2/axis:output:0*
T0*"
_output_shapes
:И
gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ч
Ytopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorDtopk_bilstm_moe/bidirectional_91/backward_lstm_91/ReverseV2:output:0ptopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЉ
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: Њ
Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Њ
Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_2StridedSlice?topk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose:y:0Ptopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_2/stack:output:0Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_2/stack_1:output:0Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskВ
Qtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOpZtopk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ю
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMulMatMulJtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_2:output:0Ytopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ­
Stopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp\topk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0ќ
Dtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul_1MatMul@topk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros:output:0[topk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Ј
?topk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/addAddV2Ltopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul:product:0Ntopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ж
Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp[topk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ў
Ctopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/BiasAddBiasAddCtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/add:z:0Ztopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: Ї
Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/splitSplitTtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/split/split_dim:output:0Ltopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split├
Ctopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/SigmoidSigmoidJtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:┼
Etopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/Sigmoid_1SigmoidJtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:■
?topk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/mulMulItopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/Sigmoid_1:y:0Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:й
@topk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/ReluReluJtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:і
Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/mul_1MulGtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/Sigmoid:y:0Ntopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

: 
Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/add_1AddV2Ctopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/mul:z:0Etopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:┼
Etopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/Sigmoid_2SigmoidJtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:║
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/Relu_1ReluEtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:ј
Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/mul_2MulItopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/Sigmoid_2:y:0Ptopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:а
Otopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ╬
Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2_1TensorListReserveXtopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2_1/element_shape:output:0Jtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмx
6topk_bilstm_moe/bidirectional_91/backward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : Ћ
Jtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         є
Dtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Э

7topk_bilstm_moe/bidirectional_91/backward_lstm_91/whileWhileMtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/loop_counter:output:0Stopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/maximum_iterations:output:0?topk_bilstm_moe/bidirectional_91/backward_lstm_91/time:output:0Jtopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2_1:handle:0@topk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros:output:0Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/zeros_1:output:0Jtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1:output:0itopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ztopk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_matmul_readvariableop_resource\topk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource[topk_bilstm_moe_bidirectional_91_backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_body_25657092*Q
condIRG
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_cond_25657091*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations │
btopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¤
Ttopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStack@topk_bilstm_moe/bidirectional_91/backward_lstm_91/while:output:3ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0џ
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         Њ
Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Њ
Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_3StridedSlice]topk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0Ptopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_3/stack:output:0Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_3/stack_1:output:0Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЌ
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
=topk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose_1	Transpose]topk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:Ї
9topk_bilstm_moe/bidirectional_91/backward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    y
/topk_bilstm_moe/bidirectional_91/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:р
*topk_bilstm_moe/bidirectional_91/ReverseV2	ReverseV2Atopk_bilstm_moe/bidirectional_91/backward_lstm_91/transpose_1:y:08topk_bilstm_moe/bidirectional_91/ReverseV2/axis:output:0*
T0*"
_output_shapes
:n
,topk_bilstm_moe/bidirectional_91/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ќ
'topk_bilstm_moe/bidirectional_91/concatConcatV2@topk_bilstm_moe/bidirectional_91/forward_lstm_91/transpose_1:y:03topk_bilstm_moe/bidirectional_91/ReverseV2:output:05topk_bilstm_moe/bidirectional_91/concat/axis:output:0*
N*
T0*"
_output_shapes
:ј
#topk_bilstm_moe/dropout_91/IdentityIdentity0topk_bilstm_moe/bidirectional_91/concat:output:0*
T0*"
_output_shapes
:q
 topk_bilstm_moe/flatten_91/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ░
"topk_bilstm_moe/flatten_91/ReshapeReshape,topk_bilstm_moe/dropout_91/Identity:output:0)topk_bilstm_moe/flatten_91/Const:output:0*
T0*
_output_shapes
:	ђЕ
/topk_bilstm_moe/dense_575/MatMul/ReadVariableOpReadVariableOp8topk_bilstm_moe_dense_575_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0╣
 topk_bilstm_moe/dense_575/MatMulMatMul+topk_bilstm_moe/flatten_91/Reshape:output:07topk_bilstm_moe/dense_575/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:д
0topk_bilstm_moe/dense_575/BiasAdd/ReadVariableOpReadVariableOp9topk_bilstm_moe_dense_575_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
!topk_bilstm_moe/dense_575/BiasAddBiasAdd*topk_bilstm_moe/dense_575/MatMul:product:08topk_bilstm_moe/dense_575/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:p
IdentityIdentity*topk_bilstm_moe/dense_575/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:ш

NoOpNoOpS^topk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpR^topk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul/ReadVariableOpT^topk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp8^topk_bilstm_moe/bidirectional_91/backward_lstm_91/whileR^topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpQ^topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpS^topk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp7^topk_bilstm_moe/bidirectional_91/forward_lstm_91/while1^topk_bilstm_moe/dense_558/BiasAdd/ReadVariableOp3^topk_bilstm_moe/dense_558/Tensordot/ReadVariableOp1^topk_bilstm_moe/dense_575/BiasAdd/ReadVariableOp0^topk_bilstm_moe/dense_575/MatMul/ReadVariableOp@^topk_bilstm_moe/sequential_376/dense_559/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_376/dense_559/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_381/dense_564/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_381/dense_564/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_386/dense_569/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_386/dense_569/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_391/dense_574/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_391/dense_574/Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2е
Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpRtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2д
Qtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul/ReadVariableOpQtopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul/ReadVariableOp2ф
Stopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpStopk_bilstm_moe/bidirectional_91/backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2r
7topk_bilstm_moe/bidirectional_91/backward_lstm_91/while7topk_bilstm_moe/bidirectional_91/backward_lstm_91/while2д
Qtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpQtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2ц
Ptopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpPtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2е
Rtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpRtopk_bilstm_moe/bidirectional_91/forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2p
6topk_bilstm_moe/bidirectional_91/forward_lstm_91/while6topk_bilstm_moe/bidirectional_91/forward_lstm_91/while2d
0topk_bilstm_moe/dense_558/BiasAdd/ReadVariableOp0topk_bilstm_moe/dense_558/BiasAdd/ReadVariableOp2h
2topk_bilstm_moe/dense_558/Tensordot/ReadVariableOp2topk_bilstm_moe/dense_558/Tensordot/ReadVariableOp2d
0topk_bilstm_moe/dense_575/BiasAdd/ReadVariableOp0topk_bilstm_moe/dense_575/BiasAdd/ReadVariableOp2b
/topk_bilstm_moe/dense_575/MatMul/ReadVariableOp/topk_bilstm_moe/dense_575/MatMul/ReadVariableOp2ѓ
?topk_bilstm_moe/sequential_376/dense_559/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_376/dense_559/BiasAdd/ReadVariableOp2є
Atopk_bilstm_moe/sequential_376/dense_559/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_376/dense_559/Tensordot/ReadVariableOp2ѓ
?topk_bilstm_moe/sequential_381/dense_564/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_381/dense_564/BiasAdd/ReadVariableOp2є
Atopk_bilstm_moe/sequential_381/dense_564/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_381/dense_564/Tensordot/ReadVariableOp2ѓ
?topk_bilstm_moe/sequential_386/dense_569/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_386/dense_569/BiasAdd/ReadVariableOp2є
Atopk_bilstm_moe/sequential_386/dense_569/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_386/dense_569/Tensordot/ReadVariableOp2ѓ
?topk_bilstm_moe/sequential_391/dense_574/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_391/dense_574/BiasAdd/ReadVariableOp2є
Atopk_bilstm_moe/sequential_391/dense_574/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_391/dense_574/Tensordot/ReadVariableOp:K G
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
resource
▒M
Л
$backward_lstm_91_while_body_25660582>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3=
9backward_lstm_91_while_backward_lstm_91_strided_slice_1_0y
ubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_91_while_identity%
!backward_lstm_91_while_identity_1%
!backward_lstm_91_while_identity_2%
!backward_lstm_91_while_identity_3%
!backward_lstm_91_while_identity_4%
!backward_lstm_91_while_identity_5;
7backward_lstm_91_while_backward_lstm_91_strided_slice_1w
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ё
:backward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_91_while_placeholderQbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0И
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Т
'backward_lstm_91/while/lstm_cell/MatMulMatMulAbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╝
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0═
)backward_lstm_91/while/lstm_cell/MatMul_1MatMul$backward_lstm_91_while_placeholder_2@backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          К
$backward_lstm_91/while/lstm_cell/addAddV21backward_lstm_91/while/lstm_cell/MatMul:product:03backward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          Х
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0л
(backward_lstm_91/while/lstm_cell/BiasAddBiasAdd(backward_lstm_91/while/lstm_cell/add:z:0?backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
0backward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
&backward_lstm_91/while/lstm_cell/splitSplit9backward_lstm_91/while/lstm_cell/split/split_dim:output:01backward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitќ
(backward_lstm_91/while/lstm_cell/SigmoidSigmoid/backward_lstm_91/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ў
*backward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_91/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         │
$backward_lstm_91/while/lstm_cell/mulMul.backward_lstm_91/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_91_while_placeholder_3*
T0*'
_output_shapes
:         љ
%backward_lstm_91/while/lstm_cell/ReluRelu/backward_lstm_91/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┬
&backward_lstm_91/while/lstm_cell/mul_1Mul,backward_lstm_91/while/lstm_cell/Sigmoid:y:03backward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         и
&backward_lstm_91/while/lstm_cell/add_1AddV2(backward_lstm_91/while/lstm_cell/mul:z:0*backward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ў
*backward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_91/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Ї
'backward_lstm_91/while/lstm_cell/Relu_1Relu*backward_lstm_91/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         к
&backward_lstm_91/while/lstm_cell/mul_2Mul.backward_lstm_91/while/lstm_cell/Sigmoid_2:y:05backward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         є
;backward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_91_while_placeholder_1"backward_lstm_91_while_placeholder*backward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_91/while/addAddV2"backward_lstm_91_while_placeholder%backward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_91/while/add_1AddV2:backward_lstm_91_while_backward_lstm_91_while_loop_counter'backward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_91/while/IdentityIdentity backward_lstm_91/while/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_91/while/Identity_1Identity@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_91/while/Identity_2Identitybackward_lstm_91/while/add:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_91/while/Identity_3IdentityKbackward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: Е
!backward_lstm_91/while/Identity_4Identity*backward_lstm_91/while/lstm_cell/mul_2:z:0^backward_lstm_91/while/NoOp*
T0*'
_output_shapes
:         Е
!backward_lstm_91/while/Identity_5Identity*backward_lstm_91/while/lstm_cell/add_1:z:0^backward_lstm_91/while/NoOp*
T0*'
_output_shapes
:         у
backward_lstm_91/while/NoOpNoOp8^backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_91_while_backward_lstm_91_strided_slice_19backward_lstm_91_while_backward_lstm_91_strided_slice_1_0"K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0"O
!backward_lstm_91_while_identity_1*backward_lstm_91/while/Identity_1:output:0"O
!backward_lstm_91_while_identity_2*backward_lstm_91/while/Identity_2:output:0"O
!backward_lstm_91_while_identity_3*backward_lstm_91/while/Identity_3:output:0"O
!backward_lstm_91_while_identity_4*backward_lstm_91/while/Identity_4:output:0"O
!backward_lstm_91_while_identity_5*backward_lstm_91/while/Identity_5:output:0"є
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2r
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_91/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
Д	
Я
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657494
dense_574_input$
dense_574_25657488: 
dense_574_25657490:
identityѕб!dense_574/StatefulPartitionedCallЄ
!dense_574/StatefulPartitionedCallStatefulPartitionedCalldense_574_inputdense_574_25657488dense_574_25657490*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_574_layer_call_and_return_conditional_losses_25657473}
IdentityIdentity*dense_574/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_574/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_574/StatefulPartitionedCall!dense_574/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_574_input:($
"
_user_specified_name
25657488:($
"
_user_specified_name
25657490
Ь
s
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659978
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
њ
X
,__inference_lambda_94_layer_call_fn_25659984
inputs_0
inputs_1
identityЙ
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_94_layer_call_and_return_conditional_losses_25658957_
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
┼G
с
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659703
input_2$
dense_558_25659331: 
dense_558_25659333:)
sequential_376_25659361:%
sequential_376_25659363:)
sequential_381_25659366:%
sequential_381_25659368:)
sequential_386_25659371:%
sequential_386_25659373:)
sequential_391_25659376:%
sequential_391_25659378:+
bidirectional_91_25659677: +
bidirectional_91_25659679: '
bidirectional_91_25659681: +
bidirectional_91_25659683: +
bidirectional_91_25659685: '
bidirectional_91_25659687: %
dense_575_25659697:	ђ 
dense_575_25659699:
identityѕб(bidirectional_91/StatefulPartitionedCallб!dense_558/StatefulPartitionedCallб!dense_575/StatefulPartitionedCallб&sequential_376/StatefulPartitionedCallб&sequential_381/StatefulPartitionedCallб&sequential_386/StatefulPartitionedCallб&sequential_391/StatefulPartitionedCallШ
!dense_558/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_558_25659331dense_558_25659333*
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
GPU 2J 8ѓ *P
fKRI
G__inference_dense_558_layer_call_and_return_conditional_losses_25658932Z
tf.math.top_k_1/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :ф
tf.math.top_k_1/TopKV2TopKV2*dense_558/StatefulPartitionedCall:output:0!tf.math.top_k_1/TopKV2/k:output:0*
T0*0
_output_shapes
::b
tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?c
tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ы
tf.one_hot_1/one_hotOneHot tf.math.top_k_1/TopKV2:indices:0#tf.one_hot_1/one_hot/depth:output:0&tf.one_hot_1/one_hot/on_value:output:0'tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:­
lambda_93/PartitionedCallPartitionedCalltf.math.top_k_1/TopKV2:values:0tf.one_hot_1/one_hot:output:0*
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659348р
lambda_94/PartitionedCallPartitionedCallinput_2"lambda_93/PartitionedCall:output:0*
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_94_layer_call_and_return_conditional_losses_25659355ц
tf.unstack_1/unstackUnpack"lambda_94/PartitionedCall:output:0*
T0*L
_output_shapes:
8::::*	
numа
&sequential_376/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_1/unstack:output:0sequential_376_25659361sequential_376_25659363*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657245а
&sequential_381/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_1/unstack:output:1sequential_381_25659366sequential_381_25659368*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657328а
&sequential_386/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_1/unstack:output:2sequential_386_25659371sequential_386_25659373*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657411а
&sequential_391/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_1/unstack:output:3sequential_391_25659376sequential_391_25659378*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657494Б
tf.stack_92/stackPack/sequential_376/StatefulPartitionedCall:output:0/sequential_381/StatefulPartitionedCall:output:0/sequential_386/StatefulPartitionedCall:output:0/sequential_391/StatefulPartitionedCall:output:0*
N*
T0*&
_output_shapes
:*

axis­
lambda_95/PartitionedCallPartitionedCalltf.stack_92/stack:output:0"lambda_93/PartitionedCall:output:0*
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_95_layer_call_and_return_conditional_losses_25659387А
(bidirectional_91/StatefulPartitionedCallStatefulPartitionedCall"lambda_95/PartitionedCall:output:0bidirectional_91_25659677bidirectional_91_25659679bidirectional_91_25659681bidirectional_91_25659683bidirectional_91_25659685bidirectional_91_25659687*
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
GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25659676С
dropout_91/PartitionedCallPartitionedCall1bidirectional_91/StatefulPartitionedCall:output:0*
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
GPU 2J 8ѓ *Q
fLRJ
H__inference_dropout_91_layer_call_and_return_conditional_losses_25659694М
flatten_91/PartitionedCallPartitionedCall#dropout_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_flatten_91_layer_call_and_return_conditional_losses_25659310ј
!dense_575/StatefulPartitionedCallStatefulPartitionedCall#flatten_91/PartitionedCall:output:0dense_575_25659697dense_575_25659699*
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
GPU 2J 8ѓ *P
fKRI
G__inference_dense_575_layer_call_and_return_conditional_losses_25659321p
IdentityIdentity*dense_575/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:╣
NoOpNoOp)^bidirectional_91/StatefulPartitionedCall"^dense_558/StatefulPartitionedCall"^dense_575/StatefulPartitionedCall'^sequential_376/StatefulPartitionedCall'^sequential_381/StatefulPartitionedCall'^sequential_386/StatefulPartitionedCall'^sequential_391/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2T
(bidirectional_91/StatefulPartitionedCall(bidirectional_91/StatefulPartitionedCall2F
!dense_558/StatefulPartitionedCall!dense_558/StatefulPartitionedCall2F
!dense_575/StatefulPartitionedCall!dense_575/StatefulPartitionedCall2P
&sequential_376/StatefulPartitionedCall&sequential_376/StatefulPartitionedCall2P
&sequential_381/StatefulPartitionedCall&sequential_381/StatefulPartitionedCall2P
&sequential_386/StatefulPartitionedCall&sequential_386/StatefulPartitionedCall2P
&sequential_391/StatefulPartitionedCall&sequential_391/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2:($
"
_user_specified_name
25659331:($
"
_user_specified_name
25659333:($
"
_user_specified_name
25659361:($
"
_user_specified_name
25659363:($
"
_user_specified_name
25659366:($
"
_user_specified_name
25659368:($
"
_user_specified_name
25659371:($
"
_user_specified_name
25659373:(	$
"
_user_specified_name
25659376:(
$
"
_user_specified_name
25659378:($
"
_user_specified_name
25659677:($
"
_user_specified_name
25659679:($
"
_user_specified_name
25659681:($
"
_user_specified_name
25659683:($
"
_user_specified_name
25659685:($
"
_user_specified_name
25659687:($
"
_user_specified_name
25659697:($
"
_user_specified_name
25659699
Й
▄
2__inference_topk_bilstm_moe_layer_call_fn_25659744
input_2
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

unknown_15:	ђ

unknown_16:
identityѕбStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8ѓ *V
fQRO
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659328f
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
_user_specified_name	input_2:($
"
_user_specified_name
25659706:($
"
_user_specified_name
25659708:($
"
_user_specified_name
25659710:($
"
_user_specified_name
25659712:($
"
_user_specified_name
25659714:($
"
_user_specified_name
25659716:($
"
_user_specified_name
25659718:($
"
_user_specified_name
25659720:(	$
"
_user_specified_name
25659722:(
$
"
_user_specified_name
25659724:($
"
_user_specified_name
25659726:($
"
_user_specified_name
25659728:($
"
_user_specified_name
25659730:($
"
_user_specified_name
25659732:($
"
_user_specified_name
25659734:($
"
_user_specified_name
25659736:($
"
_user_specified_name
25659738:($
"
_user_specified_name
25659740
Б
ђ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25658078

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
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
ѕ
Ў
,__inference_dense_559_layer_call_fn_25661312

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_559_layer_call_and_return_conditional_losses_25657224s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
25661306:($
"
_user_specified_name
25661308
ќ	
┐
3__inference_backward_lstm_91_layer_call_fn_25662090
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658014|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
25662082:($
"
_user_specified_name
25662084:($
"
_user_specified_name
25662086
У8
▒
while_body_25658278
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
С
■
G__inference_dense_574_layer_call_and_return_conditional_losses_25661463

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
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
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : ю
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
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
лK
Л
$backward_lstm_91_while_body_25660870>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3=
9backward_lstm_91_while_backward_lstm_91_strided_slice_1_0y
ubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_91_while_identity%
!backward_lstm_91_while_identity_1%
!backward_lstm_91_while_identity_2%
!backward_lstm_91_while_identity_3%
!backward_lstm_91_while_identity_4%
!backward_lstm_91_while_identity_5;
7backward_lstm_91_while_backward_lstm_91_strided_slice_1w
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
:backward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_91_while_placeholderQbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0П
'backward_lstm_91/while/lstm_cell/MatMulMatMulAbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ╝
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0─
)backward_lstm_91/while/lstm_cell/MatMul_1MatMul$backward_lstm_91_while_placeholder_2@backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Й
$backward_lstm_91/while/lstm_cell/addAddV21backward_lstm_91/while/lstm_cell/MatMul:product:03backward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Х
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0К
(backward_lstm_91/while/lstm_cell/BiasAddBiasAdd(backward_lstm_91/while/lstm_cell/add:z:0?backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
&backward_lstm_91/while/lstm_cell/splitSplit9backward_lstm_91/while/lstm_cell/split/split_dim:output:01backward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЇ
(backward_lstm_91/while/lstm_cell/SigmoidSigmoid/backward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ј
*backward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:ф
$backward_lstm_91/while/lstm_cell/mulMul.backward_lstm_91/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:Є
%backward_lstm_91/while/lstm_cell/ReluRelu/backward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:╣
&backward_lstm_91/while/lstm_cell/mul_1Mul,backward_lstm_91/while/lstm_cell/Sigmoid:y:03backward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:«
&backward_lstm_91/while/lstm_cell/add_1AddV2(backward_lstm_91/while/lstm_cell/mul:z:0*backward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ј
*backward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ё
'backward_lstm_91/while/lstm_cell/Relu_1Relu*backward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:й
&backward_lstm_91/while/lstm_cell/mul_2Mul.backward_lstm_91/while/lstm_cell/Sigmoid_2:y:05backward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
;backward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_91_while_placeholder_1"backward_lstm_91_while_placeholder*backward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_91/while/addAddV2"backward_lstm_91_while_placeholder%backward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_91/while/add_1AddV2:backward_lstm_91_while_backward_lstm_91_while_loop_counter'backward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_91/while/IdentityIdentity backward_lstm_91/while/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_91/while/Identity_1Identity@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_91/while/Identity_2Identitybackward_lstm_91/while/add:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_91/while/Identity_3IdentityKbackward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: а
!backward_lstm_91/while/Identity_4Identity*backward_lstm_91/while/lstm_cell/mul_2:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes

:а
!backward_lstm_91/while/Identity_5Identity*backward_lstm_91/while/lstm_cell/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes

:у
backward_lstm_91/while/NoOpNoOp8^backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_91_while_backward_lstm_91_strided_slice_19backward_lstm_91_while_backward_lstm_91_strided_slice_1_0"K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0"O
!backward_lstm_91_while_identity_1*backward_lstm_91/while/Identity_1:output:0"O
!backward_lstm_91_while_identity_2*backward_lstm_91/while/Identity_2:output:0"O
!backward_lstm_91_while_identity_3*backward_lstm_91/while/Identity_3:output:0"O
!backward_lstm_91_while_identity_4*backward_lstm_91/while/Identity_4:output:0"O
!backward_lstm_91_while_identity_5*backward_lstm_91/while/Identity_5:output:0"є
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:
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
_user_specified_name" backward_lstm_91/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
┘ќ
Ј
!__inference__traced_save_25663029
file_prefix9
'read_disablecopyonread_dense_558_kernel:5
'read_1_disablecopyonread_dense_558_bias:<
)read_2_disablecopyonread_dense_575_kernel:	ђ5
'read_3_disablecopyonread_dense_575_bias:;
)read_4_disablecopyonread_dense_559_kernel:5
'read_5_disablecopyonread_dense_559_bias:;
)read_6_disablecopyonread_dense_564_kernel:5
'read_7_disablecopyonread_dense_564_bias:;
)read_8_disablecopyonread_dense_569_kernel:5
'read_9_disablecopyonread_dense_569_bias:<
*read_10_disablecopyonread_dense_574_kernel:6
(read_11_disablecopyonread_dense_574_bias:]
Kread_12_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_kernel: g
Uread_13_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_recurrent_kernel: W
Iread_14_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_bias: ^
Lread_15_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_kernel: h
Vread_16_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_recurrent_kernel: X
Jread_17_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_bias: 
savev2_const
identity_37ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_dense_558_kernel"/device:CPU:0*
_output_shapes
 Б
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_dense_558_kernel^Read/DisableCopyOnRead"/device:CPU:0*
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
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_558_bias"/device:CPU:0*
_output_shapes
 Б
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_558_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_dense_575_kernel"/device:CPU:0*
_output_shapes
 ф
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_dense_575_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ђ*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ђd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	ђ{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_575_bias"/device:CPU:0*
_output_shapes
 Б
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_575_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_dense_559_kernel"/device:CPU:0*
_output_shapes
 Е
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_dense_559_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
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
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_dense_559_bias"/device:CPU:0*
_output_shapes
 Б
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_dense_559_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_dense_564_kernel"/device:CPU:0*
_output_shapes
 Е
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_dense_564_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
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
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_dense_564_bias"/device:CPU:0*
_output_shapes
 Б
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_dense_564_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
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
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_dense_569_kernel"/device:CPU:0*
_output_shapes
 Е
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_dense_569_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_dense_569_bias"/device:CPU:0*
_output_shapes
 Б
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_dense_569_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
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
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_dense_574_kernel"/device:CPU:0*
_output_shapes
 г
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_dense_574_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
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
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_dense_574_bias"/device:CPU:0*
_output_shapes
 д
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_dense_574_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
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
:а
Read_12/DisableCopyOnReadDisableCopyOnReadKread_12_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ═
Read_12/ReadVariableOpReadVariableOpKread_12_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
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

: ф
Read_13/DisableCopyOnReadDisableCopyOnReadUread_13_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 О
Read_13/ReadVariableOpReadVariableOpUread_13_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
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

: ъ
Read_14/DisableCopyOnReadDisableCopyOnReadIread_14_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_bias"/device:CPU:0*
_output_shapes
 К
Read_14/ReadVariableOpReadVariableOpIread_14_disablecopyonread_bidirectional_91_forward_lstm_91_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
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
: А
Read_15/DisableCopyOnReadDisableCopyOnReadLread_15_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ╬
Read_15/ReadVariableOpReadVariableOpLread_15_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
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

: Ф
Read_16/DisableCopyOnReadDisableCopyOnReadVread_16_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 п
Read_16/ReadVariableOpReadVariableOpVread_16_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_recurrent_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
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

: Ъ
Read_17/DisableCopyOnReadDisableCopyOnReadJread_17_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ╚
Read_17/ReadVariableOpReadVariableOpJread_17_disablecopyonread_bidirectional_91_backward_lstm_91_lstm_cell_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
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
: ю
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*┼
value╗BИB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЊ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B ы
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
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
: ┘
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
_user_specified_namedense_558/kernel:.*
(
_user_specified_namedense_558/bias:0,
*
_user_specified_namedense_575/kernel:.*
(
_user_specified_namedense_575/bias:0,
*
_user_specified_namedense_559/kernel:.*
(
_user_specified_namedense_559/bias:0,
*
_user_specified_namedense_564/kernel:.*
(
_user_specified_namedense_564/bias:0	,
*
_user_specified_namedense_569/kernel:.
*
(
_user_specified_namedense_569/bias:0,
*
_user_specified_namedense_574/kernel:.*
(
_user_specified_namedense_574/bias:QM
K
_user_specified_name31bidirectional_91/forward_lstm_91/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_91/forward_lstm_91/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_91/backward_lstm_91/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_91/backward_lstm_91/lstm_cell/bias:=9

_output_shapes
: 

_user_specified_nameConst
ХJ
▒
#forward_lstm_91_while_body_25661017<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3;
7forward_lstm_91_while_forward_lstm_91_strided_slice_1_0w
sforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_91_while_identity$
 forward_lstm_91_while_identity_1$
 forward_lstm_91_while_identity_2$
 forward_lstm_91_while_identity_3$
 forward_lstm_91_while_identity_4$
 forward_lstm_91_while_identity_59
5forward_lstm_91_while_forward_lstm_91_strided_slice_1u
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
9forward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_91_while_placeholderPforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Х
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
&forward_lstm_91/while/lstm_cell/MatMulMatMul@forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ║
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┴
(forward_lstm_91/while/lstm_cell/MatMul_1MatMul#forward_lstm_91_while_placeholder_2?forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ╗
#forward_lstm_91/while/lstm_cell/addAddV20forward_lstm_91/while/lstm_cell/MatMul:product:02forward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ┤
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0─
'forward_lstm_91/while/lstm_cell/BiasAddBiasAdd'forward_lstm_91/while/lstm_cell/add:z:0>forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
%forward_lstm_91/while/lstm_cell/splitSplit8forward_lstm_91/while/lstm_cell/split/split_dim:output:00forward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitІ
'forward_lstm_91/while/lstm_cell/SigmoidSigmoid.forward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ї
)forward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Д
#forward_lstm_91/while/lstm_cell/mulMul-forward_lstm_91/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:Ё
$forward_lstm_91/while/lstm_cell/ReluRelu.forward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Х
%forward_lstm_91/while/lstm_cell/mul_1Mul+forward_lstm_91/while/lstm_cell/Sigmoid:y:02forward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ф
%forward_lstm_91/while/lstm_cell/add_1AddV2'forward_lstm_91/while/lstm_cell/mul:z:0)forward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ї
)forward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ѓ
&forward_lstm_91/while/lstm_cell/Relu_1Relu)forward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:║
%forward_lstm_91/while/lstm_cell/mul_2Mul-forward_lstm_91/while/lstm_cell/Sigmoid_2:y:04forward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:ѓ
:forward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_91_while_placeholder_1!forward_lstm_91_while_placeholder)forward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_91/while/addAddV2!forward_lstm_91_while_placeholder$forward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/while/add_1AddV28forward_lstm_91_while_forward_lstm_91_while_loop_counter&forward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_91/while/Identity_1Identity>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_91/while/Identity_2Identityforward_lstm_91/while/add:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_91/while/Identity_3IdentityJforward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ю
 forward_lstm_91/while/Identity_4Identity)forward_lstm_91/while/lstm_cell/mul_2:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes

:Ю
 forward_lstm_91/while/Identity_5Identity)forward_lstm_91/while/lstm_cell/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes

:с
forward_lstm_91/while/NoOpNoOp7^forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_91_while_forward_lstm_91_strided_slice_17forward_lstm_91_while_forward_lstm_91_strided_slice_1_0"I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0"M
 forward_lstm_91_while_identity_1)forward_lstm_91/while/Identity_1:output:0"M
 forward_lstm_91_while_identity_2)forward_lstm_91/while/Identity_2:output:0"M
 forward_lstm_91_while_identity_3)forward_lstm_91/while/Identity_3:output:0"M
 forward_lstm_91_while_identity_4)forward_lstm_91/while/Identity_4:output:0"M
 forward_lstm_91_while_identity_5)forward_lstm_91/while/Identity_5:output:0"ё
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:
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
_user_specified_name!forward_lstm_91/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
▀8
▒
while_body_25661566
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
╠	
═
while_cond_25657944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25657944___redundant_placeholder06
2while_while_cond_25657944___redundant_placeholder16
2while_while_cond_25657944___redundant_placeholder26
2while_while_cond_25657944___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ф
ѓ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662801

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
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
ѕ
л
&__inference_signature_wrapper_25659930
input_2
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

unknown_15:	ђ

unknown_16:
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8ѓ *,
f'R%
#__inference__wrapped_model_25657189f
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
_user_specified_name	input_2:($
"
_user_specified_name
25659892:($
"
_user_specified_name
25659894:($
"
_user_specified_name
25659896:($
"
_user_specified_name
25659898:($
"
_user_specified_name
25659900:($
"
_user_specified_name
25659902:($
"
_user_specified_name
25659904:($
"
_user_specified_name
25659906:(	$
"
_user_specified_name
25659908:(
$
"
_user_specified_name
25659910:($
"
_user_specified_name
25659912:($
"
_user_specified_name
25659914:($
"
_user_specified_name
25659916:($
"
_user_specified_name
25659918:($
"
_user_specified_name
25659920:($
"
_user_specified_name
25659922:($
"
_user_specified_name
25659924:($
"
_user_specified_name
25659926
У8
▒
while_body_25658588
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
лK
Л
$backward_lstm_91_while_body_25659190>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3=
9backward_lstm_91_while_backward_lstm_91_strided_slice_1_0y
ubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_91_while_identity%
!backward_lstm_91_while_identity_1%
!backward_lstm_91_while_identity_2%
!backward_lstm_91_while_identity_3%
!backward_lstm_91_while_identity_4%
!backward_lstm_91_while_identity_5;
7backward_lstm_91_while_backward_lstm_91_strided_slice_1w
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
:backward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_91_while_placeholderQbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0П
'backward_lstm_91/while/lstm_cell/MatMulMatMulAbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ╝
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0─
)backward_lstm_91/while/lstm_cell/MatMul_1MatMul$backward_lstm_91_while_placeholder_2@backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Й
$backward_lstm_91/while/lstm_cell/addAddV21backward_lstm_91/while/lstm_cell/MatMul:product:03backward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Х
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0К
(backward_lstm_91/while/lstm_cell/BiasAddBiasAdd(backward_lstm_91/while/lstm_cell/add:z:0?backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
&backward_lstm_91/while/lstm_cell/splitSplit9backward_lstm_91/while/lstm_cell/split/split_dim:output:01backward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЇ
(backward_lstm_91/while/lstm_cell/SigmoidSigmoid/backward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ј
*backward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:ф
$backward_lstm_91/while/lstm_cell/mulMul.backward_lstm_91/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:Є
%backward_lstm_91/while/lstm_cell/ReluRelu/backward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:╣
&backward_lstm_91/while/lstm_cell/mul_1Mul,backward_lstm_91/while/lstm_cell/Sigmoid:y:03backward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:«
&backward_lstm_91/while/lstm_cell/add_1AddV2(backward_lstm_91/while/lstm_cell/mul:z:0*backward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ј
*backward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ё
'backward_lstm_91/while/lstm_cell/Relu_1Relu*backward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:й
&backward_lstm_91/while/lstm_cell/mul_2Mul.backward_lstm_91/while/lstm_cell/Sigmoid_2:y:05backward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
;backward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_91_while_placeholder_1"backward_lstm_91_while_placeholder*backward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_91/while/addAddV2"backward_lstm_91_while_placeholder%backward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_91/while/add_1AddV2:backward_lstm_91_while_backward_lstm_91_while_loop_counter'backward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_91/while/IdentityIdentity backward_lstm_91/while/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_91/while/Identity_1Identity@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_91/while/Identity_2Identitybackward_lstm_91/while/add:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_91/while/Identity_3IdentityKbackward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: а
!backward_lstm_91/while/Identity_4Identity*backward_lstm_91/while/lstm_cell/mul_2:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes

:а
!backward_lstm_91/while/Identity_5Identity*backward_lstm_91/while/lstm_cell/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes

:у
backward_lstm_91/while/NoOpNoOp8^backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_91_while_backward_lstm_91_strided_slice_19backward_lstm_91_while_backward_lstm_91_strided_slice_1_0"K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0"O
!backward_lstm_91_while_identity_1*backward_lstm_91/while/Identity_1:output:0"O
!backward_lstm_91_while_identity_2*backward_lstm_91/while/Identity_2:output:0"O
!backward_lstm_91_while_identity_3*backward_lstm_91/while/Identity_3:output:0"O
!backward_lstm_91_while_identity_4*backward_lstm_91/while/Identity_4:output:0"O
!backward_lstm_91_while_identity_5*backward_lstm_91/while/Identity_5:output:0"є
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:
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
_user_specified_name" backward_lstm_91/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
Ь
s
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659972
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
С
■
G__inference_dense_569_layer_call_and_return_conditional_losses_25661423

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
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
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : ю
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
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Д	
Я
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657411
dense_569_input$
dense_569_25657405: 
dense_569_25657407:
identityѕб!dense_569/StatefulPartitionedCallЄ
!dense_569/StatefulPartitionedCallStatefulPartitionedCalldense_569_inputdense_569_25657405dense_569_25657407*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_569_layer_call_and_return_conditional_losses_25657390}
IdentityIdentity*dense_569/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_569/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_569/StatefulPartitionedCall!dense_569/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_569_input:($
"
_user_specified_name
25657405:($
"
_user_specified_name
25657407
Г
Д
1__inference_sequential_376_layer_call_fn_25657263
dense_559_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_559_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657245s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_559_input:($
"
_user_specified_name
25657257:($
"
_user_specified_name
25657259
Л	
щ
G__inference_dense_575_layer_call_and_return_conditional_losses_25659321

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
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
:	ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
у
q
G__inference_lambda_94_layer_call_and_return_conditional_losses_25658957

inputs
inputs_1
identityђ
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
Д	
Я
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657328
dense_564_input$
dense_564_25657322: 
dense_564_25657324:
identityѕб!dense_564/StatefulPartitionedCallЄ
!dense_564/StatefulPartitionedCallStatefulPartitionedCalldense_564_inputdense_564_25657322dense_564_25657324*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_564_layer_call_and_return_conditional_losses_25657307}
IdentityIdentity*dense_564/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_564/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_564/StatefulPartitionedCall!dense_564/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_564_input:($
"
_user_specified_name
25657322:($
"
_user_specified_name
25657324
а	
╝
2__inference_forward_lstm_91_layer_call_fn_25661496

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25658362|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
25661488:($
"
_user_specified_name
25661490:($
"
_user_specified_name
25661492
ХJ
▒
#forward_lstm_91_while_body_25659447<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3;
7forward_lstm_91_while_forward_lstm_91_strided_slice_1_0w
sforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_91_while_identity$
 forward_lstm_91_while_identity_1$
 forward_lstm_91_while_identity_2$
 forward_lstm_91_while_identity_3$
 forward_lstm_91_while_identity_4$
 forward_lstm_91_while_identity_59
5forward_lstm_91_while_forward_lstm_91_strided_slice_1u
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
9forward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_91_while_placeholderPforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Х
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
&forward_lstm_91/while/lstm_cell/MatMulMatMul@forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ║
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┴
(forward_lstm_91/while/lstm_cell/MatMul_1MatMul#forward_lstm_91_while_placeholder_2?forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ╗
#forward_lstm_91/while/lstm_cell/addAddV20forward_lstm_91/while/lstm_cell/MatMul:product:02forward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ┤
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0─
'forward_lstm_91/while/lstm_cell/BiasAddBiasAdd'forward_lstm_91/while/lstm_cell/add:z:0>forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
%forward_lstm_91/while/lstm_cell/splitSplit8forward_lstm_91/while/lstm_cell/split/split_dim:output:00forward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitІ
'forward_lstm_91/while/lstm_cell/SigmoidSigmoid.forward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ї
)forward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Д
#forward_lstm_91/while/lstm_cell/mulMul-forward_lstm_91/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:Ё
$forward_lstm_91/while/lstm_cell/ReluRelu.forward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Х
%forward_lstm_91/while/lstm_cell/mul_1Mul+forward_lstm_91/while/lstm_cell/Sigmoid:y:02forward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ф
%forward_lstm_91/while/lstm_cell/add_1AddV2'forward_lstm_91/while/lstm_cell/mul:z:0)forward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ї
)forward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ѓ
&forward_lstm_91/while/lstm_cell/Relu_1Relu)forward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:║
%forward_lstm_91/while/lstm_cell/mul_2Mul-forward_lstm_91/while/lstm_cell/Sigmoid_2:y:04forward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:ѓ
:forward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_91_while_placeholder_1!forward_lstm_91_while_placeholder)forward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_91/while/addAddV2!forward_lstm_91_while_placeholder$forward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/while/add_1AddV28forward_lstm_91_while_forward_lstm_91_while_loop_counter&forward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_91/while/Identity_1Identity>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_91/while/Identity_2Identityforward_lstm_91/while/add:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_91/while/Identity_3IdentityJforward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ю
 forward_lstm_91/while/Identity_4Identity)forward_lstm_91/while/lstm_cell/mul_2:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes

:Ю
 forward_lstm_91/while/Identity_5Identity)forward_lstm_91/while/lstm_cell/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes

:с
forward_lstm_91/while/NoOpNoOp7^forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_91_while_forward_lstm_91_strided_slice_17forward_lstm_91_while_forward_lstm_91_strided_slice_1_0"I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0"M
 forward_lstm_91_while_identity_1)forward_lstm_91/while/Identity_1:output:0"M
 forward_lstm_91_while_identity_2)forward_lstm_91/while/Identity_2:output:0"M
 forward_lstm_91_while_identity_3)forward_lstm_91/while/Identity_3:output:0"M
 forward_lstm_91_while_identity_4)forward_lstm_91/while/Identity_4:output:0"M
 forward_lstm_91_while_identity_5)forward_lstm_91/while/Identity_5:output:0"ё
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:
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
_user_specified_name!forward_lstm_91/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
Г
Д
1__inference_sequential_376_layer_call_fn_25657254
dense_559_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_559_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657236s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_559_input:($
"
_user_specified_name
25657248:($
"
_user_specified_name
25657250
└
Ы
,__inference_lstm_cell_layer_call_fn_25662720

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657583o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
25662708:($
"
_user_specified_name
25662710:($
"
_user_specified_name
25662712
╠	
═
while_cond_25662328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25662328___redundant_placeholder06
2while_while_cond_25662328___redundant_placeholder16
2while_while_cond_25662328___redundant_placeholder26
2while_while_cond_25662328___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
С$
о
while_body_25657742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_25657766_0: ,
while_lstm_cell_25657768_0: (
while_lstm_cell_25657770_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_25657766: *
while_lstm_cell_25657768: &
while_lstm_cell_25657770: ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25657766_0while_lstm_cell_25657768_0while_lstm_cell_25657770_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657728┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_25657766while_lstm_cell_25657766_0"6
while_lstm_cell_25657768while_lstm_cell_25657768_0"6
while_lstm_cell_25657770while_lstm_cell_25657770_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
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
:         :-)
'
_output_shapes
:         :GC
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
25657766:(	$
"
_user_specified_name
25657768:(
$
"
_user_specified_name
25657770
ЉL
Љ
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658824

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: є
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25658740*
condR
while_cond_25658739*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
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
ћ	
Й
2__inference_forward_lstm_91_layer_call_fn_25661474
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25657666|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
25661466:($
"
_user_specified_name
25661468:($
"
_user_specified_name
25661470
њ
X
,__inference_lambda_94_layer_call_fn_25659990
inputs_0
inputs_1
identityЙ
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_94_layer_call_and_return_conditional_losses_25659355_
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
а	
╝
2__inference_forward_lstm_91_layer_call_fn_25661507

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25658672|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
25661499:($
"
_user_specified_name
25661501:($
"
_user_specified_name
25661503
Б
ђ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657728

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
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
у
q
G__inference_lambda_94_layer_call_and_return_conditional_losses_25659355

inputs
inputs_1
identityђ
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
Т
q
G__inference_lambda_93_layer_call_and_return_conditional_losses_25658950

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
Г
Д
1__inference_sequential_391_layer_call_fn_25657512
dense_574_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_574_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657494s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_574_input:($
"
_user_specified_name
25657506:($
"
_user_specified_name
25657508
вK
Њ
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662268
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25662184*
condR
while_cond_25662183*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
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
їJ
њ
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661793
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25661709*
condR
while_cond_25661708*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
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
Ф
ѓ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662769

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
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
Љ
I
-__inference_dropout_91_layer_call_fn_25661256

inputs
identity«
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
GPU 2J 8ѓ *Q
fLRJ
H__inference_dropout_91_layer_call_and_return_conditional_losses_25659694[
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
С$
о
while_body_25657597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_25657621_0: ,
while_lstm_cell_25657623_0: (
while_lstm_cell_25657625_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_25657621: *
while_lstm_cell_25657623: &
while_lstm_cell_25657625: ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25657621_0while_lstm_cell_25657623_0while_lstm_cell_25657625_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657583┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_25657621while_lstm_cell_25657621_0"6
while_lstm_cell_25657623while_lstm_cell_25657623_0"6
while_lstm_cell_25657625while_lstm_cell_25657625_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
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
:         :-)
'
_output_shapes
:         :GC
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
25657621:(	$
"
_user_specified_name
25657623:(
$
"
_user_specified_name
25657625
П8
є
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25657666

inputs$
lstm_cell_25657584: $
lstm_cell_25657586:  
lstm_cell_25657588: 
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЬ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25657584lstm_cell_25657586lstm_cell_25657588*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657583n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Џ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25657584lstm_cell_25657586lstm_cell_25657588*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25657597*
condR
while_cond_25657596*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
25657584:($
"
_user_specified_name
25657586:($
"
_user_specified_name
25657588
И
А
$backward_lstm_91_while_cond_25659587>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3@
<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25659587___redundant_placeholder0X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25659587___redundant_placeholder1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25659587___redundant_placeholder2X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25659587___redundant_placeholder3#
backward_lstm_91_while_identity
д
backward_lstm_91/while/LessLess"backward_lstm_91_while_placeholder<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_91/while/IdentityIdentitybackward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:
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
_user_specified_name" backward_lstm_91/strided_slice_1:

_output_shapes
:
ыH
ѕ	
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659328
input_2$
dense_558_25658933: 
dense_558_25658935:)
sequential_376_25658963:%
sequential_376_25658965:)
sequential_381_25658968:%
sequential_381_25658970:)
sequential_386_25658973:%
sequential_386_25658975:)
sequential_391_25658978:%
sequential_391_25658980:+
bidirectional_91_25659279: +
bidirectional_91_25659281: '
bidirectional_91_25659283: +
bidirectional_91_25659285: +
bidirectional_91_25659287: '
bidirectional_91_25659289: %
dense_575_25659322:	ђ 
dense_575_25659324:
identityѕб(bidirectional_91/StatefulPartitionedCallб!dense_558/StatefulPartitionedCallб!dense_575/StatefulPartitionedCallб"dropout_91/StatefulPartitionedCallб&sequential_376/StatefulPartitionedCallб&sequential_381/StatefulPartitionedCallб&sequential_386/StatefulPartitionedCallб&sequential_391/StatefulPartitionedCallШ
!dense_558/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_558_25658933dense_558_25658935*
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
GPU 2J 8ѓ *P
fKRI
G__inference_dense_558_layer_call_and_return_conditional_losses_25658932Z
tf.math.top_k_1/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :ф
tf.math.top_k_1/TopKV2TopKV2*dense_558/StatefulPartitionedCall:output:0!tf.math.top_k_1/TopKV2/k:output:0*
T0*0
_output_shapes
::b
tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?c
tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ы
tf.one_hot_1/one_hotOneHot tf.math.top_k_1/TopKV2:indices:0#tf.one_hot_1/one_hot/depth:output:0&tf.one_hot_1/one_hot/on_value:output:0'tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:­
lambda_93/PartitionedCallPartitionedCalltf.math.top_k_1/TopKV2:values:0tf.one_hot_1/one_hot:output:0*
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_93_layer_call_and_return_conditional_losses_25658950р
lambda_94/PartitionedCallPartitionedCallinput_2"lambda_93/PartitionedCall:output:0*
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_94_layer_call_and_return_conditional_losses_25658957ц
tf.unstack_1/unstackUnpack"lambda_94/PartitionedCall:output:0*
T0*L
_output_shapes:
8::::*	
numа
&sequential_376/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_1/unstack:output:0sequential_376_25658963sequential_376_25658965*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657236а
&sequential_381/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_1/unstack:output:1sequential_381_25658968sequential_381_25658970*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657319а
&sequential_386/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_1/unstack:output:2sequential_386_25658973sequential_386_25658975*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657402а
&sequential_391/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_1/unstack:output:3sequential_391_25658978sequential_391_25658980*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657485Б
tf.stack_92/stackPack/sequential_376/StatefulPartitionedCall:output:0/sequential_381/StatefulPartitionedCall:output:0/sequential_386/StatefulPartitionedCall:output:0/sequential_391/StatefulPartitionedCall:output:0*
N*
T0*&
_output_shapes
:*

axis­
lambda_95/PartitionedCallPartitionedCalltf.stack_92/stack:output:0"lambda_93/PartitionedCall:output:0*
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
GPU 2J 8ѓ *P
fKRI
G__inference_lambda_95_layer_call_and_return_conditional_losses_25658989А
(bidirectional_91/StatefulPartitionedCallStatefulPartitionedCall"lambda_95/PartitionedCall:output:0bidirectional_91_25659279bidirectional_91_25659281bidirectional_91_25659283bidirectional_91_25659285bidirectional_91_25659287bidirectional_91_25659289*
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
GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25659278З
"dropout_91/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_91/StatefulPartitionedCall:output:0*
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
GPU 2J 8ѓ *Q
fLRJ
H__inference_dropout_91_layer_call_and_return_conditional_losses_25659303█
flatten_91/PartitionedCallPartitionedCall+dropout_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_flatten_91_layer_call_and_return_conditional_losses_25659310ј
!dense_575/StatefulPartitionedCallStatefulPartitionedCall#flatten_91/PartitionedCall:output:0dense_575_25659322dense_575_25659324*
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
GPU 2J 8ѓ *P
fKRI
G__inference_dense_575_layer_call_and_return_conditional_losses_25659321p
IdentityIdentity*dense_575/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:я
NoOpNoOp)^bidirectional_91/StatefulPartitionedCall"^dense_558/StatefulPartitionedCall"^dense_575/StatefulPartitionedCall#^dropout_91/StatefulPartitionedCall'^sequential_376/StatefulPartitionedCall'^sequential_381/StatefulPartitionedCall'^sequential_386/StatefulPartitionedCall'^sequential_391/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2T
(bidirectional_91/StatefulPartitionedCall(bidirectional_91/StatefulPartitionedCall2F
!dense_558/StatefulPartitionedCall!dense_558/StatefulPartitionedCall2F
!dense_575/StatefulPartitionedCall!dense_575/StatefulPartitionedCall2H
"dropout_91/StatefulPartitionedCall"dropout_91/StatefulPartitionedCall2P
&sequential_376/StatefulPartitionedCall&sequential_376/StatefulPartitionedCall2P
&sequential_381/StatefulPartitionedCall&sequential_381/StatefulPartitionedCall2P
&sequential_386/StatefulPartitionedCall&sequential_386/StatefulPartitionedCall2P
&sequential_391/StatefulPartitionedCall&sequential_391/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2:($
"
_user_specified_name
25658933:($
"
_user_specified_name
25658935:($
"
_user_specified_name
25658963:($
"
_user_specified_name
25658965:($
"
_user_specified_name
25658968:($
"
_user_specified_name
25658970:($
"
_user_specified_name
25658973:($
"
_user_specified_name
25658975:(	$
"
_user_specified_name
25658978:(
$
"
_user_specified_name
25658980:($
"
_user_specified_name
25659279:($
"
_user_specified_name
25659281:($
"
_user_specified_name
25659283:($
"
_user_specified_name
25659285:($
"
_user_specified_name
25659287:($
"
_user_specified_name
25659289:($
"
_user_specified_name
25659322:($
"
_user_specified_name
25659324
ЉL
Љ
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658514

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
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
:         R
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: є
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_25658430*
condR
while_cond_25658429*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
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
Д	
Я
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657245
dense_559_input$
dense_559_25657239: 
dense_559_25657241:
identityѕб!dense_559/StatefulPartitionedCallЄ
!dense_559/StatefulPartitionedCallStatefulPartitionedCalldense_559_inputdense_559_25657239dense_559_25657241*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_559_layer_call_and_return_conditional_losses_25657224}
IdentityIdentity*dense_559/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_559/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_559/StatefulPartitionedCall!dense_559/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_559_input:($
"
_user_specified_name
25657239:($
"
_user_specified_name
25657241
└
Ы
,__inference_lstm_cell_layer_call_fn_25662835

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25658078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
25662823:($
"
_user_specified_name
25662825:($
"
_user_specified_name
25662827
▄
А
$backward_lstm_91_while_cond_25660293>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3@
<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660293___redundant_placeholder0X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660293___redundant_placeholder1X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660293___redundant_placeholder2X
Tbackward_lstm_91_while_backward_lstm_91_while_cond_25660293___redundant_placeholder3#
backward_lstm_91_while_identity
д
backward_lstm_91/while/LessLess"backward_lstm_91_while_placeholder<backward_lstm_91_while_less_backward_lstm_91_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_91/while/IdentityIdentitybackward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_91/strided_slice_1:

_output_shapes
:
й╣
ю
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25659676

inputsJ
8forward_lstm_91_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_91_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_91/whileб0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_91/whilej
forward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_91/strided_sliceStridedSliceforward_lstm_91/Shape:output:0,forward_lstm_91/strided_slice/stack:output:0.forward_lstm_91/strided_slice/stack_1:output:0.forward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_91/zeros/packedPack&forward_lstm_91/strided_slice:output:0'forward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
forward_lstm_91/zerosFill%forward_lstm_91/zeros/packed:output:0$forward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/zeros_1/packedPack&forward_lstm_91/strided_slice:output:0)forward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
forward_lstm_91/zeros_1Fill'forward_lstm_91/zeros_1/packed:output:0&forward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
forward_lstm_91/transpose	Transposeinputs'forward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_91/strided_slice_1StridedSlice forward_lstm_91/Shape_1:output:0.forward_lstm_91/strided_slice_1/stack:output:00forward_lstm_91/strided_slice_1/stack_1:output:00forward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_91/TensorArrayV2TensorListReserve4forward_lstm_91/TensorArrayV2/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      љ
7forward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_91/transpose:y:0Nforward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
forward_lstm_91/strided_slice_2StridedSliceforward_lstm_91/transpose:y:0.forward_lstm_91/strided_slice_2/stack:output:00forward_lstm_91/strided_slice_2/stack_1:output:00forward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskе
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
 forward_lstm_91/lstm_cell/MatMulMatMul(forward_lstm_91/strided_slice_2:output:07forward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: г
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0░
"forward_lstm_91/lstm_cell/MatMul_1MatMulforward_lstm_91/zeros:output:09forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Е
forward_lstm_91/lstm_cell/addAddV2*forward_lstm_91/lstm_cell/MatMul:product:0,forward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: д
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0▓
!forward_lstm_91/lstm_cell/BiasAddBiasAdd!forward_lstm_91/lstm_cell/add:z:08forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
forward_lstm_91/lstm_cell/splitSplit2forward_lstm_91/lstm_cell/split/split_dim:output:0*forward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_91/lstm_cell/SigmoidSigmoid(forward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:Ђ
#forward_lstm_91/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
forward_lstm_91/lstm_cell/mulMul'forward_lstm_91/lstm_cell/Sigmoid_1:y:0 forward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_91/lstm_cell/ReluRelu(forward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:ц
forward_lstm_91/lstm_cell/mul_1Mul%forward_lstm_91/lstm_cell/Sigmoid:y:0,forward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
forward_lstm_91/lstm_cell/add_1AddV2!forward_lstm_91/lstm_cell/mul:z:0#forward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ђ
#forward_lstm_91/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_91/lstm_cell/Relu_1Relu#forward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:е
forward_lstm_91/lstm_cell/mul_2Mul'forward_lstm_91/lstm_cell/Sigmoid_2:y:0.forward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      У
forward_lstm_91/TensorArrayV2_1TensorListReserve6forward_lstm_91/TensorArrayV2_1/element_shape:output:0(forward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
forward_lstm_91/whileWhile+forward_lstm_91/while/loop_counter:output:01forward_lstm_91/while/maximum_iterations:output:0forward_lstm_91/time:output:0(forward_lstm_91/TensorArrayV2_1:handle:0forward_lstm_91/zeros:output:0 forward_lstm_91/zeros_1:output:0(forward_lstm_91/strided_slice_1:output:0Gforward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_91_lstm_cell_matmul_readvariableop_resource:forward_lstm_91_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
#forward_lstm_91_while_body_25659447*/
cond'R%
#forward_lstm_91_while_cond_25659446*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Љ
@forward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ж
2forward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_91/while:output:3Iforward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
forward_lstm_91/strided_slice_3StridedSlice;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_91/strided_slice_3/stack:output:00forward_lstm_91/strided_slice_3/stack_1:output:00forward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
forward_lstm_91/transpose_1	Transpose;forward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_91/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_91/strided_sliceStridedSlicebackward_lstm_91/Shape:output:0-backward_lstm_91/strided_slice/stack:output:0/backward_lstm_91/strided_slice/stack_1:output:0/backward_lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_91/zeros/packedPack'backward_lstm_91/strided_slice:output:0(backward_lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
backward_lstm_91/zerosFill&backward_lstm_91/zeros/packed:output:0%backward_lstm_91/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_91/zeros_1/packedPack'backward_lstm_91/strided_slice:output:0*backward_lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
backward_lstm_91/zeros_1Fill(backward_lstm_91/zeros_1/packed:output:0'backward_lstm_91/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
backward_lstm_91/transpose	Transposeinputs(backward_lstm_91/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_91/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_91/strided_slice_1StridedSlice!backward_lstm_91/Shape_1:output:0/backward_lstm_91/strided_slice_1/stack:output:01backward_lstm_91/strided_slice_1/stack_1:output:01backward_lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_91/TensorArrayV2TensorListReserve5backward_lstm_91/TensorArrayV2/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_91/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
backward_lstm_91/ReverseV2	ReverseV2backward_lstm_91/transpose:y:0(backward_lstm_91/ReverseV2/axis:output:0*
T0*"
_output_shapes
:Ќ
Fbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
8backward_lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_91/ReverseV2:output:0Obackward_lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
 backward_lstm_91/strided_slice_2StridedSlicebackward_lstm_91/transpose:y:0/backward_lstm_91/strided_slice_2/stack:output:01backward_lstm_91/strided_slice_2/stack_1:output:01backward_lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskф
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_91_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╣
!backward_lstm_91/lstm_cell/MatMulMatMul)backward_lstm_91/strided_slice_2:output:08backward_lstm_91/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: «
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0│
#backward_lstm_91/lstm_cell/MatMul_1MatMulbackward_lstm_91/zeros:output:0:backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: г
backward_lstm_91/lstm_cell/addAddV2+backward_lstm_91/lstm_cell/MatMul:product:0-backward_lstm_91/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: е
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
"backward_lstm_91/lstm_cell/BiasAddBiasAdd"backward_lstm_91/lstm_cell/add:z:09backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_91/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
 backward_lstm_91/lstm_cell/splitSplit3backward_lstm_91/lstm_cell/split/split_dim:output:0+backward_lstm_91/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЂ
"backward_lstm_91/lstm_cell/SigmoidSigmoid)backward_lstm_91/lstm_cell/split:output:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_91/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_91/lstm_cell/split:output:1*
T0*
_output_shapes

:Џ
backward_lstm_91/lstm_cell/mulMul(backward_lstm_91/lstm_cell/Sigmoid_1:y:0!backward_lstm_91/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_91/lstm_cell/ReluRelu)backward_lstm_91/lstm_cell/split:output:2*
T0*
_output_shapes

:Д
 backward_lstm_91/lstm_cell/mul_1Mul&backward_lstm_91/lstm_cell/Sigmoid:y:0-backward_lstm_91/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ю
 backward_lstm_91/lstm_cell/add_1AddV2"backward_lstm_91/lstm_cell/mul:z:0$backward_lstm_91/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_91/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_91/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_91/lstm_cell/Relu_1Relu$backward_lstm_91/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ф
 backward_lstm_91/lstm_cell/mul_2Mul(backward_lstm_91/lstm_cell/Sigmoid_2:y:0/backward_lstm_91/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      в
 backward_lstm_91/TensorArrayV2_1TensorListReserve7backward_lstm_91/TensorArrayV2_1/element_shape:output:0)backward_lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
backward_lstm_91/whileWhile,backward_lstm_91/while/loop_counter:output:02backward_lstm_91/while/maximum_iterations:output:0backward_lstm_91/time:output:0)backward_lstm_91/TensorArrayV2_1:handle:0backward_lstm_91/zeros:output:0!backward_lstm_91/zeros_1:output:0)backward_lstm_91/strided_slice_1:output:0Hbackward_lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_91_lstm_cell_matmul_readvariableop_resource;backward_lstm_91_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_91_lstm_cell_biasadd_readvariableop_resource*
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
$backward_lstm_91_while_body_25659588*0
cond(R&
$backward_lstm_91_while_cond_25659587*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations њ
Abackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      В
3backward_lstm_91/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_91/while:output:3Jbackward_lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
 backward_lstm_91/strided_slice_3StridedSlice<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_91/strided_slice_3/stack:output:01backward_lstm_91/strided_slice_3/stack_1:output:01backward_lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
backward_lstm_91/transpose_1	Transpose<backward_lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_91/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_91/runtimeConst"/device:CPU:0*
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
	ReverseV2	ReverseV2 backward_lstm_91/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
concatConcatV2forward_lstm_91/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:ѕ
NoOpNoOp2^backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_91/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_91/while1^forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_91/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp0backward_lstm_91/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_91/whilebackward_lstm_91/while2d
0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_91/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp/forward_lstm_91/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_91/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_91/whileforward_lstm_91/while:J F
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
┘Y
П
$__inference__traced_restore_25663092
file_prefix3
!assignvariableop_dense_558_kernel:/
!assignvariableop_1_dense_558_bias:6
#assignvariableop_2_dense_575_kernel:	ђ/
!assignvariableop_3_dense_575_bias:5
#assignvariableop_4_dense_559_kernel:/
!assignvariableop_5_dense_559_bias:5
#assignvariableop_6_dense_564_kernel:/
!assignvariableop_7_dense_564_bias:5
#assignvariableop_8_dense_569_kernel:/
!assignvariableop_9_dense_569_bias:6
$assignvariableop_10_dense_574_kernel:0
"assignvariableop_11_dense_574_bias:W
Eassignvariableop_12_bidirectional_91_forward_lstm_91_lstm_cell_kernel: a
Oassignvariableop_13_bidirectional_91_forward_lstm_91_lstm_cell_recurrent_kernel: Q
Cassignvariableop_14_bidirectional_91_forward_lstm_91_lstm_cell_bias: X
Fassignvariableop_15_bidirectional_91_backward_lstm_91_lstm_cell_kernel: b
Passignvariableop_16_bidirectional_91_backward_lstm_91_lstm_cell_recurrent_kernel: R
Dassignvariableop_17_bidirectional_91_backward_lstm_91_lstm_cell_bias: 
identity_19ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Ъ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*┼
value╗BИB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHќ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B §
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOpAssignVariableOp!assignvariableop_dense_558_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_558_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_575_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_575_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_559_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_559_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_564_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_564_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_569_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_569_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_574_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_574_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_12AssignVariableOpEassignvariableop_12_bidirectional_91_forward_lstm_91_lstm_cell_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOpOassignvariableop_13_bidirectional_91_forward_lstm_91_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:▄
AssignVariableOp_14AssignVariableOpCassignvariableop_14_bidirectional_91_forward_lstm_91_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:▀
AssignVariableOp_15AssignVariableOpFassignvariableop_15_bidirectional_91_backward_lstm_91_lstm_cell_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_16AssignVariableOpPassignvariableop_16_bidirectional_91_backward_lstm_91_lstm_cell_recurrent_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_17AssignVariableOpDassignvariableop_17_bidirectional_91_backward_lstm_91_lstm_cell_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 █
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: ц
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
_user_specified_namedense_558/kernel:.*
(
_user_specified_namedense_558/bias:0,
*
_user_specified_namedense_575/kernel:.*
(
_user_specified_namedense_575/bias:0,
*
_user_specified_namedense_559/kernel:.*
(
_user_specified_namedense_559/bias:0,
*
_user_specified_namedense_564/kernel:.*
(
_user_specified_namedense_564/bias:0	,
*
_user_specified_namedense_569/kernel:.
*
(
_user_specified_namedense_569/bias:0,
*
_user_specified_namedense_574/kernel:.*
(
_user_specified_namedense_574/bias:QM
K
_user_specified_name31bidirectional_91/forward_lstm_91/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_91/forward_lstm_91/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_91/backward_lstm_91/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_91/backward_lstm_91/lstm_cell/bias
У8
▒
while_body_25658740
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
С$
о
while_body_25657945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_25657969_0: ,
while_lstm_cell_25657971_0: (
while_lstm_cell_25657973_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_25657969: *
while_lstm_cell_25657971: &
while_lstm_cell_25657973: ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25657969_0while_lstm_cell_25657971_0while_lstm_cell_25657973_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25657931┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_25657969while_lstm_cell_25657969_0"6
while_lstm_cell_25657971while_lstm_cell_25657971_0"6
while_lstm_cell_25657973while_lstm_cell_25657973_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
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
:         :-)
'
_output_shapes
:         :GC
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
25657969:(	$
"
_user_specified_name
25657971:(
$
"
_user_specified_name
25657973
О
џ
,__inference_dense_575_layer_call_fn_25661293

inputs
unknown:	ђ
	unknown_0:
identityѕбStatefulPartitionedCallМ
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
GPU 2J 8ѓ *P
fKRI
G__inference_dense_575_layer_call_and_return_conditional_losses_25659321f
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
:	ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
25661287:($
"
_user_specified_name
25661289
б	
й
3__inference_backward_lstm_91_layer_call_fn_25662123

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658824|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
25662115:($
"
_user_specified_name
25662117:($
"
_user_specified_name
25662119
ХJ
▒
#forward_lstm_91_while_body_25659049<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3;
7forward_lstm_91_while_forward_lstm_91_strided_slice_1_0w
sforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_91_while_identity$
 forward_lstm_91_while_identity_1$
 forward_lstm_91_while_identity_2$
 forward_lstm_91_while_identity_3$
 forward_lstm_91_while_identity_4$
 forward_lstm_91_while_identity_59
5forward_lstm_91_while_forward_lstm_91_strided_slice_1u
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
9forward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_91_while_placeholderPforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Х
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
&forward_lstm_91/while/lstm_cell/MatMulMatMul@forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ║
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┴
(forward_lstm_91/while/lstm_cell/MatMul_1MatMul#forward_lstm_91_while_placeholder_2?forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ╗
#forward_lstm_91/while/lstm_cell/addAddV20forward_lstm_91/while/lstm_cell/MatMul:product:02forward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ┤
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0─
'forward_lstm_91/while/lstm_cell/BiasAddBiasAdd'forward_lstm_91/while/lstm_cell/add:z:0>forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
%forward_lstm_91/while/lstm_cell/splitSplit8forward_lstm_91/while/lstm_cell/split/split_dim:output:00forward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitІ
'forward_lstm_91/while/lstm_cell/SigmoidSigmoid.forward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ї
)forward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Д
#forward_lstm_91/while/lstm_cell/mulMul-forward_lstm_91/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:Ё
$forward_lstm_91/while/lstm_cell/ReluRelu.forward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Х
%forward_lstm_91/while/lstm_cell/mul_1Mul+forward_lstm_91/while/lstm_cell/Sigmoid:y:02forward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ф
%forward_lstm_91/while/lstm_cell/add_1AddV2'forward_lstm_91/while/lstm_cell/mul:z:0)forward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ї
)forward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ѓ
&forward_lstm_91/while/lstm_cell/Relu_1Relu)forward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:║
%forward_lstm_91/while/lstm_cell/mul_2Mul-forward_lstm_91/while/lstm_cell/Sigmoid_2:y:04forward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:ѓ
:forward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_91_while_placeholder_1!forward_lstm_91_while_placeholder)forward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_91/while/addAddV2!forward_lstm_91_while_placeholder$forward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/while/add_1AddV28forward_lstm_91_while_forward_lstm_91_while_loop_counter&forward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_91/while/Identity_1Identity>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_91/while/Identity_2Identityforward_lstm_91/while/add:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_91/while/Identity_3IdentityJforward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ю
 forward_lstm_91/while/Identity_4Identity)forward_lstm_91/while/lstm_cell/mul_2:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes

:Ю
 forward_lstm_91/while/Identity_5Identity)forward_lstm_91/while/lstm_cell/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes

:с
forward_lstm_91/while/NoOpNoOp7^forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_91_while_forward_lstm_91_strided_slice_17forward_lstm_91_while_forward_lstm_91_strided_slice_1_0"I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0"M
 forward_lstm_91_while_identity_1)forward_lstm_91/while/Identity_1:output:0"M
 forward_lstm_91_while_identity_2)forward_lstm_91/while/Identity_2:output:0"M
 forward_lstm_91_while_identity_3)forward_lstm_91/while/Identity_3:output:0"M
 forward_lstm_91_while_identity_4)forward_lstm_91/while/Identity_4:output:0"M
 forward_lstm_91_while_identity_5)forward_lstm_91/while/Identity_5:output:0"ё
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:
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
_user_specified_name!forward_lstm_91/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
лK
Л
$backward_lstm_91_while_body_25661158>
:backward_lstm_91_while_backward_lstm_91_while_loop_counterD
@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations&
"backward_lstm_91_while_placeholder(
$backward_lstm_91_while_placeholder_1(
$backward_lstm_91_while_placeholder_2(
$backward_lstm_91_while_placeholder_3=
9backward_lstm_91_while_backward_lstm_91_strided_slice_1_0y
ubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_91_while_identity%
!backward_lstm_91_while_identity_1%
!backward_lstm_91_while_identity_2%
!backward_lstm_91_while_identity_3%
!backward_lstm_91_while_identity_4%
!backward_lstm_91_while_identity_5;
7backward_lstm_91_while_backward_lstm_91_strided_slice_1w
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
:backward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_91_while_placeholderQbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0П
'backward_lstm_91/while/lstm_cell/MatMulMatMulAbackward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ╝
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0─
)backward_lstm_91/while/lstm_cell/MatMul_1MatMul$backward_lstm_91_while_placeholder_2@backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Й
$backward_lstm_91/while/lstm_cell/addAddV21backward_lstm_91/while/lstm_cell/MatMul:product:03backward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Х
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0К
(backward_lstm_91/while/lstm_cell/BiasAddBiasAdd(backward_lstm_91/while/lstm_cell/add:z:0?backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
&backward_lstm_91/while/lstm_cell/splitSplit9backward_lstm_91/while/lstm_cell/split/split_dim:output:01backward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЇ
(backward_lstm_91/while/lstm_cell/SigmoidSigmoid/backward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ј
*backward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:ф
$backward_lstm_91/while/lstm_cell/mulMul.backward_lstm_91/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:Є
%backward_lstm_91/while/lstm_cell/ReluRelu/backward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:╣
&backward_lstm_91/while/lstm_cell/mul_1Mul,backward_lstm_91/while/lstm_cell/Sigmoid:y:03backward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:«
&backward_lstm_91/while/lstm_cell/add_1AddV2(backward_lstm_91/while/lstm_cell/mul:z:0*backward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ј
*backward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ё
'backward_lstm_91/while/lstm_cell/Relu_1Relu*backward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:й
&backward_lstm_91/while/lstm_cell/mul_2Mul.backward_lstm_91/while/lstm_cell/Sigmoid_2:y:05backward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
;backward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_91_while_placeholder_1"backward_lstm_91_while_placeholder*backward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_91/while/addAddV2"backward_lstm_91_while_placeholder%backward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_91/while/add_1AddV2:backward_lstm_91_while_backward_lstm_91_while_loop_counter'backward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_91/while/IdentityIdentity backward_lstm_91/while/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_91/while/Identity_1Identity@backward_lstm_91_while_backward_lstm_91_while_maximum_iterations^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_91/while/Identity_2Identitybackward_lstm_91/while/add:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_91/while/Identity_3IdentityKbackward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes
: а
!backward_lstm_91/while/Identity_4Identity*backward_lstm_91/while/lstm_cell/mul_2:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes

:а
!backward_lstm_91/while/Identity_5Identity*backward_lstm_91/while/lstm_cell/add_1:z:0^backward_lstm_91/while/NoOp*
T0*
_output_shapes

:у
backward_lstm_91/while/NoOpNoOp8^backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_91_while_backward_lstm_91_strided_slice_19backward_lstm_91_while_backward_lstm_91_strided_slice_1_0"K
backward_lstm_91_while_identity(backward_lstm_91/while/Identity:output:0"O
!backward_lstm_91_while_identity_1*backward_lstm_91/while/Identity_1:output:0"O
!backward_lstm_91_while_identity_2*backward_lstm_91/while/Identity_2:output:0"O
!backward_lstm_91_while_identity_3*backward_lstm_91/while/Identity_3:output:0"O
!backward_lstm_91_while_identity_4*backward_lstm_91/while/Identity_4:output:0"O
!backward_lstm_91_while_identity_5*backward_lstm_91/while/Identity_5:output:0"є
@backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_91_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorubackward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_91/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_91/while/maximum_iterations:
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
_user_specified_name" backward_lstm_91/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
Г
Д
1__inference_sequential_386_layer_call_fn_25657429
dense_569_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_569_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657411s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_569_input:($
"
_user_specified_name
25657423:($
"
_user_specified_name
25657425
╠	
═
while_cond_25658091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25658091___redundant_placeholder06
2while_while_cond_25658091___redundant_placeholder16
2while_while_cond_25658091___redundant_placeholder26
2while_while_cond_25658091___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ЌL
▒
#forward_lstm_91_while_body_25660153<
8forward_lstm_91_while_forward_lstm_91_while_loop_counterB
>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations%
!forward_lstm_91_while_placeholder'
#forward_lstm_91_while_placeholder_1'
#forward_lstm_91_while_placeholder_2'
#forward_lstm_91_while_placeholder_3;
7forward_lstm_91_while_forward_lstm_91_strided_slice_1_0w
sforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_91_while_identity$
 forward_lstm_91_while_identity_1$
 forward_lstm_91_while_identity_2$
 forward_lstm_91_while_identity_3$
 forward_lstm_91_while_identity_4$
 forward_lstm_91_while_identity_59
5forward_lstm_91_while_forward_lstm_91_strided_slice_1u
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"         
9forward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_91_while_placeholderPforward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0Х
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0с
&forward_lstm_91/while/lstm_cell/MatMulMatMul@forward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ║
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0╩
(forward_lstm_91/while/lstm_cell/MatMul_1MatMul#forward_lstm_91_while_placeholder_2?forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ─
#forward_lstm_91/while/lstm_cell/addAddV20forward_lstm_91/while/lstm_cell/MatMul:product:02forward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ┤
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0═
'forward_lstm_91/while/lstm_cell/BiasAddBiasAdd'forward_lstm_91/while/lstm_cell/add:z:0>forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          q
/forward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
%forward_lstm_91/while/lstm_cell/splitSplit8forward_lstm_91/while/lstm_cell/split/split_dim:output:00forward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitћ
'forward_lstm_91/while/lstm_cell/SigmoidSigmoid.forward_lstm_91/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ќ
)forward_lstm_91/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_91/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ░
#forward_lstm_91/while/lstm_cell/mulMul-forward_lstm_91/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_91_while_placeholder_3*
T0*'
_output_shapes
:         ј
$forward_lstm_91/while/lstm_cell/ReluRelu.forward_lstm_91/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┐
%forward_lstm_91/while/lstm_cell/mul_1Mul+forward_lstm_91/while/lstm_cell/Sigmoid:y:02forward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ┤
%forward_lstm_91/while/lstm_cell/add_1AddV2'forward_lstm_91/while/lstm_cell/mul:z:0)forward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ќ
)forward_lstm_91/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_91/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         І
&forward_lstm_91/while/lstm_cell/Relu_1Relu)forward_lstm_91/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ├
%forward_lstm_91/while/lstm_cell/mul_2Mul-forward_lstm_91/while/lstm_cell/Sigmoid_2:y:04forward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ѓ
:forward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_91_while_placeholder_1!forward_lstm_91_while_placeholder)forward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_91/while/addAddV2!forward_lstm_91_while_placeholder$forward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_91/while/add_1AddV28forward_lstm_91_while_forward_lstm_91_while_loop_counter&forward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_91/while/IdentityIdentityforward_lstm_91/while/add_1:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_91/while/Identity_1Identity>forward_lstm_91_while_forward_lstm_91_while_maximum_iterations^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_91/while/Identity_2Identityforward_lstm_91/while/add:z:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_91/while/Identity_3IdentityJforward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_91/while/NoOp*
T0*
_output_shapes
: д
 forward_lstm_91/while/Identity_4Identity)forward_lstm_91/while/lstm_cell/mul_2:z:0^forward_lstm_91/while/NoOp*
T0*'
_output_shapes
:         д
 forward_lstm_91/while/Identity_5Identity)forward_lstm_91/while/lstm_cell/add_1:z:0^forward_lstm_91/while/NoOp*
T0*'
_output_shapes
:         с
forward_lstm_91/while/NoOpNoOp7^forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_91_while_forward_lstm_91_strided_slice_17forward_lstm_91_while_forward_lstm_91_strided_slice_1_0"I
forward_lstm_91_while_identity'forward_lstm_91/while/Identity:output:0"M
 forward_lstm_91_while_identity_1)forward_lstm_91/while/Identity_1:output:0"M
 forward_lstm_91_while_identity_2)forward_lstm_91/while/Identity_2:output:0"M
 forward_lstm_91_while_identity_3)forward_lstm_91/while/Identity_3:output:0"M
 forward_lstm_91_while_identity_4)forward_lstm_91/while/Identity_4:output:0"M
 forward_lstm_91_while_identity_5)forward_lstm_91/while/Identity_5:output:0"ё
?forward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensorsforward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2p
6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_91/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_91/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_91/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
Н
┼
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25658527

inputs*
forward_lstm_91_25658363: *
forward_lstm_91_25658365: &
forward_lstm_91_25658367: +
backward_lstm_91_25658515: +
backward_lstm_91_25658517: '
backward_lstm_91_25658519: 
identityѕб(backward_lstm_91/StatefulPartitionedCallб'forward_lstm_91/StatefulPartitionedCall╗
'forward_lstm_91/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_91_25658363forward_lstm_91_25658365forward_lstm_91_25658367*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25658362└
(backward_lstm_91/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_91_25658515backward_lstm_91_25658517backward_lstm_91_25658519*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25658514X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:А
	ReverseV2	ReverseV21backward_lstm_91/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Х
concatConcatV20forward_lstm_91/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :                  w
NoOpNoOp)^backward_lstm_91/StatefulPartitionedCall(^forward_lstm_91/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 2T
(backward_lstm_91/StatefulPartitionedCall(backward_lstm_91/StatefulPartitionedCall2R
'forward_lstm_91/StatefulPartitionedCall'forward_lstm_91/StatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
25658363:($
"
_user_specified_name
25658365:($
"
_user_specified_name
25658367:($
"
_user_specified_name
25658515:($
"
_user_specified_name
25658517:($
"
_user_specified_name
25658519
╠	
═
while_cond_25657741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_25657741___redundant_placeholder06
2while_while_cond_25657741___redundant_placeholder16
2while_while_cond_25657741___redundant_placeholder26
2while_while_cond_25657741___redundant_placeholder3
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
@: : : : :         :         : :::::J F
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
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
▀8
▒
while_body_25662184
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
─s
Э
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_body_25657092ђ
|topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_loop_counterЄ
ѓtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_maximum_iterationsG
Ctopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholderI
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_1I
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_2I
Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_3
{topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_strided_slice_1_0╝
иtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0t
btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0: v
dtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0: q
ctopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0: D
@topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identityF
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_1F
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_2F
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_3F
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_4F
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_5}
ytopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_strided_slice_1║
хtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorr
`topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource: t
btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource: o
atopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource: ѕбXtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpбWtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpбYtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp║
itopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
[topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemиtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0Ctopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholderrtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Щ
Wtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpbtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0└
Htopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMulMatMulbtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0_topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ■
Ytopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpdtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Д
Jtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul_1MatMulEtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_2atopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: А
Etopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/addAddV2Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul:product:0Ttopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Э
Xtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpctopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0ф
Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/BiasAddBiasAddItopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/add:z:0`topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: Њ
Qtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/splitSplitZtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/split/split_dim:output:0Rtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split¤
Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/SigmoidSigmoidPtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Л
Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/Sigmoid_1SigmoidPtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Ї
Etopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/mulMulOtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/Sigmoid_1:y:0Etopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_3*
T0*
_output_shapes

:╔
Ftopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/ReluReluPtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/split:output:2*
T0*
_output_shapes

:ю
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/mul_1MulMtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/Sigmoid:y:0Ttopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Љ
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/add_1AddV2Itopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/mul:z:0Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Л
Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/Sigmoid_2SigmoidPtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/split:output:3*
T0*
_output_shapes

:к
Htopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/Relu_1ReluKtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:а
Gtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/mul_2MulOtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/Sigmoid_2:y:0Vtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:і
\topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemEtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholder_1Ctopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholderKtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм
=topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
;topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/addAddV2Ctopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_placeholderFtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/add/y:output:0*
T0*
_output_shapes
: Ђ
?topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
=topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/add_1AddV2|topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_loop_counterHtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: №
@topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/IdentityIdentityAtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/add_1:z:0=^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/NoOp*
T0*
_output_shapes
: │
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_1Identityѓtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_maximum_iterations=^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/NoOp*
T0*
_output_shapes
: №
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_2Identity?topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/add:z:0=^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/NoOp*
T0*
_output_shapes
: ю
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_3Identityltopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/NoOp*
T0*
_output_shapes
: Ѓ
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_4IdentityKtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/mul_2:z:0=^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/NoOp*
T0*
_output_shapes

:Ѓ
Btopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_5IdentityKtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/add_1:z:0=^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/NoOp*
T0*
_output_shapes

:в
<topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/NoOpNoOpY^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpX^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpZ^topk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "Ї
@topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identityItopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity:output:0"Љ
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_1Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_1:output:0"Љ
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_2Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_2:output:0"Љ
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_3Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_3:output:0"Љ
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_4Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_4:output:0"Љ
Btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_identity_5Ktopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/Identity_5:output:0"╚
atopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resourcectopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_biasadd_readvariableop_resource_0"╩
btopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resourcedtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_1_readvariableop_resource_0"к
`topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_readvariableop_resourcebtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_lstm_cell_matmul_readvariableop_resource_0"Ы
хtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_backward_lstm_91_tensorarrayunstack_tensorlistfromtensorиtopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_91_backward_lstm_91_tensorarrayunstack_tensorlistfromtensor_0"Э
ytopk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_strided_slice_1{topk_bilstm_moe_bidirectional_91_backward_lstm_91_while_topk_bilstm_moe_bidirectional_91_backward_lstm_91_strided_slice_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2┤
Xtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOpXtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/BiasAdd/ReadVariableOp2▓
Wtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOpWtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul/ReadVariableOp2Х
Ytopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOpYtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/lstm_cell/MatMul_1/ReadVariableOp:| x

_output_shapes
: 
^
_user_specified_nameFDtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/loop_counter:ѓ~

_output_shapes
: 
d
_user_specified_nameLJtopk_bilstm_moe/bidirectional_91/backward_lstm_91/while/maximum_iterations:
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
_user_specified_nameCAtopk_bilstm_moe/bidirectional_91/backward_lstm_91/strided_slice_1:њЇ

_output_shapes
: 
s
_user_specified_name[Ytopk_bilstm_moe/bidirectional_91/backward_lstm_91/TensorArrayUnstack/TensorListFromTensor:($
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
Ф
ѓ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662899

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
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
▀8
▒
while_body_25662329
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
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

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
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
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
:         :-)
'
_output_shapes
:         :GC
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
д
■
G__inference_dense_558_layer_call_and_return_conditional_losses_25658932

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђѓ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђd
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
Ь
s
G__inference_lambda_95_layer_call_and_return_conditional_losses_25660026
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
д
г
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_cond_25656950~
ztopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_loop_counterЁ
ђtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_maximum_iterationsF
Btopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholderH
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_1H
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_2H
Dtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder_3ђ
|topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_less_topk_bilstm_moe_bidirectional_91_forward_lstm_91_strided_slice_1Ў
ћtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_cond_25656950___redundant_placeholder0Ў
ћtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_cond_25656950___redundant_placeholder1Ў
ћtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_cond_25656950___redundant_placeholder2Ў
ћtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_cond_25656950___redundant_placeholder3C
?topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identity
д
;topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/LessLessBtopk_bilstm_moe_bidirectional_91_forward_lstm_91_while_placeholder|topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_less_topk_bilstm_moe_bidirectional_91_forward_lstm_91_strided_slice_1*
T0*
_output_shapes
: Г
?topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/IdentityIdentity?topk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Less:z:0*
T0
*
_output_shapes
: "І
?topk_bilstm_moe_bidirectional_91_forward_lstm_91_while_identityHtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::{ w

_output_shapes
: 
]
_user_specified_nameECtopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/loop_counter:Ђ}

_output_shapes
: 
c
_user_specified_nameKItopk_bilstm_moe/bidirectional_91/forward_lstm_91/while/maximum_iterations:
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
_user_specified_nameB@topk_bilstm_moe/bidirectional_91/forward_lstm_91/strided_slice_1:

_output_shapes
:"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ъ
serving_defaultі
6
input_2+
serving_default_input_2:04
	dense_575'
StatefulPartitionedCall:0tensorflow/serving/predict: ┬
Ь
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
╗
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
Ц
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
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
Л
1layer_with_weights-0
1layer-0
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_sequential
Л
8layer_with_weights-0
8layer-0
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_sequential
Л
?layer_with_weights-0
?layer-0
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_sequential
Л
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
Ц
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
╠
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zforward_layer
[backward_layer"
_tf_keras_layer
╝
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b_random_generator"
_tf_keras_layer
Ц
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias"
_tf_keras_layer
д
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
д
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
╬
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
█
ёtrace_0
Ёtrace_12а
2__inference_topk_bilstm_moe_layer_call_fn_25659744
2__inference_topk_bilstm_moe_layer_call_fn_25659785х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zёtrace_0zЁtrace_1
Љ
єtrace_0
Єtrace_12о
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659328
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659703х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zєtrace_0zЄtrace_1
╬B╦
#__inference__wrapped_model_25657189input_2"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
-
ѕserving_default"
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
▓
Ѕnon_trainable_variables
іlayers
Іmetrics
 їlayer_regularization_losses
Їlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
У
јtrace_02╔
,__inference_dense_558_layer_call_fn_25659939ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zјtrace_0
Ѓ
Јtrace_02С
G__inference_dense_558_layer_call_and_return_conditional_losses_25659954ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЈtrace_0
": 2dense_558/kernel
:2dense_558/bias
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
▓
љnon_trainable_variables
Љlayers
њmetrics
 Њlayer_regularization_losses
ћlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
¤
Ћtrace_0
ќtrace_12ћ
,__inference_lambda_93_layer_call_fn_25659960
,__inference_lambda_93_layer_call_fn_25659966х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЋtrace_0zќtrace_1
Ё
Ќtrace_0
ўtrace_12╩
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659972
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659978х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЌtrace_0zўtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ўnon_trainable_variables
џlayers
Џmetrics
 юlayer_regularization_losses
Юlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
¤
ъtrace_0
Ъtrace_12ћ
,__inference_lambda_94_layer_call_fn_25659984
,__inference_lambda_94_layer_call_fn_25659990х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zъtrace_0zЪtrace_1
Ё
аtrace_0
Аtrace_12╩
G__inference_lambda_94_layer_call_and_return_conditional_losses_25659996
G__inference_lambda_94_layer_call_and_return_conditional_losses_25660002х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zаtrace_0zАtrace_1
"
_generic_user_object
┴
б	variables
Бtrainable_variables
цregularization_losses
Ц	keras_api
д__call__
+Д&call_and_return_all_conditional_losses

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
▓
еnon_trainable_variables
Еlayers
фmetrics
 Фlayer_regularization_losses
гlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
┘
Гtrace_0
«trace_12ъ
1__inference_sequential_376_layer_call_fn_25657254
1__inference_sequential_376_layer_call_fn_25657263х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zГtrace_0z«trace_1
Ј
»trace_0
░trace_12н
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657236
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657245х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z»trace_0z░trace_1
┴
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
х__call__
+Х&call_and_return_all_conditional_losses

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
▓
иnon_trainable_variables
Иlayers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
┘
╝trace_0
йtrace_12ъ
1__inference_sequential_381_layer_call_fn_25657337
1__inference_sequential_381_layer_call_fn_25657346х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╝trace_0zйtrace_1
Ј
Йtrace_0
┐trace_12н
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657319
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657328х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЙtrace_0z┐trace_1
┴
└	variables
┴trainable_variables
┬regularization_losses
├	keras_api
─__call__
+┼&call_and_return_all_conditional_losses

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
▓
кnon_trainable_variables
Кlayers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
┘
╦trace_0
╠trace_12ъ
1__inference_sequential_386_layer_call_fn_25657420
1__inference_sequential_386_layer_call_fn_25657429х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╦trace_0z╠trace_1
Ј
═trace_0
╬trace_12н
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657402
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657411х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z═trace_0z╬trace_1
┴
¤	variables
лtrainable_variables
Лregularization_losses
м	keras_api
М__call__
+н&call_and_return_all_conditional_losses

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
▓
Нnon_trainable_variables
оlayers
Оmetrics
 пlayer_regularization_losses
┘layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
┘
┌trace_0
█trace_12ъ
1__inference_sequential_391_layer_call_fn_25657503
1__inference_sequential_391_layer_call_fn_25657512х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┌trace_0z█trace_1
Ј
▄trace_0
Пtrace_12н
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657485
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657494х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▄trace_0zПtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
яnon_trainable_variables
▀layers
Яmetrics
 рlayer_regularization_losses
Рlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
¤
сtrace_0
Сtrace_12ћ
,__inference_lambda_95_layer_call_fn_25660008
,__inference_lambda_95_layer_call_fn_25660014х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zсtrace_0zСtrace_1
Ё
тtrace_0
Тtrace_12╩
G__inference_lambda_95_layer_call_and_return_conditional_losses_25660020
G__inference_lambda_95_layer_call_and_return_conditional_losses_25660026х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zтtrace_0zТtrace_1
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
▓
уnon_trainable_variables
Уlayers
жmetrics
 Жlayer_regularization_losses
вlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
Ц
Вtrace_0
ьtrace_1
Ьtrace_2
№trace_32▓
3__inference_bidirectional_91_layer_call_fn_25660043
3__inference_bidirectional_91_layer_call_fn_25660060
3__inference_bidirectional_91_layer_call_fn_25660077
3__inference_bidirectional_91_layer_call_fn_25660094█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zВtrace_0zьtrace_1zЬtrace_2z№trace_3
Љ
­trace_0
ыtrace_1
Ыtrace_2
зtrace_32ъ
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660382
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660670
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660958
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25661246█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z­trace_0zыtrace_1zЫtrace_2zзtrace_3
с
З	variables
шtrainable_variables
Шregularization_losses
э	keras_api
Э__call__
+щ&call_and_return_all_conditional_losses
Щ_random_generator
	чcell
Ч
state_spec"
_tf_keras_rnn_layer
с
§	variables
■trainable_variables
 regularization_losses
ђ	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
Ѓ_random_generator
	ёcell
Ё
state_spec"
_tf_keras_rnn_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
єnon_trainable_variables
Єlayers
ѕmetrics
 Ѕlayer_regularization_losses
іlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
┼
Іtrace_0
їtrace_12і
-__inference_dropout_91_layer_call_fn_25661251
-__inference_dropout_91_layer_call_fn_25661256Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zІtrace_0zїtrace_1
ч
Їtrace_0
јtrace_12└
H__inference_dropout_91_layer_call_and_return_conditional_losses_25661268
H__inference_dropout_91_layer_call_and_return_conditional_losses_25661273Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЇtrace_0zјtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ж
ћtrace_02╩
-__inference_flatten_91_layer_call_fn_25661278ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zћtrace_0
ё
Ћtrace_02т
H__inference_flatten_91_layer_call_and_return_conditional_losses_25661284ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЋtrace_0
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
▓
ќnon_trainable_variables
Ќlayers
ўmetrics
 Ўlayer_regularization_losses
џlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
У
Џtrace_02╔
,__inference_dense_575_layer_call_fn_25661293ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЏtrace_0
Ѓ
юtrace_02С
G__inference_dense_575_layer_call_and_return_conditional_losses_25661303ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zюtrace_0
#:!	ђ2dense_575/kernel
:2dense_575/bias
": 2dense_559/kernel
:2dense_559/bias
": 2dense_564/kernel
:2dense_564/bias
": 2dense_569/kernel
:2dense_569/bias
": 2dense_574/kernel
:2dense_574/bias
C:A 21bidirectional_91/forward_lstm_91/lstm_cell/kernel
M:K 2;bidirectional_91/forward_lstm_91/lstm_cell/recurrent_kernel
=:; 2/bidirectional_91/forward_lstm_91/lstm_cell/bias
D:B 22bidirectional_91/backward_lstm_91/lstm_cell/kernel
N:L 2<bidirectional_91/backward_lstm_91/lstm_cell/recurrent_kernel
>:< 20bidirectional_91/backward_lstm_91/lstm_cell/bias
 "
trackable_list_wrapper
ъ
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
ЩBэ
2__inference_topk_bilstm_moe_layer_call_fn_25659744input_2"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
2__inference_topk_bilstm_moe_layer_call_fn_25659785input_2"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЋBњ
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659328input_2"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЋBњ
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659703input_2"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
═B╩
&__inference_signature_wrapper_25659930input_2"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_dense_558_layer_call_fn_25659939inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_558_layer_call_and_return_conditional_losses_25659954inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
 BЧ
,__inference_lambda_93_layer_call_fn_25659960inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
,__inference_lambda_93_layer_call_fn_25659966inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659972inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659978inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
 BЧ
,__inference_lambda_94_layer_call_fn_25659984inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
,__inference_lambda_94_layer_call_fn_25659990inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_94_layer_call_and_return_conditional_losses_25659996inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_94_layer_call_and_return_conditional_losses_25660002inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
И
Юnon_trainable_variables
ъlayers
Ъmetrics
 аlayer_regularization_losses
Аlayer_metrics
б	variables
Бtrainable_variables
цregularization_losses
д__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
У
бtrace_02╔
,__inference_dense_559_layer_call_fn_25661312ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zбtrace_0
Ѓ
Бtrace_02С
G__inference_dense_559_layer_call_and_return_conditional_losses_25661343ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zБtrace_0
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
ЂB■
1__inference_sequential_376_layer_call_fn_25657254dense_559_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
1__inference_sequential_376_layer_call_fn_25657263dense_559_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657236dense_559_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657245dense_559_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
И
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
х__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
У
Еtrace_02╔
,__inference_dense_564_layer_call_fn_25661352ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЕtrace_0
Ѓ
фtrace_02С
G__inference_dense_564_layer_call_and_return_conditional_losses_25661383ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zфtrace_0
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
ЂB■
1__inference_sequential_381_layer_call_fn_25657337dense_564_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
1__inference_sequential_381_layer_call_fn_25657346dense_564_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657319dense_564_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657328dense_564_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
И
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
└	variables
┴trainable_variables
┬regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
_generic_user_object
У
░trace_02╔
,__inference_dense_569_layer_call_fn_25661392ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z░trace_0
Ѓ
▒trace_02С
G__inference_dense_569_layer_call_and_return_conditional_losses_25661423ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▒trace_0
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
ЂB■
1__inference_sequential_386_layer_call_fn_25657420dense_569_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
1__inference_sequential_386_layer_call_fn_25657429dense_569_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657402dense_569_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657411dense_569_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
И
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
¤	variables
лtrainable_variables
Лregularization_losses
М__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
У
иtrace_02╔
,__inference_dense_574_layer_call_fn_25661432ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zиtrace_0
Ѓ
Иtrace_02С
G__inference_dense_574_layer_call_and_return_conditional_losses_25661463ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zИtrace_0
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
ЂB■
1__inference_sequential_391_layer_call_fn_25657503dense_574_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
1__inference_sequential_391_layer_call_fn_25657512dense_574_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657485dense_574_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657494dense_574_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
 BЧ
,__inference_lambda_95_layer_call_fn_25660008inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
,__inference_lambda_95_layer_call_fn_25660014inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_95_layer_call_and_return_conditional_losses_25660020inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_95_layer_call_and_return_conditional_losses_25660026inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
бBЪ
3__inference_bidirectional_91_layer_call_fn_25660043inputs_0"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
3__inference_bidirectional_91_layer_call_fn_25660060inputs_0"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
3__inference_bidirectional_91_layer_call_fn_25660077inputs"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
3__inference_bidirectional_91_layer_call_fn_25660094inputs"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
йB║
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660382inputs_0"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
йB║
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660670inputs_0"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╗BИ
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660958inputs"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╗BИ
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25661246inputs"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
┼
╣states
║non_trainable_variables
╗layers
╝metrics
 йlayer_regularization_losses
Йlayer_metrics
З	variables
шtrainable_variables
Шregularization_losses
Э__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
љ
┐trace_0
└trace_1
┴trace_2
┬trace_32Ю
2__inference_forward_lstm_91_layer_call_fn_25661474
2__inference_forward_lstm_91_layer_call_fn_25661485
2__inference_forward_lstm_91_layer_call_fn_25661496
2__inference_forward_lstm_91_layer_call_fn_25661507╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┐trace_0z└trace_1z┴trace_2z┬trace_3
Ч
├trace_0
─trace_1
┼trace_2
кtrace_32Ѕ
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661650
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661793
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661936
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25662079╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z├trace_0z─trace_1z┼trace_2zкtrace_3
"
_generic_user_object
ђ
К	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses
═_random_generator
╬
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
┼
¤states
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
§	variables
■trainable_variables
 regularization_losses
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
ћ
Нtrace_0
оtrace_1
Оtrace_2
пtrace_32А
3__inference_backward_lstm_91_layer_call_fn_25662090
3__inference_backward_lstm_91_layer_call_fn_25662101
3__inference_backward_lstm_91_layer_call_fn_25662112
3__inference_backward_lstm_91_layer_call_fn_25662123╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zНtrace_0zоtrace_1zОtrace_2zпtrace_3
ђ
┘trace_0
┌trace_1
█trace_2
▄trace_32Ї
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662268
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662413
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662558
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662703╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┘trace_0z┌trace_1z█trace_2z▄trace_3
"
_generic_user_object
ђ
П	variables
яtrainable_variables
▀regularization_losses
Я	keras_api
р__call__
+Р&call_and_return_all_conditional_losses
с_random_generator
С
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
УBт
-__inference_dropout_91_layer_call_fn_25661251inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
УBт
-__inference_dropout_91_layer_call_fn_25661256inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
H__inference_dropout_91_layer_call_and_return_conditional_losses_25661268inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
H__inference_dropout_91_layer_call_and_return_conditional_losses_25661273inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ОBн
-__inference_flatten_91_layer_call_fn_25661278inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
H__inference_flatten_91_layer_call_and_return_conditional_losses_25661284inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_dense_575_layer_call_fn_25661293inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_575_layer_call_and_return_conditional_losses_25661303inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_dense_559_layer_call_fn_25661312inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_559_layer_call_and_return_conditional_losses_25661343inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_dense_564_layer_call_fn_25661352inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_564_layer_call_and_return_conditional_losses_25661383inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_dense_569_layer_call_fn_25661392inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_569_layer_call_and_return_conditional_losses_25661423inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_dense_574_layer_call_fn_25661432inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_574_layer_call_and_return_conditional_losses_25661463inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
ч0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
љBЇ
2__inference_forward_lstm_91_layer_call_fn_25661474inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љBЇ
2__inference_forward_lstm_91_layer_call_fn_25661485inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
јBІ
2__inference_forward_lstm_91_layer_call_fn_25661496inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
јBІ
2__inference_forward_lstm_91_layer_call_fn_25661507inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ФBе
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661650inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ФBе
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661793inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЕBд
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661936inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЕBд
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25662079inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
И
тnon_trainable_variables
Тlayers
уmetrics
 Уlayer_regularization_losses
жlayer_metrics
К	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
═
Жtrace_0
вtrace_12њ
,__inference_lstm_cell_layer_call_fn_25662720
,__inference_lstm_cell_layer_call_fn_25662737│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЖtrace_0zвtrace_1
Ѓ
Вtrace_0
ьtrace_12╚
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662769
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662801│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zВtrace_0zьtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
ё0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЉBј
3__inference_backward_lstm_91_layer_call_fn_25662090inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
3__inference_backward_lstm_91_layer_call_fn_25662101inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
3__inference_backward_lstm_91_layer_call_fn_25662112inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
3__inference_backward_lstm_91_layer_call_fn_25662123inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
гBЕ
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662268inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
гBЕ
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662413inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
фBД
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662558inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
фBД
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662703inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
И
Ьnon_trainable_variables
№layers
­metrics
 ыlayer_regularization_losses
Ыlayer_metrics
П	variables
яtrainable_variables
▀regularization_losses
р__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
═
зtrace_0
Зtrace_12њ
,__inference_lstm_cell_layer_call_fn_25662818
,__inference_lstm_cell_layer_call_fn_25662835│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zзtrace_0zЗtrace_1
Ѓ
шtrace_0
Шtrace_12╚
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662867
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662899│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zшtrace_0zШtrace_1
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
ЁBѓ
,__inference_lstm_cell_layer_call_fn_25662720inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
,__inference_lstm_cell_layer_call_fn_25662737inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662769inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662801inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ЁBѓ
,__inference_lstm_cell_layer_call_fn_25662818inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
,__inference_lstm_cell_layer_call_fn_25662835inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662867inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662899inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ќ
#__inference__wrapped_model_25657189o !qrstuvwxyz{|}~op+б(
!б
і
input_2
ф ",ф)
'
	dense_575і
	dense_575С
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662268Љ|}~OбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф "9б6
/і,
tensor_0                  
џ С
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662413Љ|}~OбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф "9б6
/і,
tensor_0                  
џ Т
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662558Њ|}~QбN
GбD
6і3
inputs'                           

 
p

 
ф "9б6
/і,
tensor_0                  
џ Т
N__inference_backward_lstm_91_layer_call_and_return_conditional_losses_25662703Њ|}~QбN
GбD
6і3
inputs'                           

 
p 

 
ф "9б6
/і,
tensor_0                  
џ Й
3__inference_backward_lstm_91_layer_call_fn_25662090є|}~OбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф ".і+
unknown                  Й
3__inference_backward_lstm_91_layer_call_fn_25662101є|}~OбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф ".і+
unknown                  └
3__inference_backward_lstm_91_layer_call_fn_25662112ѕ|}~QбN
GбD
6і3
inputs'                           

 
p

 
ф ".і+
unknown                  └
3__inference_backward_lstm_91_layer_call_fn_25662123ѕ|}~QбN
GбD
6і3
inputs'                           

 
p 

 
ф ".і+
unknown                  З
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660382Аyz{|}~\бY
RбO
=џ:
8і5
inputs_0'                           
p

 

 

 
ф "9б6
/і,
tensor_0                  
џ З
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660670Аyz{|}~\бY
RбO
=џ:
8і5
inputs_0'                           
p 

 

 

 
ф "9б6
/і,
tensor_0                  
џ ┐
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25660958myz{|}~:б7
0б-
і
inputs
p

 

 

 
ф "'б$
і
tensor_0
џ ┐
N__inference_bidirectional_91_layer_call_and_return_conditional_losses_25661246myz{|}~:б7
0б-
і
inputs
p 

 

 

 
ф "'б$
і
tensor_0
џ ╬
3__inference_bidirectional_91_layer_call_fn_25660043ќyz{|}~\бY
RбO
=џ:
8і5
inputs_0'                           
p

 

 

 
ф ".і+
unknown                  ╬
3__inference_bidirectional_91_layer_call_fn_25660060ќyz{|}~\бY
RбO
=џ:
8і5
inputs_0'                           
p 

 

 

 
ф ".і+
unknown                  Ў
3__inference_bidirectional_91_layer_call_fn_25660077byz{|}~:б7
0б-
і
inputs
p

 

 

 
ф "і
unknownЎ
3__inference_bidirectional_91_layer_call_fn_25660094byz{|}~:б7
0б-
і
inputs
p 

 

 

 
ф "і
unknownц
G__inference_dense_558_layer_call_and_return_conditional_losses_25659954Y !*б'
 б
і
inputs
ф "'б$
і
tensor_0
џ ~
,__inference_dense_558_layer_call_fn_25659939N !*б'
 б
і
inputs
ф "і
unknownХ
G__inference_dense_559_layer_call_and_return_conditional_losses_25661343kqr3б0
)б&
$і!
inputs         
ф "0б-
&і#
tensor_0         
џ љ
,__inference_dense_559_layer_call_fn_25661312`qr3б0
)б&
$і!
inputs         
ф "%і"
unknown         Х
G__inference_dense_564_layer_call_and_return_conditional_losses_25661383kst3б0
)б&
$і!
inputs         
ф "0б-
&і#
tensor_0         
џ љ
,__inference_dense_564_layer_call_fn_25661352`st3б0
)б&
$і!
inputs         
ф "%і"
unknown         Х
G__inference_dense_569_layer_call_and_return_conditional_losses_25661423kuv3б0
)б&
$і!
inputs         
ф "0б-
&і#
tensor_0         
џ љ
,__inference_dense_569_layer_call_fn_25661392`uv3б0
)б&
$і!
inputs         
ф "%і"
unknown         Х
G__inference_dense_574_layer_call_and_return_conditional_losses_25661463kwx3б0
)б&
$і!
inputs         
ф "0б-
&і#
tensor_0         
џ љ
,__inference_dense_574_layer_call_fn_25661432`wx3б0
)б&
$і!
inputs         
ф "%і"
unknown         Ю
G__inference_dense_575_layer_call_and_return_conditional_losses_25661303Rop'б$
б
і
inputs	ђ
ф "#б 
і
tensor_0
џ w
,__inference_dense_575_layer_call_fn_25661293Gop'б$
б
і
inputs	ђ
ф "і
unknownЦ
H__inference_dropout_91_layer_call_and_return_conditional_losses_25661268Y.б+
$б!
і
inputs
p
ф "'б$
і
tensor_0
џ Ц
H__inference_dropout_91_layer_call_and_return_conditional_losses_25661273Y.б+
$б!
і
inputs
p 
ф "'б$
і
tensor_0
џ 
-__inference_dropout_91_layer_call_fn_25661251N.б+
$б!
і
inputs
p
ф "і
unknown
-__inference_dropout_91_layer_call_fn_25661256N.б+
$б!
і
inputs
p 
ф "і
unknownъ
H__inference_flatten_91_layer_call_and_return_conditional_losses_25661284R*б'
 б
і
inputs
ф "$б!
і
tensor_0	ђ
џ x
-__inference_flatten_91_layer_call_fn_25661278G*б'
 б
і
inputs
ф "і
unknown	ђс
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661650Љyz{OбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф "9б6
/і,
tensor_0                  
џ с
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661793Љyz{OбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф "9б6
/і,
tensor_0                  
џ т
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25661936Њyz{QбN
GбD
6і3
inputs'                           

 
p

 
ф "9б6
/і,
tensor_0                  
џ т
M__inference_forward_lstm_91_layer_call_and_return_conditional_losses_25662079Њyz{QбN
GбD
6і3
inputs'                           

 
p 

 
ф "9б6
/і,
tensor_0                  
џ й
2__inference_forward_lstm_91_layer_call_fn_25661474єyz{OбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф ".і+
unknown                  й
2__inference_forward_lstm_91_layer_call_fn_25661485єyz{OбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф ".і+
unknown                  ┐
2__inference_forward_lstm_91_layer_call_fn_25661496ѕyz{QбN
GбD
6і3
inputs'                           

 
p

 
ф ".і+
unknown                  ┐
2__inference_forward_lstm_91_layer_call_fn_25661507ѕyz{QбN
GбD
6і3
inputs'                           

 
p 

 
ф ".і+
unknown                  М
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659972Є\бY
RбO
EџB
і
inputs_0
!і
inputs_1

 
p
ф "'б$
і
tensor_0
џ М
G__inference_lambda_93_layer_call_and_return_conditional_losses_25659978Є\бY
RбO
EџB
і
inputs_0
!і
inputs_1

 
p 
ф "'б$
і
tensor_0
џ г
,__inference_lambda_93_layer_call_fn_25659960|\бY
RбO
EџB
і
inputs_0
!і
inputs_1

 
p
ф "і
unknownг
,__inference_lambda_93_layer_call_fn_25659966|\бY
RбO
EџB
і
inputs_0
!і
inputs_1

 
p 
ф "і
unknownМ
G__inference_lambda_94_layer_call_and_return_conditional_losses_25659996ЄXбU
NбK
Aџ>
і
inputs_0
і
inputs_1

 
p
ф "+б(
!і
tensor_0
џ М
G__inference_lambda_94_layer_call_and_return_conditional_losses_25660002ЄXбU
NбK
Aџ>
і
inputs_0
і
inputs_1

 
p 
ф "+б(
!і
tensor_0
џ г
,__inference_lambda_94_layer_call_fn_25659984|XбU
NбK
Aџ>
і
inputs_0
і
inputs_1

 
p
ф " і
unknownг
,__inference_lambda_94_layer_call_fn_25659990|XбU
NбK
Aџ>
і
inputs_0
і
inputs_1

 
p 
ф " і
unknownМ
G__inference_lambda_95_layer_call_and_return_conditional_losses_25660020Є\бY
RбO
EџB
!і
inputs_0
і
inputs_1

 
p
ф "'б$
і
tensor_0
џ М
G__inference_lambda_95_layer_call_and_return_conditional_losses_25660026Є\бY
RбO
EџB
!і
inputs_0
і
inputs_1

 
p 
ф "'б$
і
tensor_0
џ г
,__inference_lambda_95_layer_call_fn_25660008|\бY
RбO
EџB
!і
inputs_0
і
inputs_1

 
p
ф "і
unknownг
,__inference_lambda_95_layer_call_fn_25660014|\бY
RбO
EџB
!і
inputs_0
і
inputs_1

 
p 
ф "і
unknownЯ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662769ћyz{ђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p
ф "ЅбЁ
~б{
$і!

tensor_0_0         
SџP
&і#
tensor_0_1_0         
&і#
tensor_0_1_1         
џ Я
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662801ћyz{ђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p 
ф "ЅбЁ
~б{
$і!

tensor_0_0         
SџP
&і#
tensor_0_1_0         
&і#
tensor_0_1_1         
џ Я
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662867ћ|}~ђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p
ф "ЅбЁ
~б{
$і!

tensor_0_0         
SџP
&і#
tensor_0_1_0         
&і#
tensor_0_1_1         
џ Я
G__inference_lstm_cell_layer_call_and_return_conditional_losses_25662899ћ|}~ђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p 
ф "ЅбЁ
~б{
$і!

tensor_0_0         
SџP
&і#
tensor_0_1_0         
&і#
tensor_0_1_1         
џ │
,__inference_lstm_cell_layer_call_fn_25662720ѓyz{ђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p
ф "xбu
"і
tensor_0         
OџL
$і!

tensor_1_0         
$і!

tensor_1_1         │
,__inference_lstm_cell_layer_call_fn_25662737ѓyz{ђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p 
ф "xбu
"і
tensor_0         
OџL
$і!

tensor_1_0         
$і!

tensor_1_1         │
,__inference_lstm_cell_layer_call_fn_25662818ѓ|}~ђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p
ф "xбu
"і
tensor_0         
OџL
$і!

tensor_1_0         
$і!

tensor_1_1         │
,__inference_lstm_cell_layer_call_fn_25662835ѓ|}~ђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p 
ф "xбu
"і
tensor_0         
OџL
$і!

tensor_1_0         
$і!

tensor_1_1         ╠
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657236|qrDбA
:б7
-і*
dense_559_input         
p

 
ф "0б-
&і#
tensor_0         
џ ╠
L__inference_sequential_376_layer_call_and_return_conditional_losses_25657245|qrDбA
:б7
-і*
dense_559_input         
p 

 
ф "0б-
&і#
tensor_0         
џ д
1__inference_sequential_376_layer_call_fn_25657254qqrDбA
:б7
-і*
dense_559_input         
p

 
ф "%і"
unknown         д
1__inference_sequential_376_layer_call_fn_25657263qqrDбA
:б7
-і*
dense_559_input         
p 

 
ф "%і"
unknown         ╠
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657319|stDбA
:б7
-і*
dense_564_input         
p

 
ф "0б-
&і#
tensor_0         
џ ╠
L__inference_sequential_381_layer_call_and_return_conditional_losses_25657328|stDбA
:б7
-і*
dense_564_input         
p 

 
ф "0б-
&і#
tensor_0         
џ д
1__inference_sequential_381_layer_call_fn_25657337qstDбA
:б7
-і*
dense_564_input         
p

 
ф "%і"
unknown         д
1__inference_sequential_381_layer_call_fn_25657346qstDбA
:б7
-і*
dense_564_input         
p 

 
ф "%і"
unknown         ╠
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657402|uvDбA
:б7
-і*
dense_569_input         
p

 
ф "0б-
&і#
tensor_0         
џ ╠
L__inference_sequential_386_layer_call_and_return_conditional_losses_25657411|uvDбA
:б7
-і*
dense_569_input         
p 

 
ф "0б-
&і#
tensor_0         
џ д
1__inference_sequential_386_layer_call_fn_25657420quvDбA
:б7
-і*
dense_569_input         
p

 
ф "%і"
unknown         д
1__inference_sequential_386_layer_call_fn_25657429quvDбA
:б7
-і*
dense_569_input         
p 

 
ф "%і"
unknown         ╠
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657485|wxDбA
:б7
-і*
dense_574_input         
p

 
ф "0б-
&і#
tensor_0         
џ ╠
L__inference_sequential_391_layer_call_and_return_conditional_losses_25657494|wxDбA
:б7
-і*
dense_574_input         
p 

 
ф "0б-
&і#
tensor_0         
џ д
1__inference_sequential_391_layer_call_fn_25657503qwxDбA
:б7
-і*
dense_574_input         
p

 
ф "%і"
unknown         д
1__inference_sequential_391_layer_call_fn_25657512qwxDбA
:б7
-і*
dense_574_input         
p 

 
ф "%і"
unknown         ц
&__inference_signature_wrapper_25659930z !qrstuvwxyz{|}~op6б3
б 
,ф)
'
input_2і
input_2",ф)
'
	dense_575і
	dense_575┐
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659328n !qrstuvwxyz{|}~op3б0
)б&
і
input_2
p

 
ф "#б 
і
tensor_0
џ ┐
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_25659703n !qrstuvwxyz{|}~op3б0
)б&
і
input_2
p 

 
ф "#б 
і
tensor_0
џ Ў
2__inference_topk_bilstm_moe_layer_call_fn_25659744c !qrstuvwxyz{|}~op3б0
)б&
і
input_2
p

 
ф "і
unknownЎ
2__inference_topk_bilstm_moe_layer_call_fn_25659785c !qrstuvwxyz{|}~op3б0
)б&
і
input_2
p 

 
ф "і
unknown