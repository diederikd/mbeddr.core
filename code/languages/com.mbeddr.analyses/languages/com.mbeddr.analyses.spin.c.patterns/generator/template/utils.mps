<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8cc5dbbe-405e-410d-82f5-86cd60f5d6aa(utils)">
  <persistence version="9" />
  <languages>
    <use id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ywuz" ref="r:c6ce92e7-5a98-4a6f-866a-ec8b9e945dd8(com.mbeddr.core.expressions.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mj1l" ref="r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
    <import index="c4fa" ref="r:9f0e84b6-2ec7-4f9e-83e0-feedc77b63a3(com.mbeddr.core.statements.structure)" implicit="true" />
    <import index="ir22" ref="r:f7aadd1f-58b5-46f2-bd42-e7f922dcc16e(com.mbeddr.analyses.spin.promela.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil">
      <concept id="6451706574539345403" name="com.mbeddr.mpsutil.blutil.structure.MethodLineDoc" flags="ng" index="NWlO9">
        <property id="6451706574539345425" name="text" index="NWlVz" />
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
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="5Gboyv9DlB9">
    <property role="TrG5h" value="NamingUtils" />
    <node concept="3Tm1VV" id="5Gboyv9DlBa" role="1B3o_S" />
    <node concept="NWlO9" id="5Gboyv9DlC2" role="lGtFl">
      <property role="NWlVz" value="Naming utilities." />
    </node>
    <node concept="2tJIrI" id="5Gboyv9DlCa" role="jymVt" />
    <node concept="2YIFZL" id="5Gboyv9DlCy" role="jymVt">
      <property role="TrG5h" value="tempVarNameForAssign" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Gboyv9DlC_" role="3clF47">
        <node concept="3cpWs8" id="4ATA_JBoEzI" role="3cqZAp">
          <node concept="3cpWsn" id="4ATA_JBoEzJ" role="3cpWs9">
            <property role="TrG5h" value="expressionAsString" />
            <node concept="17QB3L" id="4ATA_JBoEzF" role="1tU5fm" />
            <node concept="2OqwBi" id="4ATA_JBoEzK" role="33vP2m">
              <node concept="37vLTw" id="4ATA_JBoEzL" role="2Oq$k0">
                <ref role="3cqZAo" node="5Gboyv9DlCR" resolve="e" />
              </node>
              <node concept="2qgKlT" id="4ATA_JBoEzM" role="2OqNvi">
                <ref role="37wK5l" to="ywuz:1VQvajLb13M" resolve="renderReadable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ATA_JBoJTn" role="3cqZAp">
          <node concept="3cpWsn" id="4ATA_JBoJTo" role="3cpWs9">
            <property role="TrG5h" value="normalizedName" />
            <node concept="17QB3L" id="4ATA_JBoTNZ" role="1tU5fm" />
            <node concept="2OqwBi" id="4ATA_JBoJTp" role="33vP2m">
              <node concept="2OqwBi" id="4ATA_JBoJTq" role="2Oq$k0">
                <node concept="2OqwBi" id="4ATA_JBoJTr" role="2Oq$k0">
                  <node concept="37vLTw" id="4ATA_JBoJTs" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ATA_JBoEzJ" resolve="expressionAsString" />
                  </node>
                  <node concept="liA8E" id="4ATA_JBoJTt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String):java.lang.String" resolve="replaceAll" />
                    <node concept="Xl_RD" id="4ATA_JBoJTu" role="37wK5m">
                      <property role="Xl_RC" value="\\[" />
                    </node>
                    <node concept="Xl_RD" id="4ATA_JBoJTv" role="37wK5m">
                      <property role="Xl_RC" value="_" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4ATA_JBoJTw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String):java.lang.String" resolve="replaceAll" />
                  <node concept="Xl_RD" id="4ATA_JBoJTx" role="37wK5m">
                    <property role="Xl_RC" value="\\]" />
                  </node>
                  <node concept="Xl_RD" id="4ATA_JBoJTy" role="37wK5m">
                    <property role="Xl_RC" value="_" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4ATA_JBoJTz" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String):java.lang.String" resolve="replaceAll" />
                <node concept="Xl_RD" id="4ATA_JBoJT$" role="37wK5m">
                  <property role="Xl_RC" value="\\." />
                </node>
                <node concept="Xl_RD" id="4ATA_JBoJT_" role="37wK5m">
                  <property role="Xl_RC" value="_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Gboyv9DlDq" role="3cqZAp">
          <node concept="3cpWs3" id="5Gboyv9DlGS" role="3cqZAk">
            <node concept="37vLTw" id="4ATA_JBoKrf" role="3uHU7w">
              <ref role="3cqZAo" node="4ATA_JBoJTo" resolve="normalizedName" />
            </node>
            <node concept="Xl_RD" id="5Gboyv9DlDT" role="3uHU7B">
              <property role="Xl_RC" value="tmpVar_assign_" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Gboyv9DlCp" role="1B3o_S" />
      <node concept="17QB3L" id="5Gboyv9DlCw" role="3clF45" />
      <node concept="37vLTG" id="5Gboyv9DlCR" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3Tqbb2" id="5Gboyv9DlCQ" role="1tU5fm">
          <ref role="ehGHo" to="mj1l:7FQByU3CrCM" resolve="Expression" />
        </node>
      </node>
      <node concept="NWlO9" id="5Gboyv9DlD6" role="lGtFl">
        <property role="NWlVz" value="Returns the name of the temporary variable local to a ProcType." />
      </node>
    </node>
    <node concept="2tJIrI" id="5Gboyv9Eosm" role="jymVt" />
    <node concept="2YIFZL" id="7T$_el86$CX" role="jymVt">
      <property role="TrG5h" value="seedAlreadyInitializedVar" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7T$_el86$CY" role="3clF47">
        <node concept="3cpWs6" id="7T$_el86$Dl" role="3cqZAp">
          <node concept="3cpWs3" id="7T$_el86$Dm" role="3cqZAk">
            <node concept="2OqwBi" id="7T$_el86I_W" role="3uHU7w">
              <node concept="2JrnkZ" id="7T$_el86IdD" role="2Oq$k0">
                <node concept="37vLTw" id="7T$_el86GjH" role="2JrQYb">
                  <ref role="3cqZAo" node="7T$_el86$Dr" resolve="ra" />
                </node>
              </node>
              <node concept="liA8E" id="7T$_el86Jj_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
              </node>
            </node>
            <node concept="Xl_RD" id="7T$_el86$Do" role="3uHU7B">
              <property role="Xl_RC" value="seed_already_initialized_" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7T$_el86$Dp" role="1B3o_S" />
      <node concept="17QB3L" id="7T$_el86$Dq" role="3clF45" />
      <node concept="37vLTG" id="7T$_el86$Dr" role="3clF46">
        <property role="TrG5h" value="ra" />
        <node concept="3Tqbb2" id="7T$_el86$Ds" role="1tU5fm" />
      </node>
      <node concept="NWlO9" id="7T$_el86$Dt" role="lGtFl">
        <property role="NWlVz" value="Returns the name of the global C-level variable holding whether the seed has already been initialized." />
      </node>
    </node>
    <node concept="2tJIrI" id="1BFQdmKfGOs" role="jymVt" />
  </node>
  <node concept="312cEu" id="5hi7ucOvrGt">
    <property role="TrG5h" value="AccessToCCodeUtils" />
    <node concept="2tJIrI" id="5hi7ucOvrHr" role="jymVt" />
    <node concept="2YIFZL" id="5hi7ucOvrI3" role="jymVt">
      <property role="TrG5h" value="firstProperParent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5hi7ucOvrI6" role="3clF47">
        <node concept="3clFbJ" id="5hi7ucOvrJu" role="3cqZAp">
          <node concept="2OqwBi" id="5hi7ucOvsir" role="3clFbw">
            <node concept="2OqwBi" id="5hi7ucOvrSi" role="2Oq$k0">
              <node concept="37vLTw" id="5hi7ucOvrKc" role="2Oq$k0">
                <ref role="3cqZAo" node="5hi7ucOvrIs" resolve="child" />
              </node>
              <node concept="1mfA1w" id="5hi7ucOvs4$" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5hi7ucOvsuV" role="2OqNvi">
              <node concept="chp4Y" id="5hi7ucOvswQ" role="cj9EA">
                <ref role="cht4Q" to="c4fa:3CmSUB7Fp_l" resolve="StatementList" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5hi7ucOvrJw" role="3clFbx">
            <node concept="3cpWs6" id="5hi7ucOvs_G" role="3cqZAp">
              <node concept="1rXfSq" id="5hi7ucOvsAI" role="3cqZAk">
                <ref role="37wK5l" node="5hi7ucOvrI3" resolve="firstProperParent" />
                <node concept="2OqwBi" id="5hi7ucOvsIp" role="37wK5m">
                  <node concept="37vLTw" id="5hi7ucOvsBr" role="2Oq$k0">
                    <ref role="3cqZAo" node="5hi7ucOvrIs" resolve="child" />
                  </node>
                  <node concept="1mfA1w" id="5hi7ucOvsP4" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hi7ucOvsQE" role="3cqZAp">
          <node concept="2OqwBi" id="5hi7ucOvsXR" role="3clFbG">
            <node concept="37vLTw" id="5hi7ucOvsQC" role="2Oq$k0">
              <ref role="3cqZAo" node="5hi7ucOvrIs" resolve="child" />
            </node>
            <node concept="1mfA1w" id="5hi7ucOvt4d" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5hi7ucOvrHE" role="1B3o_S" />
      <node concept="3Tqbb2" id="5hi7ucOvrHW" role="3clF45" />
      <node concept="37vLTG" id="5hi7ucOvrIs" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="5hi7ucOvrIr" role="1tU5fm" />
      </node>
      <node concept="NWlO9" id="5hi7ucOvt4z" role="lGtFl">
        <property role="NWlVz" value="Returns the first parent node which is NOT instance of a StatementList." />
      </node>
    </node>
    <node concept="2tJIrI" id="7T$_el8lOyT" role="jymVt" />
    <node concept="2YIFZL" id="7T$_el8lOAj" role="jymVt">
      <property role="TrG5h" value="isGuardOfChoice" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7T$_el8lOAm" role="3clF47">
        <node concept="3cpWs8" id="7T$_el8lOHb" role="3cqZAp">
          <node concept="3cpWsn" id="7T$_el8lOHc" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3Tqbb2" id="7T$_el8lOH9" role="1tU5fm" />
            <node concept="1rXfSq" id="7T$_el8lOHd" role="33vP2m">
              <ref role="37wK5l" node="5hi7ucOvrI3" resolve="firstProperParent" />
              <node concept="37vLTw" id="7T$_el8lOHe" role="37wK5m">
                <ref role="3cqZAo" node="7T$_el8lOBC" resolve="s" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="7T$_el8lOOQ" role="3cqZAp">
          <ref role="JncvD" to="ir22:24G9CRyKk6D" resolve="Choice" />
          <node concept="37vLTw" id="7T$_el8lOQ8" role="JncvB">
            <ref role="3cqZAo" node="7T$_el8lOHc" resolve="p" />
          </node>
          <node concept="3clFbS" id="7T$_el8lOOU" role="Jncv$">
            <node concept="3cpWs6" id="7T$_el8lORH" role="3cqZAp">
              <node concept="3clFbC" id="7T$_el8lSbc" role="3cqZAk">
                <node concept="37vLTw" id="7T$_el8lSey" role="3uHU7w">
                  <ref role="3cqZAo" node="7T$_el8lOBC" resolve="s" />
                </node>
                <node concept="2OqwBi" id="7T$_el8lRt3" role="3uHU7B">
                  <node concept="Jnkvi" id="7T$_el8lRjl" role="2Oq$k0">
                    <ref role="1M0zk5" node="7T$_el8lOOW" resolve="c" />
                  </node>
                  <node concept="3TrEf2" id="7T$_el8lRJt" role="2OqNvi">
                    <ref role="3Tt5mk" to="ir22:24G9CRyKklR" resolve="guard" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="7T$_el8lOOW" role="JncvA">
            <property role="TrG5h" value="c" />
            <node concept="2jxLKc" id="7T$_el8lOOX" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs6" id="7T$_el8lSnf" role="3cqZAp">
          <node concept="3clFbT" id="7T$_el8lSw1" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7T$_el8lO$X" role="1B3o_S" />
      <node concept="10P_77" id="7T$_el8lOAa" role="3clF45" />
      <node concept="37vLTG" id="7T$_el8lOBC" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3Tqbb2" id="7T$_el8lOBB" role="1tU5fm" />
      </node>
      <node concept="NWlO9" id="7T$_el8lS$6" role="lGtFl">
        <property role="NWlVz" value="Returns true if this statement is the guard of a Choice." />
      </node>
    </node>
    <node concept="2tJIrI" id="5hi7ucOvrHw" role="jymVt" />
    <node concept="2YIFZL" id="7T$_el8mDRP" role="jymVt">
      <property role="TrG5h" value="isBodyOfChoiceLike" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7T$_el8mDRQ" role="3clF47">
        <node concept="3cpWs8" id="7T$_el8mDRR" role="3cqZAp">
          <node concept="3cpWsn" id="7T$_el8mDRS" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3Tqbb2" id="7T$_el8mDRT" role="1tU5fm" />
            <node concept="1rXfSq" id="7T$_el8mDRU" role="33vP2m">
              <ref role="37wK5l" node="5hi7ucOvrI3" resolve="firstProperParent" />
              <node concept="37vLTw" id="7T$_el8mDRV" role="37wK5m">
                <ref role="3cqZAo" node="7T$_el8mDSb" resolve="s" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="7T$_el8mDRW" role="3cqZAp">
          <ref role="JncvD" to="ir22:24G9CRyKk_v" resolve="ChoiceLike" />
          <node concept="37vLTw" id="7T$_el8mDRX" role="JncvB">
            <ref role="3cqZAo" node="7T$_el8mDRS" resolve="p" />
          </node>
          <node concept="3clFbS" id="7T$_el8mDRY" role="Jncv$">
            <node concept="3cpWs6" id="7T$_el8mDRZ" role="3cqZAp">
              <node concept="2OqwBi" id="7T$_el8mOXa" role="3cqZAk">
                <node concept="2OqwBi" id="7T$_el8mM$I" role="2Oq$k0">
                  <node concept="2OqwBi" id="7T$_el8mDS2" role="2Oq$k0">
                    <node concept="Jnkvi" id="7T$_el8mDS3" role="2Oq$k0">
                      <ref role="1M0zk5" node="7T$_el8mDS5" resolve="cl" />
                    </node>
                    <node concept="3TrEf2" id="7T$_el8mEKo" role="2OqNvi">
                      <ref role="3Tt5mk" to="ir22:24G9CRyKkpz" resolve="stmts" />
                    </node>
                  </node>
                  <node concept="2Rf3mk" id="7T$_el8mNmc" role="2OqNvi">
                    <node concept="1xMEDy" id="7T$_el8mNme" role="1xVPHs">
                      <node concept="chp4Y" id="7T$_el8mN_Z" role="ri$Ld">
                        <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="7T$_el8n4wd" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3JPx81" id="7T$_el8mRiW" role="2OqNvi">
                  <node concept="37vLTw" id="7T$_el8mRsn" role="25WWJ7">
                    <ref role="3cqZAo" node="7T$_el8mDSb" resolve="s" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="7T$_el8mDS5" role="JncvA">
            <property role="TrG5h" value="cl" />
            <node concept="2jxLKc" id="7T$_el8mDS6" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs6" id="7T$_el8mDS7" role="3cqZAp">
          <node concept="3clFbT" id="7T$_el8mDS8" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7T$_el8mDS9" role="1B3o_S" />
      <node concept="10P_77" id="7T$_el8mDSa" role="3clF45" />
      <node concept="37vLTG" id="7T$_el8mDSb" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3Tqbb2" id="7T$_el8mDSc" role="1tU5fm" />
      </node>
      <node concept="NWlO9" id="7T$_el8mDSd" role="lGtFl">
        <property role="NWlVz" value="Returns true if this statement is the guard of a ChoiceLike." />
      </node>
    </node>
    <node concept="2tJIrI" id="7T$_el8mDPV" role="jymVt" />
    <node concept="3Tm1VV" id="5hi7ucOvrGu" role="1B3o_S" />
    <node concept="NWlO9" id="5hi7ucOvt8q" role="lGtFl">
      <property role="NWlVz" value="Utility methods for access to C code." />
    </node>
  </node>
</model>

