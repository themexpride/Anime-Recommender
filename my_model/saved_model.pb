Ë·
ª
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
¾
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
executor_typestring 
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
 "serve*2.6.02v2.6.0-0-g919f693420e8­Ê
°
)recommender_net_4/embedding_16/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
à2*:
shared_name+)recommender_net_4/embedding_16/embeddings
©
=recommender_net_4/embedding_16/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_4/embedding_16/embeddings* 
_output_shapes
:
à2*
dtype0
°
)recommender_net_4/embedding_17/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
à*:
shared_name+)recommender_net_4/embedding_17/embeddings
©
=recommender_net_4/embedding_17/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_4/embedding_17/embeddings* 
_output_shapes
:
à*
dtype0
¯
)recommender_net_4/embedding_18/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÇM2*:
shared_name+)recommender_net_4/embedding_18/embeddings
¨
=recommender_net_4/embedding_18/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_4/embedding_18/embeddings*
_output_shapes
:	ÇM2*
dtype0
¯
)recommender_net_4/embedding_19/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÇM*:
shared_name+)recommender_net_4/embedding_19/embeddings
¨
=recommender_net_4/embedding_19/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_4/embedding_19/embeddings*
_output_shapes
:	ÇM*
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
¾
0Adam/recommender_net_4/embedding_16/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
à2*A
shared_name20Adam/recommender_net_4/embedding_16/embeddings/m
·
DAdam/recommender_net_4/embedding_16/embeddings/m/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_4/embedding_16/embeddings/m* 
_output_shapes
:
à2*
dtype0
¾
0Adam/recommender_net_4/embedding_17/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
à*A
shared_name20Adam/recommender_net_4/embedding_17/embeddings/m
·
DAdam/recommender_net_4/embedding_17/embeddings/m/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_4/embedding_17/embeddings/m* 
_output_shapes
:
à*
dtype0
½
0Adam/recommender_net_4/embedding_18/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÇM2*A
shared_name20Adam/recommender_net_4/embedding_18/embeddings/m
¶
DAdam/recommender_net_4/embedding_18/embeddings/m/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_4/embedding_18/embeddings/m*
_output_shapes
:	ÇM2*
dtype0
½
0Adam/recommender_net_4/embedding_19/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÇM*A
shared_name20Adam/recommender_net_4/embedding_19/embeddings/m
¶
DAdam/recommender_net_4/embedding_19/embeddings/m/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_4/embedding_19/embeddings/m*
_output_shapes
:	ÇM*
dtype0
¾
0Adam/recommender_net_4/embedding_16/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
à2*A
shared_name20Adam/recommender_net_4/embedding_16/embeddings/v
·
DAdam/recommender_net_4/embedding_16/embeddings/v/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_4/embedding_16/embeddings/v* 
_output_shapes
:
à2*
dtype0
¾
0Adam/recommender_net_4/embedding_17/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
à*A
shared_name20Adam/recommender_net_4/embedding_17/embeddings/v
·
DAdam/recommender_net_4/embedding_17/embeddings/v/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_4/embedding_17/embeddings/v* 
_output_shapes
:
à*
dtype0
½
0Adam/recommender_net_4/embedding_18/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÇM2*A
shared_name20Adam/recommender_net_4/embedding_18/embeddings/v
¶
DAdam/recommender_net_4/embedding_18/embeddings/v/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_4/embedding_18/embeddings/v*
_output_shapes
:	ÇM2*
dtype0
½
0Adam/recommender_net_4/embedding_19/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ÇM*A
shared_name20Adam/recommender_net_4/embedding_19/embeddings/v
¶
DAdam/recommender_net_4/embedding_19/embeddings/v/Read/ReadVariableOpReadVariableOp0Adam/recommender_net_4/embedding_19/embeddings/v*
_output_shapes
:	ÇM*
dtype0

NoOpNoOp
!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ó 
valueÉ BÆ  B¿ 
¹
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
regularization_losses
trainable_variables
	variables
		keras_api


signatures
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api

iter

 beta_1

!beta_2
	"decay
#learning_ratemBmCmDmEvFvGvHvI
 

0
1
2
3

0
1
2
3
­
$layer_regularization_losses

%layers
regularization_losses
trainable_variables
&layer_metrics
	variables
'metrics
(non_trainable_variables
 
sq
VARIABLE_VALUE)recommender_net_4/embedding_16/embeddings4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
)layer_regularization_losses

*layers
regularization_losses
trainable_variables
+layer_metrics
	variables
,metrics
-non_trainable_variables
nl
VARIABLE_VALUE)recommender_net_4/embedding_17/embeddings/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
.layer_regularization_losses

/layers
regularization_losses
trainable_variables
0layer_metrics
	variables
1metrics
2non_trainable_variables
tr
VARIABLE_VALUE)recommender_net_4/embedding_18/embeddings5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
3layer_regularization_losses

4layers
regularization_losses
trainable_variables
5layer_metrics
	variables
6metrics
7non_trainable_variables
om
VARIABLE_VALUE)recommender_net_4/embedding_19/embeddings0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
8layer_regularization_losses

9layers
regularization_losses
trainable_variables
:layer_metrics
	variables
;metrics
<non_trainable_variables
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
 

=0
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
	>total
	?count
@	variables
A	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

>0
?1

@	variables

