# DO NOT EDIT: File is auto-generated from dependencies.yml by https://github.com/realityforge/bazel-depgen version 0.10

"""
    Macro rules to load dependencies.

    Invoke 'generate_workspace_rules' from a WORKSPACE file.
    Invoke 'generate_targets' from a BUILD.bazel file.
"""
# Dependency Graph Generated from the input data
# +- org.realityforge.arez:arez-core:jar:0.158 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- org.realityforge.grim:grim-annotations:jar:0.03 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.25.0 [compile]
# |  |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  |  +- org.glassfish:javax.json:jar:1.1 [compile, optional]
# |  |  \- org.testng:testng:jar:6.11 [compile, optional]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.2.0 [compile]
# |  \- org.realityforge.com.google.jsinterop:jsinterop-annotations:jar:2.8.2-v20191108 [compile]
# +- org.realityforge.arez:arez-processor:jar:0.158 [compile]
# +- org.realityforge.arez.spytools:arez-spytools:jar:0.81 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.2.0 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.27 [compile]
# |  |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  |  +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.27 [compile]
# |  |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.154 [compile] (conflicts with 0.158)
# +- org.realityforge.react4j:react4j-core:jar:0.144 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.27 [compile]
# |  |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  |  \- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  +- org.realityforge.com.google.jsinterop:jsinterop-annotations:jar:2.8.2-v20191108 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.25.0 [compile]
# |  +- org.realityforge.grim:grim-annotations:jar:0.03 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.157 [compile] (conflicts with 0.158)
# +- org.realityforge.react4j:react4j-dom:jar:0.144 [compile]
# |  +- org.realityforge.react4j:react4j-core:jar:0.144 [compile]
# |  \- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.27 [compile]
# \- org.realityforge.react4j:react4j-processor:jar:0.144 [compile]

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_java//java:defs.bzl", "java_import", "java_library", "java_plugin")

# SHA256 of the configuration content that generated this file
_CONFIG_SHA256 = "E778B4D328E85FFD90DE0AB1E13C643557E7269E943DF08029F6BB51DE5BEA4A"

