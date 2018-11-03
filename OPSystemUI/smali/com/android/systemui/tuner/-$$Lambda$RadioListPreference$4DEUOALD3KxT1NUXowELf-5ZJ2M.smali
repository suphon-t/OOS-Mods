.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$RadioListPreference$4DEUOALD3KxT1NUXowELf-5ZJ2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$RadioListPreference$4DEUOALD3KxT1NUXowELf-5ZJ2M;->f$0:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$RadioListPreference$4DEUOALD3KxT1NUXowELf-5ZJ2M;->f$0:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/RadioListPreference;->lambda$onDialogCreated$0(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
