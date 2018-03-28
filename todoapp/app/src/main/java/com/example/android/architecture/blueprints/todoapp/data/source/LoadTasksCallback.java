package com.example.android.architecture.blueprints.todoapp.data.source;

import com.example.android.architecture.blueprints.todoapp.data.Task;
import com.readdle.codegen.anotation.SwiftCallbackFunc;
import com.readdle.codegen.anotation.SwiftDelegate;

import android.support.annotation.NonNull;

import java.util.ArrayList;

@SwiftDelegate(protocols = {"LoadTasksDelegate"})
public interface LoadTasksCallback {

    @SwiftCallbackFunc
    void onTasksLoaded(@NonNull ArrayList<Task> tasks);

    @SwiftCallbackFunc
    void onDataNotAvailable();
}
