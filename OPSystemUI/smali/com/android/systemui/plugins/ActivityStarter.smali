.class public interface abstract Lcom/android/systemui/plugins/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/ActivityStarter$Callback;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
.end method

.method public abstract postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
.end method

.method public abstract postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Z)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZZ)V
.end method

.method public abstract startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
.end method
