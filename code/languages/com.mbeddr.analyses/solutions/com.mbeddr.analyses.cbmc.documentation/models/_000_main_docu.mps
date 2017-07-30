<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:52276921-e1d3-4d9e-ab8f-f8be12f4fb06(com.mbeddr.analyses.cbmc.documentation._000_main_docu)">
  <persistence version="9" />
  <languages>
    <use id="38a074ed-e5ad-4b2d-be31-ca436911b8aa" name="com.mbeddr.doc.aspect" version="0" />
    <use id="2374bc90-7e37-41f1-a9c4-c2e35194c36a" name="com.mbeddr.doc" version="0" />
    <devkit ref="d2a9c55c-6bdc-4cc2-97e1-4ba7552f5584(com.mbeddr.core)" />
    <devkit ref="0ca77142-1eea-4b14-b369-69bdaa1c44fb(com.mbeddr.analyses.core)" />
    <devkit ref="54c79f9f-f3ba-4167-91f1-eb4e98a9c47c(com.mbeddr.documentation)" />
  </languages>
  <imports>
    <import index="q5q6" ref="r:5d65e582-fa41-4818-b31c-b2aee1644b4a(com.mbeddr.analyses.cbmc.structure)" />
    <import index="hj5x" ref="r:51d4e66d-7bef-4322-a125-0efcf6898af6(com.mbeddr.analyses.cbmc.core.structure)" />
    <import index="93wt" ref="r:4af2b6e4-5f55-4700-a23a-ed43656466aa(com.mbeddr.analyses.cbmc.documentation._010_core_examples)" />
  </imports>
  <registry>
    <language id="38a074ed-e5ad-4b2d-be31-ca436911b8aa" name="com.mbeddr.doc.aspect">
      <concept id="1058510331725720478" name="com.mbeddr.doc.aspect.structure.DocumentedConceptAnnotation" flags="ng" index="3n9NSn">
        <reference id="1058510331725761196" name="concept" index="3nadW_" />
      </concept>
    </language>
    <language id="92d2ea16-5a42-4fdf-a676-c7604efe3504" name="de.slisson.mps.richtext">
      <concept id="2557074442922380897" name="de.slisson.mps.richtext.structure.Text" flags="ng" index="19SGf9">
        <child id="2557074442922392302" name="words" index="19SJt6" />
      </concept>
      <concept id="2557074442922438156" name="de.slisson.mps.richtext.structure.Word" flags="ng" index="19SUe$">
        <property id="2557074442922438158" name="escapedValue" index="19SUeA" />
      </concept>
    </language>
    <language id="2374bc90-7e37-41f1-a9c4-c2e35194c36a" name="com.mbeddr.doc">
      <concept id="620304030119138923" name="com.mbeddr.doc.structure.BoldFormattedText" flags="ng" index="2vpllh" />
      <concept id="6165313375056012512" name="com.mbeddr.doc.structure.DocumentInclude" flags="ng" index="$CzcT">
        <child id="6165313375056012515" name="ref" index="$CzcU" />
      </concept>
      <concept id="6165313375055797476" name="com.mbeddr.doc.structure.FormattedText" flags="ng" index="$DsGX">
        <child id="6165313375055797477" name="text" index="$DsGW" />
      </concept>
      <concept id="6657644269295214799" name="com.mbeddr.doc.structure.IDocumentLike" flags="ng" index="G9hjZ">
        <reference id="6657644269295214800" name="config" index="G9hjw" />
        <child id="126932837435370865" name="authors" index="Wq1Bf" />
        <child id="8730648445433290694" name="dependsOn" index="1DXQ57" />
      </concept>
      <concept id="2286331641395252232" name="com.mbeddr.doc.structure.NamedNodeModelContentPointerElement" flags="ng" index="2NCMab">
        <reference id="2286331641395252233" name="node" index="2NCMaa" />
      </concept>
      <concept id="2286331641395238583" name="com.mbeddr.doc.structure.ModelContentPointer" flags="ng" index="2NCZwO">
        <child id="2286331641395252236" name="elements" index="2NCMaf" />
      </concept>
      <concept id="6386504476136472795" name="com.mbeddr.doc.structure.PathDefinition" flags="ng" index="2SbYGw">
        <child id="2642765975824057986" name="pathPicker" index="9PVG_" />
      </concept>
      <concept id="6386504476136472782" name="com.mbeddr.doc.structure.DocumentConfig" flags="ng" index="2SbYGP">
        <child id="5785245534401182264" name="defaultTempPath" index="Cbewh" />
      </concept>
      <concept id="126932837435370850" name="com.mbeddr.doc.structure.Author" flags="ng" index="Wq1Bs">
        <property id="126932837435370852" name="email" index="Wq1Bq" />
        <property id="126932837435370851" name="name" index="Wq1Bt" />
      </concept>
      <concept id="4208238404730191274" name="com.mbeddr.doc.structure.Chapter" flags="ng" index="1mvXsy" />
      <concept id="988357225295489881" name="com.mbeddr.doc.structure.TableOfContents" flags="ng" index="3xmJbL" />
      <concept id="6955693250238922820" name="com.mbeddr.doc.structure.AbstractModelContentParagraph" flags="ng" index="3z_lpG">
        <property id="6955693250238922823" name="showContents" index="3z_lpJ" />
        <child id="6955693250238922822" name="codeptr" index="3z_lpI" />
      </concept>
      <concept id="6955693250238922834" name="com.mbeddr.doc.structure.ModelContentAsTextParagraph" flags="ng" index="3z_lpU">
        <property id="6955693250238922836" name="language" index="3z_lpW" />
      </concept>
      <concept id="3350625596580225385" name="com.mbeddr.doc.structure.DocumentRef" flags="ng" index="1_0j5j">
        <reference id="3350625596580225386" name="doc" index="1_0j5g" />
      </concept>
      <concept id="3350625596580089586" name="com.mbeddr.doc.structure.TextParagraph" flags="ng" index="1_0LV8">
        <child id="3350625596580089613" name="text" index="1_0LWR" />
      </concept>
      <concept id="3350625596580064249" name="com.mbeddr.doc.structure.IDocContentContainer" flags="ng" index="1_0VJ3">
        <child id="3350625596580064250" name="contents" index="1_0VJ0" />
      </concept>
      <concept id="3350625596580064222" name="com.mbeddr.doc.structure.AbstractSection" flags="ng" index="1_0VJ$">
        <property id="3350625596580064225" name="text" index="1_0VJr" />
      </concept>
      <concept id="3350625596580064455" name="com.mbeddr.doc.structure.Section" flags="ng" index="1_0VNX" />
      <concept id="3350625596579911728" name="com.mbeddr.doc.structure.Document" flags="ng" index="1_1swa">
        <property id="5572730672710143343" name="chapterStartIndex" index="yApLE" />
      </concept>
      <concept id="3350625596579911760" name="com.mbeddr.doc.structure.EmptyDocContent" flags="ng" index="1_1sxE" />
      <concept id="5378658552262903588" name="com.mbeddr.doc.structure.Item" flags="ng" index="3X6T9g">
        <child id="5378658552262903589" name="text" index="3X6T9h" />
      </concept>
      <concept id="5378658552262893169" name="com.mbeddr.doc.structure.ItemList" flags="ng" index="3X6WG5">
        <child id="5378658552262986137" name="items" index="3Xp5NH" />
      </concept>
    </language>
    <language id="d4280a54-f6df-4383-aa41-d1b2bffa7eb1" name="com.mbeddr.core.base">
      <concept id="8375407818529178006" name="com.mbeddr.core.base.structure.TextBlock" flags="ng" index="OjmMv">
        <child id="8375407818529178007" name="text" index="OjmMu" />
      </concept>
    </language>
    <language id="d3a0fd26-445a-466c-900e-10444ddfed52" name="com.mbeddr.mpsutil.filepicker">
      <concept id="2642765975824060179" name="com.mbeddr.mpsutil.filepicker.structure.SolutionRelativeDirPicker" flags="ng" index="9PVaO" />
      <concept id="6156524541422549000" name="com.mbeddr.mpsutil.filepicker.structure.AbstractPicker" flags="ng" index="3N1QpV">
        <property id="9294901202237533" name="mayBeEmpty" index="3kgbRO" />
        <property id="2711621784026951428" name="pointOnlyToExistingFile" index="1RwFax" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1_1swa" id="4l47ydyjg11">
    <property role="yApLE" value="1" />
    <property role="TrG5h" value="_000_CBMC_Top" />
    <ref role="G9hjw" node="5HlC91LJJQk" resolve="cfg" />
    <node concept="Wq1Bs" id="5HlC91LJM1m" role="Wq1Bf">
      <property role="Wq1Bt" value="Daniel Ratiu" />
      <property role="Wq1Bq" value="ratiud@googlemail.com" />
    </node>
    <node concept="3xmJbL" id="7VkE0Bpsri3" role="1_0VJ0" />
    <node concept="1_1sxE" id="7VkE0Bpsrip" role="1_0VJ0">
      <property role="TrG5h" value="empty_-1" />
    </node>
    <node concept="$CzcT" id="7VkE0Bpsrjw" role="1_0VJ0">
      <node concept="1_0j5j" id="7VkE0BpsrjY" role="$CzcU">
        <ref role="1_0j5g" node="7VkE0Bpq5Fn" resolve="_010_CBMC_Ch1_Intro" />
      </node>
    </node>
    <node concept="$CzcT" id="7PyP3ULnjN4" role="1_0VJ0">
      <node concept="1_0j5j" id="7PyP3ULnjNw" role="$CzcU">
        <ref role="1_0j5g" node="7PyP3ULmhob" resolve="_020_CBMC_Ch2_AnalysesConfigurations" />
      </node>
    </node>
    <node concept="1_0j5j" id="7VkE0BpsriV" role="1DXQ57">
      <ref role="1_0j5g" node="7VkE0Bpq5Fn" resolve="_010_CBMC_Ch1_Intro" />
    </node>
    <node concept="1_0j5j" id="7PyP3ULnjM_" role="1DXQ57">
      <ref role="1_0j5g" node="7PyP3ULmhob" resolve="_020_CBMC_Ch2_AnalysesConfigurations" />
    </node>
  </node>
  <node concept="2SbYGP" id="5HlC91LJJQk">
    <property role="TrG5h" value="cfg" />
    <property role="3GE5qa" value="config" />
    <node concept="2SbYGw" id="5HlC91LJJQl" role="Cbewh">
      <property role="TrG5h" value="config" />
      <node concept="9PVaO" id="5HlC91LJJQm" role="9PVG_">
        <property role="1RwFax" value="true" />
        <property role="3kgbRO" value="false" />
      </node>
    </node>
  </node>
  <node concept="1_1swa" id="7VkE0Bpq5Fn">
    <property role="yApLE" value="1" />
    <property role="TrG5h" value="_010_CBMC_Ch1_Intro" />
    <ref role="G9hjw" node="5HlC91LJJQk" resolve="cfg" />
    <node concept="1mvXsy" id="7VkE0Bpq5Fo" role="1_0VJ0">
      <property role="TrG5h" value="Introduction" />
      <property role="1_0VJr" value="Introduction" />
      <node concept="1_0VNX" id="7VkE0Bpsrfm" role="1_0VJ0">
        <property role="TrG5h" value="CBMC" />
        <property role="1_0VJr" value="The CBMC Model Checker in MBEDDR" />
        <node concept="1_0LV8" id="7VkE0BpsrfU" role="1_0VJ0">
          <node concept="19SGf9" id="7VkE0BpsrfV" role="1_0LWR">
            <node concept="19SUe$" id="7VkE0BpsrfW" role="19SJt6">
              <property role="19SUeA" value="The verification stack of MBEDDR is based on the CBMC model checker. We provide DSLs to define analyses configurations and verification harnesses. The verification results (analyses pass/fail, witnesses) which are delivered by CBMC are presented in MBEDDR and lifted at the abstraction level of the used DSLs. The following DevKits are needed for using the analyses:" />
            </node>
          </node>
        </node>
        <node concept="3X6WG5" id="7PyP3ULsGD1" role="1_0VJ0">
          <node concept="3X6T9g" id="7PyP3ULsGD2" role="3Xp5NH">
            <node concept="OjmMv" id="7PyP3ULsGD3" role="3X6T9h">
              <node concept="19SGf9" id="7PyP3ULsGD4" role="OjmMu">
                <node concept="19SUe$" id="7PyP3ULsGDy" role="19SJt6" />
                <node concept="2vpllh" id="7PyP3ULsGDv" role="19SJt6">
                  <node concept="19SGf9" id="7PyP3ULsGDw" role="$DsGW">
                    <node concept="19SUe$" id="7PyP3ULsGDx" role="19SJt6">
                      <property role="19SUeA" value="com.mbeddr.analyses.core" />
                    </node>
                  </node>
                </node>
                <node concept="19SUe$" id="7PyP3ULsGDz" role="19SJt6">
                  <property role="19SUeA" value=" for defining harnesses and basic analyses which can be used on plain C code" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3X6T9g" id="7PyP3ULsGDN" role="3Xp5NH">
            <node concept="OjmMv" id="7PyP3ULsGDO" role="3X6T9h">
              <node concept="19SGf9" id="7PyP3ULsGDP" role="OjmMu">
                <node concept="19SUe$" id="7PyP3ULsGEu" role="19SJt6" />
                <node concept="2vpllh" id="7PyP3ULsGEr" role="19SJt6">
                  <node concept="19SGf9" id="7PyP3ULsGEs" role="$DsGW">
                    <node concept="19SUe$" id="7PyP3ULsGEt" role="19SJt6">
                      <property role="19SUeA" value="com.mbeddr.analyses.statemachines" />
                    </node>
                  </node>
                </node>
                <node concept="19SUe$" id="7PyP3ULsGEv" role="19SJt6">
                  <property role="19SUeA" value=" for state-machines specific analyses" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3X6T9g" id="7PyP3ULsGEX" role="3Xp5NH">
            <node concept="OjmMv" id="7PyP3ULsGFX" role="3X6T9h">
              <node concept="19SGf9" id="7PyP3ULsGFY" role="OjmMu">
                <node concept="19SUe$" id="7PyP3ULsGFZ" role="19SJt6" />
                <node concept="2vpllh" id="7PyP3ULsGG0" role="19SJt6">
                  <node concept="19SGf9" id="7PyP3ULsGG1" role="$DsGW">
                    <node concept="19SUe$" id="7PyP3ULsGG2" role="19SJt6">
                      <property role="19SUeA" value="com.mbeddr.analyses.components" />
                    </node>
                  </node>
                </node>
                <node concept="19SUe$" id="7PyP3ULsGG3" role="19SJt6">
                  <property role="19SUeA" value=" for components specific analyses" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1_1sxE" id="7VkE0Bpq5FX" role="1_0VJ0">
      <property role="TrG5h" value="empty_-1" />
    </node>
    <node concept="Wq1Bs" id="7VkE0Bpq5FY" role="Wq1Bf">
      <property role="Wq1Bt" value="Daniel Ratiu" />
      <property role="Wq1Bq" value="ratiud@googlemail.com" />
    </node>
  </node>
  <node concept="1_1swa" id="7PyP3ULmhob">
    <property role="yApLE" value="2" />
    <property role="TrG5h" value="_020_CBMC_Ch2_AnalysesConfigurations" />
    <ref role="G9hjw" node="5HlC91LJJQk" resolve="cfg" />
    <node concept="1mvXsy" id="7PyP3ULmhoc" role="1_0VJ0">
      <property role="TrG5h" value="AnalysesConfigurations" />
      <property role="1_0VJr" value="Analyses Configurations" />
      <node concept="1_0VNX" id="7PyP3ULmhod" role="1_0VJ0">
        <property role="TrG5h" value="AnalysisConfigurationContainer" />
        <property role="1_0VJr" value="Analysis Configuration Container" />
        <node concept="1_0LV8" id="7PyP3ULmhoe" role="1_0VJ0">
          <node concept="19SGf9" id="7PyP3ULmhof" role="1_0LWR">
            <node concept="19SUe$" id="7PyP3ULmhog" role="19SJt6">
              <property role="19SUeA" value="Running a CBMC-based analysis needs an analysis configuration. Analyses configurations are contained into a root node called 'Analysis Configuration Containers'. A container contains:   " />
            </node>
          </node>
        </node>
        <node concept="3n9NSn" id="7PyP3ULmhoL" role="lGtFl">
          <ref role="3nadW_" to="q5q6:1Qze4b32ew4" resolve="CBMCAnalysisConfigurationContainer" />
        </node>
        <node concept="3X6WG5" id="7PyP3ULsG$0" role="1_0VJ0">
          <node concept="3X6T9g" id="7PyP3ULsG$1" role="3Xp5NH">
            <node concept="OjmMv" id="7PyP3ULsG$2" role="3X6T9h">
              <node concept="19SGf9" id="7PyP3ULsG$3" role="OjmMu">
                <node concept="19SUe$" id="7PyP3ULsG$4" role="19SJt6">
                  <property role="19SUeA" value="a set of " />
                </node>
                <node concept="2vpllh" id="7PyP3ULsG$u" role="19SJt6">
                  <node concept="19SGf9" id="7PyP3ULsG$v" role="$DsGW">
                    <node concept="19SUe$" id="7PyP3ULsG$w" role="19SJt6">
                      <property role="19SUeA" value="imports" />
                    </node>
                  </node>
                </node>
                <node concept="19SUe$" id="7PyP3ULsG$x" role="19SJt6">
                  <property role="19SUeA" value=" of implementation modules which contain the entry points in the analyses" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3X6T9g" id="7PyP3ULsG_p" role="3Xp5NH">
            <node concept="OjmMv" id="7PyP3ULsG_q" role="3X6T9h">
              <node concept="19SGf9" id="7PyP3ULsG_r" role="OjmMu">
                <node concept="19SUe$" id="7PyP3ULsG_s" role="19SJt6">
                  <property role="19SUeA" value="a set of analyses configurations" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3X6T9g" id="7PyP3ULsG$L" role="3Xp5NH">
            <node concept="OjmMv" id="7PyP3ULsG$M" role="3X6T9h">
              <node concept="19SGf9" id="7PyP3ULsG$N" role="OjmMu">
                <node concept="19SUe$" id="7PyP3ULsG$O" role="19SJt6">
                  <property role="19SUeA" value="(optional) the global CBMC settings which are defined for ALL analyses configurations. An analysis configuration can overwrite each of these settings. " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1_1sxE" id="7PyP3ULsHMZ" role="1_0VJ0">
          <property role="TrG5h" value="empty_-1" />
        </node>
        <node concept="1_0LV8" id="7PyP3ULsHP2" role="1_0VJ0">
          <node concept="19SGf9" id="7PyP3ULsHP3" role="1_0LWR">
            <node concept="19SUe$" id="7PyP3ULsHP4" role="19SJt6">
              <property role="19SUeA" value="In order to instantiate this node, one needs to add the " />
            </node>
            <node concept="2vpllh" id="7PyP3ULsHQe" role="19SJt6">
              <node concept="19SGf9" id="7PyP3ULsHQf" role="$DsGW">
                <node concept="19SUe$" id="7PyP3ULsHQg" role="19SJt6">
                  <property role="19SUeA" value="com.mbeddr.analyses.core" />
                </node>
              </node>
            </node>
            <node concept="19SUe$" id="7PyP3ULsHQh" role="19SJt6">
              <property role="19SUeA" value=" devkit to the 'used languages'." />
            </node>
          </node>
        </node>
        <node concept="1_1sxE" id="7PyP3ULMCD6" role="1_0VJ0">
          <property role="TrG5h" value="empty_-1" />
        </node>
        <node concept="3z_lpU" id="7PyP3ULMvTW" role="1_0VJ0">
          <property role="3z_lpW" value="mbeddr" />
          <property role="3z_lpJ" value="true" />
          <node concept="2NCZwO" id="7PyP3ULMvTX" role="3z_lpI">
            <node concept="2NCMab" id="7PyP3ULMvVp" role="2NCMaf">
              <ref role="2NCMaa" to="93wt:7PyP3ULsHMK" resolve="analyses_container_example" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1_1sxE" id="7PyP3ULnnrB" role="1_0VJ0">
        <property role="TrG5h" value="empty_-1" />
      </node>
      <node concept="1_0VNX" id="7PyP3ULnntU" role="1_0VJ0">
        <property role="TrG5h" value="AssertionsAnalyses" />
        <property role="1_0VJr" value="Assertions Analyses" />
        <node concept="3n9NSn" id="7PyP3ULnnuo" role="lGtFl">
          <ref role="3nadW_" to="hj5x:3x0R1LJfFaN" resolve="AssertionsCBMCAnalysis" />
        </node>
      </node>
    </node>
    <node concept="1_1sxE" id="7PyP3ULmhoh" role="1_0VJ0">
      <property role="TrG5h" value="empty_-1" />
    </node>
    <node concept="Wq1Bs" id="7PyP3ULmhoi" role="Wq1Bf">
      <property role="Wq1Bt" value="Daniel Ratiu" />
      <property role="Wq1Bq" value="ratiud@googlemail.com" />
    </node>
  </node>
</model>

