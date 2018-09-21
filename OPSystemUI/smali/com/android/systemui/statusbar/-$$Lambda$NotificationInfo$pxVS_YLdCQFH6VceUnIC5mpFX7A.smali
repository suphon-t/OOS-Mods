.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationInfo;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;->f$0:Lcom/android/systemui/statusbar/NotificationInfo;

    iput p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;->f$0:Lcom/android/systemui/statusbar/NotificationInfo;

    iget v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationInfo;->lambda$bindHeader$3(Lcom/android/systemui/statusbar/NotificationInfo;ILandroid/view/View;)V

    return-void
.end method
