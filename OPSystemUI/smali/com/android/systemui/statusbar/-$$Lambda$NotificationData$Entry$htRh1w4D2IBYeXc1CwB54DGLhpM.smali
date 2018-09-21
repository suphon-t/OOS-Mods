.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationData$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;->f$0:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;->f$0:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->lambda$createIcons$0(Lcom/android/systemui/statusbar/NotificationData$Entry;I)V

    return-void
.end method
