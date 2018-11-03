.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$G1QdSAb4RmghAdo10Gv3JWJ8lmw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/graphics/Palette$Filter;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$G1QdSAb4RmghAdo10Gv3JWJ8lmw;->f$0:Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;

    return-void
.end method


# virtual methods
.method public final isAllowed(I[F)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$G1QdSAb4RmghAdo10Gv3JWJ8lmw;->f$0:Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->lambda$processNotification$1(Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;I[F)Z

    move-result p1

    return p1
.end method