VARIABLE_VALUE0Adam/recommender_net_4/embedding_16/embeddings/mPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_4/embedding_17/embeddings/mKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_4/embedding_18/embeddings/mQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_4/embedding_19/embeddings/mLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_4/embedding_16/embeddings/vPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_4/embedding_17/embeddings/vKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_4/embedding_18/embeddings/vQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0Adam/recommender_net_4/embedding_19/embeddings/vLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
å
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1)recommender_net_4/embedding_16/embeddings)recommender_net_4/embedding_17/embeddings)recommender_net_4/embedding_18/embeddings)recommender_net_4/embedding_19/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_10543
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¸

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename=recommender_net_4/embedding_16/embeddings/Read/ReadVariableOp=recommender_net_4/embedding_17/embeddings/Read/ReadVariableOp=recommender_net_4/embedding_18/embeddings/Read/ReadVariableOp=recommender_net_4/embedding_19/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpDAdam/recommender_net_4/embedding_16/embeddings/m/Read/ReadVariableOpDAdam/recommender_net_4/embedding_17/embeddings/m/Read/ReadVariableOpDAdam/recommender_net_4/embedding_18/embeddings/m/Read/ReadVariableOpDAdam/recommender_net_4/embedding_19/embeddings/m/Read/ReadVariableOpDAdam/recommender_net_4/embedding_16/embeddings/v/Read/ReadVariableOpDAdam/recommender_net_4/embedding_17/embeddings/v/Read/ReadVariableOpDAdam/recommender_net_4/embedding_18/embeddings/v/Read/ReadVariableOpDAdam/recommender_net_4/embedding_19/embeddings/v/Read/ReadVariableOpConst* 
Tin
2	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_10837
·
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename)recommender_net_4/embedding_16/embeddings)recommender_net_4/embedding_17/embeddings)recommender_net_4/embedding_18/embeddings)recommender_net_4/embedding_19/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount0Adam/recommender_net_4/embedding_16/embeddings/m0Adam/recommender_net_4/embedding_17/embeddings/m0Adam/recommender_net_4/embedding_18/embeddings/m0Adam/recommender_net_4/embedding_19/embeddings/m0Adam/recommender_net_4/embedding_16/embeddings/v0Adam/recommender_net_4/embedding_17/embeddings/v0Adam/recommender_net_4/embedding_18/embeddings/v0Adam/recommender_net_4/embedding_19/embeddings/v*
Tin
2*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_10904ðã
ã
â
1__inference_recommender_net_4_layer_call_fn_10647

inputs	
unknown:
à2
	unknown_0:
à
	unknown_1:	ÇM2
	unknown_2:	ÇM
identity¢StatefulPartitionedCall
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
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_103712
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ò
G__inference_embedding_18_layer_call_and_return_conditional_losses_10298

inputs	)
embedding_lookup_10286:	ÇM2
identity¢embedding_lookup¢Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpõ
embedding_lookupResourceGatherembedding_lookup_10286inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/10286*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_lookupè
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10286*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity_1ò
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_10286*
_output_shapes
:	ÇM2*
dtype02M
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÇM22>
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_18/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_18/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_18/embeddings/Regularizer/SumSum@recommender_net_4/embedding_18/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_18/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_18/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_18/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_18/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/mul
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity¯
NoOpNoOp^embedding_lookupL^recommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É

,__inference_embedding_16_layer_call_fn_10675

