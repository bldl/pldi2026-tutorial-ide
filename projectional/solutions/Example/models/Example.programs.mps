<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:07911af7-01c5-413c-950b-5617660a1d53(Example.programs)">
  <persistence version="9" />
  <languages>
    <use id="9d2c0b71-7bac-4774-90d1-24eff3f6afe9" name="Bean" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="9d2c0b71-7bac-4774-90d1-24eff3f6afe9" name="Bean">
      <concept id="1273099840752709766" name="Bean.structure.TensorDestructor" flags="ng" index="1a0gk9">
        <child id="1273099840752826260" name="val" index="1a1O8r" />
        <child id="1273099840752826259" name="id2" index="1a1O8s" />
        <child id="1273099840752826258" name="id1" index="1a1O8t" />
      </concept>
      <concept id="1273099840752841568" name="Bean.structure.INumericBinding" flags="ngI" index="1a1KrJ">
        <property id="1273099840752841569" name="isLinear" index="1a1KrI" />
      </concept>
      <concept id="1273099840756187058" name="Bean.structure.TensorPair" flags="ng" index="1aiwCX">
        <child id="1273099840756187062" name="right" index="1aiwCT" />
        <child id="1273099840756187060" name="left" index="1aiwCV" />
      </concept>
      <concept id="1273099840744583974" name="Bean.structure.TypeLinear" flags="ng" index="1axgqD" />
      <concept id="1273099840744583988" name="Bean.structure.TypeDiscrete" flags="ng" index="1axgqV" />
      <concept id="1273099840744583935" name="Bean.structure.Program" flags="ng" index="1axgtK">
        <property id="1273099840755980622" name="description" index="1atMN1" />
        <child id="1273099840744819292" name="expressions" index="1aAnZj" />
        <child id="1273099840744716428" name="linearContext" index="1aAKO3" />
        <child id="1273099840744716427" name="discreteContext" index="1aAKO4" />
      </concept>
      <concept id="1273099840744583930" name="Bean.structure.VarDecl" flags="ng" index="1axgtP">
        <child id="1273099840744736318" name="ident" index="1aAbeL" />
        <child id="1273099840744649345" name="type" index="1aAwse" />
      </concept>
      <concept id="1273099840744583929" name="Bean.structure.Context" flags="ng" index="1axgtQ">
        <child id="1273099840744583933" name="decls" index="1axgtM" />
      </concept>
      <concept id="1273099840744759610" name="Bean.structure.Expression" flags="ng" index="1aA5iP" />
      <concept id="1273099840744759607" name="Bean.structure.VariableReference" flags="ng" index="1aA5iS">
        <reference id="1273099840744759608" name="ref" index="1aA5iR" />
      </concept>
      <concept id="1273099840744759600" name="Bean.structure.LetBinding" flags="ng" index="1aA5iZ">
        <child id="1273099840744759606" name="expr" index="1aA5iT" />
        <child id="1273099840744759603" name="ident" index="1aA5iW" />
      </concept>
      <concept id="1273099840744727446" name="Bean.structure.IdentifierDecl" flags="ng" index="1aAdop" />
      <concept id="1273099840744716424" name="Bean.structure.DiscreteContext" flags="ng" index="1aAKO7" />
      <concept id="1273099840744716422" name="Bean.structure.LinearContext" flags="ng" index="1aAKO9" />
      <concept id="1273099840744995389" name="Bean.structure.TypeProduct" flags="ng" index="1aBcYM">
        <child id="1273099840744995390" name="tys" index="1aBcYL" />
      </concept>
      <concept id="1273099840746158800" name="Bean.structure.OperationMul" flags="ng" index="1aVgXv" />
      <concept id="1273099840746158839" name="Bean.structure.OperationDMul" flags="ng" index="1aVgXS" />
      <concept id="1273099840746127240" name="Bean.structure.Operation" flags="ng" index="1aVoC7">
        <child id="1273099840746127242" name="refRight" index="1aVoC5" />
        <child id="1273099840746127241" name="refLeft" index="1aVoC6" />
      </concept>
      <concept id="1273099840746022915" name="Bean.structure.OperationAdd" flags="ng" index="1aVLQc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1axgtK" id="1u9nW96ajN$">
    <property role="TrG5h" value="DotProd2" />
    <property role="1atMN1" value="Dot product of vectors x and y in R^2." />
    <node concept="1aAKO7" id="1u9nW96ajN_" role="1aAKO4" />
    <node concept="1aAKO9" id="1u9nW96ajNA" role="1aAKO3">
      <node concept="1axgtP" id="1u9nW96ajOI" role="1axgtM">
        <node concept="1aAdop" id="1u9nW96ajOJ" role="1aAbeL">
          <property role="TrG5h" value="x" />
        </node>
        <node concept="1aBcYM" id="1u9nW96ajOR" role="1aAwse">
          <node concept="1axgqD" id="1u9nW96ajP4" role="1aBcYL" />
          <node concept="1axgqD" id="1u9nW96ajPp" role="1aBcYL" />
        </node>
      </node>
      <node concept="1axgtP" id="1u9nW96ajQi" role="1axgtM">
        <node concept="1aAdop" id="1u9nW96ajQj" role="1aAbeL">
          <property role="TrG5h" value="y" />
        </node>
        <node concept="1aBcYM" id="1u9nW96ajQT" role="1aAwse">
          <node concept="1axgqD" id="1u9nW96ajRl" role="1aBcYL" />
          <node concept="1axgqD" id="1u9nW96ajSh" role="1aBcYL" />
        </node>
      </node>
    </node>
    <node concept="1a0gk9" id="1u9nW96ajTC" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96ajTD" role="1a1O8t">
        <property role="TrG5h" value="x0" />
      </node>
      <node concept="1aAdop" id="1u9nW96ajTE" role="1a1O8s">
        <property role="TrG5h" value="x1" />
      </node>
      <node concept="1aA5iS" id="1u9nW96ajTF" role="1a1O8r">
        <ref role="1aA5iR" node="1u9nW96ajOJ" resolve="x" />
      </node>
    </node>
    <node concept="1a0gk9" id="1u9nW96ajUj" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96ajUk" role="1a1O8t">
        <property role="TrG5h" value="y0" />
      </node>
      <node concept="1aAdop" id="1u9nW96ajUl" role="1a1O8s">
        <property role="TrG5h" value="y1" />
      </node>
      <node concept="1aA5iS" id="1u9nW96ajUm" role="1a1O8r">
        <ref role="1aA5iR" node="1u9nW96ajQj" resolve="y" />
      </node>
    </node>
    <node concept="1aA5iP" id="1u9nW96ajUQ" role="1aAnZj" />
    <node concept="1aA5iZ" id="1u9nW96ajUS" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96ajUU" role="1aA5iW">
        <property role="TrG5h" value="v" />
      </node>
      <node concept="1aVgXv" id="1u9nW96ajV0" role="1aA5iT">
        <node concept="1aA5iS" id="1u9nW96ajV2" role="1aVoC6">
          <ref role="1aA5iR" node="1u9nW96ajTD" resolve="x0" />
        </node>
        <node concept="1aA5iS" id="1u9nW96ajV4" role="1aVoC5">
          <ref role="1aA5iR" node="1u9nW96ajUk" resolve="y0" />
        </node>
      </node>
    </node>
    <node concept="1aA5iZ" id="1u9nW96ajXd" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96ajXf" role="1aA5iW">
        <property role="TrG5h" value="w" />
      </node>
      <node concept="1aVgXv" id="1u9nW96ajXl" role="1aA5iT">
        <node concept="1aA5iS" id="1u9nW96ajXn" role="1aVoC6">
          <ref role="1aA5iR" node="1u9nW96ajTE" resolve="x1" />
        </node>
        <node concept="1aA5iS" id="1u9nW96ajXp" role="1aVoC5">
          <ref role="1aA5iR" node="1u9nW96ajUl" resolve="y1" />
        </node>
      </node>
    </node>
    <node concept="1aVLQc" id="1u9nW96ajZy" role="1aAnZj">
      <node concept="1aA5iS" id="1u9nW96ajZ$" role="1aVoC6">
        <ref role="1aA5iR" node="1u9nW96ajUU" resolve="v" />
      </node>
      <node concept="1aA5iS" id="1u9nW96ajZA" role="1aVoC5">
        <ref role="1aA5iR" node="1u9nW96ajXf" resolve="w" />
      </node>
    </node>
  </node>
  <node concept="1axgtK" id="1u9nW96ak1X">
    <property role="TrG5h" value="Demo_MultipleAccessLinearVariable" />
    <property role="1atMN1" value="Linear variable `b` can only be accessed once. The language extension shows a diagnostic error message." />
    <node concept="1aAKO7" id="1u9nW96ak1Y" role="1aAKO4">
      <node concept="1axgtP" id="1u9nW96ak2m" role="1axgtM">
        <node concept="1aAdop" id="1u9nW96ak2n" role="1aAbeL">
          <property role="TrG5h" value="a" />
        </node>
        <node concept="1axgqV" id="1u9nW96ak2v" role="1aAwse" />
      </node>
    </node>
    <node concept="1aAKO9" id="1u9nW96ak1Z" role="1aAKO3">
      <node concept="1axgtP" id="1u9nW96ak2B" role="1axgtM">
        <node concept="1aAdop" id="1u9nW96ak2C" role="1aAbeL">
          <property role="TrG5h" value="b" />
        </node>
        <node concept="1axgqD" id="1u9nW96ak2K" role="1aAwse" />
      </node>
    </node>
    <node concept="1aA5iZ" id="1u9nW96ak2T" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96ak2V" role="1aA5iW">
        <property role="TrG5h" value="c" />
      </node>
      <node concept="1aVgXS" id="1u9nW96ak31" role="1aA5iT">
        <node concept="1aA5iS" id="1u9nW96ak33" role="1aVoC6">
          <ref role="1aA5iR" node="1u9nW96ak2n" resolve="a" />
        </node>
        <node concept="1aA5iS" id="1u9nW96ak35" role="1aVoC5">
          <ref role="1aA5iR" node="1u9nW96ak2C" resolve="b" />
        </node>
      </node>
    </node>
    <node concept="1aA5iZ" id="1u9nW96ak3L" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96ak3N" role="1aA5iW">
        <property role="TrG5h" value="d" />
      </node>
      <node concept="1aVgXv" id="1u9nW96ak5n" role="1aA5iT">
        <node concept="1aA5iS" id="1u9nW96ak5p" role="1aVoC6">
          <ref role="1aA5iR" node="1u9nW96ak2V" resolve="c" />
        </node>
        <node concept="1aA5iS" id="1u9nW96ak5r" role="1aVoC5">
          <ref role="1aA5iR" node="1u9nW96ak2C" resolve="b" />
        </node>
      </node>
    </node>
    <node concept="1aA5iS" id="1u9nW96ak4T" role="1aAnZj">
      <ref role="1aA5iR" node="1u9nW96ak3N" resolve="d" />
    </node>
  </node>
  <node concept="1axgtK" id="1u9nW96ak73">
    <property role="TrG5h" value="Demo_UnusedVars" />
    <property role="1atMN1" value="Variables `v` and `b` are unused: the language extension shows diagnostic information and provides quickfixes to remove the unused declarations." />
    <node concept="1aAKO7" id="1u9nW96ak74" role="1aAKO4">
      <node concept="1axgtP" id="1u9nW96aka2" role="1axgtM">
        <node concept="1aAdop" id="1u9nW96aka3" role="1aAbeL">
          <property role="TrG5h" value="a" />
        </node>
        <node concept="1axgqV" id="1u9nW96akab" role="1aAwse" />
      </node>
      <node concept="1axgtP" id="1u9nW96akaj" role="1axgtM">
        <node concept="1aAdop" id="1u9nW96akak" role="1aAbeL">
          <property role="TrG5h" value="v" />
        </node>
        <node concept="1aBcYM" id="1u9nW96akay" role="1aAwse">
          <node concept="1axgqV" id="1u9nW96akaM" role="1aBcYL" />
          <node concept="1axgqV" id="1u9nW96akbm" role="1aBcYL" />
        </node>
      </node>
    </node>
    <node concept="1aAKO9" id="1u9nW96ak75" role="1aAKO3">
      <node concept="1axgtP" id="1u9nW96akbH" role="1axgtM">
        <node concept="1aAdop" id="1u9nW96akbI" role="1aAbeL">
          <property role="TrG5h" value="b" />
        </node>
        <node concept="1axgqD" id="1u9nW96akbQ" role="1aAwse" />
      </node>
      <node concept="1axgtP" id="1u9nW96akbY" role="1axgtM">
        <node concept="1aAdop" id="1u9nW96akbZ" role="1aAbeL">
          <property role="TrG5h" value="w" />
        </node>
        <node concept="1aBcYM" id="1u9nW96akcd" role="1aAwse">
          <node concept="1axgqD" id="1u9nW96akdd" role="1aBcYL" />
          <node concept="1axgqD" id="1u9nW96akdK" role="1aBcYL" />
        </node>
      </node>
    </node>
    <node concept="1a0gk9" id="1u9nW96akef" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96akeg" role="1a1O8t">
        <property role="TrG5h" value="w0" />
      </node>
      <node concept="1aAdop" id="1u9nW96akeh" role="1a1O8s">
        <property role="TrG5h" value="w1" />
      </node>
      <node concept="1aA5iS" id="1u9nW96akei" role="1a1O8r">
        <ref role="1aA5iR" node="1u9nW96akbZ" resolve="w" />
      </node>
    </node>
    <node concept="1aA5iZ" id="1u9nW96akeN" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96akeP" role="1aA5iW">
        <property role="TrG5h" value="y0" />
      </node>
      <node concept="1aVgXS" id="1u9nW96akeV" role="1aA5iT">
        <node concept="1aA5iS" id="1u9nW96akeX" role="1aVoC6">
          <ref role="1aA5iR" node="1u9nW96aka3" resolve="a" />
        </node>
        <node concept="1aA5iS" id="1u9nW96akeZ" role="1aVoC5">
          <ref role="1aA5iR" node="1u9nW96akeg" resolve="w0" />
        </node>
      </node>
    </node>
    <node concept="1aA5iZ" id="1u9nW96akfU" role="1aAnZj">
      <property role="1a1KrI" value="true" />
      <node concept="1aAdop" id="1u9nW96akfW" role="1aA5iW">
        <property role="TrG5h" value="y1" />
      </node>
      <node concept="1aVgXS" id="1u9nW96akg2" role="1aA5iT">
        <node concept="1aA5iS" id="1u9nW96akg4" role="1aVoC6">
          <ref role="1aA5iR" node="1u9nW96aka3" resolve="a" />
        </node>
        <node concept="1aA5iS" id="1u9nW96akg6" role="1aVoC5">
          <ref role="1aA5iR" node="1u9nW96akeh" resolve="w1" />
        </node>
      </node>
    </node>
    <node concept="1aiwCX" id="1u9nW96aki1" role="1aAnZj">
      <node concept="1aA5iS" id="1u9nW96aki9" role="1aiwCV">
        <ref role="1aA5iR" node="1u9nW96akeP" resolve="y0" />
      </node>
      <node concept="1aA5iS" id="1u9nW96akie" role="1aiwCT">
        <ref role="1aA5iR" node="1u9nW96akfW" resolve="y1" />
      </node>
    </node>
  </node>
</model>

