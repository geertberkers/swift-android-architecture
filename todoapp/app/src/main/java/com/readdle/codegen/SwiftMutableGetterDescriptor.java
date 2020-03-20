//package com.readdle.codegen;
//
//import com.readdle.codegen.anotation.SwiftMutableGetter;
//
//import java.io.IOException;
//import java.util.ArrayList;
//
//import javax.lang.model.element.ExecutableElement;
//import javax.lang.model.element.Modifier;
//
//class SwiftMutableGetterDescriptor implements JavaSwiftProcessor.WritableElement {
//
//    private String javaName;
//    private String swiftName;
//
//    private boolean isStatic;
//    private boolean isMutating;
//
//    private SwiftEnvironment.Type returnSwiftType;
//    private boolean isReturnTypeOptional;
//
//    SwiftMutableGetterDescriptor(ExecutableElement executableElement, SwiftMutableGetter getterAnnotation, JavaSwiftProcessor processor) {
//        this.javaName = executableElement.getSimpleName().toString();
//        this.isStatic = executableElement.getModifiers().contains(Modifier.STATIC);
//        this.returnSwiftType = processor.parseJavaType(executableElement.getReturnType().toString());
//        this.isReturnTypeOptional = JavaSwiftProcessor.isNullable(executableElement);
//
//        if (executableElement.getThrownTypes().size() != 0) {
//            throw new SwiftMappingException("Getter can't throw", executableElement);
//        }
//
//        if (executableElement.getParameters().size() != 0) {
//            throw new SwiftMappingException("Getter can't has parameters", executableElement);
//        }
//
//        if (getterAnnotation != null) {
//            this.isMutating = getterAnnotation.isMutating();
//        }
//
//        if (getterAnnotation != null && !getterAnnotation.value().isEmpty()) {
//            this.swiftName = getterAnnotation.value();
//        }
//        else {
//            this.swiftName = javaName;
//            if (swiftName.startsWith("get")) {
//                swiftName = swiftName.substring(3);
//            }
//            char first = Character.toLowerCase(swiftName.charAt(0));
//            swiftName = first + swiftName.substring(1);
//        }
//    }
//
//    @Override
//    public void generateCode(SwiftWriter swiftWriter, String javaFullName, String swiftType) throws IOException {
//        String swiftFuncName = Utils.mangleFunctionName(javaFullName, javaName, new ArrayList<>());
//
//        swiftWriter.emitEmptyLine();
//        swiftWriter.emitStatement(String.format("@_silgen_name(\"%s\")", swiftFuncName));
//        swiftWriter.emit(String.format("public func %s(env: UnsafeMutablePointer<JNIEnv?>, %s", swiftFuncName, isStatic ? "clazz: jclass" : "this: jobject"));
//        swiftWriter.emit(String.format(")%s {\n", returnSwiftType != null ? " -> jobject?" : ""));
//        swiftWriter.emitEmptyLine();
//
//        if (!isStatic) {
////            swiftWriter.emitStatement(String.format("var swiftSelf: %s", swiftType));
//            swiftWriter.emitStatement(String.format("%s swiftSelf: %s", isMutating ? "var" : "let", swiftType));
//            swiftWriter.emitStatement("do {");
//            swiftWriter.emitStatement(String.format("swiftSelf = try %s.from(javaObject: this)", swiftType));
//            swiftWriter.emitStatement("}");
//            swiftWriter.emitStatement("catch {");
//            swiftWriter.emitStatement("let nsError = error as NSError");
//            swiftWriter.emitStatement("let errorString = \"\\(nsError.domain): \\(nsError.code)\"");
//            swiftWriter.emitStatement("_ = JNI.api.ThrowNew(JNI.env, SwiftRuntimeErrorClass, errorString)");
//            swiftWriter.emitStatement(String.format("return%s", returnSwiftType != null ? " nil" : ""));
//            swiftWriter.emitStatement("}");
//        }
//
//        swiftWriter.emitStatement(String.format("let result = %s.%s", isStatic ? swiftType : "swiftSelf", swiftName));
//
//        if (returnSwiftType != null) {
//            swiftWriter.emitStatement("do {");
//            if (isReturnTypeOptional) {
//                swiftWriter.emitStatement("return try result?.javaObject()");
//            }
//            else {
//                swiftWriter.emitStatement("return try result.javaObject()");
//            }
//            swiftWriter.emitStatement("}");
//            swiftWriter.emitStatement("catch {");
//            swiftWriter.emitStatement("let nsError = error as NSError");
//            swiftWriter.emitStatement("let errorString = \"\\(nsError.domain): \\(nsError.code)\"");
//            swiftWriter.emitStatement("_ = JNI.api.ThrowNew(JNI.env, SwiftRuntimeErrorClass, errorString)");
//            swiftWriter.emitStatement("return nil");
//            swiftWriter.emitStatement("}");
//        }
//
//        swiftWriter.emitStatement("}");
//    }
//
//    @Override
//    public String toString(String javaClassname) {
//        return Utils.mangleFunctionName(javaClassname, javaName, new ArrayList<>());
//    }
//
//    @Override
//    public String toString() {
//        return "SwiftGetterDescriptor{" +
//                "javaName='" + javaName + '\'' +
//                ", swiftName='" + swiftName + '\'' +
//                ", isStatic=" + isStatic +
//                ", returnSwiftType=" + returnSwiftType +
//                ", isReturnTypeOptional=" + isReturnTypeOptional +
//                '}';
//    }
//}