inputs	
unknown:
à2
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_16_layer_call_and_return_conditional_losses_102582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥t
Â
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_10510
input_1	&
embedding_16_10434:
à2&
embedding_17_10441:
à%
embedding_18_10448:	ÇM2%
embedding_19_10455:	ÇM
identity¢$embedding_16/StatefulPartitionedCall¢$embedding_17/StatefulPartitionedCall¢$embedding_18/StatefulPartitionedCall¢$embedding_19/StatefulPartitionedCall¢Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp¢Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice
$embedding_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_16_10434*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_16_layer_call_and_return_conditional_losses_102582&
$embedding_16/StatefulPartitionedCall
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1¡
$embedding_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_17_10441*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_17_layer_call_and_return_conditional_losses_102752&
$embedding_17/StatefulPartitionedCall
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2¡
$embedding_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_18_10448*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_18_layer_call_and_return_conditional_losses_102982&
$embedding_18/StatefulPartitionedCall
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3¡
$embedding_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_19_10455*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_19_layer_call_and_return_conditional_losses_103152&
$embedding_19/StatefulPartitionedCallq
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axesc
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free
Tensordot/ShapeShape-embedding_16/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÏ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack³
Tensordot/transpose	Transpose-embedding_16/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshapeu
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axes_1g
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free_1
Tensordot/Shape_1Shape-embedding_18/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shape_1x
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_2/axisÙ
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2_2x
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_3/axisÛ
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_3p
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_2p
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_3
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_3t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisº
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack_1¹
Tensordot/transpose_1	Transpose-embedding_18/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose_1§
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1£
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMult
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_2/axis¾
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2
Tensordot/concat_2{
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
	Tensordot
addAddV2Tensordot:output:0-embedding_17/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
add_1AddV2add:z:0-embedding_19/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidï
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_16_10434* 
_output_shapes
:
à2*
dtype02M
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
à22>
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_16/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_16/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_16/embeddings/Regularizer/SumSum@recommender_net_4/embedding_16/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_16/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_16/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_16/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_16/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/mulî
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_18_10448*
_output_shapes
:	ÇM2*
dtype02M
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÇM22>
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_18/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_18/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_18/embeddings/Regularizer/SumSum@recommender_net_4/embedding_18/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_18/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_18/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_18/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_18/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/mulf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp%^embedding_16/StatefulPartitionedCall%^embedding_17/StatefulPartitionedCall%^embedding_18/StatefulPartitionedCall%^embedding_19/StatefulPartitionedCallL^recommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpL^recommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2L
$embedding_16/StatefulPartitionedCall$embedding_16/StatefulPartitionedCall2L
$embedding_17/StatefulPartitionedCall$embedding_17/StatefulPartitionedCall2L
$embedding_18/StatefulPartitionedCall$embedding_18/StatefulPartitionedCall2L
$embedding_19/StatefulPartitionedCall$embedding_19/StatefulPartitionedCall2
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp2
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
á
²
 __inference__wrapped_model_10232
input_1	I
5recommender_net_4_embedding_16_embedding_lookup_10160:
à2I
5recommender_net_4_embedding_17_embedding_lookup_10169:
àH
5recommender_net_4_embedding_18_embedding_lookup_10178:	ÇM2H
5recommender_net_4_embedding_19_embedding_lookup_10187:	ÇM
identity¢/recommender_net_4/embedding_16/embedding_lookup¢/recommender_net_4/embedding_17/embedding_lookup¢/recommender_net_4/embedding_18/embedding_lookup¢/recommender_net_4/embedding_19/embedding_lookup
%recommender_net_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%recommender_net_4/strided_slice/stack£
'recommender_net_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net_4/strided_slice/stack_1£
'recommender_net_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'recommender_net_4/strided_slice/stack_2ä
recommender_net_4/strided_sliceStridedSliceinput_1.recommender_net_4/strided_slice/stack:output:00recommender_net_4/strided_slice/stack_1:output:00recommender_net_4/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2!
recommender_net_4/strided_slice
/recommender_net_4/embedding_16/embedding_lookupResourceGather5recommender_net_4_embedding_16_embedding_lookup_10160(recommender_net_4/strided_slice:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*H
_class>
<:loc:@recommender_net_4/embedding_16/embedding_lookup/10160*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype021
/recommender_net_4/embedding_16/embedding_lookupä
8recommender_net_4/embedding_16/embedding_lookup/IdentityIdentity8recommender_net_4/embedding_16/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*H
_class>
<:loc:@recommender_net_4/embedding_16/embedding_lookup/10160*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22:
8recommender_net_4/embedding_16/embedding_lookup/Identityù
:recommender_net_4/embedding_16/embedding_lookup/Identity_1IdentityArecommender_net_4/embedding_16/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22<
:recommender_net_4/embedding_16/embedding_lookup/Identity_1£
'recommender_net_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'recommender_net_4/strided_slice_1/stack§
)recommender_net_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)recommender_net_4/strided_slice_1/stack_1§
)recommender_net_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)recommender_net_4/strided_slice_1/stack_2î
!recommender_net_4/strided_slice_1StridedSliceinput_10recommender_net_4/strided_slice_1/stack:output:02recommender_net_4/strided_slice_1/stack_1:output:02recommender_net_4/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2#
!recommender_net_4/strided_slice_1
/recommender_net_4/embedding_17/embedding_lookupResourceGather5recommender_net_4_embedding_17_embedding_lookup_10169*recommender_net_4/strided_slice_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*H
_class>
<:loc:@recommender_net_4/embedding_17/embedding_lookup/10169*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/recommender_net_4/embedding_17/embedding_lookupä
8recommender_net_4/embedding_17/embedding_lookup/IdentityIdentity8recommender_net_4/embedding_17/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*H
_class>
<:loc:@recommender_net_4/embedding_17/embedding_lookup/10169*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8recommender_net_4/embedding_17/embedding_lookup/Identityù
:recommender_net_4/embedding_17/embedding_lookup/Identity_1IdentityArecommender_net_4/embedding_17/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:recommender_net_4/embedding_17/embedding_lookup/Identity_1£
'recommender_net_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net_4/strided_slice_2/stack§
)recommender_net_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)recommender_net_4/strided_slice_2/stack_1§
)recommender_net_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)recommender_net_4/strided_slice_2/stack_2î
!recommender_net_4/strided_slice_2StridedSliceinput_10recommender_net_4/strided_slice_2/stack:output:02recommender_net_4/strided_slice_2/stack_1:output:02recommender_net_4/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2#
!recommender_net_4/strided_slice_2
/recommender_net_4/embedding_18/embedding_lookupResourceGather5recommender_net_4_embedding_18_embedding_lookup_10178*recommender_net_4/strided_slice_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*H
_class>
<:loc:@recommender_net_4/embedding_18/embedding_lookup/10178*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype021
/recommender_net_4/embedding_18/embedding_lookupä
8recommender_net_4/embedding_18/embedding_lookup/IdentityIdentity8recommender_net_4/embedding_18/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*H
_class>
<:loc:@recommender_net_4/embedding_18/embedding_lookup/10178*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22:
8recommender_net_4/embedding_18/embedding_lookup/Identityù
:recommender_net_4/embedding_18/embedding_lookup/Identity_1IdentityArecommender_net_4/embedding_18/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22<
:recommender_net_4/embedding_18/embedding_lookup/Identity_1£
'recommender_net_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net_4/strided_slice_3/stack§
)recommender_net_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)recommender_net_4/strided_slice_3/stack_1§
)recommender_net_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)recommender_net_4/strided_slice_3/stack_2î
!recommender_net_4/strided_slice_3StridedSliceinput_10recommender_net_4/strided_slice_3/stack:output:02recommender_net_4/strided_slice_3/stack_1:output:02recommender_net_4/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2#
!recommender_net_4/strided_slice_3
/recommender_net_4/embedding_19/embedding_lookupResourceGather5recommender_net_4_embedding_19_embedding_lookup_10187*recommender_net_4/strided_slice_3:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*H
_class>
<:loc:@recommender_net_4/embedding_19/embedding_lookup/10187*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/recommender_net_4/embedding_19/embedding_lookupä
8recommender_net_4/embedding_19/embedding_lookup/IdentityIdentity8recommender_net_4/embedding_19/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*H
_class>
<:loc:@recommender_net_4/embedding_19/embedding_lookup/10187*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8recommender_net_4/embedding_19/embedding_lookup/Identityù
:recommender_net_4/embedding_19/embedding_lookup/Identity_1IdentityArecommender_net_4/embedding_19/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:recommender_net_4/embedding_19/embedding_lookup/Identity_1
 recommender_net_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2"
 recommender_net_4/Tensordot/axes
 recommender_net_4/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2"
 recommender_net_4/Tensordot/free¹
