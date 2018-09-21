.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$W-hTEBW5YZVW2MsKtz0LzBCynHY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$W-hTEBW5YZVW2MsKtz0LzBCynHY;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$W-hTEBW5YZVW2MsKtz0LzBCynHY;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object v0

    return-object v0
.end method
