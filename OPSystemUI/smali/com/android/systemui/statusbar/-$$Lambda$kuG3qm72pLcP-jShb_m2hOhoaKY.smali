.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$kuG3qm72pLcP-jShb_m2hOhoaKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/classifier/FalsingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$kuG3qm72pLcP-jShb_m2hOhoaKY;->f$0:Lcom/android/systemui/classifier/FalsingManager;

    return-void
.end method


# virtual methods
.method public final onDoubleTapLog(ZFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$kuG3qm72pLcP-jShb_m2hOhoaKY;->f$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDoubleTap(ZFF)V

    return-void
.end method
