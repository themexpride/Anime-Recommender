Ð
­
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-0-gc256c071bb28à
°
)recommender_net_5/embedding_20/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
á*:
shared_name+)recommender_net_5/embedding_20/embeddings
©
=recommender_net_5/embedding_20/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_5/embedding_20/embeddings* 
_output_shapes
:
á*
dtype0
°
)recommender_net_5/embedding_21/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
á*:
shared_name+)recommender_net_5/embedding_21/embeddings
©
=recommender_net_5/embedding_21/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_5/embedding_21/embeddings* 
_output_shapes
:
á*
dtype0
¯
)recommender_net_5/embedding_22/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÉM*:
shared_name+)recommender_net_5/embedding_22/embeddings
¨
=recommender_net_5/embedding_22/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_5/embedding_22/embeddings*
_output_shapes
:	ÉM*
dtype0
¯
)recommender_net_5/embedding_23/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÉM*:
shared_name+)recommender_net_5/embedding_23/embeddings
¨
=recommender_net_5/embedding_23/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_5/embedding_23/embeddings*
_output_shapes
:	ÉM*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
¾
0Adam/recommender_net_5/embedding_20/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
á*A
shared_name20Adam/recommender_net_5/embedding_20/embeddings/m
·
DAdam/recommender_net_5/embedding_20/embeddings/m/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_5/embedding_20/embeddings/m* 
_output_shapes
:
á*
dtype0
¾
0Adam/recommender_net_5/embedding_21/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
á*A
shared_name20Adam/recommender_net_5/embedding_21/embeddings/m
·
DAdam/recommender_net_5/embedding_21/embeddings/m/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_5/embedding_21/embeddings/m* 
_output_shapes
:
á*
dtype0
½
0Adam/recommender_net_5/embedding_22/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÉM*A
shared_name20Adam/recommender_net_5/embedding_22/embeddings/m
¶
DAdam/recommender_net_5/embedding_22/embeddings/m/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_5/embedding_22/embeddings/m*
_output_shapes
:	ÉM*
dtype0
½
0Adam/recommender_net_5/embedding_23/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÉM*A
shared_name20Adam/recommender_net_5/embedding_23/embeddings/m
¶
DAdam/recommender_net_5/embedding_23/embeddings/m/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_5/embedding_23/embeddings/m*
_output_shapes
:	ÉM*
dtype0
¾
0Adam/recommender_net_5/embedding_20/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
á*A
shared_name20Adam/recommender_net_5/embedding_20/embeddings/v
·
DAdam/recommender_net_5/embedding_20/embeddings/v/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_5/embedding_20/embeddings/v* 
_output_shapes
:
á*
dtype0
¾
0Adam/recommender_net_5/embedding_21/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
á*A
shared_name20Adam/recommender_net_5/embedding_21/embeddings/v
·
DAdam/recommender_net_5/embedding_21/embeddings/v/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_5/embedding_21/embeddings/v* 
_output_shapes
:
á*
dtype0
½
0Adam/recommender_net_5/embedding_22/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÉM*A
shared_name20Adam/recommender_net_5/embedding_22/embeddings/v
¶
DAdam/recommender_net_5/embedding_22/embeddings/v/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_5/embedding_22/embeddings/v*
_output_shapes
:	ÉM*
dtype0
½
0Adam/recommender_net_5/embedding_23/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÉM*A
shared_name20Adam/recommender_net_5/embedding_23/embeddings/v
¶
DAdam/recommender_net_5/embedding_23/embeddings/v/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_5/embedding_23/embeddings/v*
_output_shapes
:	ÉM*
dtype0

NoOpNoOp
®#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*é"
valueß"BÜ" BÕ"
¹
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api

iter

 beta_1

!beta_2
	"decay
#learning_ratemHmImJmKvLvMvNvO

0
1
2
3

0
1
2
3
 
­
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
 
sq
VARIABLE_VALUE)recommender_net_5/embedding_20/embeddings4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
nl
VARIABLE_VALUE)recommender_net_5/embedding_21/embeddings/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
tr
VARIABLE_VALUE)recommender_net_5/embedding_22/embeddings5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
om
VARIABLE_VALUE)recommender_net_5/embedding_23/embeddings0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

=0
>1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	?total
	@count
A	variables
B	keras_api
D
	Ctotal
	Dcount
E
_fn_kwargs
F	variables
G	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

A	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

F	variables

