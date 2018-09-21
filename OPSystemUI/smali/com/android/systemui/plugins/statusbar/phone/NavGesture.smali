.class public interface abstract Lcom/android/systemui/plugins/statusbar/phone/NavGesture;
.super Ljava/lang/Object;
.source "NavGesture.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_NAV_GESTURE"
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_NAV_GESTURE"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getGestureHelper()Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;
.end method
