.class public interface abstract Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;
.super Ljava/lang/Object;
.source "NavBarButtonProvider.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_NAV_BUTTON"
    version = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_NAV_BUTTON"

.field public static final VERSION:I = 0x2


# virtual methods
.method public abstract createView(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