VARIABLE_VALUE0Adam/recommender_net_5/embedding_20/embeddings/mPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_5/embedding_21/embeddings/mKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_5/embedding_22/embeddings/mQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_5/embedding_23/embeddings/mLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_5/embedding_20/embeddings/vPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_5/embedding_21/embeddings/vKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_5/embedding_22/embeddings/vQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_5/embedding_23/embeddings/vLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
ê
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1)recommender_net_5/embedding_20/embeddings)recommender_net_5/embedding_21/embeddings)recommender_net_5/embedding_22/embeddings)recommender_net_5/embedding_23/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_2804096
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ù

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename=recommender_net_5/embedding_20/embeddings/Read/ReadVariableOp=recommender_net_5/embedding_21/embeddings/Read/ReadVariableOp=recommender_net_5/embedding_22/embeddings/Read/ReadVariableOp=recommender_net_5/embedding_23/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpDAdam/recommender_net_5/embedding_20/embeddings/m/Read/ReadVariableOpDAdam/recommender_net_5/embedding_21/embeddings/m/Read/ReadVariableOpDAdam/recommender_net_5/embedding_22/embeddings/m/Read/ReadVariableOpDAdam/recommender_net_5/embedding_23/embeddings/m/Read/ReadVariableOpDAdam/recommender_net_5/embedding_20/embeddings/v/Read/ReadVariableOpDAdam/recommender_net_5/embedding_21/embeddings/v/Read/ReadVariableOpDAdam/recommender_net_5/embedding_22/embeddings/v/Read/ReadVariableOpDAdam/recommender_net_5/embedding_23/embeddings/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_2804396
Ð
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename)recommender_net_5/embedding_20/embeddings)recommender_net_5/embedding_21/embeddings)recommender_net_5/embedding_22/embeddings)recommender_net_5/embedding_23/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_10Adam/recommender_net_5/embedding_20/embeddings/m0Adam/recommender_net_5/embedding_21/embeddings/m0Adam/recommender_net_5/embedding_22/embeddings/m0Adam/recommender_net_5/embedding_23/embeddings/m0Adam/recommender_net_5/embedding_20/embeddings/v0Adam/recommender_net_5/embedding_21/embeddings/v0Adam/recommender_net_5/embedding_22/embeddings/v0Adam/recommender_net_5/embedding_23/embeddings/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_2804469áó
 

.__inference_embedding_23_layer_call_fn_2804279

inputs	
unknown:	ÉM
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_23_layer_call_and_return_conditional_losses_2803868o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

è
__inference_loss_fn_0_2804299h
Trecommender_net_5_embedding_20_embeddings_regularizer_square_readvariableop_resource:
á
identity¢Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpâ
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpTrecommender_net_5_embedding_20_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
á*
dtype0Æ
<recommender_net_5/embedding_20/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
á
;recommender_net_5/embedding_20/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_20/embeddings/Regularizer/SumSum@recommender_net_5/embedding_20/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_20/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_20/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_20/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_20/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_20/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentity=recommender_net_5/embedding_20/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpL^recommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp
Î
ö
I__inference_embedding_22_layer_call_and_return_conditional_losses_2804272

inputs	+
embedding_lookup_2804260:	ÉM
identity¢embedding_lookup¢Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp·
embedding_lookupResourceGatherembedding_lookup_2804260inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/2804260*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2804260*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2804260*
_output_shapes
:	ÉM*
dtype0Å
<recommender_net_5/embedding_22/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÉM
;recommender_net_5/embedding_22/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_22/embeddings/Regularizer/SumSum@recommender_net_5/embedding_22/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_22/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_22/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_22/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_22/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_22/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp^embedding_lookupL^recommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
ö
I__inference_embedding_22_layer_call_and_return_conditional_losses_2803851

inputs	+
embedding_lookup_2803839:	ÉM
identity¢embedding_lookup¢Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp·
embedding_lookupResourceGatherembedding_lookup_2803839inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/2803839*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2803839*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2803839*
_output_shapes
:	ÉM*
dtype0Å
<recommender_net_5/embedding_22/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÉM
;recommender_net_5/embedding_22/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_22/embeddings/Regularizer/SumSum@recommender_net_5/embedding_22/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_22/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_22/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_22/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_22/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_22/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp^embedding_lookupL^recommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

.__inference_embedding_21_layer_call_fn_2804235

inputs	
unknown:
á
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_21_layer_call_and_return_conditional_losses_2803828o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
÷
I__inference_embedding_20_layer_call_and_return_conditional_losses_2804228

inputs	,
embedding_lookup_2804216:
á
identity¢embedding_lookup¢Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp·
embedding_lookupResourceGatherembedding_lookup_2804216inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/2804216*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2804216*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2804216* 
_output_shapes
:
á*
dtype0Æ
<recommender_net_5/embedding_20/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
á
;recommender_net_5/embedding_20/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_20/embeddings/Regularizer/SumSum@recommender_net_5/embedding_20/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_20/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_20/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_20/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_20/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_20/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp^embedding_lookupL^recommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
å
3__inference_recommender_net_5_layer_call_fn_2803935
input_1	
unknown:
á
	unknown_0:
á
	unknown_1:	ÉM
	unknown_2:	ÉM
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2803924o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ë6

 __inference__traced_save_2804396
