<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5feda2a1-c36a-4783-8283-2a036cc255e9(com.mbeddr.analyses.cbmc.concurrency.generator.template.utils)">
  <persistence version="9" />
  <languages>
    <use id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil" version="2" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="c4fa" ref="r:9f0e84b6-2ec7-4f9e-83e0-feedc77b63a3(com.mbeddr.core.statements.structure)" />
    <import index="mj1l" ref="r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)" />
    <import index="x27k" ref="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" />
    <import index="q5q6" ref="r:5d65e582-fa41-4818-b31c-b2aee1644b4a(com.mbeddr.analyses.cbmc.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="nok9" ref="r:071dfb19-bba7-4a45-a209-478de09a1fc8(com.mbeddr.analyses.cbmc.concurrency.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil">
      <concept id="6451706574539345403" name="com.mbeddr.mpsutil.blutil.structure.MethodLineDoc" flags="ng" index="NWlO9">
        <property id="6451706574539345425" name="text" index="NWlVz" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1143224066846" name="jetbrains.mps.lang.smodel.structure.Node_InsertNextSiblingOperation" flags="nn" index="HtI8k">
        <child id="1143224066849" name="insertedNode" index="HtI8F" />
      </concept>
      <concept id="1143224127713" name="jetbrains.mps.lang.smodel.structure.Node_InsertPrevSiblingOperation" flags="nn" index="HtX7F">
        <child id="1143224127716" name="insertedNode" index="HtX7I" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="312cEu" id="3V3CJZuLYU6">
    <property role="TrG5h" value="HappensAfterUtils" />
    <node concept="2tJIrI" id="3V3CJZuLYUz" role="jymVt" />
    <node concept="2YIFZL" id="3V3CJZuLYUW" role="jymVt">
      <property role="TrG5h" value="doInstrumentFirstLabel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3V3CJZuLYUZ" role="3clF47">
        <node concept="3cpWs8" id="3V3CJZuL4ch" role="3cqZAp">
          <node concept="3cpWsn" id="3V3CJZuL4ci" role="3cpWs9">
            <property role="TrG5h" value="im" />
            <node concept="3Tqbb2" id="3V3CJZuL4c5" role="1tU5fm">
              <ref role="ehGHo" to="x27k:5_l8w1EmTde" resolve="ImplementationModule" />
            </node>
            <node concept="2OqwBi" id="3V3CJZuL4cj" role="33vP2m">
              <node concept="37vLTw" id="3V3CJZuL4ck" role="2Oq$k0">
                <ref role="3cqZAo" node="3V3CJZuLYVa" resolve="label" />
              </node>
              <node concept="2Xjw5R" id="3V3CJZuL4cl" role="2OqNvi">
                <node concept="1xMEDy" id="3V3CJZuL4cm" role="1xVPHs">
                  <node concept="chp4Y" id="3V3CJZuL4cn" role="ri$Ld">
                    <ref role="cht4Q" to="x27k:5_l8w1EmTde" resolve="ImplementationModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3V3CJZuLXlj" role="3cqZAp">
          <node concept="3cpWsn" id="3V3CJZuLXlk" role="3cpWs9">
            <property role="TrG5h" value="gvd" />
            <node concept="3Tqbb2" id="3V3CJZuLXkJ" role="1tU5fm">
              <ref role="ehGHo" to="x27k:5IYyAOzCrre" resolve="GlobalVariableDeclaration" />
            </node>
            <node concept="2pJPEk" id="3AhkfbYPDLq" role="33vP2m">
              <node concept="2pJPED" id="3AhkfbYPDLr" role="2pJPEn">
                <ref role="2pJxaS" to="x27k:5IYyAOzCrre" resolve="GlobalVariableDeclaration" />
                <node concept="2pJxcG" id="3AhkfbYPDLx" role="2pJxcM">
                  <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                  <node concept="3cpWs3" id="3AhkfbYPDLs" role="2pJxcZ">
                    <node concept="2OqwBi" id="3AhkfbYPDLt" role="3uHU7w">
                      <node concept="37vLTw" id="3AhkfbYPDLu" role="2Oq$k0">
                        <ref role="3cqZAo" node="3V3CJZuLYVa" resolve="label" />
                      </node>
                      <node concept="3TrcHB" id="3AhkfbYPDLv" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3AhkfbYPDLw" role="3uHU7B">
                      <property role="Xl_RC" value="label_" />
                    </node>
                  </node>
                </node>
                <node concept="2pIpSj" id="3AhkfbYPDLy" role="2pJxcM">
                  <ref role="2pIpSl" to="mj1l:hEaDaGor64" />
                  <node concept="2pJPED" id="3AhkfbYPDLz" role="2pJxcZ">
                    <ref role="2pJxaS" to="q5q6:6KXBYUqABWL" resolve="CPROVERbool" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V3CJZuKSG6" role="3cqZAp">
          <node concept="2OqwBi" id="3V3CJZuKYRH" role="3clFbG">
            <node concept="2OqwBi" id="3V3CJZuKUWn" role="2Oq$k0">
              <node concept="37vLTw" id="3V3CJZuL4co" role="2Oq$k0">
                <ref role="3cqZAo" node="3V3CJZuL4ci" resolve="im" />
              </node>
              <node concept="3Tsc0h" id="3V3CJZuKX8e" role="2OqNvi">
                <ref role="3TtcxE" to="x27k:5_l8w1EmTdh" />
              </node>
            </node>
            <node concept="TSZUe" id="3V3CJZuL3MJ" role="2OqNvi">
              <node concept="37vLTw" id="3V3CJZuLXlw" role="25WWJ7">
                <ref role="3cqZAo" node="3V3CJZuLXlk" resolve="gvd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V3CJZuKS6y" role="3cqZAp">
          <node concept="2OqwBi" id="3V3CJZuKSc9" role="3clFbG">
            <node concept="37vLTw" id="3V3CJZuKS6w" role="2Oq$k0">
              <ref role="3cqZAo" node="3V3CJZuLYVa" resolve="label" />
            </node>
            <node concept="HtI8k" id="3V3CJZuKSBl" role="2OqNvi">
              <node concept="2pJPEk" id="3AhkfbYPDL$" role="HtI8F">
                <node concept="2pJPED" id="3AhkfbYPDL_" role="2pJPEn">
                  <ref role="2pJxaS" to="c4fa:6iIoqg1yCmi" resolve="ExpressionStatement" />
                  <node concept="2pIpSj" id="3AhkfbYPDLA" role="2pJxcM">
                    <ref role="2pIpSl" to="c4fa:6iIoqg1yCmj" />
                    <node concept="2pJPED" id="3AhkfbYPDLB" role="2pJxcZ">
                      <ref role="2pJxaS" to="mj1l:1exqRp9kgd" resolve="AssignmentExpr" />
                      <node concept="2pIpSj" id="3AhkfbYPDLC" role="2pJxcM">
                        <ref role="2pIpSl" to="mj1l:7FQByU3CrD0" />
                        <node concept="2pJPED" id="3AhkfbYPDLD" role="2pJxcZ">
                          <ref role="2pJxaS" to="x27k:5IYyAOzCwFE" resolve="GlobalVarRef" />
                          <node concept="2pIpSj" id="3AhkfbYPDLF" role="2pJxcM">
                            <ref role="2pIpSl" to="x27k:5IYyAOzCwFF" />
                            <node concept="36biLy" id="3AhkfbYPDLG" role="2pJxcZ">
                              <node concept="37vLTw" id="3AhkfbYPDLE" role="36biLW">
                                <ref role="3cqZAo" node="3V3CJZuLXlk" resolve="gvd" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="3AhkfbYPDLH" role="2pJxcM">
                        <ref role="2pIpSl" to="mj1l:7FQByU3CrD1" />
                        <node concept="2pJPED" id="3AhkfbYPDLI" role="2pJxcZ">
                          <ref role="2pJxaS" to="mj1l:7FQByU3CrDB" resolve="NumberLiteral" />
                          <node concept="2pJxcG" id="3AhkfbYPDLK" role="2pJxcM">
                            <ref role="2pJxcJ" to="mj1l:1UQ4qqfV3yK" resolve="value" />
                            <node concept="Xl_RD" id="3AhkfbYPDLJ" role="2pJxcZ">
                              <property role="Xl_RC" value="1" />
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
        </node>
      </node>
      <node concept="3Tm1VV" id="3V3CJZuLYUG" role="1B3o_S" />
      <node concept="3cqZAl" id="3V3CJZuLYUS" role="3clF45" />
      <node concept="37vLTG" id="3V3CJZuLYVa" role="3clF46">
        <property role="TrG5h" value="label" />
        <node concept="3Tqbb2" id="3V3CJZuLYV9" role="1tU5fm">
          <ref role="ehGHo" to="x27k:5HTuIUPB$3z" resolve="LabelStatement" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3V3CJZuM6u5" role="jymVt" />
    <node concept="2YIFZL" id="3V3CJZuM6Eg" role="jymVt">
      <property role="TrG5h" value="doInstrumentSecondLabel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3V3CJZuM6Eh" role="3clF47">
        <node concept="3cpWs8" id="3V3CJZuNE0U" role="3cqZAp">
          <node concept="3cpWsn" id="3V3CJZuNE0X" role="3cpWs9">
            <property role="TrG5h" value="first" />
            <node concept="3Tqbb2" id="3V3CJZuNE0S" role="1tU5fm">
              <ref role="ehGHo" to="x27k:5HTuIUPB$3z" resolve="LabelStatement" />
            </node>
            <node concept="2OqwBi" id="3V3CJZuNEby" role="33vP2m">
              <node concept="37vLTw" id="3V3CJZuNE62" role="2Oq$k0">
                <ref role="3cqZAo" node="3V3CJZuM6F2" resolve="hap" />
              </node>
              <node concept="3TrEf2" id="3V3CJZuNEU_" role="2OqNvi">
                <ref role="3Tt5mk" to="nok9:3V3CJZuKQVQ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3V3CJZuNF1X" role="3cqZAp">
          <node concept="3cpWsn" id="3V3CJZuNF20" role="3cpWs9">
            <property role="TrG5h" value="second" />
            <node concept="3Tqbb2" id="3V3CJZuNF1V" role="1tU5fm">
              <ref role="ehGHo" to="x27k:5HTuIUPB$3z" resolve="LabelStatement" />
            </node>
            <node concept="2OqwBi" id="3V3CJZuNFdR" role="33vP2m">
              <node concept="37vLTw" id="3V3CJZuNF8n" role="2Oq$k0">
                <ref role="3cqZAo" node="3V3CJZuM6F2" resolve="hap" />
              </node>
              <node concept="3TrEf2" id="3V3CJZuNFWU" role="2OqNvi">
                <ref role="3Tt5mk" to="nok9:3V3CJZuKQVX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3V3CJZuMyEk" role="3cqZAp">
          <node concept="3cpWsn" id="3V3CJZuMyEl" role="3cpWs9">
            <property role="TrG5h" value="firstGVD" />
            <node concept="3Tqbb2" id="3V3CJZuMyEd" role="1tU5fm">
              <ref role="ehGHo" to="x27k:5IYyAOzCrre" resolve="GlobalVariableDeclaration" />
            </node>
            <node concept="2OqwBi" id="3V3CJZuMyEm" role="33vP2m">
              <node concept="2OqwBi" id="3V3CJZuMyEn" role="2Oq$k0">
                <node concept="2OqwBi" id="3V3CJZuMyEo" role="2Oq$k0">
                  <node concept="37vLTw" id="3V3CJZuMyEp" role="2Oq$k0">
                    <ref role="3cqZAo" node="3V3CJZuM6F2" resolve="hap" />
                  </node>
                  <node concept="2Xjw5R" id="3V3CJZuMyEq" role="2OqNvi">
                    <node concept="1xMEDy" id="3V3CJZuMyEr" role="1xVPHs">
                      <node concept="chp4Y" id="3V3CJZuMyEs" role="ri$Ld">
                        <ref role="cht4Q" to="x27k:5_l8w1EmTde" resolve="ImplementationModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Rf3mk" id="3V3CJZuMyEt" role="2OqNvi">
                  <node concept="1xMEDy" id="3V3CJZuMyEu" role="1xVPHs">
                    <node concept="chp4Y" id="3V3CJZuMyEv" role="ri$Ld">
                      <ref role="cht4Q" to="x27k:5IYyAOzCrre" resolve="GlobalVariableDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1z4cxt" id="3V3CJZuMyEw" role="2OqNvi">
                <node concept="1bVj0M" id="3V3CJZuMyEx" role="23t8la">
                  <node concept="3clFbS" id="3V3CJZuMyEy" role="1bW5cS">
                    <node concept="3clFbF" id="3V3CJZuMyEz" role="3cqZAp">
                      <node concept="2OqwBi" id="3V3CJZuMyE$" role="3clFbG">
                        <node concept="2OqwBi" id="3V3CJZuMyE_" role="2Oq$k0">
                          <node concept="37vLTw" id="3V3CJZuMyEA" role="2Oq$k0">
                            <ref role="3cqZAo" node="3V3CJZuMyEI" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3V3CJZuMyEB" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3V3CJZuMyEC" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="3cpWs3" id="3V3CJZuMyED" role="37wK5m">
                            <node concept="Xl_RD" id="3V3CJZuMyEE" role="3uHU7B">
                              <property role="Xl_RC" value="label_" />
                            </node>
                            <node concept="2OqwBi" id="3V3CJZuMyEF" role="3uHU7w">
                              <node concept="37vLTw" id="3V3CJZuNIjv" role="2Oq$k0">
                                <ref role="3cqZAo" node="3V3CJZuNE0X" resolve="first" />
                              </node>
                              <node concept="3TrcHB" id="3V3CJZuPe0I" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3V3CJZuMyEI" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3V3CJZuMyEJ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3V3CJZuM9FV" role="3cqZAp" />
        <node concept="3cpWs8" id="3V3CJZuNIFn" role="3cqZAp">
          <node concept="3cpWsn" id="3V3CJZuNIFo" role="3cpWs9">
            <property role="TrG5h" value="ourAssert" />
            <node concept="3Tqbb2" id="3V3CJZuNIEI" role="1tU5fm">
              <ref role="ehGHo" to="q5q6:637qsduSbtp" resolve="Assert" />
            </node>
            <node concept="2pJPEk" id="3AhkfbYPDLL" role="33vP2m">
              <node concept="2pJPED" id="3AhkfbYPDLM" role="2pJPEn">
                <ref role="2pJxaS" to="q5q6:637qsduSbtp" resolve="Assert" />
                <node concept="2pIpSj" id="3AhkfbYPDLN" role="2pJxcM">
                  <ref role="2pIpSl" to="q5q6:637qsduSbtq" />
                  <node concept="2pJPED" id="3AhkfbYPDLO" role="2pJxcZ">
                    <ref role="2pJxaS" to="x27k:5IYyAOzCwFE" resolve="GlobalVarRef" />
                    <node concept="2pIpSj" id="3AhkfbYPDLQ" role="2pJxcM">
                      <ref role="2pIpSl" to="x27k:5IYyAOzCwFF" />
                      <node concept="36biLy" id="3AhkfbYPDLR" role="2pJxcZ">
                        <node concept="37vLTw" id="3AhkfbYPDLP" role="36biLW">
                          <ref role="3cqZAo" node="3V3CJZuMyEl" resolve="firstGVD" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="3AhkfbYPDLT" role="2pJxcM">
                  <ref role="2pJxcJ" to="q5q6:6RCrcvOtNXu" resolve="explanation" />
                  <node concept="Xl_RD" id="3AhkfbYPDLS" role="2pJxcZ">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V3CJZuMzrc" role="3cqZAp">
          <node concept="2OqwBi" id="3V3CJZuMz$w" role="3clFbG">
            <node concept="37vLTw" id="3V3CJZuNGO3" role="2Oq$k0">
              <ref role="3cqZAo" node="3V3CJZuNF20" resolve="second" />
            </node>
            <node concept="HtX7F" id="3V3CJZuM$qP" role="2OqNvi">
              <node concept="37vLTw" id="3V3CJZuNIFy" role="HtX7I">
                <ref role="3cqZAo" node="3V3CJZuNIFo" resolve="ourAssert" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V3CJZuO0Fa" role="3cqZAp">
          <node concept="2YIFZM" id="3V3CJZuO10t" role="3clFbG">
            <ref role="37wK5l" to="fwk:~TracingUtil.fillOriginalNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean):void" resolve="fillOriginalNode" />
            <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
            <node concept="37vLTw" id="3V3CJZuO1ck" role="37wK5m">
              <ref role="3cqZAo" node="3V3CJZuM6F2" resolve="hap" />
            </node>
            <node concept="37vLTw" id="3V3CJZuO1dL" role="37wK5m">
              <ref role="3cqZAo" node="3V3CJZuNIFo" resolve="ourAssert" />
            </node>
            <node concept="3clFbT" id="3V3CJZuO1fr" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3V3CJZuNINT" role="3cqZAp" />
        <node concept="3clFbF" id="3V3CJZuM$Ll" role="3cqZAp">
          <node concept="2OqwBi" id="3V3CJZuM$Lm" role="3clFbG">
            <node concept="HtI8k" id="3V3CJZuM$Lo" role="2OqNvi">
              <node concept="2pJPEk" id="3AhkfbYPDLU" role="HtI8F">
                <node concept="2pJPED" id="3AhkfbYPDLV" role="2pJPEn">
                  <ref role="2pJxaS" to="c4fa:6iIoqg1yCmi" resolve="ExpressionStatement" />
                  <node concept="2pIpSj" id="3AhkfbYPDLW" role="2pJxcM">
                    <ref role="2pIpSl" to="c4fa:6iIoqg1yCmj" />
                    <node concept="2pJPED" id="3AhkfbYPDLX" role="2pJxcZ">
                      <ref role="2pJxaS" to="mj1l:1exqRp9kgd" resolve="AssignmentExpr" />
                      <node concept="2pIpSj" id="3AhkfbYPDLY" role="2pJxcM">
                        <ref role="2pIpSl" to="mj1l:7FQByU3CrD0" />
                        <node concept="2pJPED" id="3AhkfbYPDLZ" role="2pJxcZ">
                          <ref role="2pJxaS" to="x27k:5IYyAOzCwFE" resolve="GlobalVarRef" />
                          <node concept="2pIpSj" id="3AhkfbYPDM1" role="2pJxcM">
                            <ref role="2pIpSl" to="x27k:5IYyAOzCwFF" />
                            <node concept="36biLy" id="3AhkfbYPDM2" role="2pJxcZ">
                              <node concept="37vLTw" id="3AhkfbYPDM0" role="36biLW">
                                <ref role="3cqZAo" node="3V3CJZuMyEl" resolve="firstGVD" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="3AhkfbYPDM3" role="2pJxcM">
                        <ref role="2pIpSl" to="mj1l:7FQByU3CrD1" />
                        <node concept="2pJPED" id="3AhkfbYPDM4" role="2pJxcZ">
                          <ref role="2pJxaS" to="mj1l:7FQByU3CrDB" resolve="NumberLiteral" />
                          <node concept="2pJxcG" id="3AhkfbYPDM6" role="2pJxcM">
                            <ref role="2pJxcJ" to="mj1l:1UQ4qqfV3yK" resolve="value" />
                            <node concept="Xl_RD" id="3AhkfbYPDM5" role="2pJxcZ">
                              <property role="Xl_RC" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3V3CJZuNGPq" role="2Oq$k0">
              <ref role="3cqZAo" node="3V3CJZuNF20" resolve="second" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3V3CJZuM$Hn" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="3V3CJZuM6F0" role="1B3o_S" />
      <node concept="3cqZAl" id="3V3CJZuM6F1" role="3clF45" />
      <node concept="37vLTG" id="3V3CJZuM6F2" role="3clF46">
        <property role="TrG5h" value="hap" />
        <node concept="3Tqbb2" id="3V3CJZuM6F3" role="1tU5fm">
          <ref role="ehGHo" to="nok9:3V3CJZuJLdS" resolve="HappensAfterPair" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3V3CJZuM6uW" role="jymVt" />
    <node concept="3Tm1VV" id="3V3CJZuLYU7" role="1B3o_S" />
    <node concept="NWlO9" id="3V3CJZuLYUt" role="lGtFl">
      <property role="NWlVz" value="Utility for happens after." />
    </node>
  </node>
</model>