def generate_workspace_rules():
    """
        Repository rules macro to load dependencies.

        Must be run from a WORKSPACE file.
    """

    http_file(
        name = "com_google_jsinterop__base__1_0_0",
        downloaded_file_path = "com/google/jsinterop/base/1.0.0/base-1.0.0.jar",
        sha256 = "603635c26a384f601b19fa79c04208bd2f52da7af54650a3abced5b813ca4412",
        urls = ["https://repo.maven.apache.org/maven2/com/google/jsinterop/base/1.0.0/base-1.0.0.jar"],
    )

    http_file(
        name = "com_google_jsinterop__base__1_0_0__sources",
        downloaded_file_path = "com/google/jsinterop/base/1.0.0/base-1.0.0-sources.jar",
        sha256 = "733f02f18b225ffb24e927f23ca12ea91fec7b560665a8720a62ab95013cf5ea",
        urls = ["https://repo.maven.apache.org/maven2/com/google/jsinterop/base/1.0.0/base-1.0.0-sources.jar"],
    )

    http_file(
        name = "org_glassfish__javax_json__1_1",
        downloaded_file_path = "org/glassfish/javax.json/1.1/javax.json-1.1.jar",
        sha256 = "4b1f21bc50b728aaae5f44ff550383182b58b67647362959e31004e4522ee24f",
        urls = ["https://repo.maven.apache.org/maven2/org/glassfish/javax.json/1.1/javax.json-1.1.jar"],
    )

    http_file(
        name = "org_glassfish__javax_json__1_1__sources",
        downloaded_file_path = "org/glassfish/javax.json/1.1/javax.json-1.1-sources.jar",
        sha256 = "2766ebfa95ca7499149d480d2c475874e2c573109a145d6f93b4495187d7469c",
        urls = ["https://repo.maven.apache.org/maven2/org/glassfish/javax.json/1.1/javax.json-1.1-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez_spytools__arez_spytools__0_81",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.81/arez-spytools-0.81.jar",
        sha256 = "38975eaa114951a84c230baa2214a34f8a151a496b162196e08715bf15f9c9d9",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.81/arez-spytools-0.81.jar"],
    )

    http_file(
        name = "org_realityforge_arez_spytools__arez_spytools__0_81__sources",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.81/arez-spytools-0.81-sources.jar",
        sha256 = "9aa4511fea43b024f9d9dea5987ce72c4bf17b775a2a0812d1fb87ce8103a92f",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.81/arez-spytools-0.81-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_158",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.158/arez-core-0.158.jar",
        sha256 = "1dc5afcaf2ae9422c9dc5e1582d8f5caffa666fe6ae4d74f13529abeeb5afadd",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.158/arez-core-0.158.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_158__sources",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.158/arez-core-0.158-sources.jar",
        sha256 = "bfb2cc60cfa01f1b074a7ef3d0415d1ff6cd895bddf6ee67bfc60265bc999c76",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.158/arez-core-0.158-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_158",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.158/arez-processor-0.158.jar",
        sha256 = "86d356e075bbd3b02713d19ff129b4a9e997117b531302e24acdee3849feba8f",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.158/arez-processor-0.158.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_158__sources",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.158/arez-processor-0.158-sources.jar",
        sha256 = "5f1822be93aefe79f5ece1566410e8d57e13a2c702d73431220c79b22d451fb8",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.158/arez-processor-0.158-sources.jar"],
    )

    http_file(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_10",
        downloaded_file_path = "org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar",
        sha256 = "dd2745c2c47ee2934ebf8549f33841180a0f2fbb8594938e8c7ad9b8282928e2",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_25_0",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0.jar",
        sha256 = "6712a0eb7e99da554d96968413819ad4fb42a6f3c5114d62c572941961c9a651",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_25_0__sources",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0-sources.jar",
        sha256 = "6f6cac69c39b1744e7c9d56d8e4e07cd6802d76fa814acf920c343f7693f7038",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_27",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.27/elemental2-core-2.27.jar",
        sha256 = "10c30b2dd96db6e6d23a9e072c786443090642066c378bd3f0727af65173ec4e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.27/elemental2-core-2.27.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_27__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.27/elemental2-core-2.27-sources.jar",
        sha256 = "9c5b918dcf30dd47eb43027401c48b5d435bec11d7d55403773bdf8f2bb05367",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.27/elemental2-core-2.27-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_27",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.27/elemental2-dom-2.27.jar",
        sha256 = "cbd28dea509ba60388cb19f9608542eb9001eecf1300deb6654e96752a1d541f",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.27/elemental2-dom-2.27.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_27__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.27/elemental2-dom-2.27-sources.jar",
        sha256 = "938d307406faa4cf2ac258e7beb8db6bb490f7a677ae168e8bdaf050c2828cc1",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.27/elemental2-dom-2.27-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_27",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.27/elemental2-promise-2.27.jar",
        sha256 = "fe273ac806dcc8acea7743366cdf7885c8e3dddbab080450386a3f3b78416a92",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.27/elemental2-promise-2.27.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_27__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.27/elemental2-promise-2.27-sources.jar",
        sha256 = "f1daaf91423d411d728218b52ffe16eeec994bb2a616e85254ff48665a0dbe33",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.27/elemental2-promise-2.27-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108",
        downloaded_file_path = "org/realityforge/com/google/jsinterop/jsinterop-annotations/2.8.2-v20191108/jsinterop-annotations-2.8.2-v20191108.jar",
        sha256 = "2e90ea0a2a124cf140badc70e9d3069f4a6d77af9b866deb68879d4c5a720821",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/jsinterop-annotations/2.8.2-v20191108/jsinterop-annotations-2.8.2-v20191108.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108__sources",
        downloaded_file_path = "org/realityforge/com/google/jsinterop/jsinterop-annotations/2.8.2-v20191108/jsinterop-annotations-2.8.2-v20191108-sources.jar",
        sha256 = "1d4200db849cf621a30aa948b8f269841d7a24f0a8492ae7c81ecd756aebac1d",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/jsinterop-annotations/2.8.2-v20191108/jsinterop-annotations-2.8.2-v20191108-sources.jar"],
    )

    http_file(
        name = "org_realityforge_grim__grim_annotations__0_03",
        downloaded_file_path = "org/realityforge/grim/grim-annotations/0.03/grim-annotations-0.03.jar",
        sha256 = "a3bcd69cfdb14e03f77dc1e64eb5ccdcb02b9bbd4be8c50353e3752613fa02dc",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/grim/grim-annotations/0.03/grim-annotations-0.03.jar"],
    )

    http_file(
        name = "org_realityforge_grim__grim_annotations__0_03__sources",
        downloaded_file_path = "org/realityforge/grim/grim-annotations/0.03/grim-annotations-0.03-sources.jar",
        sha256 = "2c207c47ad01125582eb489d8c57021e9ba5505c7211a64201152465c08ea2b7",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/grim/grim-annotations/0.03/grim-annotations-0.03-sources.jar"],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1.jar",
        sha256 = "6adb7bcd07bdfc2e28d815dc7e0ce594181fe8a5a74d336cbf7cd7cfb283bb8d",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1.jar"],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1__sources",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1-sources.jar",
        sha256 = "049e2910100b7d27af24a821883f5ce94006955c7b08b9fb60cf57b67cd06061",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1-sources.jar"],
    )

    http_file(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_2_0",
        downloaded_file_path = "org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.2.0/org.jetbrains.annotations-1.2.0.jar",
        sha256 = "7c826c2c5f5e1fd0130c570e9e85fffffa7651c82b29b5b7d00aa5466a58449e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.2.0/org.jetbrains.annotations-1.2.0.jar"],
    )

    http_file(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_2_0__sources",
        downloaded_file_path = "org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.2.0/org.jetbrains.annotations-1.2.0-sources.jar",
        sha256 = "2c6e1bec69ef997a177c95468e6b92f6c5de6b2a6df5634add571a3f9dea0b85",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.2.0/org.jetbrains.annotations-1.2.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_144",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.144/react4j-core-0.144.jar",
        sha256 = "200e1b70e0c5bcf2bc99e4a5a2e11a788cff0c83404bc93f84e680d3a13379c9",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.144/react4j-core-0.144.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_144__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.144/react4j-core-0.144-sources.jar",
        sha256 = "dd04ed5f2a29f26958f800633daac1acf3990a695a4f046090bcd7ef0d9c54c5",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.144/react4j-core-0.144-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_144",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.144/react4j-dom-0.144.jar",
        sha256 = "b538e45365a0206f4f2824b97483c9eec87bbb06a4568bac7a1ce28f3f5c9f39",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.144/react4j-dom-0.144.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_144__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.144/react4j-dom-0.144-sources.jar",
        sha256 = "2e362b1926c7efc2b6b5f1d5a5215a1b3cec3978d7a9cb84331ba992850661e7",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.144/react4j-dom-0.144-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_144",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.144/react4j-processor-0.144.jar",
        sha256 = "cd403ba6e2587dbbf2bd3f46ead78aa0c9cb38704ea49d6092fd26c1c3131817",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.144/react4j-processor-0.144.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_144__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.144/react4j-processor-0.144-sources.jar",
        sha256 = "0f11343e3b24bf4e83c90e98e895bc3385f76039b7144aac42065e2965ff1224",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.144/react4j-processor-0.144-sources.jar"],
    )

    http_file(
        name = "org_testng__testng__6_11",
        downloaded_file_path = "org/testng/testng/6.11/testng-6.11.jar",
        sha256 = "55d5897ac09339010eed2051124309a7127988d82ff0634228926d51da3540f6",
        urls = ["https://repo.maven.apache.org/maven2/org/testng/testng/6.11/testng-6.11.jar"],
    )

    http_file(
        name = "org_testng__testng__6_11__sources",
        downloaded_file_path = "org/testng/testng/6.11/testng-6.11-sources.jar",
        sha256 = "d105b25d3faf99b7221ceb21813d9f4ca20c77549873edcc6365cafc65d4763d",
        urls = ["https://repo.maven.apache.org/maven2/org/testng/testng/6.11/testng-6.11-sources.jar"],
    )