file_prefixH
Dsavev2_recommender_net_5_embedding_20_embeddings_read_readvariableopH
Dsavev2_recommender_net_5_embedding_21_embeddings_read_readvariableopH
Dsavev2_recommender_net_5_embedding_22_embeddings_read_readvariableopH
Dsavev2_recommender_net_5_embedding_23_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopO
Ksavev2_adam_recommender_net_5_embedding_20_embeddings_m_read_readvariableopO
Ksavev2_adam_recommender_net_5_embedding_21_embeddings_m_read_readvariableopO
Ksavev2_adam_recommender_net_5_embedding_22_embeddings_m_read_readvariableopO
Ksavev2_adam_recommender_net_5_embedding_23_embeddings_m_read_readvariableopO
Ksavev2_adam_recommender_net_5_embedding_20_embeddings_v_read_readvariableopO
Ksavev2_adam_recommender_net_5_embedding_21_embeddings_v_read_readvariableopO
Ksavev2_adam_recommender_net_5_embedding_22_embeddings_v_read_readvariableopO
Ksavev2_adam_recommender_net_5_embedding_23_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*À

value¶
B³
B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Dsavev2_recommender_net_5_embedding_20_embeddings_read_readvariableopDsavev2_recommender_net_5_embedding_21_embeddings_read_readvariableopDsavev2_recommender_net_5_embedding_22_embeddings_read_readvariableopDsavev2_recommender_net_5_embedding_23_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopKsavev2_adam_recommender_net_5_embedding_20_embeddings_m_read_readvariableopKsavev2_adam_recommender_net_5_embedding_21_embeddings_m_read_readvariableopKsavev2_adam_recommender_net_5_embedding_22_embeddings_m_read_readvariableopKsavev2_adam_recommender_net_5_embedding_23_embeddings_m_read_readvariableopKsavev2_adam_recommender_net_5_embedding_20_embeddings_v_read_readvariableopKsavev2_adam_recommender_net_5_embedding_21_embeddings_v_read_readvariableopKsavev2_adam_recommender_net_5_embedding_22_embeddings_v_read_readvariableopKsavev2_adam_recommender_net_5_embedding_23_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*µ
_input_shapes£
 : :
á:
á:	ÉM:	ÉM: : : : : : : : : :
á:
á:	ÉM:	ÉM:
á:
á:	ÉM:	ÉM: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
á:&"
 
_output_shapes
:
á:%!

_output_shapes
:	ÉM:%!

_output_shapes
:	ÉM:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
á:&"
 
_output_shapes
:
á:%!

_output_shapes
:	ÉM:%!

_output_shapes
:	ÉM:&"
 
_output_shapes
:
á:&"
 
_output_shapes
:
á:%!

_output_shapes
:	ÉM:%!

_output_shapes
:	ÉM:

_output_shapes
: 
Ñ
÷
I__inference_embedding_20_layer_call_and_return_conditional_losses_2803811

inputs	,
embedding_lookup_2803799:
á
identity¢embedding_lookup¢Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp·
embedding_lookupResourceGatherembedding_lookup_2803799inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/2803799*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2803799*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2803799* 
_output_shapes
:
á*
dtype0Æ
<recommender_net_5/embedding_20/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
á
;recommender_net_5/embedding_20/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_20/embeddings/Regularizer/SumSum@recommender_net_5/embedding_20/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_20/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_20/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_20/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_20/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_20/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp^embedding_lookupL^recommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
©
I__inference_embedding_21_layer_call_and_return_conditional_losses_2803828

inputs	,
embedding_lookup_2803822:
á
identity¢embedding_lookup·
embedding_lookupResourceGatherembedding_lookup_2803822inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/2803822*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2803822*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æc
Ë
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2803924

