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
public class FHIRUri {

    @Nullable
    public FHIRString id;

    @NotNull
    public List<Extension> extensions;

    @Nullable
    public String value;

    // Swift JNI constructor
    protected FHIRUri() {
        this.id = null;
        this.extensions = new ArrayList<>();
        this.value = null;
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
    public String getValue() {
        return value;
    }

//    @NonNull
//    public native Boolean hasIdOrExtensions();
}