.class public interface abstract Lcom/android/systemui/statusbar/policy/OPThreekeyDialog;
.super Ljava/lang/Object;
.source "OPThreekeyDialog.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/DependsOn;
    target = Lcom/android/systemui/plugins/VolumeDialog$Callback;
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_OPThreekeyDialog"
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;
    }
.end annotation