inputs	(
embedding_20_2803812:
á(
embedding_21_2803829:
á'
embedding_22_2803852:	ÉM'
embedding_23_2803869:	ÉM
identity¢$embedding_20/StatefulPartitionedCall¢$embedding_21/StatefulPartitionedCall¢$embedding_22/StatefulPartitionedCall¢$embedding_23/StatefulPartitionedCall¢Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp¢Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskþ
$embedding_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_20_2803812*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_20_layer_call_and_return_conditional_losses_2803811f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
$embedding_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_21_2803829*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_21_layer_call_and_return_conditional_losses_2803828f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
$embedding_22/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_22_2803852*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_22_layer_call_and_return_conditional_losses_2803851f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
$embedding_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_23_2803869*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_23_layer_call_and_return_conditional_losses_2803868_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB l
Tensordot/ShapeShape-embedding_20/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
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
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose-embedding_20/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB n
Tensordot/Shape_1Shape-embedding_22/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
: 
Tensordot/transpose_1	Transpose-embedding_22/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0-embedding_21/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
add_1AddV2add:z:0-embedding_23/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_20_2803812* 
_output_shapes
:
á*
dtype0Æ
<recommender_net_5/embedding_20/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
á
;recommender_net_5/embedding_20/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_20/embeddings/Regularizer/SumSum@recommender_net_5/embedding_20/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_20/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_20/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_20/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_20/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_20/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¡
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_22_2803852*
_output_shapes
:	ÉM*
dtype0Å
<recommender_net_5/embedding_22/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÉM
;recommender_net_5/embedding_22/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_22/embeddings/Regularizer/SumSum@recommender_net_5/embedding_22/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_22/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_22/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_22/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_22/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_22/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
NoOpNoOp%^embedding_20/StatefulPartitionedCall%^embedding_21/StatefulPartitionedCall%^embedding_22/StatefulPartitionedCall%^embedding_23/StatefulPartitionedCallL^recommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpL^recommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2L
$embedding_20/StatefulPartitionedCall$embedding_20/StatefulPartitionedCall2L
$embedding_21/StatefulPartitionedCall$embedding_21/StatefulPartitionedCall2L
$embedding_22/StatefulPartitionedCall$embedding_22/StatefulPartitionedCall2L
$embedding_23/StatefulPartitionedCall$embedding_23/StatefulPartitionedCall2
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp2
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

.__inference_embedding_20_layer_call_fn_2804213

inputs	
unknown:
á
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_20_layer_call_and_return_conditional_losses_2803811o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

×
%__inference_signature_wrapper_2804096
input_1	
unknown:
á
	unknown_0:
á
	unknown_1:	ÉM
	unknown_2:	ÉM
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_2803785o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
»
ä
3__inference_recommender_net_5_layer_call_fn_2804109

inputs	
unknown:
á
	unknown_0:
á
	unknown_1:	ÉM
	unknown_2:	ÉM
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2803924o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 j
ó
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2804200

inputs	9
%embedding_20_embedding_lookup_2804116:
á9
%embedding_21_embedding_lookup_2804125:
á8
%embedding_22_embedding_lookup_2804134:	ÉM8
%embedding_23_embedding_lookup_2804143:	ÉM
identity¢embedding_20/embedding_lookup¢embedding_21/embedding_lookup¢embedding_22/embedding_lookup¢embedding_23/embedding_lookup¢Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp¢Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskî
embedding_20/embedding_lookupResourceGather%embedding_20_embedding_lookup_2804116strided_slice:output:0*
Tindices0	*8
_class.
,*loc:@embedding_20/embedding_lookup/2804116*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Æ
&embedding_20/embedding_lookup/IdentityIdentity&embedding_20/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_20/embedding_lookup/2804116*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(embedding_20/embedding_lookup/Identity_1Identity/embedding_20/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
embedding_21/embedding_lookupResourceGather%embedding_21_embedding_lookup_2804125strided_slice_1:output:0*
Tindices0	*8
_class.
,*loc:@embedding_21/embedding_lookup/2804125*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Æ
&embedding_21/embedding_lookup/IdentityIdentity&embedding_21/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_21/embedding_lookup/2804125*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(embedding_21/embedding_lookup/Identity_1Identity/embedding_21/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
embedding_22/embedding_lookupResourceGather%embedding_22_embedding_lookup_2804134strided_slice_2:output:0*
Tindices0	*8
_class.
,*loc:@embedding_22/embedding_lookup/2804134*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Æ
&embedding_22/embedding_lookup/IdentityIdentity&embedding_22/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_22/embedding_lookup/2804134*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(embedding_22/embedding_lookup/Identity_1Identity/embedding_22/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
embedding_23/embedding_lookupResourceGather%embedding_23_embedding_lookup_2804143strided_slice_3:output:0*
Tindices0	*8
_class.
,*loc:@embedding_23/embedding_lookup/2804143*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Æ
&embedding_23/embedding_lookup/IdentityIdentity&embedding_23/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_23/embedding_lookup/2804143*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(embedding_23/embedding_lookup/Identity_1Identity/embedding_23/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB p
Tensordot/ShapeShape1embedding_20/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
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
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
Tensordot/transpose	Transpose1embedding_20/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB r
Tensordot/Shape_1Shape1embedding_22/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:¤
Tensordot/transpose_1	Transpose1embedding_22/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:01embedding_21/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
add_1AddV2add:z:01embedding_23/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp%embedding_20_embedding_lookup_2804116* 
_output_shapes
:
á*
dtype0Æ
<recommender_net_5/embedding_20/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
á
;recommender_net_5/embedding_20/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_20/embeddings/Regularizer/SumSum@recommender_net_5/embedding_20/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_20/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_20/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_20/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_20/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_20/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ²
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp%embedding_22_embedding_lookup_2804134*
_output_shapes
:	ÉM*
dtype0Å
<recommender_net_5/embedding_22/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÉM
;recommender_net_5/embedding_22/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_22/embeddings/Regularizer/SumSum@recommender_net_5/embedding_22/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_22/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_22/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_22/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_22/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_22/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp^embedding_20/embedding_lookup^embedding_21/embedding_lookup^embedding_22/embedding_lookup^embedding_23/embedding_lookupL^recommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpL^recommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2>
embedding_20/embedding_lookupembedding_20/embedding_lookup2>
embedding_21/embedding_lookupembedding_21/embedding_lookup2>
embedding_22/embedding_lookupembedding_22/embedding_lookup2>
embedding_23/embedding_lookupembedding_23/embedding_lookup2
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp2
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
©
I__inference_embedding_21_layer_call_and_return_conditional_losses_2804244

inputs	,
embedding_lookup_2804238:
á
identity¢embedding_lookup·
embedding_lookupResourceGatherembedding_lookup_2804238inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/2804238*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2804238*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
l
¼
"__inference__wrapped_model_2803785
input_1	K
7recommender_net_5_embedding_20_embedding_lookup_2803713:
áK
7recommender_net_5_embedding_21_embedding_lookup_2803722:
áJ
7recommender_net_5_embedding_22_embedding_lookup_2803731:	ÉMJ
7recommender_net_5_embedding_23_embedding_lookup_2803740:	ÉM
identity¢/recommender_net_5/embedding_20/embedding_lookup¢/recommender_net_5/embedding_21/embedding_lookup¢/recommender_net_5/embedding_22/embedding_lookup¢/recommender_net_5/embedding_23/embedding_lookupv
%recommender_net_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'recommender_net_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net_5/strided_sliceStridedSliceinput_1.recommender_net_5/strided_slice/stack:output:00recommender_net_5/strided_slice/stack_1:output:00recommender_net_5/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask¶
/recommender_net_5/embedding_20/embedding_lookupResourceGather7recommender_net_5_embedding_20_embedding_lookup_2803713(recommender_net_5/strided_slice:output:0*
Tindices0	*J
_class@
><loc:@recommender_net_5/embedding_20/embedding_lookup/2803713*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ü
8recommender_net_5/embedding_20/embedding_lookup/IdentityIdentity8recommender_net_5/embedding_20/embedding_lookup:output:0*
T0*J
_class@
><loc:@recommender_net_5/embedding_20/embedding_lookup/2803713*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:recommender_net_5/embedding_20/embedding_lookup/Identity_1IdentityArecommender_net_5/embedding_20/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
'recommender_net_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)recommender_net_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      É
!recommender_net_5/strided_slice_1StridedSliceinput_10recommender_net_5/strided_slice_1/stack:output:02recommender_net_5/strided_slice_1/stack_1:output:02recommender_net_5/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask¸
/recommender_net_5/embedding_21/embedding_lookupResourceGather7recommender_net_5_embedding_21_embedding_lookup_2803722*recommender_net_5/strided_slice_1:output:0*
Tindices0	*J
_class@
><loc:@recommender_net_5/embedding_21/embedding_lookup/2803722*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ü
8recommender_net_5/embedding_21/embedding_lookup/IdentityIdentity8recommender_net_5/embedding_21/embedding_lookup:output:0*
T0*J
_class@
><loc:@recommender_net_5/embedding_21/embedding_lookup/2803722*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:recommender_net_5/embedding_21/embedding_lookup/Identity_1IdentityArecommender_net_5/embedding_21/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
'recommender_net_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      É
!recommender_net_5/strided_slice_2StridedSliceinput_10recommender_net_5/strided_slice_2/stack:output:02recommender_net_5/strided_slice_2/stack_1:output:02recommender_net_5/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask¸
/recommender_net_5/embedding_22/embedding_lookupResourceGather7recommender_net_5_embedding_22_embedding_lookup_2803731*recommender_net_5/strided_slice_2:output:0*
Tindices0	*J
_class@
><loc:@recommender_net_5/embedding_22/embedding_lookup/2803731*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ü
8recommender_net_5/embedding_22/embedding_lookup/IdentityIdentity8recommender_net_5/embedding_22/embedding_lookup:output:0*
T0*J
_class@
><loc:@recommender_net_5/embedding_22/embedding_lookup/2803731*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:recommender_net_5/embedding_22/embedding_lookup/Identity_1IdentityArecommender_net_5/embedding_22/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
'recommender_net_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      É
!recommender_net_5/strided_slice_3StridedSliceinput_10recommender_net_5/strided_slice_3/stack:output:02recommender_net_5/strided_slice_3/stack_1:output:02recommender_net_5/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask¸
/recommender_net_5/embedding_23/embedding_lookupResourceGather7recommender_net_5_embedding_23_embedding_lookup_2803740*recommender_net_5/strided_slice_3:output:0*
Tindices0	*J
_class@
><loc:@recommender_net_5/embedding_23/embedding_lookup/2803740*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ü
8recommender_net_5/embedding_23/embedding_lookup/IdentityIdentity8recommender_net_5/embedding_23/embedding_lookup:output:0*
T0*J
_class@
><loc:@recommender_net_5/embedding_23/embedding_lookup/2803740*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:recommender_net_5/embedding_23/embedding_lookup/Identity_1IdentityArecommender_net_5/embedding_23/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 recommender_net_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       c
 recommender_net_5/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 
!recommender_net_5/Tensordot/ShapeShapeCrecommender_net_5/embedding_20/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:k
)recommender_net_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$recommender_net_5/Tensordot/GatherV2GatherV2*recommender_net_5/Tensordot/Shape:output:0)recommender_net_5/Tensordot/free:output:02recommender_net_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: m
+recommender_net_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&recommender_net_5/Tensordot/GatherV2_1GatherV2*recommender_net_5/Tensordot/Shape:output:0)recommender_net_5/Tensordot/axes:output:04recommender_net_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!recommender_net_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net_5/Tensordot/ProdProd-recommender_net_5/Tensordot/GatherV2:output:0*recommender_net_5/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#recommender_net_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ª
"recommender_net_5/Tensordot/Prod_1Prod/recommender_net_5/Tensordot/GatherV2_1:output:0,recommender_net_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'recommender_net_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ä
"recommender_net_5/Tensordot/concatConcatV2)recommender_net_5/Tensordot/free:output:0)recommender_net_5/Tensordot/axes:output:00recommender_net_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¯
!recommender_net_5/Tensordot/stackPack)recommender_net_5/Tensordot/Prod:output:0+recommender_net_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ö
%recommender_net_5/Tensordot/transpose	TransposeCrecommender_net_5/embedding_20/embedding_lookup/Identity_1:output:0+recommender_net_5/Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#recommender_net_5/Tensordot/ReshapeReshape)recommender_net_5/Tensordot/transpose:y:0*recommender_net_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"recommender_net_5/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       e
"recommender_net_5/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 
#recommender_net_5/Tensordot/Shape_1ShapeCrecommender_net_5/embedding_22/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:m
+recommender_net_5/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&recommender_net_5/Tensordot/GatherV2_2GatherV2,recommender_net_5/Tensordot/Shape_1:output:0+recommender_net_5/Tensordot/free_1:output:04recommender_net_5/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: m
+recommender_net_5/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&recommender_net_5/Tensordot/GatherV2_3GatherV2,recommender_net_5/Tensordot/Shape_1:output:0+recommender_net_5/Tensordot/axes_1:output:04recommender_net_5/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
#recommender_net_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: ª
"recommender_net_5/Tensordot/Prod_2Prod/recommender_net_5/Tensordot/GatherV2_2:output:0,recommender_net_5/Tensordot/Const_2:output:0*
T0*
_output_shapes
: m
#recommender_net_5/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: ª
"recommender_net_5/Tensordot/Prod_3Prod/recommender_net_5/Tensordot/GatherV2_3:output:0,recommender_net_5/Tensordot/Const_3:output:0*
T0*
_output_shapes
: k
)recommender_net_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
$recommender_net_5/Tensordot/concat_1ConcatV2+recommender_net_5/Tensordot/axes_1:output:0+recommender_net_5/Tensordot/free_1:output:02recommender_net_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:³
#recommender_net_5/Tensordot/stack_1Pack+recommender_net_5/Tensordot/Prod_3:output:0+recommender_net_5/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:Ú
'recommender_net_5/Tensordot/transpose_1	TransposeCrecommender_net_5/embedding_22/embedding_lookup/Identity_1:output:0-recommender_net_5/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
%recommender_net_5/Tensordot/Reshape_1Reshape+recommender_net_5/Tensordot/transpose_1:y:0,recommender_net_5/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÅ
"recommender_net_5/Tensordot/MatMulMatMul,recommender_net_5/Tensordot/Reshape:output:0.recommender_net_5/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿk
)recommender_net_5/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
$recommender_net_5/Tensordot/concat_2ConcatV2-recommender_net_5/Tensordot/GatherV2:output:0/recommender_net_5/Tensordot/GatherV2_2:output:02recommender_net_5/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: ¤
recommender_net_5/TensordotReshape,recommender_net_5/Tensordot/MatMul:product:0-recommender_net_5/Tensordot/concat_2:output:0*
T0*
_output_shapes
: »
recommender_net_5/addAddV2$recommender_net_5/Tensordot:output:0Crecommender_net_5/embedding_21/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
recommender_net_5/add_1AddV2recommender_net_5/add:z:0Crecommender_net_5/embedding_23/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
recommender_net_5/SigmoidSigmoidrecommender_net_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityrecommender_net_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp0^recommender_net_5/embedding_20/embedding_lookup0^recommender_net_5/embedding_21/embedding_lookup0^recommender_net_5/embedding_22/embedding_lookup0^recommender_net_5/embedding_23/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2b
/recommender_net_5/embedding_20/embedding_lookup/recommender_net_5/embedding_20/embedding_lookup2b
/recommender_net_5/embedding_21/embedding_lookup/recommender_net_5/embedding_21/embedding_lookup2b
/recommender_net_5/embedding_22/embedding_lookup/recommender_net_5/embedding_22/embedding_lookup2b
/recommender_net_5/embedding_23/embedding_lookup/recommender_net_5/embedding_23/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¸
¨
I__inference_embedding_23_layer_call_and_return_conditional_losses_2803868

inputs	+
embedding_lookup_2803862:	ÉM
identity¢embedding_lookup·
embedding_lookupResourceGatherembedding_lookup_2803862inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/2803862*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2803862*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
¨
I__inference_embedding_23_layer_call_and_return_conditional_losses_2804288

inputs	+
embedding_lookup_2804282:	ÉM
identity¢embedding_lookup·
embedding_lookupResourceGatherembedding_lookup_2804282inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/2804282*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2804282*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ç
__inference_loss_fn_1_2804310g
Trecommender_net_5_embedding_22_embeddings_regularizer_square_readvariableop_resource:	ÉM
identity¢Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpá
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpTrecommender_net_5_embedding_22_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	ÉM*
dtype0Å
<recommender_net_5/embedding_22/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÉM
;recommender_net_5/embedding_22/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_22/embeddings/Regularizer/SumSum@recommender_net_5/embedding_22/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_22/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_22/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_22/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_22/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_22/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentity=recommender_net_5/embedding_22/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpL^recommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp
 

.__inference_embedding_22_layer_call_fn_2804257

inputs	
unknown:	ÉM
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_22_layer_call_and_return_conditional_losses_2803851o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Z

#__inference__traced_restore_2804469
file_prefixN
:assignvariableop_recommender_net_5_embedding_20_embeddings:
áP
<assignvariableop_1_recommender_net_5_embedding_21_embeddings:
áO
<assignvariableop_2_recommender_net_5_embedding_22_embeddings:	ÉMO
<assignvariableop_3_recommender_net_5_embedding_23_embeddings:	ÉM&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: X
Dassignvariableop_13_adam_recommender_net_5_embedding_20_embeddings_m:
áX
Dassignvariableop_14_adam_recommender_net_5_embedding_21_embeddings_m:
áW
Dassignvariableop_15_adam_recommender_net_5_embedding_22_embeddings_m:	ÉMW
Dassignvariableop_16_adam_recommender_net_5_embedding_23_embeddings_m:	ÉMX
Dassignvariableop_17_adam_recommender_net_5_embedding_20_embeddings_v:
áX
Dassignvariableop_18_adam_recommender_net_5_embedding_21_embeddings_v:
áW
Dassignvariableop_19_adam_recommender_net_5_embedding_22_embeddings_v:	ÉMW
Dassignvariableop_20_adam_recommender_net_5_embedding_23_embeddings_v:	ÉM
identity_22¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*À

value¶
B³
B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOpAssignVariableOp:assignvariableop_recommender_net_5_embedding_20_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_1AssignVariableOp<assignvariableop_1_recommender_net_5_embedding_21_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_2AssignVariableOp<assignvariableop_2_recommender_net_5_embedding_22_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_3AssignVariableOp<assignvariableop_3_recommender_net_5_embedding_23_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_13AssignVariableOpDassignvariableop_13_adam_recommender_net_5_embedding_20_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_14AssignVariableOpDassignvariableop_14_adam_recommender_net_5_embedding_21_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_15AssignVariableOpDassignvariableop_15_adam_recommender_net_5_embedding_22_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_16AssignVariableOpDassignvariableop_16_adam_recommender_net_5_embedding_23_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_17AssignVariableOpDassignvariableop_17_adam_recommender_net_5_embedding_20_embeddings_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_18AssignVariableOpDassignvariableop_18_adam_recommender_net_5_embedding_21_embeddings_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_19AssignVariableOpDassignvariableop_19_adam_recommender_net_5_embedding_22_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_20AssignVariableOpDassignvariableop_20_adam_recommender_net_5_embedding_23_embeddings_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
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
_user_specified_namefile_prefix
Ìc
Ì
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2804063
input_1	(
embedding_20_2803987:
á(
embedding_21_2803994:
á'
embedding_22_2804001:	ÉM'
embedding_23_2804008:	ÉM
identity¢$embedding_20/StatefulPartitionedCall¢$embedding_21/StatefulPartitionedCall¢$embedding_22/StatefulPartitionedCall¢$embedding_23/StatefulPartitionedCall¢Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp¢Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ù
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskþ
$embedding_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_20_2803987*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_20_layer_call_and_return_conditional_losses_2803811f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
$embedding_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_21_2803994*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_21_layer_call_and_return_conditional_losses_2803828f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
$embedding_22/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_22_2804001*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_22_layer_call_and_return_conditional_losses_2803851f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
$embedding_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_23_2804008*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_embedding_23_layer_call_and_return_conditional_losses_2803868_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB l
Tensordot/ShapeShape-embedding_20/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
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
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose-embedding_20/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB n
Tensordot/Shape_1Shape-embedding_22/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
: 
Tensordot/transpose_1	Transpose-embedding_22/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0-embedding_21/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
add_1AddV2add:z:0-embedding_23/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_20_2803987* 
_output_shapes
:
á*
dtype0Æ
<recommender_net_5/embedding_20/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
á
;recommender_net_5/embedding_20/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_20/embeddings/Regularizer/SumSum@recommender_net_5/embedding_20/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_20/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_20/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_20/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_20/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_20/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¡
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_22_2804001*
_output_shapes
:	ÉM*
dtype0Å
<recommender_net_5/embedding_22/embeddings/Regularizer/SquareSquareSrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÉM
;recommender_net_5/embedding_22/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       é
9recommender_net_5/embedding_22/embeddings/Regularizer/SumSum@recommender_net_5/embedding_22/embeddings/Regularizer/Square:y:0Drecommender_net_5/embedding_22/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
;recommender_net_5/embedding_22/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ë
9recommender_net_5/embedding_22/embeddings/Regularizer/mulMulDrecommender_net_5/embedding_22/embeddings/Regularizer/mul/x:output:0Brecommender_net_5/embedding_22/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
NoOpNoOp%^embedding_20/StatefulPartitionedCall%^embedding_21/StatefulPartitionedCall%^embedding_22/StatefulPartitionedCall%^embedding_23/StatefulPartitionedCallL^recommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpL^recommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2L
$embedding_20/StatefulPartitionedCall$embedding_20/StatefulPartitionedCall2L
$embedding_21/StatefulPartitionedCall$embedding_21/StatefulPartitionedCall2L
$embedding_22/StatefulPartitionedCall$embedding_22/StatefulPartitionedCall2L
$embedding_23/StatefulPartitionedCall$embedding_23/StatefulPartitionedCall2
Krecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_20/embeddings/Regularizer/Square/ReadVariableOp2
Krecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_5/embedding_22/embeddings/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_10
serving_default_input_1:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÛW
©
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
P__call__
*Q&call_and_return_all_conditional_losses
R_default_save_signature"
_tf_keras_model
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer

iter

 beta_1

!beta_2
	"decay
#learning_ratemHmImJmKvLvMvNvO"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
Ê
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
P__call__
R_default_save_signature
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
,
]serving_default"
signature_map
=:;
á2)recommender_net_5/embedding_20/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
­
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
=:;
á2)recommender_net_5/embedding_21/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
<::	ÉM2)recommender_net_5/embedding_22/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
­
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
<::	ÉM2)recommender_net_5/embedding_23/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
[0"
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
'
\0"
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
N
	?total
	@count
A	variables
B	keras_api"
_tf_keras_metric
^
	Ctotal
	Dcount
E
_fn_kwargs
F	variables
G	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
?0
@1"
trackable_list_wrapper
-
A	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
B:@
á20Adam/recommender_net_5/embedding_20/embeddings/m
B:@
á20Adam/recommender_net_5/embedding_21/embeddings/m
A:?	ÉM20Adam/recommender_net_5/embedding_22/embeddings/m
A:?	ÉM20Adam/recommender_net_5/embedding_23/embeddings/m
B:@
á20Adam/recommender_net_5/embedding_20/embeddings/v
B:@
á20Adam/recommender_net_5/embedding_21/embeddings/v
A:?	ÉM20Adam/recommender_net_5/embedding_22/embeddings/v
A:?	ÉM20Adam/recommender_net_5/embedding_23/embeddings/v
2
3__inference_recommender_net_5_layer_call_fn_2803935
3__inference_recommender_net_5_layer_call_fn_2804109¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
È2Å
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2804200
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2804063¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÍBÊ
"__inference__wrapped_model_2803785input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_embedding_20_layer_call_fn_2804213¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_embedding_20_layer_call_and_return_conditional_losses_2804228¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_embedding_21_layer_call_fn_2804235¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_embedding_21_layer_call_and_return_conditional_losses_2804244¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_embedding_22_layer_call_fn_2804257¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_embedding_22_layer_call_and_return_conditional_losses_2804272¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_embedding_23_layer_call_fn_2804279¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_embedding_23_layer_call_and_return_conditional_losses_2804288¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±
__inference_loss_fn_0_2804299
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_1_2804310
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÌBÉ
%__inference_signature_wrapper_2804096input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"__inference__wrapped_model_2803785m0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¤
I__inference_embedding_20_layer_call_and_return_conditional_losses_2804228W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
.__inference_embedding_20_layer_call_fn_2804213J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¤
I__inference_embedding_21_layer_call_and_return_conditional_losses_2804244W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
.__inference_embedding_21_layer_call_fn_2804235J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¤
I__inference_embedding_22_layer_call_and_return_conditional_losses_2804272W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
.__inference_embedding_22_layer_call_fn_2804257J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¤
I__inference_embedding_23_layer_call_and_return_conditional_losses_2804288W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
.__inference_embedding_23_layer_call_fn_2804279J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_2804299¢

¢ 
ª " <
__inference_loss_fn_1_2804310¢

¢ 
ª " ±
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2804063_0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 °
N__inference_recommender_net_5_layer_call_and_return_conditional_losses_2804200^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
3__inference_recommender_net_5_layer_call_fn_2803935R0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ
3__inference_recommender_net_5_layer_call_fn_2804109Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¡
%__inference_signature_wrapper_2804096x;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