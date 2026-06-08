<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cf167d45-2368-455e-b1dc-856978805fbf(Bean.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="9d2c0b71-7bac-4774-90d1-24eff3f6afe9" name="Bean" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="ke35" ref="r:2989d431-ffca-4d3c-86eb-05e1c7fe32bd(Bean.structure)" />
    <import index="sqeb" ref="r:cca01e25-804e-4251-834c-1338367d39ef(Bean.behavior)" />
  </imports>
  <registry>
    <language id="9d2c0b71-7bac-4774-90d1-24eff3f6afe9" name="Bean">
      <concept id="1273099840744583974" name="Bean.structure.TypeLinear" flags="ng" index="1axgqD" />
      <concept id="1273099840744583988" name="Bean.structure.TypeDiscrete" flags="ng" index="1axgqV" />
      <concept id="1273099840744995412" name="Bean.structure.TypeSum" flags="ng" index="1aBcZr">
        <child id="1273099840744995413" name="tys" index="1aBcZq" />
      </concept>
      <concept id="1273099840744976171" name="Bean.structure.TypeUnit" flags="ng" index="1aBLE$" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709738802" name="jetbrains.mps.lang.quotation.structure.NodeBuilderList" flags="nn" index="36be1Y">
        <child id="8182547171709738803" name="nodes" index="36be1Z" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1185805035213" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement" flags="nn" index="nvevp">
        <child id="1185805047793" name="body" index="nvhr_" />
        <child id="1185805056450" name="argument" index="nvjzm" />
        <child id="1205761991995" name="argumentRepresentator" index="2X0Ygz" />
      </concept>
      <concept id="1175517400280" name="jetbrains.mps.lang.typesystem.structure.AssertStatement" flags="nn" index="2Mj0R9">
        <child id="1175517761460" name="condition" index="2MkoU_" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1205762105978" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableDeclaration" flags="ng" index="2X1qdy" />
      <concept id="1205762656241" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableReference" flags="nn" index="2X3wrD">
        <reference id="1205762683928" name="whenConcreteVar" index="2X3Bk0" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
    </language>
  </registry>
  <node concept="1YbPZF" id="16EXoXrcyeb">
    <property role="TrG5h" value="typeof_VarDecl" />
    <node concept="3clFbS" id="16EXoXrcyec" role="18ibNy">
      <node concept="1Z5TYs" id="16EXoXrcBLM" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrcBLW" role="1ZfhKB">
          <node concept="2OqwBi" id="16EXoXrcBMa" role="mwGJk">
            <node concept="1YBJjd" id="16EXoXrcBLU" role="2Oq$k0">
              <ref role="1YBMHb" node="16EXoXrcyhk" resolve="varDecl" />
            </node>
            <node concept="3TrEf2" id="16EXoXrcBNo" role="2OqNvi">
              <ref role="3Tt5mk" to="ke35:16EXoXrcfa1" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrcBLP" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrcyhu" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXrcBpU" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXrcyjl" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXrcyhk" resolve="varDecl" />
              </node>
              <node concept="3TrEf2" id="16EXoXrcBzj" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrc$oY" resolve="ident" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXrcyhk" role="1YuTPh">
      <property role="TrG5h" value="varDecl" />
      <ref role="1YaFvo" to="ke35:16EXoXrbZbU" resolve="VarDecl" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXrhuwt">
    <property role="TrG5h" value="typeof_OperationSub" />
    <node concept="3clFbS" id="16EXoXrhuwu" role="18ibNy">
      <node concept="1Z5TYs" id="16EXoXrhJTH" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrhJU5" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXrhJU1" role="mwGJk">
            <node concept="1axgqD" id="16EXoXrhJUo" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrhJTK" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrhIWl" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXrhJ8e" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXrhIYe" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXrhuww" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXrhJjq" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRY9" resolve="refLeft" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXrhJUH" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrhJUI" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXrhJUJ" role="mwGJk">
            <node concept="1axgqD" id="16EXoXrhJUK" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrhJUL" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrhJUM" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXrhJUN" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXrhJUO" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXrhuww" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXrhJUP" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRYa" resolve="refRight" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXrhuT9" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrhuTl" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXrhuXH" role="mwGJk">
            <node concept="1axgqD" id="16EXoXrhuYD" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrhuTc" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrhuwS" role="mwGJk">
            <node concept="1YBJjd" id="16EXoXrhu$s" role="1Z2MuG">
              <ref role="1YBMHb" node="16EXoXrhuww" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXrhuww" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="ke35:16EXoXrhuw4" resolve="OperationSub" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXrhZKN">
    <property role="TrG5h" value="typeof_OperationAdd" />
    <node concept="3clFbS" id="16EXoXrhZKO" role="18ibNy">
      <node concept="1Z5TYs" id="16EXoXrhZOo" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrhZOp" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXrhZOq" role="mwGJk">
            <node concept="1axgqD" id="16EXoXrhZOr" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrhZOs" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrhZOt" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXrhZOu" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXrhZOv" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXrhZKQ" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXrhZOw" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRY9" resolve="refLeft" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXrhZOx" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrhZOy" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXrhZOz" role="mwGJk">
            <node concept="1axgqD" id="16EXoXrhZO$" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrhZO_" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrhZOA" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXrhZOB" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXrhZOC" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXrhZKQ" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXrhZOD" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRYa" resolve="refRight" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXrhZOE" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrhZOF" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXrhZOG" role="mwGJk">
            <node concept="1axgqD" id="16EXoXrhZOH" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrhZOI" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrhZOJ" role="mwGJk">
            <node concept="1YBJjd" id="16EXoXrhZOK" role="1Z2MuG">
              <ref role="1YBMHb" node="16EXoXrhZKQ" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXrhZKQ" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="ke35:16EXoXrhuw3" resolve="OperationAdd" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXri0s5">
    <property role="TrG5h" value="typeof_OperationMul" />
    <node concept="3clFbS" id="16EXoXri0s6" role="18ibNy">
      <node concept="1Z5TYs" id="16EXoXri0s7" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0s8" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0s9" role="mwGJk">
            <node concept="1axgqD" id="16EXoXri0sa" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0sb" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0sc" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXri0sd" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXri0se" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXri0sw" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXri0sf" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRY9" resolve="refLeft" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXri0sg" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0sh" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0si" role="mwGJk">
            <node concept="1axgqD" id="16EXoXri0sj" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0sk" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0sl" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXri0sm" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXri0sn" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXri0sw" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXri0so" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRYa" resolve="refRight" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXri0sp" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0sq" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0sr" role="mwGJk">
            <node concept="1axgqD" id="16EXoXri0ss" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0st" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0su" role="mwGJk">
            <node concept="1YBJjd" id="16EXoXri0sv" role="1Z2MuG">
              <ref role="1YBMHb" node="16EXoXri0sw" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXri0sw" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="ke35:16EXoXrhZFg" resolve="OperationMul" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXri0Dw">
    <property role="TrG5h" value="typeof_OperationDMul" />
    <node concept="3clFbS" id="16EXoXri0Dx" role="18ibNy">
      <node concept="1Z5TYs" id="16EXoXri0Dy" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0Dz" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0D$" role="mwGJk">
            <node concept="1axgqV" id="16EXoXri0Mo" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0DA" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0DB" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXri0DC" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXri0DD" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXri0DV" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXri0DE" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRY9" resolve="refLeft" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXri0DF" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0DG" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0DH" role="mwGJk">
            <node concept="1axgqD" id="16EXoXri0DI" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0DJ" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0DK" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXri0DL" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXri0DM" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXri0DV" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXri0DN" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRYa" resolve="refRight" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXri0DO" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0DP" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0DQ" role="mwGJk">
            <node concept="1axgqD" id="16EXoXri0DR" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0DS" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0DT" role="mwGJk">
            <node concept="1YBJjd" id="16EXoXri0DU" role="1Z2MuG">
              <ref role="1YBMHb" node="16EXoXri0DV" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXri0DV" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="ke35:16EXoXrhZFR" resolve="OperationDMul" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXri0MG">
    <property role="TrG5h" value="typeof_OperationDiv" />
    <node concept="3clFbS" id="16EXoXri0MH" role="18ibNy">
      <node concept="1Z5TYs" id="16EXoXri0MI" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0MJ" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0MK" role="mwGJk">
            <node concept="1axgqD" id="16EXoXri0ML" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0MM" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0MN" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXri0MO" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXri0MP" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXri0N7" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXri0MQ" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRY9" resolve="refLeft" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXri0MR" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0MS" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0MT" role="mwGJk">
            <node concept="1axgqD" id="16EXoXri0MU" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0MV" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0MW" role="mwGJk">
            <node concept="2OqwBi" id="16EXoXri0MX" role="1Z2MuG">
              <node concept="1YBJjd" id="16EXoXri0MY" role="2Oq$k0">
                <ref role="1YBMHb" node="16EXoXri0N7" resolve="op" />
              </node>
              <node concept="3TrEf2" id="16EXoXri0MZ" role="2OqNvi">
                <ref role="3Tt5mk" to="ke35:16EXoXrhRYa" resolve="refRight" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="16EXoXri0N0" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXri0N1" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXri0N2" role="mwGJk">
            <node concept="1aBcZr" id="16EXoXri0Xo" role="2c44tc">
              <node concept="1axgqD" id="16EXoXri0Y6" role="1aBcZq" />
              <node concept="1aBLE$" id="16EXoXri0Yi" role="1aBcZq" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXri0N4" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXri0N5" role="mwGJk">
            <node concept="1YBJjd" id="16EXoXri0N6" role="1Z2MuG">
              <ref role="1YBMHb" node="16EXoXri0N7" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXri0N7" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="ke35:16EXoXrhZFA" resolve="OperationDiv" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXrl0un">
    <property role="TrG5h" value="typeof_DiscreteContext" />
    <node concept="3clFbS" id="16EXoXrl0uo" role="18ibNy">
      <node concept="3clFbF" id="16EXoXrl0vl" role="3cqZAp">
        <node concept="2OqwBi" id="16EXoXrl37b" role="3clFbG">
          <node concept="2OqwBi" id="16EXoXrl0Dw" role="2Oq$k0">
            <node concept="1YBJjd" id="16EXoXrl0vk" role="2Oq$k0">
              <ref role="1YBMHb" node="16EXoXrl0uq" resolve="discreteContext" />
            </node>
            <node concept="3Tsc0h" id="16EXoXrl0Oq" role="2OqNvi">
              <ref role="3TtcxE" to="ke35:16EXoXrbZbX" resolve="decls" />
            </node>
          </node>
          <node concept="2es0OD" id="16EXoXrlicq" role="2OqNvi">
            <node concept="1bVj0M" id="16EXoXrlics" role="23t8la">
              <node concept="3clFbS" id="16EXoXrlict" role="1bW5cS">
                <node concept="3cpWs8" id="16EXoXrlicu" role="3cqZAp">
                  <node concept="3cpWsn" id="16EXoXrlicv" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="ty" />
                    <node concept="3Tqbb2" id="16EXoXrlicw" role="1tU5fm">
                      <ref role="ehGHo" to="ke35:16EXoXrbZcF" resolve="Type" />
                    </node>
                    <node concept="2OqwBi" id="16EXoXrlicx" role="33vP2m">
                      <node concept="37vLTw" id="16EXoXrlicy" role="2Oq$k0">
                        <ref role="3cqZAo" node="16EXoXrlicL" resolve="it" />
                      </node>
                      <node concept="3TrEf2" id="16EXoXrlicz" role="2OqNvi">
                        <ref role="3Tt5mk" to="ke35:16EXoXrcfa1" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="nvevp" id="16EXoXrlic$" role="3cqZAp">
                  <node concept="3clFbS" id="16EXoXrlic_" role="nvhr_">
                    <node concept="2Mj0R9" id="16EXoXrlicA" role="3cqZAp">
                      <node concept="Xl_RD" id="16EXoXrlicF" role="2MkJ7o">
                        <property role="Xl_RC" value="Discrete context can only contain discrete variables" />
                      </node>
                      <node concept="37vLTw" id="16EXoXrlicG" role="1urrMF">
                        <ref role="3cqZAo" node="16EXoXrlicv" resolve="ty" />
                      </node>
                      <node concept="2YIFZM" id="1u9nW95UIO$" role="2MkoU_">
                        <ref role="37wK5l" node="1u9nW95Hd_3" resolve="isDiscreteType" />
                        <ref role="1Pybhc" node="1u9nW95Hdyu" resolve="TypeUtils" />
                        <node concept="2X3wrD" id="1u9nW95HiRP" role="37wK5m">
                          <ref role="2X3Bk0" node="16EXoXrlicJ" resolve="identifierType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Z2H0r" id="16EXoXrlicH" role="nvjzm">
                    <node concept="2OqwBi" id="16EXoXrlm8b" role="1Z2MuG">
                      <node concept="37vLTw" id="16EXoXrlicI" role="2Oq$k0">
                        <ref role="3cqZAo" node="16EXoXrlicL" resolve="it" />
                      </node>
                      <node concept="3TrEf2" id="16EXoXrlnpQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="ke35:16EXoXrc$oY" resolve="ident" />
                      </node>
                    </node>
                  </node>
                  <node concept="2X1qdy" id="16EXoXrlicJ" role="2X0Ygz">
                    <property role="TrG5h" value="identifierType" />
                    <node concept="2jxLKc" id="16EXoXrlicK" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="16EXoXrlicL" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="16EXoXrlicM" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXrl0uq" role="1YuTPh">
      <property role="TrG5h" value="discreteContext" />
      <ref role="1YaFvo" to="ke35:16EXoXrcvy8" resolve="DiscreteContext" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXrlzBN">
    <property role="TrG5h" value="typeof_LinearContext" />
    <node concept="3clFbS" id="16EXoXrlzBO" role="18ibNy">
      <node concept="3clFbF" id="16EXoXrlzBP" role="3cqZAp">
        <node concept="2OqwBi" id="16EXoXrlzBQ" role="3clFbG">
          <node concept="2OqwBi" id="16EXoXrlzBR" role="2Oq$k0">
            <node concept="1YBJjd" id="16EXoXrlzBS" role="2Oq$k0">
              <ref role="1YBMHb" node="16EXoXrlzCk" resolve="linearContext" />
            </node>
            <node concept="3Tsc0h" id="16EXoXrlzBT" role="2OqNvi">
              <ref role="3TtcxE" to="ke35:16EXoXrbZbX" resolve="decls" />
            </node>
          </node>
          <node concept="2es0OD" id="16EXoXrlzBU" role="2OqNvi">
            <node concept="1bVj0M" id="16EXoXrlzBV" role="23t8la">
              <node concept="3clFbS" id="16EXoXrlzBW" role="1bW5cS">
                <node concept="3cpWs8" id="16EXoXrlzBX" role="3cqZAp">
                  <node concept="3cpWsn" id="16EXoXrlzBY" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="ty" />
                    <node concept="3Tqbb2" id="16EXoXrlzBZ" role="1tU5fm">
                      <ref role="ehGHo" to="ke35:16EXoXrbZcF" resolve="Type" />
                    </node>
                    <node concept="2OqwBi" id="16EXoXrlzC0" role="33vP2m">
                      <node concept="37vLTw" id="16EXoXrlzC1" role="2Oq$k0">
                        <ref role="3cqZAo" node="16EXoXrlzCi" resolve="it" />
                      </node>
                      <node concept="3TrEf2" id="16EXoXrlzC2" role="2OqNvi">
                        <ref role="3Tt5mk" to="ke35:16EXoXrcfa1" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="nvevp" id="16EXoXrlzC3" role="3cqZAp">
                  <node concept="3clFbS" id="16EXoXrlzC4" role="nvhr_">
                    <node concept="2Mj0R9" id="16EXoXrlzC5" role="3cqZAp">
                      <node concept="Xl_RD" id="16EXoXrlzCa" role="2MkJ7o">
                        <property role="Xl_RC" value="Linear context can only contain linear variables" />
                      </node>
                      <node concept="37vLTw" id="16EXoXrlzCb" role="1urrMF">
                        <ref role="3cqZAo" node="16EXoXrlzBY" resolve="ty" />
                      </node>
                      <node concept="2YIFZM" id="1u9nW95UIOv" role="2MkoU_">
                        <ref role="37wK5l" node="1u9nW95Hd$b" resolve="isLinearType" />
                        <ref role="1Pybhc" node="1u9nW95Hdyu" resolve="TypeUtils" />
                        <node concept="2X3wrD" id="1u9nW95Hgch" role="37wK5m">
                          <ref role="2X3Bk0" node="16EXoXrlzCg" resolve="identifierType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Z2H0r" id="16EXoXrlzCc" role="nvjzm">
                    <node concept="2OqwBi" id="16EXoXrlzCd" role="1Z2MuG">
                      <node concept="37vLTw" id="16EXoXrlzCe" role="2Oq$k0">
                        <ref role="3cqZAo" node="16EXoXrlzCi" resolve="it" />
                      </node>
                      <node concept="3TrEf2" id="16EXoXrlzCf" role="2OqNvi">
                        <ref role="3Tt5mk" to="ke35:16EXoXrc$oY" resolve="ident" />
                      </node>
                    </node>
                  </node>
                  <node concept="2X1qdy" id="16EXoXrlzCg" role="2X0Ygz">
                    <property role="TrG5h" value="identifierType" />
                    <node concept="2jxLKc" id="16EXoXrlzCh" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="16EXoXrlzCi" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="16EXoXrlzCj" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXrlzCk" role="1YuTPh">
      <property role="TrG5h" value="linearContext" />
      <ref role="1YaFvo" to="ke35:16EXoXrcvy6" resolve="LinearContext" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXrSLux">
    <property role="TrG5h" value="typeof_TensorPair" />
    <node concept="3clFbS" id="16EXoXrSLuy" role="18ibNy">
      <node concept="nvevp" id="16EXoXrSLSf" role="3cqZAp">
        <node concept="3clFbS" id="16EXoXrSLSg" role="nvhr_">
          <node concept="nvevp" id="16EXoXrSMey" role="3cqZAp">
            <node concept="3clFbS" id="16EXoXrSMez" role="nvhr_">
              <node concept="2Mj0R9" id="16EXoXrSMGt" role="3cqZAp">
                <node concept="Xl_RD" id="16EXoXrSNEv" role="2MkJ7o">
                  <property role="Xl_RC" value="Tensor pair cannot contain discrete variables." />
                </node>
                <node concept="2OqwBi" id="16EXoXrSOsY" role="1urrMF">
                  <node concept="1YBJjd" id="16EXoXrSOdv" role="2Oq$k0">
                    <ref role="1YBMHb" node="16EXoXrSLu$" resolve="tensorPair" />
                  </node>
                  <node concept="3TrEf2" id="16EXoXrSOJo" role="2OqNvi">
                    <ref role="3Tt5mk" to="ke35:16EXoXrSfYO" resolve="left" />
                  </node>
                </node>
                <node concept="2YIFZM" id="1u9nW95UIOw" role="2MkoU_">
                  <ref role="37wK5l" node="1u9nW95Hd$b" resolve="isLinearType" />
                  <ref role="1Pybhc" node="1u9nW95Hdyu" resolve="TypeUtils" />
                  <node concept="2X3wrD" id="1u9nW95HhXv" role="37wK5m">
                    <ref role="2X3Bk0" node="16EXoXrSLSi" resolve="leftType" />
                  </node>
                </node>
              </node>
              <node concept="2Mj0R9" id="16EXoXrSOPC" role="3cqZAp">
                <node concept="Xl_RD" id="16EXoXrSOPH" role="2MkJ7o">
                  <property role="Xl_RC" value="Tensor pair cannot contain discrete variables." />
                </node>
                <node concept="2OqwBi" id="16EXoXrSOPI" role="1urrMF">
                  <node concept="1YBJjd" id="16EXoXrSOPJ" role="2Oq$k0">
                    <ref role="1YBMHb" node="16EXoXrSLu$" resolve="tensorPair" />
                  </node>
                  <node concept="3TrEf2" id="16EXoXrSPab" role="2OqNvi">
                    <ref role="3Tt5mk" to="ke35:16EXoXrSfYQ" resolve="right" />
                  </node>
                </node>
                <node concept="2YIFZM" id="1u9nW95UIOx" role="2MkoU_">
                  <ref role="37wK5l" node="1u9nW95Hd$b" resolve="isLinearType" />
                  <ref role="1Pybhc" node="1u9nW95Hdyu" resolve="TypeUtils" />
                  <node concept="2X3wrD" id="1u9nW95HhZr" role="37wK5m">
                    <ref role="2X3Bk0" node="16EXoXrSMe_" resolve="rightType" />
                  </node>
                </node>
              </node>
              <node concept="1Z5TYs" id="16EXoXrSQcW" role="3cqZAp">
                <node concept="mw_s8" id="16EXoXrSQfo" role="1ZfhKB">
                  <node concept="2pJPEk" id="16EXoXrSQgr" role="mwGJk">
                    <node concept="2pJPED" id="16EXoXrSQgt" role="2pJPEn">
                      <ref role="2pJxaS" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                      <node concept="2pIpSj" id="16EXoXrSQgF" role="2pJxcM">
                        <ref role="2pIpSl" to="ke35:16EXoXrdzCY" resolve="tys" />
                        <node concept="36be1Y" id="16EXoXrSQh4" role="28nt2d">
                          <node concept="36biLy" id="16EXoXrSQha" role="36be1Z">
                            <node concept="1PxgMI" id="16EXoXrSQx$" role="36biLW">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="16EXoXrSQy6" role="3oSUPX">
                                <ref role="cht4Q" to="ke35:16EXoXrbZcF" resolve="Type" />
                              </node>
                              <node concept="2X3wrD" id="16EXoXrSQhl" role="1m5AlR">
                                <ref role="2X3Bk0" node="16EXoXrSLSi" resolve="leftType" />
                              </node>
                            </node>
                          </node>
                          <node concept="36biLy" id="16EXoXrSQjp" role="36be1Z">
                            <node concept="1PxgMI" id="16EXoXrSQKh" role="36biLW">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="16EXoXrSQKS" role="3oSUPX">
                                <ref role="cht4Q" to="ke35:16EXoXrbZcF" resolve="Type" />
                              </node>
                              <node concept="2X3wrD" id="16EXoXrSQjH" role="1m5AlR">
                                <ref role="2X3Bk0" node="16EXoXrSMe_" resolve="rightType" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="16EXoXrSQcZ" role="1ZfhK$">
                  <node concept="1Z2H0r" id="16EXoXrSPtc" role="mwGJk">
                    <node concept="1YBJjd" id="16EXoXrSPyS" role="1Z2MuG">
                      <ref role="1YBMHb" node="16EXoXrSLu$" resolve="tensorPair" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Z2H0r" id="16EXoXrSMeI" role="nvjzm">
              <node concept="2OqwBi" id="16EXoXrSMoF" role="1Z2MuG">
                <node concept="1YBJjd" id="16EXoXrSMf8" role="2Oq$k0">
                  <ref role="1YBMHb" node="16EXoXrSLu$" resolve="tensorPair" />
                </node>
                <node concept="3TrEf2" id="16EXoXrSMF8" role="2OqNvi">
                  <ref role="3Tt5mk" to="ke35:16EXoXrSfYQ" resolve="right" />
                </node>
              </node>
            </node>
            <node concept="2X1qdy" id="16EXoXrSMe_" role="2X0Ygz">
              <property role="TrG5h" value="rightType" />
              <node concept="2jxLKc" id="16EXoXrSMeA" role="1tU5fm" />
            </node>
          </node>
        </node>
        <node concept="1Z2H0r" id="16EXoXrSLSr" role="nvjzm">
          <node concept="2OqwBi" id="16EXoXrSM8O" role="1Z2MuG">
            <node concept="1YBJjd" id="16EXoXrSLSP" role="2Oq$k0">
              <ref role="1YBMHb" node="16EXoXrSLu$" resolve="tensorPair" />
            </node>
            <node concept="3TrEf2" id="16EXoXrSMa4" role="2OqNvi">
              <ref role="3Tt5mk" to="ke35:16EXoXrSfYO" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="2X1qdy" id="16EXoXrSLSi" role="2X0Ygz">
          <property role="TrG5h" value="leftType" />
          <node concept="2jxLKc" id="16EXoXrSLSj" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXrSLu$" role="1YuTPh">
      <property role="TrG5h" value="tensorPair" />
      <ref role="1YaFvo" to="ke35:16EXoXrSfYM" resolve="TensorPair" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXrT8Us">
    <property role="TrG5h" value="typeof_DNumLiteral" />
    <node concept="3clFbS" id="16EXoXrT8Ut" role="18ibNy">
      <node concept="1Z5TYs" id="16EXoXrT9iJ" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrT9iV" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXrT9kq" role="mwGJk">
            <node concept="1axgqV" id="16EXoXrT9kC" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrT9iM" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrT8XB" role="mwGJk">
            <node concept="1YBJjd" id="16EXoXrT8Z$" role="1Z2MuG">
              <ref role="1YBMHb" node="16EXoXrT8Uv" resolve="typeDiscrete" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXrT8Uv" role="1YuTPh">
      <property role="TrG5h" value="typeDiscrete" />
      <ref role="1YaFvo" to="ke35:16EXoXrbZcO" resolve="TypeDiscrete" />
    </node>
  </node>
  <node concept="1YbPZF" id="16EXoXrT9jq">
    <property role="TrG5h" value="typeof_NumLiteral" />
    <node concept="3clFbS" id="16EXoXrT9jr" role="18ibNy">
      <node concept="1Z5TYs" id="16EXoXrT9js" role="3cqZAp">
        <node concept="mw_s8" id="16EXoXrT9jt" role="1ZfhKB">
          <node concept="2c44tf" id="16EXoXrT9ju" role="mwGJk">
            <node concept="1axgqD" id="16EXoXrT9jv" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="16EXoXrT9jw" role="1ZfhK$">
          <node concept="1Z2H0r" id="16EXoXrT9jx" role="mwGJk">
            <node concept="1YBJjd" id="16EXoXrT9jy" role="1Z2MuG">
              <ref role="1YBMHb" node="16EXoXrT9jz" resolve="literal" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="16EXoXrT9jz" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="ke35:16EXoXrbZcA" resolve="TypeLinear" />
    </node>
  </node>
  <node concept="312cEu" id="1u9nW95Hdyu">
    <property role="TrG5h" value="TypeUtils" />
    <node concept="2YIFZL" id="1u9nW95Hd$b" role="jymVt">
      <property role="TrG5h" value="isLinearType" />
      <node concept="3clFbS" id="1u9nW95Hd$f" role="3clF47">
        <node concept="3clFbJ" id="1u9nW95Hd$g" role="3cqZAp">
          <node concept="2OqwBi" id="1u9nW95Hd$h" role="3clFbw">
            <node concept="37vLTw" id="1u9nW95Hd$i" role="2Oq$k0">
              <ref role="3cqZAo" node="1u9nW95Hd_0" resolve="ty" />
            </node>
            <node concept="1mIQ4w" id="1u9nW95Hd$j" role="2OqNvi">
              <node concept="chp4Y" id="1u9nW95Hd$k" role="cj9EA">
                <ref role="cht4Q" to="ke35:16EXoXrbZcA" resolve="TypeLinear" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1u9nW95Hd$l" role="3clFbx">
            <node concept="3cpWs6" id="1u9nW95Hd$m" role="3cqZAp">
              <node concept="3clFbT" id="1u9nW95Hd$n" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1u9nW95Hd$o" role="3eNLev">
            <node concept="2OqwBi" id="1u9nW95Hd$p" role="3eO9$A">
              <node concept="37vLTw" id="1u9nW95Hd$q" role="2Oq$k0">
                <ref role="3cqZAo" node="1u9nW95Hd_0" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="1u9nW95Hd$r" role="2OqNvi">
                <node concept="chp4Y" id="1u9nW95Hd$s" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrbZcO" resolve="TypeDiscrete" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1u9nW95Hd$t" role="3eOfB_">
              <node concept="3cpWs6" id="1u9nW95Hd$u" role="3cqZAp">
                <node concept="3clFbT" id="1u9nW95Hd$v" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1u9nW95Hd$w" role="3eNLev">
            <node concept="2OqwBi" id="1u9nW95Hd$x" role="3eO9$A">
              <node concept="37vLTw" id="1u9nW95Hd$y" role="2Oq$k0">
                <ref role="3cqZAo" node="1u9nW95Hd_0" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="1u9nW95Hd$z" role="2OqNvi">
                <node concept="chp4Y" id="1u9nW95Hd$$" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrduWF" resolve="TypeUnit" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1u9nW95Hd$_" role="3eOfB_">
              <node concept="3cpWs6" id="1u9nW95Hd$A" role="3cqZAp">
                <node concept="3clFbT" id="1u9nW95Hd$B" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1u9nW95Hd$C" role="3eNLev">
            <node concept="2OqwBi" id="1u9nW95Hd$D" role="3eO9$A">
              <node concept="37vLTw" id="1u9nW95Hd$E" role="2Oq$k0">
                <ref role="3cqZAo" node="1u9nW95Hd_0" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="1u9nW95Hd$F" role="2OqNvi">
                <node concept="chp4Y" id="1u9nW95Hd$G" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1u9nW95Hd$H" role="3eOfB_">
              <node concept="3cpWs6" id="1u9nW95Hd$I" role="3cqZAp">
                <node concept="2OqwBi" id="1u9nW95Hd$J" role="3cqZAk">
                  <node concept="2OqwBi" id="1u9nW95Hd$K" role="2Oq$k0">
                    <node concept="1PxgMI" id="1u9nW95Hd$L" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="1u9nW95Hd$M" role="3oSUPX">
                        <ref role="cht4Q" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                      </node>
                      <node concept="37vLTw" id="1u9nW95Hd$N" role="1m5AlR">
                        <ref role="3cqZAo" node="1u9nW95Hd_0" resolve="ty" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="1u9nW95Hd$O" role="2OqNvi">
                      <ref role="3TtcxE" to="ke35:16EXoXrdzCY" resolve="tys" />
                    </node>
                  </node>
                  <node concept="2HxqBE" id="1u9nW95Hd$P" role="2OqNvi">
                    <node concept="1bVj0M" id="1u9nW95Hd$Q" role="23t8la">
                      <node concept="3clFbS" id="1u9nW95Hd$R" role="1bW5cS">
                        <node concept="3clFbF" id="1u9nW95Hd$S" role="3cqZAp">
                          <node concept="2YIFZM" id="1u9nW95HetK" role="3clFbG">
                            <ref role="37wK5l" node="1u9nW95Hd$b" resolve="isLinearType" />
                            <ref role="1Pybhc" node="1u9nW95Hdyu" resolve="TypeUtils" />
                            <node concept="37vLTw" id="1u9nW95HeFc" role="37wK5m">
                              <ref role="3cqZAo" node="1u9nW95Hd$V" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="1u9nW95Hd$V" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1u9nW95Hd$W" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1u9nW95Hd$X" role="3cqZAp">
          <node concept="3clFbT" id="1u9nW95Hd$Y" role="3cqZAk" />
        </node>
      </node>
      <node concept="10P_77" id="1u9nW95Hd$Z" role="3clF45" />
      <node concept="37vLTG" id="1u9nW95Hd_0" role="3clF46">
        <property role="TrG5h" value="ty" />
        <node concept="3Tqbb2" id="1u9nW95Hd_1" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="1u9nW95Hd_2" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1u9nW95Hd_3" role="jymVt">
      <property role="TrG5h" value="isDiscreteType" />
      <node concept="3clFbS" id="1u9nW95Hd_7" role="3clF47">
        <node concept="3clFbJ" id="1u9nW95Hd_8" role="3cqZAp">
          <node concept="2OqwBi" id="1u9nW95Hd_9" role="3clFbw">
            <node concept="37vLTw" id="1u9nW95Hd_a" role="2Oq$k0">
              <ref role="3cqZAo" node="1u9nW95Hd_S" resolve="ty" />
            </node>
            <node concept="1mIQ4w" id="1u9nW95Hd_b" role="2OqNvi">
              <node concept="chp4Y" id="1u9nW95Hd_c" role="cj9EA">
                <ref role="cht4Q" to="ke35:16EXoXrbZcA" resolve="TypeLinear" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1u9nW95Hd_d" role="3clFbx">
            <node concept="3cpWs6" id="1u9nW95Hd_e" role="3cqZAp">
              <node concept="3clFbT" id="1u9nW95Hd_f" role="3cqZAk" />
            </node>
          </node>
          <node concept="3eNFk2" id="1u9nW95Hd_g" role="3eNLev">
            <node concept="2OqwBi" id="1u9nW95Hd_h" role="3eO9$A">
              <node concept="37vLTw" id="1u9nW95Hd_i" role="2Oq$k0">
                <ref role="3cqZAo" node="1u9nW95Hd_S" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="1u9nW95Hd_j" role="2OqNvi">
                <node concept="chp4Y" id="1u9nW95Hd_k" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrbZcO" resolve="TypeDiscrete" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1u9nW95Hd_l" role="3eOfB_">
              <node concept="3cpWs6" id="1u9nW95Hd_m" role="3cqZAp">
                <node concept="3clFbT" id="1u9nW95Hd_n" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1u9nW95Hd_o" role="3eNLev">
            <node concept="2OqwBi" id="1u9nW95Hd_p" role="3eO9$A">
              <node concept="37vLTw" id="1u9nW95Hd_q" role="2Oq$k0">
                <ref role="3cqZAo" node="1u9nW95Hd_S" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="1u9nW95Hd_r" role="2OqNvi">
                <node concept="chp4Y" id="1u9nW95Hd_s" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrduWF" resolve="TypeUnit" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1u9nW95Hd_t" role="3eOfB_">
              <node concept="3cpWs6" id="1u9nW95Hd_u" role="3cqZAp">
                <node concept="3clFbT" id="1u9nW95Hd_v" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1u9nW95Hd_w" role="3eNLev">
            <node concept="2OqwBi" id="1u9nW95Hd_x" role="3eO9$A">
              <node concept="37vLTw" id="1u9nW95Hd_y" role="2Oq$k0">
                <ref role="3cqZAo" node="1u9nW95Hd_S" resolve="ty" />
              </node>
              <node concept="1mIQ4w" id="1u9nW95Hd_z" role="2OqNvi">
                <node concept="chp4Y" id="1u9nW95Hd_$" role="cj9EA">
                  <ref role="cht4Q" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1u9nW95Hd__" role="3eOfB_">
              <node concept="3cpWs6" id="1u9nW95Hd_A" role="3cqZAp">
                <node concept="2OqwBi" id="1u9nW95Hd_B" role="3cqZAk">
                  <node concept="2OqwBi" id="1u9nW95Hd_C" role="2Oq$k0">
                    <node concept="1PxgMI" id="1u9nW95Hd_D" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="1u9nW95Hd_E" role="3oSUPX">
                        <ref role="cht4Q" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
                      </node>
                      <node concept="37vLTw" id="1u9nW95Hd_F" role="1m5AlR">
                        <ref role="3cqZAo" node="1u9nW95Hd_S" resolve="ty" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="1u9nW95Hd_G" role="2OqNvi">
                      <ref role="3TtcxE" to="ke35:16EXoXrdzCY" resolve="tys" />
                    </node>
                  </node>
                  <node concept="2HxqBE" id="1u9nW95Hd_H" role="2OqNvi">
                    <node concept="1bVj0M" id="1u9nW95Hd_I" role="23t8la">
                      <node concept="3clFbS" id="1u9nW95Hd_J" role="1bW5cS">
                        <node concept="3clFbF" id="1u9nW95Hd_K" role="3cqZAp">
                          <node concept="2YIFZM" id="1u9nW95Hf24" role="3clFbG">
                            <ref role="37wK5l" node="1u9nW95Hd_3" resolve="isDiscreteType" />
                            <ref role="1Pybhc" node="1u9nW95Hdyu" resolve="TypeUtils" />
                            <node concept="37vLTw" id="1u9nW95Hf6M" role="37wK5m">
                              <ref role="3cqZAo" node="1u9nW95Hd_N" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="1u9nW95Hd_N" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1u9nW95Hd_O" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1u9nW95Hd_P" role="3cqZAp">
          <node concept="3clFbT" id="1u9nW95Hd_Q" role="3cqZAk" />
        </node>
      </node>
      <node concept="10P_77" id="1u9nW95Hd_R" role="3clF45" />
      <node concept="37vLTG" id="1u9nW95Hd_S" role="3clF46">
        <property role="TrG5h" value="ty" />
        <node concept="3Tqbb2" id="1u9nW95Hd_T" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="1u9nW95Hd_U" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="1u9nW95Hdyv" role="1B3o_S" />
  </node>
</model>

