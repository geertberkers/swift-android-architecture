package com.example.android.architecture.blueprints.todoapp.tasks

import android.content.Context
import com.example.android.architecture.blueprints.todoapp.data.FHIRString

/**
 * Created by Zorgkluis (Geert Berkers)
 */
//public fun toastIdOrExtension(context: Context, fhirString: FHIRString) {
//    if (fhirString.hasIdOrExtensions()) {
//        android.util.Log.i("FHIRString", "toastIdOrExtension()")
//        fhirString.id?.let {
//            android.util.Log.i("FHIRString", "showId()")
//            android.widget.Toast.makeText(context, "ID: $it!", android.widget.Toast.LENGTH_LONG).show()
//        }
//
//        fhirString.extensions.firstOrNull()?.let {
//            android.util.Log.i("FHIRString", "showExtension()")
//
//            android.widget.Toast.makeText(context, "Extension: $it!", android.widget.Toast.LENGTH_LONG).show()
//        }
//    } else {
//        android.util.Log.e("FHIRString", "noIdOrExtension()")
//
//        android.widget.Toast.makeText(context, "No extension!", android.widget.Toast.LENGTH_LONG).show()
//
//    }
//}


//public fun FHIRString.toastIdOrExtension(context: Context) {
//    if (this.hasIdOrExtensions()) {
//        android.util.Log.i("FHIRString", "toastIdOrExtension()")
//        this.id?.let {
//            android.util.Log.i("FHIRString", "showId()")
//            android.widget.Toast.makeText(context, "ID: $it!", android.widget.Toast.LENGTH_LONG).show()
//        }
//
//        this.extensions.firstOrNull()?.let {
//            android.util.Log.i("FHIRString", "showExtension()")
//
//            android.widget.Toast.makeText(context, "Extension: $it!", android.widget.Toast.LENGTH_LONG).show()
//        }
//    } else {
//        android.util.Log.e("FHIRString", "noIdOrExtension()")
//
//        android.widget.Toast.makeText(context, "No extension!", android.widget.Toast.LENGTH_LONG).show()
//
//    }
//}