!recommender_net_4/Tensordot/ShapeShapeCrecommender_net_4/embedding_16/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2#
!recommender_net_4/Tensordot/Shape
)recommender_net_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net_4/Tensordot/GatherV2/axis©
$recommender_net_4/Tensordot/GatherV2GatherV2*recommender_net_4/Tensordot/Shape:output:0)recommender_net_4/Tensordot/free:output:02recommender_net_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2&
$recommender_net_4/Tensordot/GatherV2
+recommender_net_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+recommender_net_4/Tensordot/GatherV2_1/axis±
&recommender_net_4/Tensordot/GatherV2_1GatherV2*recommender_net_4/Tensordot/Shape:output:0)recommender_net_4/Tensordot/axes:output:04recommender_net_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&recommender_net_4/Tensordot/GatherV2_1
!recommender_net_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!recommender_net_4/Tensordot/ConstÈ
 recommender_net_4/Tensordot/ProdProd-recommender_net_4/Tensordot/GatherV2:output:0*recommender_net_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 recommender_net_4/Tensordot/Prod
#recommender_net_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#recommender_net_4/Tensordot/Const_1Ð
"recommender_net_4/Tensordot/Prod_1Prod/recommender_net_4/Tensordot/GatherV2_1:output:0,recommender_net_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"recommender_net_4/Tensordot/Prod_1
'recommender_net_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'recommender_net_4/Tensordot/concat/axis
"recommender_net_4/Tensordot/concatConcatV2)recommender_net_4/Tensordot/free:output:0)recommender_net_4/Tensordot/axes:output:00recommender_net_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"recommender_net_4/Tensordot/concatÔ
!recommender_net_4/Tensordot/stackPack)recommender_net_4/Tensordot/Prod:output:0+recommender_net_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!recommender_net_4/Tensordot/stackÿ
%recommender_net_4/Tensordot/transpose	TransposeCrecommender_net_4/embedding_16/embedding_lookup/Identity_1:output:0+recommender_net_4/Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%recommender_net_4/Tensordot/transposeç
#recommender_net_4/Tensordot/ReshapeReshape)recommender_net_4/Tensordot/transpose:y:0*recommender_net_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#recommender_net_4/Tensordot/Reshape
"recommender_net_4/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"recommender_net_4/Tensordot/axes_1
"recommender_net_4/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"recommender_net_4/Tensordot/free_1½
#recommender_net_4/Tensordot/Shape_1ShapeCrecommender_net_4/embedding_18/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2%
#recommender_net_4/Tensordot/Shape_1
+recommender_net_4/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+recommender_net_4/Tensordot/GatherV2_2/axis³
&recommender_net_4/Tensordot/GatherV2_2GatherV2,recommender_net_4/Tensordot/Shape_1:output:0+recommender_net_4/Tensordot/free_1:output:04recommender_net_4/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2(
&recommender_net_4/Tensordot/GatherV2_2
+recommender_net_4/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+recommender_net_4/Tensordot/GatherV2_3/axisµ
&recommender_net_4/Tensordot/GatherV2_3GatherV2,recommender_net_4/Tensordot/Shape_1:output:0+recommender_net_4/Tensordot/axes_1:output:04recommender_net_4/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&recommender_net_4/Tensordot/GatherV2_3
#recommender_net_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2%
#recommender_net_4/Tensordot/Const_2Ð
"recommender_net_4/Tensordot/Prod_2Prod/recommender_net_4/Tensordot/GatherV2_2:output:0,recommender_net_4/Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2$
"recommender_net_4/Tensordot/Prod_2
#recommender_net_4/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2%
#recommender_net_4/Tensordot/Const_3Ð
"recommender_net_4/Tensordot/Prod_3Prod/recommender_net_4/Tensordot/GatherV2_3:output:0,recommender_net_4/Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2$
"recommender_net_4/Tensordot/Prod_3
)recommender_net_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net_4/Tensordot/concat_1/axis
$recommender_net_4/Tensordot/concat_1ConcatV2+recommender_net_4/Tensordot/axes_1:output:0+recommender_net_4/Tensordot/free_1:output:02recommender_net_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$recommender_net_4/Tensordot/concat_1Ú
#recommender_net_4/Tensordot/stack_1Pack+recommender_net_4/Tensordot/Prod_3:output:0+recommender_net_4/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2%
#recommender_net_4/Tensordot/stack_1
'recommender_net_4/Tensordot/transpose_1	TransposeCrecommender_net_4/embedding_18/embedding_lookup/Identity_1:output:0-recommender_net_4/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'recommender_net_4/Tensordot/transpose_1ï
%recommender_net_4/Tensordot/Reshape_1Reshape+recommender_net_4/Tensordot/transpose_1:y:0,recommender_net_4/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2'
%recommender_net_4/Tensordot/Reshape_1ë
"recommender_net_4/Tensordot/MatMulMatMul,recommender_net_4/Tensordot/Reshape:output:0.recommender_net_4/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2$
"recommender_net_4/Tensordot/MatMul
)recommender_net_4/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net_4/Tensordot/concat_2/axis
$recommender_net_4/Tensordot/concat_2ConcatV2-recommender_net_4/Tensordot/GatherV2:output:0/recommender_net_4/Tensordot/GatherV2_2:output:02recommender_net_4/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2&
$recommender_net_4/Tensordot/concat_2Ã
recommender_net_4/TensordotReshape,recommender_net_4/Tensordot/MatMul:product:0-recommender_net_4/Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
recommender_net_4/TensordotÔ
recommender_net_4/addAddV2$recommender_net_4/Tensordot:output:0Crecommender_net_4/embedding_17/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
recommender_net_4/addÍ
recommender_net_4/add_1AddV2recommender_net_4/add:z:0Crecommender_net_4/embedding_19/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
recommender_net_4/add_1
recommender_net_4/SigmoidSigmoidrecommender_net_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
recommender_net_4/Sigmoidx
IdentityIdentityrecommender_net_4/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp0^recommender_net_4/embedding_16/embedding_lookup0^recommender_net_4/embedding_17/embedding_lookup0^recommender_net_4/embedding_18/embedding_lookup0^recommender_net_4/embedding_19/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2b
/recommender_net_4/embedding_16/embedding_lookup/recommender_net_4/embedding_16/embedding_lookup2b
/recommender_net_4/embedding_17/embedding_lookup/recommender_net_4/embedding_17/embedding_lookup2b
/recommender_net_4/embedding_18/embedding_lookup/recommender_net_4/embedding_18/embedding_lookup2b
/recommender_net_4/embedding_19/embedding_lookup/recommender_net_4/embedding_19/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
­
å
__inference_loss_fn_1_10757g
Trecommender_net_4_embedding_18_embeddings_regularizer_square_readvariableop_resource:	ÇM2
identity¢Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp°
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpTrecommender_net_4_embedding_18_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	ÇM2*
dtype02M
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÇM22>
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_18/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_18/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_18/embeddings/Regularizer/SumSum@recommender_net_4/embedding_18/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_18/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_18/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_18/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_18/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/mul
IdentityIdentity=recommender_net_4/embedding_18/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOpL^recommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp

