<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2989d431-ffca-4d3c-86eb-05e1c7fe32bd(Bean.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="16EXoXrbZbT">
    <property role="EcuMT" value="1273099840744583929" />
    <property role="TrG5h" value="Context" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="16EXoXrbZbX" role="1TKVEi">
      <property role="IQ2ns" value="1273099840744583933" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="decls" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="16EXoXrbZbU" resolve="VarDecl" />
    </node>
  </node>
  <node concept="1TIwiD" id="16EXoXrbZbU">
    <property role="EcuMT" value="1273099840744583930" />
    <property role="TrG5h" value="VarDecl" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="16EXoXrc$oY" role="1TKVEi">
      <property role="IQ2ns" value="1273099840744736318" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ident" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="16EXoXrcyem" resolve="IdentifierDecl" />
    </node>
    <node concept="1TJgyj" id="16EXoXrcfa1" role="1TKVEi">
      <property role="IQ2ns" value="1273099840744649345" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="16EXoXrbZcF" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="16EXoXrbZcA">
    <property role="EcuMT" value="1273099840744583974" />
    <property role="TrG5h" value="TypeLinear" />
    <property role="34LRSv" value="num" />
    <property role="R4oN_" value="linear type" />
    <ref role="1TJDcQ" node="16EXoXrbZcF" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="16EXoXrbZcF">
    <property role="EcuMT" value="1273099840744583979" />
    <property role="TrG5h" value="Type" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="16EXoXrbZcO">
    <property role="EcuMT" value="1273099840744583988" />
    <property role="TrG5h" value="TypeDiscrete" />
    <property role="34LRSv" value="dnum" />
    <property role="R4oN_" value="discrete type" />
    <ref role="1TJDcQ" node="16EXoXrbZcF" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="16EXoXrcvy6">
    <property role="EcuMT" value="1273099840744716422" />
    <property role="TrG5h" value="LinearContext" />
    <ref role="1TJDcQ" node="16EXoXrbZbT" resolve="Context" />
  </node>
  <node concept="1TIwiD" id="16EXoXrcvy8">
    <property role="EcuMT" value="1273099840744716424" />
    <property role="TrG5h" value="DiscreteContext" />
    <ref role="1TJDcQ" node="16EXoXrbZbT" resolve="Context" />
  </node>
  <node concept="1TIwiD" id="16EXoXrcyem">
    <property role="EcuMT" value="1273099840744727446" />
    <property role="TrG5h" value="IdentifierDecl" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="16EXoXr$XbX" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="16EXoXrcE4R">
    <property role="EcuMT" value="1273099840744759607" />
    <property role="TrG5h" value="VariableReference" />
    <ref role="1TJDcQ" node="16EXoXrcE4W" resolve="Value" />
  </node>
  <node concept="1TIwiD" id="16EXoXrcE4U">
    <property role="EcuMT" value="1273099840744759610" />
    <property role="TrG5h" value="Expression" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="16EXoXrcE4W">
    <property role="EcuMT" value="1273099840744759612" />
    <property role="TrG5h" value="Value" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="16EXoXrcE4U" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="16EXoXrduWF">
    <property role="EcuMT" value="1273099840744976171" />
    <property role="TrG5h" value="TypeUnit" />
    <property role="34LRSv" value="()" />
    <property role="R4oN_" value="unit type" />
    <ref role="1TJDcQ" node="16EXoXrbZcF" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="16EXoXrdzCX">
    <property role="EcuMT" value="1273099840744995389" />
    <property role="TrG5h" value="TypeProduct" />
    <property role="34LRSv" value="*" />
    <property role="R4oN_" value="product type" />
    <ref role="1TJDcQ" node="16EXoXrbZcF" resolve="Type" />
    <node concept="1TJgyj" id="16EXoXrdzCY" role="1TKVEi">
      <property role="IQ2ns" value="1273099840744995390" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="tys" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="16EXoXrbZcF" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="16EXoXrdzDk">
    <property role="EcuMT" value="1273099840744995412" />
    <property role="TrG5h" value="TypeSum" />
    <property role="34LRSv" value="+" />
    <property role="R4oN_" value="sum type" />
    <ref role="1TJDcQ" node="16EXoXrbZcF" resolve="Type" />
    <node concept="1TJgyj" id="16EXoXrdzDl" role="1TKVEi">
      <property role="IQ2ns" value="1273099840744995413" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="tys" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="16EXoXrbZcF" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="16EXoXrhuw3">
    <property role="EcuMT" value="1273099840746022915" />
    <property role="TrG5h" value="OperationAdd" />
    <property role="34LRSv" value="add" />
    <property role="R4oN_" value="add: num -&gt; num -&gt; num" />
    <ref role="1TJDcQ" node="16EXoXrhRY8" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="16EXoXrhuw4">
    <property role="EcuMT" value="1273099840746022916" />
    <property role="TrG5h" value="OperationSub" />
    <property role="34LRSv" value="sub" />
    <property role="R4oN_" value="sub: num -&gt; num -&gt; num" />
    <ref role="1TJDcQ" node="16EXoXrhRY8" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="16EXoXrhRY8">
    <property role="EcuMT" value="1273099840746127240" />
    <property role="TrG5h" value="Operation" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="16EXoXrcE4U" resolve="Expression" />
    <node concept="1TJgyj" id="16EXoXrhRY9" role="1TKVEi">
      <property role="IQ2ns" value="1273099840746127241" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="refLeft" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="16EXoXrcE4R" resolve="VariableReference" />
    </node>
    <node concept="1TJgyj" id="16EXoXrhRYa" role="1TKVEi">
      <property role="IQ2ns" value="1273099840746127242" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="refRight" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="16EXoXrcE4R" resolve="VariableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="16EXoXrhZFg">
    <property role="EcuMT" value="1273099840746158800" />
    <property role="TrG5h" value="OperationMul" />
    <property role="34LRSv" value="mul" />
    <property role="R4oN_" value="mul: num -&gt; num -&gt; num" />
    <ref role="1TJDcQ" node="16EXoXrhRY8" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="16EXoXrhZFA">
    <property role="EcuMT" value="1273099840746158822" />
    <property role="TrG5h" value="OperationDiv" />
    <property role="34LRSv" value="div" />
    <property role="R4oN_" value="div: num -&gt; num -&gt; num" />
    <ref role="1TJDcQ" node="16EXoXrhRY8" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="16EXoXrhZFR">
    <property role="EcuMT" value="1273099840746158839" />
    <property role="TrG5h" value="OperationDMul" />
    <property role="34LRSv" value="dmul" />
    <property role="R4oN_" value="dmul: dnum -&gt; num -&gt; num" />
    <ref role="1TJDcQ" node="16EXoXrhRY8" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="16EXoXrSfYM">
    <property role="EcuMT" value="1273099840756187058" />
    <property role="TrG5h" value="TensorPair" />
    <property role="R4oN_" value="tensor pair" />
    <property role="34LRSv" value="(_, _)" />
    <ref role="1TJDcQ" node="16EXoXrcE4W" resolve="Value" />
    <node concept="1TJgyj" id="16EXoXrSfYO" role="1TKVEi">
      <property role="IQ2ns" value="1273099840756187060" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="16EXoXrcE4W" resolve="Value" />
    </node>
    <node concept="1TJgyj" id="16EXoXrSfYQ" role="1TKVEi">
      <property role="IQ2ns" value="1273099840756187062" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="16EXoXrcE4W" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="16EXoXrUkJS">
    <property role="EcuMT" value="1273099840756730872" />
    <property role="TrG5h" value="Comment" />
    <property role="34LRSv" value="/*" />
    <ref role="1TJDcQ" node="16EXoXrcE4U" resolve="Expression" />
    <node concept="1TJgyj" id="16EXoXrUkJT" role="1TKVEi">
      <property role="IQ2ns" value="1273099840756730873" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="comment" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:1w9VmqdQ_lv" resolve="MultiLineComment" />
    </node>
  </node>
</model>

