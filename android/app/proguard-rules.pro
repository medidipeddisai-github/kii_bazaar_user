# ---------------------------
# Razorpay
# ---------------------------
-keep class com.razorpay.** { *; }
-dontwarn com.razorpay.**

# Keep Razorpay payment callback methods
-keepclassmembers class * {
    public void onPayment*(...);
}

# ---------------------------
# Google Pay / UPI SDK (needed by Razorpay)
# ---------------------------
-keep class com.google.android.apps.nbu.paisa.inapp.client.api.** { *; }
-dontwarn com.google.android.apps.nbu.paisa.inapp.client.api.**

# ---------------------------
# Keep ProGuard annotations used by Razorpay
# ---------------------------
-keep class proguard.annotation.Keep { *; }
-keep class proguard.annotation.KeepClassMembers { *; }
-dontwarn proguard.annotation.**

# Keep all annotations
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions
-keepattributes InnerClasses

# ---------------------------
# Firebase & Crashlytics
# ---------------------------
-keep class com.google.firebase.** { *; }
-keep class com.google.firebase.crashlytics.** { *; }
-dontwarn com.google.firebase.**

# ---------------------------
# Google Play Services
# ---------------------------
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**

# ---------------------------
# Kotlin metadata (if you have Kotlin code)
# ---------------------------
-keep class kotlin.Metadata { *; }
-dontwarn kotlin.**

# ---------------------------
# Parcelable / Serializable (for models)
# ---------------------------
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object readResolve();
    java.lang.Object writeReplace();
}

# ---------------------------
# Additional optimizations
# ---------------------------
-optimizations !method/inlining/short