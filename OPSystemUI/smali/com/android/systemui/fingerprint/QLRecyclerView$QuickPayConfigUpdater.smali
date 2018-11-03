.class Lcom/android/systemui/fingerprint/QLRecyclerView$QuickPayConfigUpdater;
.super Ljava/lang/Object;
.source "QLRecyclerView.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickPayConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 593
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QuickPayConfigUpdater;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 596
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QuickPayConfigUpdater;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$1700(Lcom/android/systemui/fingerprint/QLRecyclerView;)Lcom/android/systemui/fingerprint/QLHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/QLHelper;->resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V

    .line 597
    return-void
.end method
