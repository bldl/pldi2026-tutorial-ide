<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b8ce3415-ae60-4951-9fc8-dc62cd6b1f18(Bean.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ke35" ref="r:2989d431-ffca-4d3c-86eb-05e1c7fe32bd(Bean.structure)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="5624877018226900666" name="jetbrains.mps.lang.editor.structure.TransformationMenu" flags="ng" index="3ICUPy" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ngI" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
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
      <concept id="8182547171709738802" name="jetbrains.mps.lang.quotation.structure.NodeBuilderList" flags="nn" index="36be1Y" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="16EXoXrbZc2">
    <ref role="1XX52x" to="ke35:16EXoXrbZbT" resolve="Context" />
    <node concept="3EZMnI" id="16EXoXrbZc4" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrbZcf" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="1u9nW95Yc60" resolve="BeanLeftBrace" />
      </node>
      <node concept="3F2HdR" id="16EXoXrbZcl" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrbZbX" resolve="decls" />
        <node concept="2iRfu4" id="16EXoXrbZcn" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="16EXoXrbZci" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="1u9nW95Yc68" resolve="BeanRightBrace" />
      </node>
      <node concept="2iRfu4" id="16EXoXrbZc7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrbZcp">
    <ref role="1XX52x" to="ke35:16EXoXrbZbU" resolve="VarDecl" />
    <node concept="3EZMnI" id="16EXoXrbZcr" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrbZcv" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="16EXoXrc$p2" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrc$oY" resolve="ident" />
      </node>
      <node concept="3F0ifn" id="16EXoXrcf9Y" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="16EXoXrECuy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="16EXoXrck97" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrcfa1" resolve="type" />
      </node>
      <node concept="3F0ifn" id="16EXoXrbZcz" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="2iRfu4" id="16EXoXrbZcu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrbZcI">
    <ref role="1XX52x" to="ke35:16EXoXrbZcA" resolve="TypeLinear" />
    <node concept="3F0ifn" id="16EXoXrbZcK" role="2wV5jI">
      <property role="3F0ifm" value="num" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrbZcP">
    <ref role="1XX52x" to="ke35:16EXoXrbZcO" resolve="TypeDiscrete" />
    <node concept="3F0ifn" id="16EXoXrbZcR" role="2wV5jI">
      <property role="3F0ifm" value="dnum" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrc$p5">
    <ref role="1XX52x" to="ke35:16EXoXrcyem" resolve="IdentifierDecl" />
    <node concept="3F0A7n" id="16EXoXrxuMv" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrduWG">
    <ref role="1XX52x" to="ke35:16EXoXrduWF" resolve="TypeUnit" />
    <node concept="3EZMnI" id="16EXoXrExb1" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrExb7" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F0ifn" id="16EXoXrExba" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="2iRfu4" id="16EXoXrExb4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrdzD0">
    <ref role="1XX52x" to="ke35:16EXoXrdzCX" resolve="TypeProduct" />
    <node concept="3EZMnI" id="16EXoXrdzD2" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrdzD6" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F2HdR" id="16EXoXrdzDc" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="ke35:16EXoXrdzCY" resolve="tys" />
        <node concept="2iRfu4" id="16EXoXrdzDe" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="16EXoXrdzD9" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="2iRfu4" id="16EXoXrdzD5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrdzDn">
    <ref role="1XX52x" to="ke35:16EXoXrdzDk" resolve="TypeSum" />
    <node concept="3EZMnI" id="16EXoXrdzDr" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrdzDA" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="16EXoXrdzDv" role="3EZMnx">
        <property role="2czwfO" value=" +" />
        <ref role="1NtTu8" to="ke35:16EXoXrdzDl" resolve="tys" />
        <node concept="2iRfu4" id="16EXoXrdzDx" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="16EXoXrdzDz" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="16EXoXrdzDu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrhuw6">
    <ref role="1XX52x" to="ke35:16EXoXrhuw4" resolve="OperationSub" />
    <node concept="3EZMnI" id="16EXoXrhuw8" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrhuwe" role="3EZMnx">
        <property role="3F0ifm" value="sub" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhuwn" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRY9" resolve="refLeft" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhuwq" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRYa" resolve="refRight" />
      </node>
      <node concept="l2Vlx" id="16EXoXrDIuU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrhRXZ">
    <ref role="1XX52x" to="ke35:16EXoXrhuw3" resolve="OperationAdd" />
    <node concept="3EZMnI" id="16EXoXrhRY1" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrhRY5" role="3EZMnx">
        <property role="3F0ifm" value="add" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhZF9" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRY9" resolve="refLeft" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhZFc" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRYa" resolve="refRight" />
      </node>
      <node concept="l2Vlx" id="16EXoXrDhco" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrhZFi">
    <ref role="1XX52x" to="ke35:16EXoXrhZFg" resolve="OperationMul" />
    <node concept="3EZMnI" id="16EXoXrhZFp" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrhZFr" role="3EZMnx">
        <property role="3F0ifm" value="mul" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhZFu" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRY9" resolve="refLeft" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhZFz" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRYa" resolve="refRight" />
      </node>
      <node concept="l2Vlx" id="16EXoXrDBft" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrhZFC">
    <ref role="1XX52x" to="ke35:16EXoXrhZFA" resolve="OperationDiv" />
    <node concept="3EZMnI" id="16EXoXrhZFE" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrhZFI" role="3EZMnx">
        <property role="3F0ifm" value="div" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhZFL" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRY9" resolve="refLeft" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhZFO" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRYa" resolve="refRight" />
      </node>
      <node concept="l2Vlx" id="16EXoXrDoLT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrhZFU">
    <ref role="1XX52x" to="ke35:16EXoXrhZFR" resolve="OperationDMul" />
    <node concept="3EZMnI" id="16EXoXrhZFW" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrhZG0" role="3EZMnx">
        <property role="3F0ifm" value="dmul" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhZG3" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRY9" resolve="refLeft" />
      </node>
      <node concept="3F1sOY" id="16EXoXrhZG6" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrhRYa" resolve="refRight" />
      </node>
      <node concept="l2Vlx" id="16EXoXrDw04" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrSfYS">
    <ref role="1XX52x" to="ke35:16EXoXrSfYM" resolve="TensorPair" />
    <node concept="3EZMnI" id="16EXoXrSfYU" role="2wV5jI">
      <node concept="3F0ifn" id="16EXoXrSfYY" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="16EXoXrSfZ9" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrSfYO" resolve="left" />
      </node>
      <node concept="3F0ifn" id="16EXoXrSfZ4" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="16EXoXrSfZf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="16EXoXrSfZb" role="3EZMnx">
        <ref role="1NtTu8" to="ke35:16EXoXrSfYQ" resolve="right" />
      </node>
      <node concept="3F0ifn" id="16EXoXrSfZ1" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="16EXoXrSfYX" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrTlzd">
    <ref role="1XX52x" to="ke35:16EXoXrcE4U" resolve="Expression" />
    <node concept="1QoScp" id="16EXoXrYaY9" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="3F0ifn" id="16EXoXrYaYb" role="1QoS34">
        <node concept="VPxyj" id="16EXoXrYupl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="pkWqt" id="16EXoXrYaYc" role="3e4ffs">
        <node concept="3clFbS" id="16EXoXrYaYe" role="2VODD2">
          <node concept="3clFbF" id="1u9nW966b5h" role="3cqZAp">
            <node concept="17R0WA" id="1u9nW966bPc" role="3clFbG">
              <node concept="2OqwBi" id="1u9nW966c1j" role="3uHU7w">
                <node concept="pncrf" id="1u9nW966bUv" role="2Oq$k0" />
                <node concept="2Rxl7S" id="1u9nW966ce9" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="1u9nW966bl3" role="3uHU7B">
                <node concept="pncrf" id="1u9nW966b5g" role="2Oq$k0" />
                <node concept="1mfA1w" id="1u9nW966bxL" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1xolST" id="16EXoXrXT0m" role="1QoVPY">
        <property role="1xolSY" value="&lt;no expr&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="16EXoXrUkJV">
    <ref role="1XX52x" to="ke35:16EXoXrUkJS" resolve="Comment" />
    <node concept="3F1sOY" id="16EXoXrUkJX" role="2wV5jI">
      <ref role="1NtTu8" to="ke35:16EXoXrUkJT" resolve="comment" />
    </node>
  </node>
  <node concept="3ICUPy" id="16EXoXrUAzR">
    <ref role="aqKnT" to="ke35:16EXoXrcE4U" resolve="Expression" />
    <node concept="22hDWj" id="16EXoXrUAzS" role="22hAXT" />
    <node concept="1Qtc8_" id="16EXoXrUAzT" role="IW6Ez">
      <node concept="3cWJ9i" id="16EXoXrUAzV" role="1Qtc8$">
        <node concept="CtIbL" id="16EXoXrUAzX" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="IWgqT" id="16EXoXrUAzZ" role="1Qtc8A">
        <node concept="1hCUdq" id="16EXoXrUA$0" role="1hCUd6">
          <node concept="3clFbS" id="16EXoXrUA$1" role="2VODD2">
            <node concept="3clFbF" id="16EXoXrUANm" role="3cqZAp">
              <node concept="Xl_RD" id="16EXoXrUANl" role="3clFbG">
                <property role="Xl_RC" value="/*" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="16EXoXrUA$2" role="IWgqQ">
          <node concept="3clFbS" id="16EXoXrUA$3" role="2VODD2">
            <node concept="3clFbF" id="16EXoXrUBbQ" role="3cqZAp">
              <node concept="2OqwBi" id="16EXoXrUBlg" role="3clFbG">
                <node concept="7Obwk" id="16EXoXrUBbP" role="2Oq$k0" />
                <node concept="1P9Npp" id="16EXoXrUBuS" role="2OqNvi">
                  <node concept="2pJPEk" id="16EXoXrVwEh" role="1P9ThW">
                    <node concept="2pJPED" id="16EXoXrVwEj" role="2pJPEn">
                      <ref role="2pJxaS" to="tpee:1w9VmqdQ_lv" resolve="MultiLineComment" />
                      <node concept="2pIpSj" id="16EXoXrVwFu" role="2pJxcM">
                        <ref role="2pIpSl" to="tpee:1w9VmqdQGu9" resolve="lines" />
                        <node concept="36be1Y" id="16EXoXrVwG3" role="28nt2d" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="16EXoXrUBGf" role="2jiSrf">
          <node concept="3clFbS" id="16EXoXrUBGg" role="2VODD2">
            <node concept="3clFbF" id="16EXoXrUC7u" role="3cqZAp">
              <node concept="2OqwBi" id="16EXoXrUCSv" role="3clFbG">
                <node concept="2OqwBi" id="16EXoXrUCng" role="2Oq$k0">
                  <node concept="7Obwk" id="16EXoXrUC7t" role="2Oq$k0" />
                  <node concept="2yIwOk" id="16EXoXrUCx5" role="2OqNvi" />
                </node>
                <node concept="3O6GUB" id="16EXoXrUDdA" role="2OqNvi">
                  <node concept="chp4Y" id="16EXoXrUDj4" role="3QVz_e">
                    <ref role="cht4Q" to="ke35:16EXoXrcE4U" resolve="Expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="1u9nW95Xmnt">
    <property role="TrG5h" value="BeanStyleSheet" />
    <node concept="14StLt" id="1u9nW95XmnA" role="V601i">
      <property role="TrG5h" value="BeanKeyword" />
      <node concept="3Xmtl4" id="1u9nW95XmnD" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95XmnF" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95XmnM" role="V601i">
      <property role="TrG5h" value="BeanSemicolon" />
      <node concept="3Xmtl4" id="1u9nW95XPPM" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95XPPO" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hFDgi_W" resolve="Semicolon" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95Yc5J" role="V601i">
      <property role="TrG5h" value="BeanLeftParen" />
      <node concept="3Xmtl4" id="1u9nW95Yc5M" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95Yc5O" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hFCSAw$" resolve="LeftParen" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95Yc5R" role="V601i">
      <property role="TrG5h" value="BeanRightParen" />
      <node concept="3Xmtl4" id="1u9nW95Yc5U" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95Yc5W" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hFCSUmN" resolve="RightParen" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95Yc60" role="V601i">
      <property role="TrG5h" value="BeanLeftBrace" />
      <node concept="3Xmtl4" id="1u9nW95Yc63" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95Yc65" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hFD5onb" resolve="LeftBrace" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95Yc68" role="V601i">
      <property role="TrG5h" value="BeanRightBrace" />
      <node concept="3Xmtl4" id="1u9nW95Yc6b" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95Yc6d" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hFD5_7H" resolve="RightBrace" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95YynV" role="V601i">
      <property role="TrG5h" value="BeanComma" />
      <node concept="11L4FC" id="1u9nW95YynY" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95YSP7" role="V601i">
      <property role="TrG5h" value="BeanOperator" />
      <node concept="3Xmtl4" id="1u9nW95YSPa" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95YSPc" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hF$iUjy" resolve="Operator" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95Zf8j" role="V601i">
      <property role="TrG5h" value="BeanComment" />
      <node concept="3Xmtl4" id="1u9nW95Zf8l" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95Zf8m" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:1zA_DOMARqB" resolve="BlockComment" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1u9nW95Z__B" role="V601i">
      <property role="TrG5h" value="BeanBangConstructor" />
      <node concept="3Xmtl4" id="1u9nW95Z__E" role="3F10Kt">
        <node concept="1wgc9g" id="1u9nW95Z__G" role="3XvnJa">
          <ref role="1wgcnl" node="1u9nW95YSP7" resolve="BeanOperator" />
        </node>
      </node>
      <node concept="11LMrY" id="1u9nW95Z__J" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
</model>

