package com.example.android.architecture.blueprints.todoapp.data.source;

import com.example.android.architecture.blueprints.todoapp.data.Task;
import com.readdle.codegen.anotation.SwiftCallbackFunc;
import com.readdle.codegen.anotation.SwiftDelegate;

import android.support.annotation.NonNull;

@SwiftDelegate(protocols = {"GetTaskDelegate"})
public interface GetTaskCallback {

    @SwiftCallbackFunc
    void onTaskLoaded(@NonNull Task task);

    @SwiftCallbackFunc
    void onDataNotAvailable();
}
