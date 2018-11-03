.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/Recents;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:F

.field private final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/Recents;IIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$0:Lcom/android/systemui/recents/Recents;

    iput p2, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$1:I

    iput p3, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$2:I

    iput p4, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$3:F

    iput p5, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$0:Lcom/android/systemui/recents/Recents;

    iget v1, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$1:I

    iget v2, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$2:I

    iget v3, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$3:F

    iget v4, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$2PYuJsfEkEhtMyFmz5quKOfQwdE;->f$4:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/Recents;->lambda$toggleRecentAppsWithGesture$0(Lcom/android/systemui/recents/Recents;IIFF)V

    return-void
.end method