def generate_targets():
    """
        Macro to define targets for dependencies.
    """

    native.genrule(
        name = "verify_config_sha256",
        srcs = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        toolchains = ["@bazel_tools//tools/jdk:current_java_runtime"],
        outs = ["command-output.txt"],
        cmd = "$(JAVA) -jar $(location :bazel_depgen) --config-file $(location //thirdparty:dependencies.yml) --quiet hash --verify-sha256 %s > \"$@\"" % (_CONFIG_SHA256),
        visibility = ["//visibility:private"],
    )

    native.genrule(
        name = "regenerate_depgen_extension_script",
        srcs = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        toolchains = ["@bazel_tools//tools/jdk:current_java_runtime"],
        outs = ["regenerate_depgen_extension_script.sh"],
        cmd = "echo \"$(JAVA) -jar $(location :bazel_depgen) --directory \\$$BUILD_WORKSPACE_DIRECTORY --config-file $(location //thirdparty:dependencies.yml) \$$@ generate \" > \"$@\"",
        visibility = ["//visibility:private"],
    )

    native.sh_binary(
        name = "regenerate_depgen_extension",
        srcs = ["regenerate_depgen_extension_script"],
        tags = [
            "local",
            "manual",
            "no-cache",
            "no-remote",
            "no-sandbox",
        ],
        data = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "base",
        actual = ":com_google_jsinterop__base__1_0_0",
    )
    java_import(
        name = "com_google_jsinterop__base__1_0_0",
        jars = ["@com_google_jsinterop__base__1_0_0//file"],
        srcjar = "@com_google_jsinterop__base__1_0_0__sources//file",
        tags = ["maven_coordinates=com.google.jsinterop:base:1.0.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "javax_json",
        actual = ":org_glassfish__javax_json__1_1",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_glassfish__javax_json__1_1",
        jars = ["@org_glassfish__javax_json__1_1//file"],
        srcjar = "@org_glassfish__javax_json__1_1__sources//file",
        tags = ["maven_coordinates=org.glassfish:javax.json:1.1"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "arez_spytools",
        actual = ":org_realityforge_arez_spytools__arez_spytools__0_81",
    )
    java_import(
        name = "org_realityforge_arez_spytools__arez_spytools__0_81",
        jars = ["@org_realityforge_arez_spytools__arez_spytools__0_81//file"],
        srcjar = "@org_realityforge_arez_spytools__arez_spytools__0_81__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez.spytools:arez-spytools:0.81"],
        visibility = ["//visibility:private"],
        deps = [
            ":arez_core",
            ":elemental2_dom",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "arez_core",
        actual = ":org_realityforge_arez__arez_core__0_158",
    )
    java_import(
        name = "org_realityforge_arez__arez_core__0_158",
        jars = ["@org_realityforge_arez__arez_core__0_158//file"],
        srcjar = "@org_realityforge_arez__arez_core__0_158__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-core:0.158"],
        visibility = ["//visibility:private"],
        deps = [
            ":braincheck",
            ":grim_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "arez_processor",
        actual = ":org_realityforge_arez__arez_processor__0_158",
    )
    java_import(
        name = "org_realityforge_arez__arez_processor__0_158__plugin_library",
        jars = ["@org_realityforge_arez__arez_processor__0_158//file"],
        srcjar = "@org_realityforge_arez__arez_processor__0_158__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.158"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_arez__arez_processor__0_158__arez_processor_arezprocessor__plugin",
        processor_class = "arez.processor.ArezProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_arez__arez_processor__0_158__plugin_library"],
    )
    java_library(
        name = "org_realityforge_arez__arez_processor__0_158",
        exported_plugins = ["org_realityforge_arez__arez_processor__0_158__arez_processor_arezprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "bazel_depgen",
        actual = ":org_realityforge_bazel_depgen__bazel_depgen__0_10",
    )
    java_import(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_10",
        jars = ["@org_realityforge_bazel_depgen__bazel_depgen__0_10//file"],
        tags = ["maven_coordinates=org.realityforge.bazel.depgen:bazel-depgen:0.10"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "braincheck",
        actual = ":org_realityforge_braincheck__braincheck__1_25_0",
    )
    java_import(
        name = "org_realityforge_braincheck__braincheck__1_25_0",
        jars = ["@org_realityforge_braincheck__braincheck__1_25_0//file"],
        srcjar = "@org_realityforge_braincheck__braincheck__1_25_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.braincheck:braincheck:1.25.0"],
        visibility = ["//visibility:private"],
        deps = [":javax_annotation"],
    )

    native.alias(
        name = "elemental2_core",
        actual = ":org_realityforge_com_google_elemental2__elemental2_core__2_27",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_27",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_core__2_27//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_core__2_27__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-core:2.27"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":elemental2_promise",
        ],
    )

    native.alias(
        name = "elemental2_dom",
        actual = ":org_realityforge_com_google_elemental2__elemental2_dom__2_27",
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_27",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_dom__2_27//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_dom__2_27__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-dom:2.27"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":elemental2_core",
            ":elemental2_promise",
        ],
    )

    native.alias(
        name = "elemental2_promise",
        actual = ":org_realityforge_com_google_elemental2__elemental2_promise__2_27",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_27",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_promise__2_27//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_promise__2_27__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-promise:2.27"],
        visibility = ["//visibility:private"],
        deps = [":base"],
    )

    native.alias(
        name = "jsinterop_annotations",
        actual = ":org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108",
    )
    java_import(
        name = "org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108",
        jars = ["@org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108//file"],
        srcjar = "@org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.jsinterop:jsinterop-annotations:2.8.2-v20191108"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "grim_annotations",
        actual = ":org_realityforge_grim__grim_annotations__0_03",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_grim__grim_annotations__0_03",
        jars = ["@org_realityforge_grim__grim_annotations__0_03//file"],
        srcjar = "@org_realityforge_grim__grim_annotations__0_03__sources//file",
        tags = ["maven_coordinates=org.realityforge.grim:grim-annotations:0.03"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "javax_annotation",
        actual = ":org_realityforge_javax_annotation__javax_annotation__1_0_1",
    )
    java_import(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1",
        jars = ["@org_realityforge_javax_annotation__javax_annotation__1_0_1//file"],
        srcjar = "@org_realityforge_javax_annotation__javax_annotation__1_0_1__sources//file",
        tags = ["maven_coordinates=org.realityforge.javax.annotation:javax.annotation:1.0.1"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "org_jetbrains_annotations",
        actual = ":org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_2_0",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_2_0",
        jars = ["@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_2_0//file"],
        srcjar = "@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_2_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:1.2.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "react4j_core",
        actual = ":org_realityforge_react4j__react4j_core__0_144",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_core__0_144",
        jars = ["@org_realityforge_react4j__react4j_core__0_144//file"],
        srcjar = "@org_realityforge_react4j__react4j_core__0_144__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-core:0.144"],
        visibility = ["//visibility:private"],
        deps = [
            ":arez_core",
            ":braincheck",
            ":elemental2_core",
            ":elemental2_promise",
            ":grim_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "react4j_dom",
        actual = ":org_realityforge_react4j__react4j_dom__0_144",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_dom__0_144",
        jars = ["@org_realityforge_react4j__react4j_dom__0_144//file"],
        srcjar = "@org_realityforge_react4j__react4j_dom__0_144__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-dom:0.144"],
        visibility = ["//visibility:private"],
        deps = [
            ":elemental2_dom",
            ":react4j_core",
        ],
    )

    native.alias(
        name = "react4j_processor",
        actual = ":org_realityforge_react4j__react4j_processor__0_144",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_processor__0_144__plugin_library",
        jars = ["@org_realityforge_react4j__react4j_processor__0_144//file"],
        srcjar = "@org_realityforge_react4j__react4j_processor__0_144__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.144"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_react4j__react4j_processor__0_144__react4j_processor_react4jprocessor__plugin",
        processor_class = "react4j.processor.React4jProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_react4j__react4j_processor__0_144__plugin_library"],
    )
    java_library(
        name = "org_realityforge_react4j__react4j_processor__0_144",
        exported_plugins = ["org_realityforge_react4j__react4j_processor__0_144__react4j_processor_react4jprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "testng",
        actual = ":org_testng__testng__6_11",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_testng__testng__6_11",
        jars = ["@org_testng__testng__6_11//file"],
        srcjar = "@org_testng__testng__6_11__sources//file",
        tags = ["maven_coordinates=org.testng:testng:6.11"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
