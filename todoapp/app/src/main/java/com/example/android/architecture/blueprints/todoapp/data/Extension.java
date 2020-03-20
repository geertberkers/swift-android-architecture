package com.example.android.architecture.blueprints.todoapp.data;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import com.readdle.codegen.anotation.SwiftValue;

import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Zorgkluis (Geert Berkers)
 */
@SwiftValue
public class Extension {

    @Nullable
    public FHIRString id;

    @NotNull
    public List<Extension> extensions;

    @Nullable
    public FHIRUri url;

    // Swift JNI constructor
    protected Extension() {
        this.id = null;
        this.extensions = new ArrayList<>();
        this.url = null;
    }


    @NonNull
    public FHIRString getId() {
        return id;
    }

    @Nullable
    public List<Extension> getExtensions() {
        return extensions;
    }

    @NonNull
    public FHIRUri getUrl() {
        return url;
    }
//    @NonNull
//    public native Boolean hasIdOrExtensions();
}


//@SwiftValue
//data class Extension(
//        var id: FHIRString? = null,
//        var extension: MutableList<Extension> = mutableListOf(),
//        var url: FHIRUri = FHIRUri()
////        var value: Extension.ValueType? = null
//        )