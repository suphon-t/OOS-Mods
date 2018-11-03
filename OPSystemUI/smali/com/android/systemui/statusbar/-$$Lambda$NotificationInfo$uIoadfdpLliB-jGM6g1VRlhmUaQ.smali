.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationInfo;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;->f$0:Lcom/android/systemui/statusbar/NotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;->f$0:Lcom/android/systemui/statusbar/NotificationInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationInfo;->lambda$bindButtons$4(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
