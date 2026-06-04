<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cca01e25-804e-4251-834c-1338367d39ef(Example.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ke35" ref="r:2989d431-ffca-4d3c-86eb-05e1c7fe32bd(Example.structure)" />
    <import index="xz9p" ref="r:cf167d45-2368-455e-b1dc-856978805fbf(Example.typesystem)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="fnmy" ref="r:89c0fb70-0977-4113-a076-5906f9d8630f(jetbrains.mps.baseLanguage.scopes)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="13h7C7" id="16EXoXrgQTz">
    <ref role="13h7C2" to="ke35:16EXoXrbZcF" resolve="Type" />
    <node concept="13i0hz" id="16EXoXrgQTQ" role="13h7CS">
      <property role="TrG5h" value="isLinear" />
      <property role="2Ki8OM" value="true" />
      <node concept="3clFbS" id="16EXoXrdNi7" role="3clF47">
        <node concept="3clFbJ" id="16EXoXrdNp0" role="3cqZAp">
          <node concept="2OqwBi" id="16EXoXrdNzx" role="3clFbw">
            <node concept="37vLTw" id="16EXoXrdNpE" role="2Oq$k0">
              <ref role="3cqZAo" node="16EXoXrdNk_" resolve="ty" />
            </node>
            <node concept="1mIQ4w" id="16EXoXrdNHh" role="2OqNvi">
              <node concept="chp4Y" id="16EXoXrdNK1" role="cj9EA">
                <ref role="cht4Q" to="ke35:16EXoXrbZcA" resolve="TypeLinear" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="16EXoXrdNp2" role="3clFbx">
            <node concept="3cpWs6" id="16EXoXrdNNY" role="3cqZAp">
              <node concept="3clFbT" id="16EXoXrdNOF" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="16EXoXrdOQU" role="3eNLev">
            <node concept="2OqwBi" id="16EXoXrdPvP" role="3eO9$A">
              <node concept="37vLTw" id="16EXoXrdOWK" role="2Oq$k0">
                <ref role="3cqZAo" node="16EXoXrdNk_" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="16EXoXrdPAD" role="2OqNvi">
                <node concept="chp4Y" id="16EXoXrdPBF" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrbZcO" resolve="TypeDiscrete" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="16EXoXrdOQW" role="3eOfB_">
              <node concept="3cpWs6" id="16EXoXrdPFQ" role="3cqZAp">
                <node concept="3clFbT" id="16EXoXrdPGH" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="16EXoXrdPH$" role="3eNLev">
            <node concept="2OqwBi" id="16EXoXrdPJG" role="3eO9$A">
              <node concept="37vLTw" id="16EXoXrdPIT" role="2Oq$k0">
                <ref role="3cqZAo" node="16EXoXrdNk_" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="16EXoXrdPUk" role="2OqNvi">
                <node concept="chp4Y" id="16EXoXrdPXo" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrduWF" resolve="TypeUnit" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="16EXoXrdPHA" role="3eOfB_">
              <node concept="3cpWs6" id="16EXoXrdQ1J" role="3cqZAp">
                <node concept="3clFbT" id="16EXoXrdQ2J" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="16EXoXrdQ3J" role="3eNLev">
            <node concept="2OqwBi" id="16EXoXrdQhQ" role="3eO9$A">
              <node concept="37vLTw" id="16EXoXrdQ7Y" role="2Oq$k0">
                <ref role="3cqZAo" node="16EXoXrdNk_" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="16EXoXrdQjF" role="2OqNvi">
                <node concept="chp4Y" id="16EXoXrdQkZ" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="16EXoXrdQ3L" role="3eOfB_">
              <node concept="3cpWs6" id="16EXoXrdQp_" role="3cqZAp">
                <node concept="2OqwBi" id="16EXoXrdTJN" role="3cqZAk">
                  <node concept="2OqwBi" id="16EXoXrdRol" role="2Oq$k0">
                    <node concept="1PxgMI" id="16EXoXrdRca" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="16EXoXrdRdz" role="3oSUPX">
                        <ref role="cht4Q" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                      </node>
                      <node concept="37vLTw" id="16EXoXrdQrG" role="1m5AlR">
                        <ref role="3cqZAo" node="16EXoXrdNk_" resolve="ty" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="16EXoXrdR_C" role="2OqNvi">
                      <ref role="3TtcxE" to="ke35:16EXoXrdzCY" resolve="tys" />
                    </node>
                  </node>
                  <node concept="2HxqBE" id="16EXoXrdWuB" role="2OqNvi">
                    <node concept="1bVj0M" id="16EXoXrdWuD" role="23t8la">
                      <node concept="3clFbS" id="16EXoXrdWuE" role="1bW5cS">
                        <node concept="3clFbF" id="16EXoXrdWAj" role="3cqZAp">
                          <node concept="BsUDl" id="16EXoXrgSFr" role="3clFbG">
                            <ref role="37wK5l" node="16EXoXrgQTQ" resolve="isLinear" />
                            <node concept="37vLTw" id="16EXoXrgST4" role="37wK5m">
                              <ref role="3cqZAo" node="16EXoXrdWuF" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="16EXoXrdWuF" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="16EXoXrdWuG" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16EXoXrgS0K" role="3cqZAp">
          <node concept="3clFbT" id="16EXoXrgS3S" role="3cqZAk" />
        </node>
      </node>
      <node concept="10P_77" id="16EXoXrdNiL" role="3clF45" />
      <node concept="37vLTG" id="16EXoXrdNk_" role="3clF46">
        <property role="TrG5h" value="ty" />
        <node concept="3Tqbb2" id="16EXoXrdNk$" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="16EXoXrgLPm" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="16EXoXrgQTV" role="13h7CS">
      <property role="TrG5h" value="isDiscrete" />
      <property role="2Ki8OM" value="true" />
      <node concept="3clFbS" id="16EXoXreDcK" role="3clF47">
        <node concept="3clFbJ" id="16EXoXre2_z" role="3cqZAp">
          <node concept="2OqwBi" id="16EXoXre2_$" role="3clFbw">
            <node concept="37vLTw" id="16EXoXre2__" role="2Oq$k0">
              <ref role="3cqZAo" node="16EXoXreEr7" resolve="ty" />
            </node>
            <node concept="1mIQ4w" id="16EXoXre2_A" role="2OqNvi">
              <node concept="chp4Y" id="16EXoXre2_B" role="cj9EA">
                <ref role="cht4Q" to="ke35:16EXoXrbZcA" resolve="TypeLinear" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="16EXoXre2_C" role="3clFbx">
            <node concept="3cpWs6" id="16EXoXre2_D" role="3cqZAp">
              <node concept="3clFbT" id="16EXoXre3ps" role="3cqZAk" />
            </node>
          </node>
          <node concept="3eNFk2" id="16EXoXre2_F" role="3eNLev">
            <node concept="2OqwBi" id="16EXoXre2_G" role="3eO9$A">
              <node concept="37vLTw" id="16EXoXre2_H" role="2Oq$k0">
                <ref role="3cqZAo" node="16EXoXreEr7" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="16EXoXre2_I" role="2OqNvi">
                <node concept="chp4Y" id="16EXoXre2_J" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrbZcO" resolve="TypeDiscrete" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="16EXoXre2_K" role="3eOfB_">
              <node concept="3cpWs6" id="16EXoXre3$K" role="3cqZAp">
                <node concept="3clFbT" id="16EXoXre3BW" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="16EXoXre2_N" role="3eNLev">
            <node concept="2OqwBi" id="16EXoXre2_O" role="3eO9$A">
              <node concept="37vLTw" id="16EXoXre2_P" role="2Oq$k0">
                <ref role="3cqZAo" node="16EXoXreEr7" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="16EXoXre2_Q" role="2OqNvi">
                <node concept="chp4Y" id="16EXoXre2_R" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrduWF" resolve="TypeUnit" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="16EXoXre2_S" role="3eOfB_">
              <node concept="3cpWs6" id="16EXoXre2_T" role="3cqZAp">
                <node concept="3clFbT" id="16EXoXre2_U" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="16EXoXre2_V" role="3eNLev">
            <node concept="2OqwBi" id="16EXoXre2_W" role="3eO9$A">
              <node concept="37vLTw" id="16EXoXre2_X" role="2Oq$k0">
                <ref role="3cqZAo" node="16EXoXreEr7" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="16EXoXre2_Y" role="2OqNvi">
                <node concept="chp4Y" id="16EXoXre2_Z" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="16EXoXre2A0" role="3eOfB_">
              <node concept="3cpWs6" id="16EXoXre2A1" role="3cqZAp">
                <node concept="2OqwBi" id="16EXoXre2A2" role="3cqZAk">
                  <node concept="2OqwBi" id="16EXoXre2A3" role="2Oq$k0">
                    <node concept="1PxgMI" id="16EXoXre2A4" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="16EXoXre2A5" role="3oSUPX">
                        <ref role="cht4Q" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                      </node>
                      <node concept="37vLTw" id="16EXoXre2A6" role="1m5AlR">
                        <ref role="3cqZAo" node="16EXoXreEr7" resolve="ty" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="16EXoXre2A7" role="2OqNvi">
                      <ref role="3TtcxE" to="ke35:16EXoXrdzCY" resolve="tys" />
                    </node>
                  </node>
                  <node concept="2HxqBE" id="16EXoXre2A8" role="2OqNvi">
                    <node concept="1bVj0M" id="16EXoXre2A9" role="23t8la">
                      <node concept="3clFbS" id="16EXoXre2Aa" role="1bW5cS">
                        <node concept="3clFbF" id="16EXoXre2Ab" role="3cqZAp">
                          <node concept="BsUDl" id="16EXoXrpxiL" role="3clFbG">
                            <ref role="37wK5l" node="16EXoXrgQTV" resolve="isDiscrete" />
                            <node concept="37vLTw" id="16EXoXrpxiM" role="37wK5m">
                              <ref role="3cqZAo" node="16EXoXre2Ag" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="16EXoXre2Ag" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="16EXoXre2Ah" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16EXoXre2Ai" role="3cqZAp">
          <node concept="3clFbT" id="16EXoXre2Aj" role="3cqZAk" />
        </node>
      </node>
      <node concept="10P_77" id="16EXoXreEcM" role="3clF45" />
      <node concept="37vLTG" id="16EXoXreEr7" role="3clF46">
        <property role="TrG5h" value="ty" />
        <node concept="3Tqbb2" id="16EXoXreEr6" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="16EXoXrgLUL" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="16EXoXrgQT$" role="13h7CW">
      <node concept="3clFbS" id="16EXoXrgQT_" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="16EXoXrHvjo">
    <ref role="13h7C2" to="ke35:16EXoXrcE4K" resolve="LetBinding" />
    <node concept="13hLZK" id="16EXoXrHvjp" role="13h7CW">
      <node concept="3clFbS" id="16EXoXrHvjq" role="2VODD2">
        <node concept="3clFbF" id="16EXoXrHvjG" role="3cqZAp">
          <node concept="37vLTI" id="16EXoXrHwHq" role="3clFbG">
            <node concept="3clFbT" id="16EXoXrHwI1" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="16EXoXrHvuE" role="37vLTJ">
              <node concept="13iPFW" id="16EXoXrHvjF" role="2Oq$k0" />
              <node concept="3TrcHB" id="16EXoXrHvPc" role="2OqNvi">
                <ref role="3TsBF5" to="ke35:16EXoXrFvdx" resolve="isLinear" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="16EXoXrMhP3">
    <ref role="13h7C2" to="ke35:16EXoXrcyem" resolve="Identifier" />
    <node concept="13i0hz" id="16EXoXrMhPm" role="13h7CS">
      <property role="TrG5h" value="isUnused" />
      <node concept="3Tm1VV" id="16EXoXrMhPn" role="1B3o_S" />
      <node concept="10P_77" id="16EXoXrMhPE" role="3clF45" />
      <node concept="3clFbS" id="16EXoXrMhPp" role="3clF47">
        <node concept="3clFbF" id="16EXoXrMhQG" role="3cqZAp">
          <node concept="2OqwBi" id="16EXoXrK8kf" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="2OqwBi" id="16EXoXrK3Ke" role="2Oq$k0">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="16EXoXrK0NC" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="16EXoXrK04Z" role="2Oq$k0">
                  <node concept="2Rxl7S" id="16EXoXrK05T" role="2OqNvi" />
                  <node concept="13iPFW" id="16EXoXrMihx" role="2Oq$k0" />
                </node>
                <node concept="2Rf3mk" id="16EXoXrK0Vv" role="2OqNvi">
                  <node concept="1xMEDy" id="16EXoXrK0Vx" role="1xVPHs">
                    <node concept="chp4Y" id="16EXoXrK0VL" role="ri$Ld">
                      <ref role="cht4Q" to="ke35:16EXoXrcE4R" resolve="VariableReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="16EXoXrK6cl" role="2OqNvi">
                <node concept="1bVj0M" id="16EXoXrK6cn" role="23t8la">
                  <node concept="3clFbS" id="16EXoXrK6co" role="1bW5cS">
                    <node concept="3clFbF" id="16EXoXrK6lx" role="3cqZAp">
                      <node concept="17R0WA" id="16EXoXrK7KL" role="3clFbG">
                        <node concept="13iPFW" id="16EXoXrMikA" role="3uHU7w" />
                        <node concept="2OqwBi" id="16EXoXrK6Aa" role="3uHU7B">
                          <node concept="37vLTw" id="16EXoXrK6lw" role="2Oq$k0">
                            <ref role="3cqZAo" node="16EXoXrK6cp" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="16EXoXrK6XU" role="2OqNvi">
                            <ref role="3Tt5mk" to="ke35:16EXoXrcE4S" resolve="ref" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="16EXoXrK6cp" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="16EXoXrK6cq" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1v1jN8" id="16EXoXrK96z" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="16EXoXrMhP4" role="13h7CW">
      <node concept="3clFbS" id="16EXoXrMhP5" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="16EXoXrMBp1">
    <ref role="13h7C2" to="ke35:16EXoXrbZbZ" resolve="Program" />
    <node concept="13i0hz" id="16EXoXrOJ$J" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3clFbS" id="16EXoXrOJ$M" role="3clF47">
        <node concept="3clFbJ" id="16EXoXrMBvz" role="3cqZAp">
          <node concept="2OqwBi" id="16EXoXrMBJi" role="3clFbw">
            <node concept="37vLTw" id="16EXoXrMBvX" role="2Oq$k0">
              <ref role="3cqZAo" node="16EXoXrOJI_" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="16EXoXrMBYZ" role="2OqNvi">
              <node concept="chp4Y" id="16EXoXrMC2v" role="3QVz_e">
                <ref role="cht4Q" to="ke35:16EXoXrcyem" resolve="Identifier" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="16EXoXrMBv_" role="3clFbx">
            <node concept="3cpWs6" id="16EXoXrMC5s" role="3cqZAp">
              <node concept="2ShNRf" id="16EXoXrMDmB" role="3cqZAk">
                <node concept="YeOm9" id="16EXoXrMHcf" role="2ShVmc">
                  <node concept="1Y3b0j" id="16EXoXrMHci" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                    <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <node concept="3Tm1VV" id="16EXoXrMHcj" role="1B3o_S" />
                    <node concept="3clFb_" id="16EXoXrMHjQ" role="jymVt">
                      <property role="TrG5h" value="getName" />
                      <node concept="17QB3L" id="16EXoXrMHjR" role="3clF45" />
                      <node concept="3Tm1VV" id="16EXoXrMHjS" role="1B3o_S" />
                      <node concept="37vLTG" id="16EXoXrMHjU" role="3clF46">
                        <property role="TrG5h" value="child" />
                        <node concept="3Tqbb2" id="16EXoXrMHjV" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="16EXoXrMHjX" role="3clF47">
                        <node concept="3cpWs6" id="16EXoXrMJA5" role="3cqZAp">
                          <node concept="2OqwBi" id="16EXoXrMJa6" role="3cqZAk">
                            <node concept="1PxgMI" id="16EXoXrMIRO" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="16EXoXrMIVu" role="3oSUPX">
                                <ref role="cht4Q" to="ke35:16EXoXrcyem" resolve="Identifier" />
                              </node>
                              <node concept="37vLTw" id="16EXoXrMHTj" role="1m5AlR">
                                <ref role="3cqZAo" node="16EXoXrMHjU" resolve="child" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="16EXoXrMJum" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="16EXoXrMHjY" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="16EXoXrMKb4" role="37wK5m">
                      <node concept="13iPFW" id="16EXoXrMJY4" role="2Oq$k0" />
                      <node concept="2Rf3mk" id="16EXoXrMKui" role="2OqNvi">
                        <node concept="1xMEDy" id="16EXoXrMKuk" role="1xVPHs">
                          <node concept="chp4Y" id="16EXoXrMK_H" role="ri$Ld">
                            <ref role="cht4Q" to="ke35:16EXoXrcyem" resolve="Identifier" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16EXoXrNK_w" role="3cqZAp">
          <node concept="2OqwBi" id="16EXoXrNJZG" role="3cqZAk">
            <node concept="1PxgMI" id="16EXoXrNJBn" role="2Oq$k0">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="16EXoXrNJJ_" role="3oSUPX">
                <ref role="cht4Q" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
              </node>
              <node concept="13iAh5" id="16EXoXrNICe" role="1m5AlR" />
            </node>
            <node concept="2qgKlT" id="16EXoXrNKf8" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QDV$" resolve="getScope" />
              <node concept="37vLTw" id="16EXoXrNKp8" role="37wK5m">
                <ref role="3cqZAo" node="16EXoXrOJI_" resolve="kind" />
              </node>
              <node concept="37vLTw" id="16EXoXrNKvk" role="37wK5m">
                <ref role="3cqZAo" node="16EXoXrOJIB" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="16EXoXrOJI_" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="16EXoXrOJIA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="16EXoXrOJIB" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="16EXoXrOJIC" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="16EXoXrOJID" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3Tm1VV" id="16EXoXrOJIE" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="16EXoXrMBp2" role="13h7CW">
      <node concept="3clFbS" id="16EXoXrMBp3" role="2VODD2" />
    </node>
  </node>
</model>

