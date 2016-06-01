<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:571d164a-c71a-4e8c-a847-77f9e18ba2ca(com.mbeddr.mpsutil.dataflow.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="bj1v" ref="r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.lang.dataFlow.analyzers.structure)" />
    <import index="6qry" ref="r:6c3f8bb9-12d1-49ee-897b-55327d80646b(com.mbeddr.mpsutil.dataflow.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="2S6QgY" id="7TdqwvhyxMo">
    <property role="TrG5h" value="Analyzer_ToogleInterProcedural" />
    <ref role="2ZfgGC" to="bj1v:5JpT3MjX6u9" resolve="Analyzer" />
    <node concept="2S6ZIM" id="7TdqwvhyxMp" role="2ZfVej">
      <node concept="3clFbS" id="7TdqwvhyxMq" role="2VODD2">
        <node concept="3clFbF" id="7TdqwvhyxNH" role="3cqZAp">
          <node concept="Xl_RD" id="7TdqwvhyxNG" role="3clFbG">
            <property role="Xl_RC" value="Toogle Inter-Procedural Data-Flow Graph" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7TdqwvhyxMr" role="2ZfgGD">
      <node concept="3clFbS" id="7TdqwvhyxMs" role="2VODD2">
        <node concept="3clFbJ" id="4fUrRtGPB_P" role="3cqZAp">
          <node concept="3clFbS" id="4fUrRtGPB_R" role="3clFbx">
            <node concept="3clFbF" id="4fUrRtGPDRS" role="3cqZAp">
              <node concept="2OqwBi" id="4fUrRtGPFMi" role="3clFbG">
                <node concept="2OqwBi" id="4fUrRtGPEra" role="2Oq$k0">
                  <node concept="2OqwBi" id="4fUrRtGPDTy" role="2Oq$k0">
                    <node concept="2Sf5sV" id="4fUrRtGPDRQ" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="4fUrRtGPDXn" role="2OqNvi">
                      <node concept="3CFYIy" id="4fUrRtGPDXU" role="3CFYIz">
                        <ref role="3CFYIx" to="bj1v:5hM31D8wMnE" resolve="AnalyzerTypeAnnotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="4fUrRtGPFo2" role="2OqNvi">
                    <node concept="1bVj0M" id="4fUrRtGPFo4" role="23t8la">
                      <node concept="3clFbS" id="4fUrRtGPFo5" role="1bW5cS">
                        <node concept="3clFbF" id="4fUrRtGPFpQ" role="3cqZAp">
                          <node concept="2OqwBi" id="4fUrRtGPFtV" role="3clFbG">
                            <node concept="37vLTw" id="4fUrRtGPFpP" role="2Oq$k0">
                              <ref role="3cqZAo" node="4fUrRtGPFo6" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="4fUrRtGPFCU" role="2OqNvi">
                              <node concept="chp4Y" id="5IQr1TuNamM" role="cj9EA">
                                <ref role="cht4Q" to="6qry:7TdqwvhyxII" resolve="InterProceduralDataFlowGraphAttribute" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4fUrRtGPFo6" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4fUrRtGPFo7" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2es0OD" id="4fUrRtGPFWb" role="2OqNvi">
                  <node concept="1bVj0M" id="4fUrRtGPFWd" role="23t8la">
                    <node concept="3clFbS" id="4fUrRtGPFWe" role="1bW5cS">
                      <node concept="3clFbF" id="4fUrRtGPG1Q" role="3cqZAp">
                        <node concept="2OqwBi" id="4fUrRtGPG7K" role="3clFbG">
                          <node concept="37vLTw" id="4fUrRtGPG1P" role="2Oq$k0">
                            <ref role="3cqZAo" node="4fUrRtGPFWf" resolve="it" />
                          </node>
                          <node concept="1PgB_6" id="4fUrRtGPGlC" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4fUrRtGPFWf" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4fUrRtGPFWg" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4fUrRtGPClo" role="3clFbw">
            <node concept="2OqwBi" id="4fUrRtGPBHE" role="2Oq$k0">
              <node concept="2Sf5sV" id="4fUrRtGPBFB" role="2Oq$k0" />
              <node concept="3CFZ6_" id="4fUrRtGPBLr" role="2OqNvi">
                <node concept="3CFYIy" id="4fUrRtGPBM0" role="3CFYIz">
                  <ref role="3CFYIx" to="bj1v:5hM31D8wMnE" resolve="AnalyzerTypeAnnotation" />
                </node>
              </node>
            </node>
            <node concept="2HwmR7" id="4fUrRtGPDhM" role="2OqNvi">
              <node concept="1bVj0M" id="4fUrRtGPDhO" role="23t8la">
                <node concept="3clFbS" id="4fUrRtGPDhP" role="1bW5cS">
                  <node concept="3clFbF" id="4fUrRtGPDjy" role="3cqZAp">
                    <node concept="2OqwBi" id="4fUrRtGPDnz" role="3clFbG">
                      <node concept="37vLTw" id="4fUrRtGPDjx" role="2Oq$k0">
                        <ref role="3cqZAo" node="4fUrRtGPDhQ" resolve="it" />
                      </node>
                      <node concept="1mIQ4w" id="4fUrRtGPDxu" role="2OqNvi">
                        <node concept="chp4Y" id="5IQr1TuNamH" role="cj9EA">
                          <ref role="cht4Q" to="6qry:7TdqwvhyxII" resolve="InterProceduralDataFlowGraphAttribute" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4fUrRtGPDhQ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4fUrRtGPDhR" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4fUrRtGPDCn" role="9aQIa">
            <node concept="3clFbS" id="4fUrRtGPDCo" role="9aQI4">
              <node concept="3clFbF" id="7Tdqwvhyye3" role="3cqZAp">
                <node concept="2OqwBi" id="4fUrRtGFKo3" role="3clFbG">
                  <node concept="2OqwBi" id="7TdqwvhyyiW" role="2Oq$k0">
                    <node concept="2Sf5sV" id="7Tdqwvhyye1" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="7TdqwvhyymD" role="2OqNvi">
                      <node concept="3CFYIy" id="4fUrRtGFJVk" role="3CFYIz">
                        <ref role="3CFYIx" to="bj1v:5hM31D8wMnE" resolve="AnalyzerTypeAnnotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="TSZUe" id="4fUrRtGFLj5" role="2OqNvi">
                    <node concept="2ShNRf" id="7Tdqwvhyyqp" role="25WWJ7">
                      <node concept="3zrR0B" id="7Tdqwvhyyqn" role="2ShVmc">
                        <node concept="3Tqbb2" id="7Tdqwvhyyqo" role="3zrR0E">
                          <ref role="ehGHo" to="6qry:7TdqwvhyxII" resolve="InterProceduralDataFlowGraphAttribute" />
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
</model>
