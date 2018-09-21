.class public final synthetic Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field private final synthetic f$1:Landroid/widget/ImageView;

.field private final synthetic f$2:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;->f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;->f$1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;->f$2:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;->f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;->f$1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;->f$2:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->lambda$setIcon$0(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method
