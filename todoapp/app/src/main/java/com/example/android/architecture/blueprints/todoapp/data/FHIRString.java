package com.example.android.architecture.blueprints.todoapp.data;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import com.readdle.codegen.anotation.SwiftGetter;
import com.readdle.codegen.anotation.SwiftMutableGetter;
import com.readdle.codegen.anotation.SwiftReference;
import com.readdle.codegen.anotation.SwiftSetter;
import com.readdle.codegen.anotation.SwiftValue;

import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;

/**
 * Created by Zorgkluis (Geert Berkers)
 */

@SwiftValue
public class FHIRString {

    // Static Regex Property
    @SwiftGetter("regex") @NonNull
    public native static String getRegex();

//    @SwiftSetter("regex")
//    public native static void setRegex(@NonNull String string);

    // Storage Class

//    @SwiftReference
//    private static class FHIRStringStorage {
//
//        // TODO: JNI Pointer
//        // Swift JNI private native pointer
//        private long nativePointer = 0L;
//
//        // TODO: JNI Constructor
//        // Swift JNI private constructor
//        // Should be private. Don't call this constructor from Java!
//        private FHIRStringStorage() { }
//
//        // Swift JNI init method
//        @NonNull
//        public static native FHIRStringStorage init();
//
//        // Swift JNI release method
//        public native void release();
//
//        // DONE: Properties
//        //       id: FHIRString?
//        //       extension: [Extension]
//        //       value: String?
//
//        @NonNull
//        public native FHIRStringStorage copy();
//
////        // Id
////        @SwiftGetter @Nullable
////        public native FHIRString getId();
////
////        @SwiftSetter
////        public native void setId(@Nullable FHIRString string);
////
////        // Extension
////        @SwiftGetter @NonNull
////        public native List<Extension> getExtension();
////
////        @SwiftSetter
////        public native void setExtension(@NonNull List<Extension> extension);
////
////        // Value
////        @SwiftGetter @Nullable
////        public native String getValue();
////
////        @SwiftSetter
////        public native void setValue(@Nullable String string);
//
//        @Nullable
//        public FHIRString id;
//
//        @NotNull
//        public ArrayList<Extension> extension;
//
//        @Nullable
//        public String value;
//
//
//        // TODO: Empty constructor
//
//        // TODO: Codable implementation
//
//    }

//    @SwiftReference
//    public static class SampleReferenceEnclose {
//
//
//        // Swift JNI private native pointer
//        private long nativePointer = 0L;
//
//        // Swift JNI private constructor
//        // Should be private. Don't call this constructor from Java!
//        private SampleReferenceEnclose() {
//        }
//
//        // Swift JNI release method
//        public native void release();
//
//        @NonNull
//        public static native SampleReferenceEnclose init();
//    }

    @NonNull
    public static native FHIRString getRandomValue();

//    @NonNull
//    public native Boolean hasIdOrExtensions();

    // Storage
//    @NonNull
//    @SwiftGetter
//    public native FHIRStringStorage storage;
//
//    @NonNull
//    FHIRStringStorage mutatingStorage;




//    @NotNull
//    FHIRStringStorage storage;

//    @SwiftGetter @NonNull
//    native FHIRStringStorage getStorage();
//
//    @SwiftSetter
//    native void setStorage(@NonNull FHIRStringStorage storage);
//
//    // Mutating Storage
////    @SwiftGetter/*(isMutable = true)*/ @NonNull
//    @SwiftMutableGetter(value = "mutatingStorage", isMutating = true)
//    native FHIRStringStorage getMutatingStorage();


    @Nullable
    public FHIRString id;

    @NotNull
    public ArrayList<Extension> extension;

//    @Nullable
//    public String value;

//    // Id
//    @SwiftGetter @Nullable
//    public native FHIRString getId();
//
//    @SwiftSetter
//    public native void setId(@Nullable FHIRString string);
//
//    // Extension
//    @SwiftGetter @NonNull
//    public native List<Extension> getExtension();
//
//    @SwiftSetter
//    public native void setExtension(@NonNull List<Extension> extension);
//
    // Value
    @SwiftGetter @Nullable
    public native String getValue();

//    @SwiftSetter
//    public native void setValue(@Nullable String string);


}