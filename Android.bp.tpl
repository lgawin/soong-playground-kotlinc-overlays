soong_namespace {
}

package {
    default_applicable_licenses: [
        "external_kotlinc_license",
        "external_kotlinc_asm_license",
        "external_kotlinc_dart_license",
        "external_kotlinc_rhino_license",
        "external_kotlinc_qunit_license",
        "external_kotlinc_gwt_license",
        "external_kotlinc_guava_license",
        "external_kotlinc_boost_license",
        "external_kotlinc_closure_compiler_license",
        "external_kotlinc_assemblyscript_license",
        "external_kotlinc_aosp_license",
        "external_kotlinc_asmble_license",
        "external_kotlinc_sun_license",
    ],
}

java_import {
    name: "kotlin-annotations",
    host_supported: true,
    jars: ["lib/annotations-13.0.jar"],
    sdk_version: "core_current",
}

// exclude_dirs is used to remove META-INF resources for java multi-release
// jar support that soong does not support. https://openjdk.java.net/jeps/238

java_import {
    name: "kotlin-reflect",
    host_supported: true,
    jars: ["lib/kotlin-reflect.jar"],
    sdk_version: "core_current",
    exclude_dirs: ["META-INF/versions"],
}

java_import {
    name: "kotlin-stdlib",
    host_supported: true,
    jars: ["lib/kotlin-stdlib.jar"],
    sdk_version: "core_current",
    exclude_dirs: ["META-INF/versions"],
    apex_available: [
        "//apex_available:platform",
        "//apex_available:anyapex",
    ],
}

java_import {
    name: "kotlin-stdlib-jdk7",
    host_supported: true,
    jars: ["lib/kotlin-stdlib-jdk7.jar"],
    sdk_version: "core_current",
    exclude_dirs: ["META-INF/versions"],
}

java_import {
    name: "kotlin-stdlib-jdk8",
    host_supported: true,
    jars: [
        "lib/kotlin-stdlib-jdk8.jar",
        "lib/kotlin-stdlib-jdk7.jar",
    ],
    sdk_version: "core_current",
    exclude_dirs: ["META-INF/versions"],
    apex_available: [
        "//apex_available:platform",
        "//apex_available:anyapex",
    ],
}

java_import {
    name: "kotlin-test",
    host_supported: true,
    jars: [
        "lib/kotlin-test.jar",
        "lib/kotlin-test-junit.jar",
    ],
    sdk_version: "core_current",
    exclude_dirs: ["META-INF/versions"],
}

// See: http://go/android-license-faq
license {
    name: "external_kotlinc_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    license_text: [
        "license/LICENSE.txt",
        "license/NOTICE.txt",
    ],
}

license {
    name: "external_kotlinc_aether_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-EPL",
    ],
    license_text: [
        "license/third_party/aether_license.txt",
    ],
}

license {
    name: "external_kotlinc_aosp_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "Copyright (C) 2011-15 The Android Open Source Project",
    license_text: [
        "license/third_party/aosp_license.txt",
    ],
}

license {
    name: "external_kotlinc_args4j_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    license_text: [
        "license/third_party/args4j_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_asm_license",
    package_name: "ASM",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-BSD",
    ],
    copyright_notice: "Derived from ASM: a very small and fast Java bytecode manipulation framework, Copyright (c) 2000-2011 INRIA, France Telecom",
    license_text: [
        "license/third_party/asm_license.txt",
    ],
}

license {
    name: "external_kotlinc_asmble_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "Copyright (C) 2018 Chad Retz",
    license_text: [
        "license/third_party/asmble_license.txt",
    ],
}

license {
    name: "external_kotlinc_assemblyscript_license",
    package_name: "assemblyscript standard library",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "Derived from assemblyscript standard library",
    license_text: [
        "license/third_party/assemblyscript_license.txt",
    ],
}

license {
    name: "external_kotlinc_boost_license",
    package_name: "boost special math functions",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-BSL-1.0",
    ],
    copyright_notice: "Derived from boost special math functions, Copyright Eric Ford & Hubert Holin 2001.",
    license_text: [
        "license/third_party/boost_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_closure_compiler_license",
    package_name: "Google Closure Library",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "Google Closure Library, Copyright 2009 The Closure Library Authors",
    license_text: [
        "license/third_party/closure-compiler_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_dart_license",
    package_name: "Dart compiler",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-BSD",
    ],
    copyright_notice: "Originally part of the Dart compiler, (c) 2011 the Dart Project Authors,",
    license_text: [
        "license/third_party/dart_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_fastutil_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    license_text: [
        "license/third_party/fastutil_licence",
    ],
}

license {
    name: "external_kotlinc_gradle_license",
    package_name: "Gradle",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
        "SPDX-license-identifier-BSD-3-Clause",
        "SPDX-license-identifier-BSD",
        "SPDX-license-identifier-CDDL-1.0",
        "SPDX-license-identifier-EPL",
        "SPDX-license-identifier-MIT",
        "SPDX-license-identifier-LGPL-2.1",
        "SPDX-license-identifier-MPL-2.0",
    ],
    copyright_notice: "Gradle, Copyright 2002-2017 Gradle, Inc.",
    license_text: [
        "license/third_party/gradle_license.txt",
    ],
}

license {
    name: "external_kotlinc_guava_license",
    package_name: "Guava",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "Derived from Guava's UnsignedLongs, (C) 2011 The Guava Authors",
    license_text: [
        "license/third_party/guava_license.txt",
    ],
}

license {
    name: "external_kotlinc_gwt_license",
    package_name: "GWT",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "Derived from GWT, (C) 2007-08 Google Inc.",
    license_text: [
        "license/third_party/gwt_license.txt",
    ],
}

license {
    name: "external_kotlinc_jquery_license",
    package_name: "jQuery JavaScript Library v1.6.2",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "jQuery JavaScript Library v1.6.2, Copyright 2011, John Resig",
    license_text: [
        "license/third_party/jquery_license.txt",
    ],
}

license {
    name: "external_kotlinc_jshashtable_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    license_text: [
        "license/third_party/jshashtable_license.txt",
    ],
}

license {
    name: "external_kotlinc_karma_teamcity_reporter_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "Copyright (C) 2011-2013 Vojta Jína and contributors.",
    license_text: [
        "license/third_party/karma-teamcity-reporter_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_karma_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "Copyright (C) 2011-2019 Google, Inc.",
    license_text: [
        "license/third_party/karma_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_lodash_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
        "SPDX-license-identifier-CC0-1.0",
    ],
    copyright_notice: "Copyright JS Foundation and other contributors <https://js.foundation/>",
    license_text: [
        "license/third_party/lodash_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_lombok_license",
    package_name: "Project Lombok",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "Project Lombok, Copyright (C) 2009-2013 The Project Lombok Authors",
    license_text: [
        "license/third_party/lombok_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_maven_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    license_text: [
        "license/third_party/maven_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_mocha_teamcity_reporter_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "Copyright (c) 2016 Jamie Sherriff",
    license_text: [
        "license/third_party/mocha-teamcity-reporter_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_prototype_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    license_text: [
        "license/third_party/prototype_license.txt",
    ],
}

license {
    name: "external_kotlinc_qunit_license",
    package_name: "QUnit",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "QUnit, Copyright (c) 2012 John Resig, Jörn Zaefferer,",
    license_text: [
        "license/third_party/qunit_license.txt",
    ],
}

license {
    name: "external_kotlinc_rhino_license",
    package_name: "Rhino",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MPL-1.1",
    ],
    copyright_notice: "Originally part of GWT, (C) 2007-08 Google Inc., distributed under the Apache 2 license. The code is derived from Rhino, (C) 1997-1999 Netscape Communications Corporation, distributed under the Netscape Public License.",
    license_text: [
        "license/third_party/rhino_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_scala_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-BSD",
    ],
    license_text: [
        "license/third_party/scala_license.txt",
    ],
}

license {
    name: "external_kotlinc_sun_license",
    visibility: [":__subpackages__"],
    copyright_notice: "Copyright (C) 1993 by Sun Microsystems, Inc.",
    license_kinds: [
        "legacy_notice",
    ],
    license_text: [
        "license/third_party/sun_license.txt",
    ],
}

license {
    name: "external_kotlinc_teamcity_service_messages_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "Copyright (c) 2013 Aaron Forsander",
    license_text: [
        "license/third_party/teamcity-service-messages_LICENSE.txt",
    ],
}

license {
    name: "external_kotlinc_trove_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-LGPL-2.1",
    ],
    license_text: [
        "license/third_party/trove_license.txt",
    ],
}

license {
    name: "external_kotlinc_trove_readme_license",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-ISC",
    ],
    license_text: [
        "license/third_party/trove_readme_license.txt",
    ],
}

license {
    name: "external_kotlinc_testdata_dagger_license",
    package_name: "Dagger",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "Dagger, Copyright (C) 2013 Square, Inc.",
    license_text: [
        "license/third_party/testdata/dagger_license.txt",
    ],
}

license {
    name: "external_kotlinc_testdata_eclipse_distribution_license",
    package_name: "javax.persistence",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-BSD",
    ],
    copyright_notice: "javax.persistence, Copyright (c) 2008, 2017 Sun Microsystems, Oracle Corporation.",
    license_text: [
        "license/third_party/testdata/eclipse_distribution_license.txt",
    ],
}

license {
    name: "external_kotlinc_testdata_eclipse_license",
    package_name: "javax.persistence",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-EPL-1.0",
    ],
    copyright_notice: "javax.persistence, Copyright (c) 2008, 2017 Sun Microsystems, Oracle Corporation.",
    license_text: [
        "license/third_party/testdata/eclipse_license.txt",
    ],
}

license {
    name: "external_kotlinc_testdata_findbugs_license",
    package_name: "Bytecode Analysis Framework",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-LGPL-2.1",
    ],
    copyright_notice: "Bytecode Analysis Framework, Copyright (C) 2005 University of Maryland",
    license_text: [
        "license/third_party/testdata/findbugs_license.txt",
    ],
}

license {
    name: "external_kotlinc_testdata_jspecify_license",
    package_name: "JSpecify",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "JSpecify, Copyright (C) 2020 The JSpecify Authors",
    license_text: [
        "license/third_party/testdata/jspecify_license.txt",
    ],
}

license {
    name: "external_kotlinc_testdata_lombok_license",
    package_name: "Project Lombok",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-MIT",
    ],
    copyright_notice: "Project Lombok, Copyright (C) 2009-2013 The Project Lombok Authors",
    license_text: [
        "license/third_party/testdata/lombok_license.txt",
    ],
}

license {
    name: "external_kotlinc_testdata_rxjava_license",
    package_name: "RxJava",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "RxJava, Copyright (c) 2016-present, RxJava Contributors",
    license_text: [
        "license/third_party/testdata/rxjava_license.txt",
    ],
}

license {
    name: "external_kotlinc_testdata_spring_license",
    package_name: "Spring Framework",
    visibility: [":__subpackages__"],
    license_kinds: [
        "SPDX-license-identifier-Apache-2.0",
    ],
    copyright_notice: "Spring Framework, Copyright 2002-2007 the original author or authors.",
    license_text: [
        "license/third_party/testdata/spring_license.txt",
    ],
}