ò
G__inference_embedding_18_layer_call_and_return_conditional_losses_10712

inputs	)
embedding_lookup_10700:	ÇM2
identity¢embedding_lookup¢Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpõ
embedding_lookupResourceGatherembedding_lookup_10700inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/10700*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_lookupè
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10700*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity_1ò
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_10700*
_output_shapes
:	ÇM2*
dtype02M
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÇM22>
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_18/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_18/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_18/embeddings/Regularizer/SumSum@recommender_net_4/embedding_18/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_18/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_18/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_18/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_18/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/mul
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity¯
NoOpNoOp^embedding_lookupL^recommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï	
¤
G__inference_embedding_19_layer_call_and_return_conditional_losses_10728

inputs	)
embedding_lookup_10722:	ÇM
identity¢embedding_lookupõ
embedding_lookupResourceGatherembedding_lookup_10722inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/10722*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupè
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10722*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð	
¥
G__inference_embedding_17_layer_call_and_return_conditional_losses_10275

inputs	*
embedding_lookup_10269:
à
identity¢embedding_lookupõ
embedding_lookupResourceGatherembedding_lookup_10269inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/10269*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupè
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10269*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

,__inference_embedding_18_layer_call_fn_10719

inputs	
unknown:	ÇM2
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_18_layer_call_and_return_conditional_losses_102982
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

,__inference_embedding_19_layer_call_fn_10735

inputs	
unknown:	ÇM
identity¢StatefulPartitionedCallê
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
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_19_layer_call_and_return_conditional_losses_103152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ
ã
1__inference_recommender_net_4_layer_call_fn_10382
input_1	
unknown:
à2
	unknown_0:
à
	unknown_1:	ÇM2
	unknown_2:	ÇM
identity¢StatefulPartitionedCall
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
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_103712
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
°
æ
__inference_loss_fn_0_10746h
Trecommender_net_4_embedding_16_embeddings_regularizer_square_readvariableop_resource:
à2
identity¢Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp±
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpTrecommender_net_4_embedding_16_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
à2*
dtype02M
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
à22>
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_16/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_16/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_16/embeddings/Regularizer/SumSum@recommender_net_4/embedding_16/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_16/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_16/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_16/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_16/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/mul
IdentityIdentity=recommender_net_4/embedding_16/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOpL^recommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp

ó
G__inference_embedding_16_layer_call_and_return_conditional_losses_10258

inputs	*
embedding_lookup_10246:
à2
identity¢embedding_lookup¢Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpõ
embedding_lookupResourceGatherembedding_lookup_10246inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/10246*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_lookupè
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10246*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity_1ó
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_10246* 
_output_shapes
:
à2*
dtype02M
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
à22>
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_16/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_16/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_16/embeddings/Regularizer/SumSum@recommender_net_4/embedding_16/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_16/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_16/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_16/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_16/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/mul
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity¯
NoOpNoOp^embedding_lookupL^recommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É

,__inference_embedding_17_layer_call_fn_10691

inputs	
unknown:
à
identity¢StatefulPartitionedCallê
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
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_17_layer_call_and_return_conditional_losses_102752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ó
G__inference_embedding_16_layer_call_and_return_conditional_losses_10668

inputs	*
embedding_lookup_10656:
à2
identity¢embedding_lookup¢Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpõ
embedding_lookupResourceGatherembedding_lookup_10656inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/10656*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_lookupè
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10656*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity_1ó
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_10656* 
_output_shapes
:
à2*
dtype02M
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
à22>
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_16/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_16/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_16/embeddings/Regularizer/SumSum@recommender_net_4/embedding_16/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_16/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_16/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_16/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_16/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/mul
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity¯
NoOpNoOp^embedding_lookupL^recommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
é
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_10634

