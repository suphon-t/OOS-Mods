.class public abstract Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractLogpersistPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field static final ACTUAL_LOGPERSIST_PROPERTY:Ljava/lang/String; = "logd.logpersistd"

.field static final ACTUAL_LOGPERSIST_PROPERTY_BUFFER:Ljava/lang/String; = "logd.logpersistd.buffer"

.field static final SELECT_LOGPERSIST_PROPERTY_SERVICE:Ljava/lang/String; = "logcatd"
