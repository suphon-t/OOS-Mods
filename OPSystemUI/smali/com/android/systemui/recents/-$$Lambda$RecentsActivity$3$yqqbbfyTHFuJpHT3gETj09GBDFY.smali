.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$3$yqqbbfyTHFuJpHT3gETj09GBDFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/RecentsActivity$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$3$yqqbbfyTHFuJpHT3gETj09GBDFY;->f$0:Lcom/android/systemui/recents/RecentsActivity$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$3$yqqbbfyTHFuJpHT3gETj09GBDFY;->f$0:Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity$3;->lambda$onPreDraw$0(Lcom/android/systemui/recents/RecentsActivity$3;)V

    return-void
.end method