inputs	7
#embedding_16_embedding_lookup_10550:
à27
#embedding_17_embedding_lookup_10559:
à6
#embedding_18_embedding_lookup_10568:	ÇM26
#embedding_19_embedding_lookup_10577:	ÇM
identity¢embedding_16/embedding_lookup¢embedding_17/embedding_lookup¢embedding_18/embedding_lookup¢embedding_19/embedding_lookup¢Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp¢Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice¹
embedding_16/embedding_lookupResourceGather#embedding_16_embedding_lookup_10550strided_slice:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*6
_class,
*(loc:@embedding_16/embedding_lookup/10550*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_16/embedding_lookup
&embedding_16/embedding_lookup/IdentityIdentity&embedding_16/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_16/embedding_lookup/10550*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&embedding_16/embedding_lookup/IdentityÃ
(embedding_16/embedding_lookup/Identity_1Identity/embedding_16/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(embedding_16/embedding_lookup/Identity_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1»
embedding_17/embedding_lookupResourceGather#embedding_17_embedding_lookup_10559strided_slice_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*6
_class,
*(loc:@embedding_17/embedding_lookup/10559*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_17/embedding_lookup
&embedding_17/embedding_lookup/IdentityIdentity&embedding_17/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_17/embedding_lookup/10559*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&embedding_17/embedding_lookup/IdentityÃ
(embedding_17/embedding_lookup/Identity_1Identity/embedding_17/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(embedding_17/embedding_lookup/Identity_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2»
embedding_18/embedding_lookupResourceGather#embedding_18_embedding_lookup_10568strided_slice_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*6
_class,
*(loc:@embedding_18/embedding_lookup/10568*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_18/embedding_lookup
&embedding_18/embedding_lookup/IdentityIdentity&embedding_18/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_18/embedding_lookup/10568*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&embedding_18/embedding_lookup/IdentityÃ
(embedding_18/embedding_lookup/Identity_1Identity/embedding_18/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(embedding_18/embedding_lookup/Identity_1
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3»
embedding_19/embedding_lookupResourceGather#embedding_19_embedding_lookup_10577strided_slice_3:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*6
_class,
*(loc:@embedding_19/embedding_lookup/10577*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_19/embedding_lookup
&embedding_19/embedding_lookup/IdentityIdentity&embedding_19/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_19/embedding_lookup/10577*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&embedding_19/embedding_lookup/IdentityÃ
(embedding_19/embedding_lookup/Identity_1Identity/embedding_19/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(embedding_19/embedding_lookup/Identity_1q
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axesc
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free
Tensordot/ShapeShape1embedding_16/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÏ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack·
Tensordot/transpose	Transpose1embedding_16/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshapeu
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axes_1g
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free_1
Tensordot/Shape_1Shape1embedding_18/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
Tensordot/Shape_1x
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_2/axisÙ
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2_2x
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_3/axisÛ
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_3p
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_2p
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_3
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_3t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisº
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack_1½
Tensordot/transpose_1	Transpose1embedding_18/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose_1§
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1£
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMult
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_2/axis¾
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2
Tensordot/concat_2{
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
	Tensordot
addAddV2Tensordot:output:01embedding_17/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
add_1AddV2add:z:01embedding_19/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp#embedding_16_embedding_lookup_10550* 
_output_shapes
:
à2*
dtype02M
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
à22>
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_16/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_16/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_16/embeddings/Regularizer/SumSum@recommender_net_4/embedding_16/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_16/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_16/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_16/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_16/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/mulÿ
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp#embedding_18_embedding_lookup_10568*
_output_shapes
:	ÇM2*
dtype02M
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÇM22>
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_18/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_18/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_18/embeddings/Regularizer/SumSum@recommender_net_4/embedding_18/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_18/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_18/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_18/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_18/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/mulf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityê
NoOpNoOp^embedding_16/embedding_lookup^embedding_17/embedding_lookup^embedding_18/embedding_lookup^embedding_19/embedding_lookupL^recommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpL^recommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2>
embedding_16/embedding_lookupembedding_16/embedding_lookup2>
embedding_17/embedding_lookupembedding_17/embedding_lookup2>
embedding_18/embedding_lookupembedding_18/embedding_lookup2>
embedding_19/embedding_lookupembedding_19/embedding_lookup2
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp2
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï	
¤
G__inference_embedding_19_layer_call_and_return_conditional_losses_10315

inputs	)
embedding_lookup_10309:	ÇM
identity¢embedding_lookupõ
embedding_lookupResourceGatherembedding_lookup_10309inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/10309*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupè
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10309*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾Y

!__inference__traced_restore_10904
file_prefixN
:assignvariableop_recommender_net_4_embedding_16_embeddings:
à2P
<assignvariableop_1_recommender_net_4_embedding_17_embeddings:
àO
<assignvariableop_2_recommender_net_4_embedding_18_embeddings:	ÇM2O
<assignvariableop_3_recommender_net_4_embedding_19_embeddings:	ÇM&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: X
Dassignvariableop_11_adam_recommender_net_4_embedding_16_embeddings_m:
à2X
Dassignvariableop_12_adam_recommender_net_4_embedding_17_embeddings_m:
àW
Dassignvariableop_13_adam_recommender_net_4_embedding_18_embeddings_m:	ÇM2W
Dassignvariableop_14_adam_recommender_net_4_embedding_19_embeddings_m:	ÇMX
Dassignvariableop_15_adam_recommender_net_4_embedding_16_embeddings_v:
à2X
Dassignvariableop_16_adam_recommender_net_4_embedding_17_embeddings_v:
àW
Dassignvariableop_17_adam_recommender_net_4_embedding_18_embeddings_v:	ÇM2W
Dassignvariableop_18_adam_recommender_net_4_embedding_19_embeddings_v:	ÇM
identity_20¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9È

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ô	
valueÊ	BÇ	B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¶
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¹
AssignVariableOpAssignVariableOp:assignvariableop_recommender_net_4_embedding_16_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Á
AssignVariableOp_1AssignVariableOp<assignvariableop_1_recommender_net_4_embedding_17_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Á
AssignVariableOp_2AssignVariableOp<assignvariableop_2_recommender_net_4_embedding_18_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Á
AssignVariableOp_3AssignVariableOp<assignvariableop_3_recommender_net_4_embedding_19_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4¡
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ª
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¡
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ì
AssignVariableOp_11AssignVariableOpDassignvariableop_11_adam_recommender_net_4_embedding_16_embeddings_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ì
AssignVariableOp_12AssignVariableOpDassignvariableop_12_adam_recommender_net_4_embedding_17_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ì
AssignVariableOp_13AssignVariableOpDassignvariableop_13_adam_recommender_net_4_embedding_18_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ì
AssignVariableOp_14AssignVariableOpDassignvariableop_14_adam_recommender_net_4_embedding_19_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ì
AssignVariableOp_15AssignVariableOpDassignvariableop_15_adam_recommender_net_4_embedding_16_embeddings_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ì
AssignVariableOp_16AssignVariableOpDassignvariableop_16_adam_recommender_net_4_embedding_17_embeddings_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ì
AssignVariableOp_17AssignVariableOpDassignvariableop_17_adam_recommender_net_4_embedding_18_embeddings_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ì
AssignVariableOp_18AssignVariableOpDassignvariableop_18_adam_recommender_net_4_embedding_19_embeddings_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_189
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_19f
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_20è
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
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
_user_specified_namefile_prefix
ð	
¥
G__inference_embedding_17_layer_call_and_return_conditional_losses_10684

inputs	*
embedding_lookup_10678:
à
identity¢embedding_lookupõ
embedding_lookupResourceGatherembedding_lookup_10678inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/10678*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupè
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10678*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼6
Ç

__inference__traced_save_10837
file_prefixH
Dsavev2_recommender_net_4_embedding_16_embeddings_read_readvariableopH
Dsavev2_recommender_net_4_embedding_17_embeddings_read_readvariableopH
Dsavev2_recommender_net_4_embedding_18_embeddings_read_readvariableopH
Dsavev2_recommender_net_4_embedding_19_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopO
Ksavev2_adam_recommender_net_4_embedding_16_embeddings_m_read_readvariableopO
Ksavev2_adam_recommender_net_4_embedding_17_embeddings_m_read_readvariableopO
Ksavev2_adam_recommender_net_4_embedding_18_embeddings_m_read_readvariableopO
Ksavev2_adam_recommender_net_4_embedding_19_embeddings_m_read_readvariableopO
Ksavev2_adam_recommender_net_4_embedding_16_embeddings_v_read_readvariableopO
Ksavev2_adam_recommender_net_4_embedding_17_embeddings_v_read_readvariableopO
Ksavev2_adam_recommender_net_4_embedding_18_embeddings_v_read_readvariableopO
Ksavev2_adam_recommender_net_4_embedding_19_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÂ

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ô	
valueÊ	BÇ	B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names°
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÝ

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Dsavev2_recommender_net_4_embedding_16_embeddings_read_readvariableopDsavev2_recommender_net_4_embedding_17_embeddings_read_readvariableopDsavev2_recommender_net_4_embedding_18_embeddings_read_readvariableopDsavev2_recommender_net_4_embedding_19_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopKsavev2_adam_recommender_net_4_embedding_16_embeddings_m_read_readvariableopKsavev2_adam_recommender_net_4_embedding_17_embeddings_m_read_readvariableopKsavev2_adam_recommender_net_4_embedding_18_embeddings_m_read_readvariableopKsavev2_adam_recommender_net_4_embedding_19_embeddings_m_read_readvariableopKsavev2_adam_recommender_net_4_embedding_16_embeddings_v_read_readvariableopKsavev2_adam_recommender_net_4_embedding_17_embeddings_v_read_readvariableopKsavev2_adam_recommender_net_4_embedding_18_embeddings_v_read_readvariableopKsavev2_adam_recommender_net_4_embedding_19_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*±
_input_shapes
: :
à2:
à:	ÇM2:	ÇM: : : : : : : :
à2:
à:	ÇM2:	ÇM:
à2:
à:	ÇM2:	ÇM: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
à2:&"
 
_output_shapes
:
à:%!

_output_shapes
:	ÇM2:%!

_output_shapes
:	ÇM:
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
: :&"
 
_output_shapes
:
à2:&"
 
_output_shapes
:
à:%!

_output_shapes
:	ÇM2:%!

_output_shapes
:	ÇM:&"
 
_output_shapes
:
à2:&"
 
_output_shapes
:
à:%!

_output_shapes
:	ÇM2:%!

_output_shapes
:	ÇM:

_output_shapes
: 
¬
Õ
#__inference_signature_wrapper_10543
input_1	
unknown:
à2
	unknown_0:
à
	unknown_1:	ÇM2
	unknown_2:	ÇM
identity¢StatefulPartitionedCallë
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
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_102322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
t
Á
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_10371

inputs	&
embedding_16_10259:
à2&
embedding_17_10276:
à%
embedding_18_10299:	ÇM2%
embedding_19_10316:	ÇM
identity¢$embedding_16/StatefulPartitionedCall¢$embedding_17/StatefulPartitionedCall¢$embedding_18/StatefulPartitionedCall¢$embedding_19/StatefulPartitionedCall¢Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp¢Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice
$embedding_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_16_10259*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_16_layer_call_and_return_conditional_losses_102582&
$embedding_16/StatefulPartitionedCall
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1¡
$embedding_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_17_10276*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_17_layer_call_and_return_conditional_losses_102752&
$embedding_17/StatefulPartitionedCall
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2¡
$embedding_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_18_10299*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_18_layer_call_and_return_conditional_losses_102982&
$embedding_18/StatefulPartitionedCall
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3¡
$embedding_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_19_10316*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_19_layer_call_and_return_conditional_losses_103152&
$embedding_19/StatefulPartitionedCallq
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axesc
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free
Tensordot/ShapeShape-embedding_16/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÏ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack³
Tensordot/transpose	Transpose-embedding_16/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshapeu
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axes_1g
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free_1
Tensordot/Shape_1Shape-embedding_18/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shape_1x
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_2/axisÙ
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2_2x
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_3/axisÛ
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_3p
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_2p
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_3
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_3t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisº
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack_1¹
Tensordot/transpose_1	Transpose-embedding_18/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose_1§
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1£
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMult
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_2/axis¾
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2
Tensordot/concat_2{
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
	Tensordot
addAddV2Tensordot:output:0-embedding_17/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
add_1AddV2add:z:0-embedding_19/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidï
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_16_10259* 
_output_shapes
:
à2*
dtype02M
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
à22>
<recommender_net_4/embedding_16/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_16/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_16/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_16/embeddings/Regularizer/SumSum@recommender_net_4/embedding_16/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_16/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_16/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_16/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_16/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_16/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_16/embeddings/Regularizer/mulî
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_18_10299*
_output_shapes
:	ÇM2*
dtype02M
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareSquareSrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ÇM22>
<recommender_net_4/embedding_18/embeddings/Regularizer/SquareË
;recommender_net_4/embedding_18/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2=
;recommender_net_4/embedding_18/embeddings/Regularizer/Const¦
9recommender_net_4/embedding_18/embeddings/Regularizer/SumSum@recommender_net_4/embedding_18/embeddings/Regularizer/Square:y:0Drecommender_net_4/embedding_18/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/Sum¿
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752=
;recommender_net_4/embedding_18/embeddings/Regularizer/mul/x¨
9recommender_net_4/embedding_18/embeddings/Regularizer/mulMulDrecommender_net_4/embedding_18/embeddings/Regularizer/mul/x:output:0Brecommender_net_4/embedding_18/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2;
9recommender_net_4/embedding_18/embeddings/Regularizer/mulf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp%^embedding_16/StatefulPartitionedCall%^embedding_17/StatefulPartitionedCall%^embedding_18/StatefulPartitionedCall%^embedding_19/StatefulPartitionedCallL^recommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpL^recommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2L
$embedding_16/StatefulPartitionedCall$embedding_16/StatefulPartitionedCall2L
$embedding_17/StatefulPartitionedCall$embedding_17/StatefulPartitionedCall2L
$embedding_18/StatefulPartitionedCall$embedding_18/StatefulPartitionedCall2L
$embedding_19/StatefulPartitionedCall$embedding_19/StatefulPartitionedCall2
Krecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_16/embeddings/Regularizer/Square/ReadVariableOp2
Krecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOpKrecommender_net_4/embedding_18/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
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
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:U
©
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
regularization_losses
trainable_variables
	variables
		keras_api


signatures
J_default_save_signature
*K&call_and_return_all_conditional_losses
L__call__"
_tf_keras_model
µ

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
*M&call_and_return_all_conditional_losses
N__call__"
_tf_keras_layer
µ

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"
_tf_keras_layer
µ

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"
_tf_keras_layer
µ

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"
_tf_keras_layer

iter

 beta_1

!beta_2
	"decay
#learning_ratemBmCmDmEvFvGvHvI"
	optimizer
.
U0
V1"
trackable_list_wrapper
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
Ê
$layer_regularization_losses

%layers
regularization_losses
trainable_variables
&layer_metrics
	variables
'metrics
(non_trainable_variables
L__call__
J_default_save_signature
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
,
Wserving_default"
signature_map
=:;
à22)recommender_net_4/embedding_16/embeddings
'
U0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
)layer_regularization_losses

*layers
regularization_losses
trainable_variables
+layer_metrics
	variables
,metrics
-non_trainable_variables
N__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
=:;
à2)recommender_net_4/embedding_17/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
.layer_regularization_losses

/layers
regularization_losses
trainable_variables
0layer_metrics
	variables
1metrics
2non_trainable_variables
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
<::	ÇM22)recommender_net_4/embedding_18/embeddings
'
V0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
3layer_regularization_losses

4layers
regularization_losses
trainable_variables
5layer_metrics
	variables
6metrics
7non_trainable_variables
R__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
<::	ÇM2)recommender_net_4/embedding_19/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
8layer_regularization_losses

9layers
regularization_losses
trainable_variables
:layer_metrics
	variables
;metrics
<non_trainable_variables
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
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
 "
trackable_dict_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
U0"
trackable_list_wrapper
 "
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
'
V0"
trackable_list_wrapper
 "
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
N
	>total
	?count
@	variables
A	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
>0
?1"
trackable_list_wrapper
-
@	variables"
_generic_user_object
B:@
à220Adam/recommender_net_4/embedding_16/embeddings/m
B:@
à20Adam/recommender_net_4/embedding_17/embeddings/m
A:?	ÇM220Adam/recommender_net_4/embedding_18/embeddings/m
A:?	ÇM20Adam/recommender_net_4/embedding_19/embeddings/m
B:@
à220Adam/recommender_net_4/embedding_16/embeddings/v
B:@
à20Adam/recommender_net_4/embedding_17/embeddings/v
A:?	ÇM220Adam/recommender_net_4/embedding_18/embeddings/v
A:?	ÇM20Adam/recommender_net_4/embedding_19/embeddings/v
ËBÈ
 __inference__wrapped_model_10232input_1"
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
Ä2Á
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_10634
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_10510¢
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
2
1__inference_recommender_net_4_layer_call_fn_10382
1__inference_recommender_net_4_layer_call_fn_10647¢
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
ñ2î
G__inference_embedding_16_layer_call_and_return_conditional_losses_10668¢
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
Ö2Ó
,__inference_embedding_16_layer_call_fn_10675¢
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
ñ2î
G__inference_embedding_17_layer_call_and_return_conditional_losses_10684¢
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
Ö2Ó
,__inference_embedding_17_layer_call_fn_10691¢
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
ñ2î
G__inference_embedding_18_layer_call_and_return_conditional_losses_10712¢
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
Ö2Ó
,__inference_embedding_18_layer_call_fn_10719¢
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
ñ2î
G__inference_embedding_19_layer_call_and_return_conditional_losses_10728¢
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
Ö2Ó
,__inference_embedding_19_layer_call_fn_10735¢
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
²2¯
__inference_loss_fn_0_10746
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
²2¯
__inference_loss_fn_1_10757
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
ÊBÇ
#__inference_signature_wrapper_10543input_1"
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
 
 __inference__wrapped_model_10232m0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¢
G__inference_embedding_16_layer_call_and_return_conditional_losses_10668W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 z
,__inference_embedding_16_layer_call_fn_10675J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ2¢
G__inference_embedding_17_layer_call_and_return_conditional_losses_10684W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
,__inference_embedding_17_layer_call_fn_10691J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¢
G__inference_embedding_18_layer_call_and_return_conditional_losses_10712W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 z
,__inference_embedding_18_layer_call_fn_10719J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ2¢
G__inference_embedding_19_layer_call_and_return_conditional_losses_10728W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
,__inference_embedding_19_layer_call_fn_10735J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ:
__inference_loss_fn_0_10746¢

¢ 
ª " :
__inference_loss_fn_1_10757¢

¢ 
ª " ¯
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_10510_0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ®
L__inference_recommender_net_4_layer_call_and_return_conditional_losses_10634^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
1__inference_recommender_net_4_layer_call_fn_10382R0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_recommender_net_4_layer_call_fn_10647Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ
#__inference_signature_wrapper_10543x;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