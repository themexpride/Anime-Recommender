??
??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
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
executor_typestring ?
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.3.02unknown8??
?
$recommender_net/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*5
shared_name&$recommender_net/embedding/embeddings
?
8recommender_net/embedding/embeddings/Read/ReadVariableOpReadVariableOp$recommender_net/embedding/embeddings* 
_output_shapes
:
??*
dtype0
?
&recommender_net/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&recommender_net/embedding_1/embeddings
?
:recommender_net/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_1/embeddings* 
_output_shapes
:
??*
dtype0
?
&recommender_net/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*7
shared_name(&recommender_net/embedding_2/embeddings
?
:recommender_net/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_2/embeddings*
_output_shapes
:	?M*
dtype0
?
&recommender_net/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*7
shared_name(&recommender_net/embedding_3/embeddings
?
:recommender_net/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_3/embeddings*
_output_shapes
:	?M*
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
?
+Adam/recommender_net/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*<
shared_name-+Adam/recommender_net/embedding/embeddings/m
?
?Adam/recommender_net/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/embedding/embeddings/m* 
_output_shapes
:
??*
dtype0
?
-Adam/recommender_net/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*>
shared_name/-Adam/recommender_net/embedding_1/embeddings/m
?
AAdam/recommender_net/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_1/embeddings/m* 
_output_shapes
:
??*
dtype0
?
-Adam/recommender_net/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*>
shared_name/-Adam/recommender_net/embedding_2/embeddings/m
?
AAdam/recommender_net/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_2/embeddings/m*
_output_shapes
:	?M*
dtype0
?
-Adam/recommender_net/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*>
shared_name/-Adam/recommender_net/embedding_3/embeddings/m
?
AAdam/recommender_net/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_3/embeddings/m*
_output_shapes
:	?M*
dtype0
?
+Adam/recommender_net/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*<
shared_name-+Adam/recommender_net/embedding/embeddings/v
?
?Adam/recommender_net/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/embedding/embeddings/v* 
_output_shapes
:
??*
dtype0
?
-Adam/recommender_net/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*>
shared_name/-Adam/recommender_net/embedding_1/embeddings/v
?
AAdam/recommender_net/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_1/embeddings/v* 
_output_shapes
:
??*
dtype0
?
-Adam/recommender_net/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*>
shared_name/-Adam/recommender_net/embedding_2/embeddings/v
?
AAdam/recommender_net/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_2/embeddings/v*
_output_shapes
:	?M*
dtype0
?
-Adam/recommender_net/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*>
shared_name/-Adam/recommender_net/embedding_3/embeddings/v
?
AAdam/recommender_net/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_3/embeddings/v*
_output_shapes
:	?M*
dtype0

NoOpNoOp
?#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?"
value?"B?" B?"
?
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
?
iter

 beta_1

!beta_2
	"decay
#learning_ratemHmImJmKvLvMvNvO

0
1
2
3
 

0
1
2
3
?
trainable_variables
$layer_metrics
%metrics
regularization_losses
	variables
&non_trainable_variables

'layers
(layer_regularization_losses
 
nl
VARIABLE_VALUE$recommender_net/embedding/embeddings4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
trainable_variables
)layer_metrics
*metrics
regularization_losses
	variables
+non_trainable_variables

,layers
-layer_regularization_losses
ki
VARIABLE_VALUE&recommender_net/embedding_1/embeddings/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
trainable_variables
.layer_metrics
/metrics
regularization_losses
	variables
0non_trainable_variables

1layers
2layer_regularization_losses
qo
VARIABLE_VALUE&recommender_net/embedding_2/embeddings5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
trainable_variables
3layer_metrics
4metrics
regularization_losses
	variables
5non_trainable_variables

6layers
7layer_regularization_losses
lj
VARIABLE_VALUE&recommender_net/embedding_3/embeddings0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
trainable_variables
8layer_metrics
9metrics
regularization_losses
	variables
:non_trainable_variables

;layers
<layer_regularization_losses
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

=0
>1
 

0
1
2
3
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
??
VARIABLE_VALUE+Adam/recommender_net/embedding/embeddings/mPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE-Adam/recommender_net/embedding_1/embeddings/mKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE-Adam/recommender_net/embedding_2/embeddings/mQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE-Adam/recommender_net/embedding_3/embeddings/mLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/recommender_net/embedding/embeddings/vPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE-Adam/recommender_net/embedding_1/embeddings/vKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE-Adam/recommender_net/embedding_2/embeddings/vQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE-Adam/recommender_net/embedding_3/embeddings/vLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1$recommender_net/embedding/embeddings&recommender_net/embedding_1/embeddings&recommender_net/embedding_2/embeddings&recommender_net/embedding_3/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_991877
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8recommender_net/embedding/embeddings/Read/ReadVariableOp:recommender_net/embedding_1/embeddings/Read/ReadVariableOp:recommender_net/embedding_2/embeddings/Read/ReadVariableOp:recommender_net/embedding_3/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp?Adam/recommender_net/embedding/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_1/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_2/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_3/embeddings/m/Read/ReadVariableOp?Adam/recommender_net/embedding/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_1/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_2/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_3/embeddings/v/Read/ReadVariableOpConst*"
Tin
2	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_992073
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$recommender_net/embedding/embeddings&recommender_net/embedding_1/embeddings&recommender_net/embedding_2/embeddings&recommender_net/embedding_3/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1+Adam/recommender_net/embedding/embeddings/m-Adam/recommender_net/embedding_1/embeddings/m-Adam/recommender_net/embedding_2/embeddings/m-Adam/recommender_net/embedding_3/embeddings/m+Adam/recommender_net/embedding/embeddings/v-Adam/recommender_net/embedding_1/embeddings/v-Adam/recommender_net/embedding_2/embeddings/v-Adam/recommender_net/embedding_3/embeddings/v*!
Tin
2*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_992146??
?
?
$__inference_signature_wrapper_991877
input_1	
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_9916602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?	
?
G__inference_embedding_1_layer_call_and_return_conditional_losses_991914

inputs	,
(embedding_lookup_readvariableop_resource
identity??
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_output_shapes
:?????????2
embedding_lookup/Identityv
IdentityIdentity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
ƀ
?
!__inference__wrapped_model_991660
input_1	F
Brecommender_net_embedding_embedding_lookup_readvariableop_resourceH
Drecommender_net_embedding_1_embedding_lookup_readvariableop_resourceH
Drecommender_net_embedding_2_embedding_lookup_readvariableop_resourceH
Drecommender_net_embedding_3_embedding_lookup_readvariableop_resource
identity??
#recommender_net/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#recommender_net/strided_slice/stack?
%recommender_net/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%recommender_net/strided_slice/stack_1?
%recommender_net/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%recommender_net/strided_slice/stack_2?
recommender_net/strided_sliceStridedSliceinput_1,recommender_net/strided_slice/stack:output:0.recommender_net/strided_slice/stack_1:output:0.recommender_net/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
recommender_net/strided_slice?
9recommender_net/embedding/embedding_lookup/ReadVariableOpReadVariableOpBrecommender_net_embedding_embedding_lookup_readvariableop_resource* 
_output_shapes
:
??*
dtype02;
9recommender_net/embedding/embedding_lookup/ReadVariableOp?
/recommender_net/embedding/embedding_lookup/axisConst*L
_classB
@>loc:@recommender_net/embedding/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 21
/recommender_net/embedding/embedding_lookup/axis?
*recommender_net/embedding/embedding_lookupGatherV2Arecommender_net/embedding/embedding_lookup/ReadVariableOp:value:0&recommender_net/strided_slice:output:08recommender_net/embedding/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*L
_classB
@>loc:@recommender_net/embedding/embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2,
*recommender_net/embedding/embedding_lookup?
3recommender_net/embedding/embedding_lookup/IdentityIdentity3recommender_net/embedding/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????25
3recommender_net/embedding/embedding_lookup/Identity?
%recommender_net/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%recommender_net/strided_slice_1/stack?
'recommender_net/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net/strided_slice_1/stack_1?
'recommender_net/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'recommender_net/strided_slice_1/stack_2?
recommender_net/strided_slice_1StridedSliceinput_1.recommender_net/strided_slice_1/stack:output:00recommender_net/strided_slice_1/stack_1:output:00recommender_net/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2!
recommender_net/strided_slice_1?
;recommender_net/embedding_1/embedding_lookup/ReadVariableOpReadVariableOpDrecommender_net_embedding_1_embedding_lookup_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;recommender_net/embedding_1/embedding_lookup/ReadVariableOp?
1recommender_net/embedding_1/embedding_lookup/axisConst*N
_classD
B@loc:@recommender_net/embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 23
1recommender_net/embedding_1/embedding_lookup/axis?
,recommender_net/embedding_1/embedding_lookupGatherV2Crecommender_net/embedding_1/embedding_lookup/ReadVariableOp:value:0(recommender_net/strided_slice_1:output:0:recommender_net/embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*N
_classD
B@loc:@recommender_net/embedding_1/embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2.
,recommender_net/embedding_1/embedding_lookup?
5recommender_net/embedding_1/embedding_lookup/IdentityIdentity5recommender_net/embedding_1/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????27
5recommender_net/embedding_1/embedding_lookup/Identity?
%recommender_net/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%recommender_net/strided_slice_2/stack?
'recommender_net/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net/strided_slice_2/stack_1?
'recommender_net/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'recommender_net/strided_slice_2/stack_2?
recommender_net/strided_slice_2StridedSliceinput_1.recommender_net/strided_slice_2/stack:output:00recommender_net/strided_slice_2/stack_1:output:00recommender_net/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2!
recommender_net/strided_slice_2?
;recommender_net/embedding_2/embedding_lookup/ReadVariableOpReadVariableOpDrecommender_net_embedding_2_embedding_lookup_readvariableop_resource*
_output_shapes
:	?M*
dtype02=
;recommender_net/embedding_2/embedding_lookup/ReadVariableOp?
1recommender_net/embedding_2/embedding_lookup/axisConst*N
_classD
B@loc:@recommender_net/embedding_2/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 23
1recommender_net/embedding_2/embedding_lookup/axis?
,recommender_net/embedding_2/embedding_lookupGatherV2Crecommender_net/embedding_2/embedding_lookup/ReadVariableOp:value:0(recommender_net/strided_slice_2:output:0:recommender_net/embedding_2/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*N
_classD
B@loc:@recommender_net/embedding_2/embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2.
,recommender_net/embedding_2/embedding_lookup?
5recommender_net/embedding_2/embedding_lookup/IdentityIdentity5recommender_net/embedding_2/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????27
5recommender_net/embedding_2/embedding_lookup/Identity?
%recommender_net/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%recommender_net/strided_slice_3/stack?
'recommender_net/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net/strided_slice_3/stack_1?
'recommender_net/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'recommender_net/strided_slice_3/stack_2?
recommender_net/strided_slice_3StridedSliceinput_1.recommender_net/strided_slice_3/stack:output:00recommender_net/strided_slice_3/stack_1:output:00recommender_net/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2!
recommender_net/strided_slice_3?
;recommender_net/embedding_3/embedding_lookup/ReadVariableOpReadVariableOpDrecommender_net_embedding_3_embedding_lookup_readvariableop_resource*
_output_shapes
:	?M*
dtype02=
;recommender_net/embedding_3/embedding_lookup/ReadVariableOp?
1recommender_net/embedding_3/embedding_lookup/axisConst*N
_classD
B@loc:@recommender_net/embedding_3/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 23
1recommender_net/embedding_3/embedding_lookup/axis?
,recommender_net/embedding_3/embedding_lookupGatherV2Crecommender_net/embedding_3/embedding_lookup/ReadVariableOp:value:0(recommender_net/strided_slice_3:output:0:recommender_net/embedding_3/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*N
_classD
B@loc:@recommender_net/embedding_3/embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2.
,recommender_net/embedding_3/embedding_lookup?
5recommender_net/embedding_3/embedding_lookup/IdentityIdentity5recommender_net/embedding_3/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????27
5recommender_net/embedding_3/embedding_lookup/Identity?
recommender_net/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2 
recommender_net/Tensordot/axes?
recommender_net/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2 
recommender_net/Tensordot/free?
recommender_net/Tensordot/ShapeShape<recommender_net/embedding/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:2!
recommender_net/Tensordot/Shape?
'recommender_net/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'recommender_net/Tensordot/GatherV2/axis?
"recommender_net/Tensordot/GatherV2GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/free:output:00recommender_net/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2$
"recommender_net/Tensordot/GatherV2?
)recommender_net/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net/Tensordot/GatherV2_1/axis?
$recommender_net/Tensordot/GatherV2_1GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/axes:output:02recommender_net/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$recommender_net/Tensordot/GatherV2_1?
recommender_net/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
recommender_net/Tensordot/Const?
recommender_net/Tensordot/ProdProd+recommender_net/Tensordot/GatherV2:output:0(recommender_net/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
recommender_net/Tensordot/Prod?
!recommender_net/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!recommender_net/Tensordot/Const_1?
 recommender_net/Tensordot/Prod_1Prod-recommender_net/Tensordot/GatherV2_1:output:0*recommender_net/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 recommender_net/Tensordot/Prod_1?
%recommender_net/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%recommender_net/Tensordot/concat/axis?
 recommender_net/Tensordot/concatConcatV2'recommender_net/Tensordot/free:output:0'recommender_net/Tensordot/axes:output:0.recommender_net/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 recommender_net/Tensordot/concat?
recommender_net/Tensordot/stackPack'recommender_net/Tensordot/Prod:output:0)recommender_net/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
recommender_net/Tensordot/stack?
#recommender_net/Tensordot/transpose	Transpose<recommender_net/embedding/embedding_lookup/Identity:output:0)recommender_net/Tensordot/concat:output:0*
T0*'
_output_shapes
:?????????2%
#recommender_net/Tensordot/transpose?
!recommender_net/Tensordot/ReshapeReshape'recommender_net/Tensordot/transpose:y:0(recommender_net/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2#
!recommender_net/Tensordot/Reshape?
 recommender_net/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 recommender_net/Tensordot/axes_1?
 recommender_net/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2"
 recommender_net/Tensordot/free_1?
!recommender_net/Tensordot/Shape_1Shape>recommender_net/embedding_2/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:2#
!recommender_net/Tensordot/Shape_1?
)recommender_net/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net/Tensordot/GatherV2_2/axis?
$recommender_net/Tensordot/GatherV2_2GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/free_1:output:02recommender_net/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2&
$recommender_net/Tensordot/GatherV2_2?
)recommender_net/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net/Tensordot/GatherV2_3/axis?
$recommender_net/Tensordot/GatherV2_3GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/axes_1:output:02recommender_net/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$recommender_net/Tensordot/GatherV2_3?
!recommender_net/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2#
!recommender_net/Tensordot/Const_2?
 recommender_net/Tensordot/Prod_2Prod-recommender_net/Tensordot/GatherV2_2:output:0*recommender_net/Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2"
 recommender_net/Tensordot/Prod_2?
!recommender_net/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2#
!recommender_net/Tensordot/Const_3?
 recommender_net/Tensordot/Prod_3Prod-recommender_net/Tensordot/GatherV2_3:output:0*recommender_net/Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2"
 recommender_net/Tensordot/Prod_3?
'recommender_net/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'recommender_net/Tensordot/concat_1/axis?
"recommender_net/Tensordot/concat_1ConcatV2)recommender_net/Tensordot/axes_1:output:0)recommender_net/Tensordot/free_1:output:00recommender_net/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"recommender_net/Tensordot/concat_1?
!recommender_net/Tensordot/stack_1Pack)recommender_net/Tensordot/Prod_3:output:0)recommender_net/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2#
!recommender_net/Tensordot/stack_1?
%recommender_net/Tensordot/transpose_1	Transpose>recommender_net/embedding_2/embedding_lookup/Identity:output:0+recommender_net/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:?????????2'
%recommender_net/Tensordot/transpose_1?
#recommender_net/Tensordot/Reshape_1Reshape)recommender_net/Tensordot/transpose_1:y:0*recommender_net/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:??????????????????2%
#recommender_net/Tensordot/Reshape_1?
 recommender_net/Tensordot/MatMulMatMul*recommender_net/Tensordot/Reshape:output:0,recommender_net/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:??????????????????2"
 recommender_net/Tensordot/MatMul?
'recommender_net/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'recommender_net/Tensordot/concat_2/axis?
"recommender_net/Tensordot/concat_2ConcatV2+recommender_net/Tensordot/GatherV2:output:0-recommender_net/Tensordot/GatherV2_2:output:00recommender_net/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2$
"recommender_net/Tensordot/concat_2?
recommender_net/TensordotReshape*recommender_net/Tensordot/MatMul:product:0+recommender_net/Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
recommender_net/Tensordot?
recommender_net/addAddV2"recommender_net/Tensordot:output:0>recommender_net/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2
recommender_net/add?
recommender_net/add_1AddV2recommender_net/add:z:0>recommender_net/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2
recommender_net/add_1?
recommender_net/SigmoidSigmoidrecommender_net/add_1:z:0*
T0*'
_output_shapes
:?????????2
recommender_net/Sigmoido
IdentityIdentityrecommender_net/Sigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::::P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
E__inference_embedding_layer_call_and_return_conditional_losses_991898

inputs	,
(embedding_lookup_readvariableop_resource
identity??
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_output_shapes
:?????????2
embedding_lookup/Identity?
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource* 
_output_shapes
:
??*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp?
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??29
7recommender_net/embedding/embeddings/Regularizer/Square?
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const?
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum?
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?528
6recommender_net/embedding/embeddings/Regularizer/mul/x?
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mulv
IdentityIdentity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
r
,__inference_embedding_2_layer_call_fn_991949

inputs	
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_9917392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
p
*__inference_embedding_layer_call_fn_991905

inputs	
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_9916832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?l
?
K__inference_recommender_net_layer_call_and_return_conditional_losses_991828
input_1	
embedding_991692
embedding_1_991717
embedding_2_991748
embedding_3_991773
identity??!embedding/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?#embedding_2/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall{
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
strided_slice/stack_2?
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice?
!embedding/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_991692*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_9916832#
!embedding/StatefulPartitionedCall
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_1_991717*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_9917082%
#embedding_1/StatefulPartitionedCall
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_2_991748*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_9917392%
#embedding_2/StatefulPartitionedCall
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_3_991773*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_9917642%
#embedding_3/StatefulPartitionedCallq
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
Tensordot/free|
Tensordot/ShapeShape*embedding/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
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
Tensordot/GatherV2_1/axis?
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
Tensordot/Const?
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
Tensordot/Const_1?
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
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	Transpose*embedding/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
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
Tensordot/free_1?
Tensordot/Shape_1Shape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shape_1x
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_2/axis?
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
Tensordot/GatherV2_3/axis?
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
Tensordot/Const_2?
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
Tensordot/Const_3?
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
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack_1?
Tensordot/transpose_1	Transpose,embedding_2/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:?????????2
Tensordot/transpose_1?
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape_1?
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/MatMult
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_2/axis?
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
	Tensordot?
addAddV2Tensordot:output:0,embedding_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2
add?
add_1AddV2add:z:0,embedding_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_991692* 
_output_shapes
:
??*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp?
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??29
7recommender_net/embedding/embeddings/Regularizer/Square?
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const?
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum?
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?528
6recommender_net/embedding/embeddings/Regularizer/mul/x?
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mul?
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_991748*
_output_shapes
:	?M*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp?
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M2;
9recommender_net/embedding_2/embeddings/Regularizer/Square?
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const?
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum?
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x?
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mul?
IdentityIdentitySigmoid:y:0"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?	
?
G__inference_embedding_1_layer_call_and_return_conditional_losses_991708

inputs	,
(embedding_lookup_readvariableop_resource
identity??
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_output_shapes
:?????????2
embedding_lookup/Identityv
IdentityIdentity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_embedding_layer_call_and_return_conditional_losses_991683

inputs	,
(embedding_lookup_readvariableop_resource
identity??
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_output_shapes
:?????????2
embedding_lookup/Identity?
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource* 
_output_shapes
:
??*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp?
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??29
7recommender_net/embedding/embeddings/Regularizer/Square?
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const?
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum?
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?528
6recommender_net/embedding/embeddings/Regularizer/mul/x?
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mulv
IdentityIdentity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
r
,__inference_embedding_3_layer_call_fn_991965

inputs	
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_9917642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_991987U
Qrecommender_net_embedding_2_embeddings_regularizer_square_readvariableop_resource
identity??
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpQrecommender_net_embedding_2_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	?M*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp?
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M2;
9recommender_net/embedding_2/embeddings/Regularizer/Square?
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const?
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum?
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x?
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mul}
IdentityIdentity:recommender_net/embedding_2/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:
?
?
__inference_loss_fn_0_991976S
Orecommender_net_embedding_embeddings_regularizer_square_readvariableop_resource
identity??
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpOrecommender_net_embedding_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp?
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??29
7recommender_net/embedding/embeddings/Regularizer/Square?
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const?
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum?
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?528
6recommender_net/embedding/embeddings/Regularizer/mul/x?
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mul{
IdentityIdentity8recommender_net/embedding/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:
?7
?

__inference__traced_save_992073
file_prefixC
?savev2_recommender_net_embedding_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_1_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_2_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_3_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopJ
Fsavev2_adam_recommender_net_embedding_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_1_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_2_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_3_embeddings_m_read_readvariableopJ
Fsavev2_adam_recommender_net_embedding_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_1_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_2_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_3_embeddings_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const?
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_f944dc4ed8f84a58b0dd4d60a233dd8d/part2	
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_recommender_net_embedding_embeddings_read_readvariableopAsavev2_recommender_net_embedding_1_embeddings_read_readvariableopAsavev2_recommender_net_embedding_2_embeddings_read_readvariableopAsavev2_recommender_net_embedding_3_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopFsavev2_adam_recommender_net_embedding_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_1_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_2_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_3_embeddings_m_read_readvariableopFsavev2_adam_recommender_net_embedding_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_1_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_2_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_3_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:
??:	?M:	?M: : : : : : : : : :
??:
??:	?M:	?M:
??:
??:	?M:	?M: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?M:%!

_output_shapes
:	?M:
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
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?M:%!

_output_shapes
:	?M:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?M:%!

_output_shapes
:	?M:

_output_shapes
: 
?^
?
"__inference__traced_restore_992146
file_prefix9
5assignvariableop_recommender_net_embedding_embeddings=
9assignvariableop_1_recommender_net_embedding_1_embeddings=
9assignvariableop_2_recommender_net_embedding_2_embeddings=
9assignvariableop_3_recommender_net_embedding_3_embeddings 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rate
assignvariableop_9_total
assignvariableop_10_count
assignvariableop_11_total_1
assignvariableop_12_count_1C
?assignvariableop_13_adam_recommender_net_embedding_embeddings_mE
Aassignvariableop_14_adam_recommender_net_embedding_1_embeddings_mE
Aassignvariableop_15_adam_recommender_net_embedding_2_embeddings_mE
Aassignvariableop_16_adam_recommender_net_embedding_3_embeddings_mC
?assignvariableop_17_adam_recommender_net_embedding_embeddings_vE
Aassignvariableop_18_adam_recommender_net_embedding_1_embeddings_vE
Aassignvariableop_19_adam_recommender_net_embedding_2_embeddings_vE
Aassignvariableop_20_adam_recommender_net_embedding_3_embeddings_v
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp5assignvariableop_recommender_net_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp9assignvariableop_1_recommender_net_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp9assignvariableop_2_recommender_net_embedding_2_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp9assignvariableop_3_recommender_net_embedding_3_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp?assignvariableop_13_adam_recommender_net_embedding_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpAassignvariableop_14_adam_recommender_net_embedding_1_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpAassignvariableop_15_adam_recommender_net_embedding_2_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpAassignvariableop_16_adam_recommender_net_embedding_3_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp?assignvariableop_17_adam_recommender_net_embedding_embeddings_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpAassignvariableop_18_adam_recommender_net_embedding_1_embeddings_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpAassignvariableop_19_adam_recommender_net_embedding_2_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpAassignvariableop_20_adam_recommender_net_embedding_3_embeddings_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21?
Identity_22IdentityIdentity_21:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_22"#
identity_22Identity_22:output:0*i
_input_shapesX
V: :::::::::::::::::::::2$
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
?	
?
G__inference_embedding_3_layer_call_and_return_conditional_losses_991958

inputs	,
(embedding_lookup_readvariableop_resource
identity??
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*
_output_shapes
:	?M*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_output_shapes
:?????????2
embedding_lookup/Identityv
IdentityIdentity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
G__inference_embedding_3_layer_call_and_return_conditional_losses_991764

inputs	,
(embedding_lookup_readvariableop_resource
identity??
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*
_output_shapes
:	?M*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_output_shapes
:?????????2
embedding_lookup/Identityv
IdentityIdentity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
r
,__inference_embedding_1_layer_call_fn_991921

inputs	
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_9917082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_embedding_2_layer_call_and_return_conditional_losses_991739

inputs	,
(embedding_lookup_readvariableop_resource
identity??
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*
_output_shapes
:	?M*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_output_shapes
:?????????2
embedding_lookup/Identity?
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*
_output_shapes
:	?M*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp?
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M2;
9recommender_net/embedding_2/embeddings/Regularizer/Square?
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const?
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum?
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x?
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mulv
IdentityIdentity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_embedding_2_layer_call_and_return_conditional_losses_991942

inputs	,
(embedding_lookup_readvariableop_resource
identity??
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*
_output_shapes
:	?M*
dtype02!
embedding_lookup/ReadVariableOp?
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis?
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*'
_output_shapes
:?????????2
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_output_shapes
:?????????2
embedding_lookup/Identity?
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*
_output_shapes
:	?M*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp?
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M2;
9recommender_net/embedding_2/embeddings/Regularizer/Square?
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const?
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum?
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x?
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mulv
IdentityIdentity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
0__inference_recommender_net_layer_call_fn_991842
input_1	
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_recommender_net_layer_call_and_return_conditional_losses_9918282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0	?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?s
?
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
P_default_save_signature
*Q&call_and_return_all_conditional_losses
R__call__"?
_tf_keras_model?{"class_name": "RecommenderNet", "name": "recommender_net", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "RecommenderNet"}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0}}, "metrics": ["accuracy"], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 69601, "output_dim": 17, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*U&call_and_return_all_conditional_losses
V__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 69601, "output_dim": 1, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*W&call_and_return_all_conditional_losses
X__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 9932, "output_dim": 17, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 9932, "output_dim": 1, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
?
iter

 beta_1

!beta_2
	"decay
#learning_ratemHmImJmKvLvMvNvO"
	optimizer
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
<
0
1
2
3"
trackable_list_wrapper
?
trainable_variables
$layer_metrics
%metrics
regularization_losses
	variables
&non_trainable_variables

'layers
(layer_regularization_losses
R__call__
P_default_save_signature
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
,
]serving_default"
signature_map
8:6
??2$recommender_net/embedding/embeddings
'
0"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
trainable_variables
)layer_metrics
*metrics
regularization_losses
	variables
+non_trainable_variables

,layers
-layer_regularization_losses
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
::8
??2&recommender_net/embedding_1/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
trainable_variables
.layer_metrics
/metrics
regularization_losses
	variables
0non_trainable_variables

1layers
2layer_regularization_losses
V__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
9:7	?M2&recommender_net/embedding_2/embeddings
'
0"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
trainable_variables
3layer_metrics
4metrics
regularization_losses
	variables
5non_trainable_variables

6layers
7layer_regularization_losses
X__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
9:7	?M2&recommender_net/embedding_3/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
trainable_variables
8layer_metrics
9metrics
regularization_losses
	variables
:non_trainable_variables

;layers
<layer_regularization_losses
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
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
?
	?total
	@count
A	variables
B	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	Ctotal
	Dcount
E
_fn_kwargs
F	variables
G	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
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
=:;
??2+Adam/recommender_net/embedding/embeddings/m
?:=
??2-Adam/recommender_net/embedding_1/embeddings/m
>:<	?M2-Adam/recommender_net/embedding_2/embeddings/m
>:<	?M2-Adam/recommender_net/embedding_3/embeddings/m
=:;
??2+Adam/recommender_net/embedding/embeddings/v
?:=
??2-Adam/recommender_net/embedding_1/embeddings/v
>:<	?M2-Adam/recommender_net/embedding_2/embeddings/v
>:<	?M2-Adam/recommender_net/embedding_3/embeddings/v
?2?
!__inference__wrapped_model_991660?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_1?????????	
?2?
K__inference_recommender_net_layer_call_and_return_conditional_losses_991828?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_1?????????	
?2?
0__inference_recommender_net_layer_call_fn_991842?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_1?????????	
?2?
E__inference_embedding_layer_call_and_return_conditional_losses_991898?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_embedding_layer_call_fn_991905?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_embedding_1_layer_call_and_return_conditional_losses_991914?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_embedding_1_layer_call_fn_991921?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_embedding_2_layer_call_and_return_conditional_losses_991942?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_embedding_2_layer_call_fn_991949?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_embedding_3_layer_call_and_return_conditional_losses_991958?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_embedding_3_layer_call_fn_991965?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_991976?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_991987?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
3B1
$__inference_signature_wrapper_991877input_1?
!__inference__wrapped_model_991660m0?-
&?#
!?
input_1?????????	
? "3?0
.
output_1"?
output_1??????????
G__inference_embedding_1_layer_call_and_return_conditional_losses_991914W+?(
!?
?
inputs?????????	
? "%?"
?
0?????????
? z
,__inference_embedding_1_layer_call_fn_991921J+?(
!?
?
inputs?????????	
? "???????????
G__inference_embedding_2_layer_call_and_return_conditional_losses_991942W+?(
!?
?
inputs?????????	
? "%?"
?
0?????????
? z
,__inference_embedding_2_layer_call_fn_991949J+?(
!?
?
inputs?????????	
? "???????????
G__inference_embedding_3_layer_call_and_return_conditional_losses_991958W+?(
!?
?
inputs?????????	
? "%?"
?
0?????????
? z
,__inference_embedding_3_layer_call_fn_991965J+?(
!?
?
inputs?????????	
? "???????????
E__inference_embedding_layer_call_and_return_conditional_losses_991898W+?(
!?
?
inputs?????????	
? "%?"
?
0?????????
? x
*__inference_embedding_layer_call_fn_991905J+?(
!?
?
inputs?????????	
? "??????????;
__inference_loss_fn_0_991976?

? 
? "? ;
__inference_loss_fn_1_991987?

? 
? "? ?
K__inference_recommender_net_layer_call_and_return_conditional_losses_991828_0?-
&?#
!?
input_1?????????	
? "%?"
?
0?????????
? ?
0__inference_recommender_net_layer_call_fn_991842R0?-
&?#
!?
input_1?????????	
? "???????????
$__inference_signature_wrapper_991877x;?8
? 
1?.
,
input_1!?
input_1?????????	"3?0
.
output_1"?
output_1?????????