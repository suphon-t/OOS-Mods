.class public final synthetic Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$36RaSV8LaXl8e0tazdPbdpQ95k8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/plugins/VersionInfo;

.field private final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/VersionInfo;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$36RaSV8LaXl8e0tazdPbdpQ95k8;->f$0:Lcom/android/systemui/plugins/VersionInfo;

    iput-object p2, p0, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$36RaSV8LaXl8e0tazdPbdpQ95k8;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$36RaSV8LaXl8e0tazdPbdpQ95k8;->f$0:Lcom/android/systemui/plugins/VersionInfo;

    iget-object v1, p0, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$36RaSV8LaXl8e0tazdPbdpQ95k8;->f$1:Landroid/util/ArrayMap;

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-static {v0, v1, p1, p2}, Lcom/android/systemui/plugins/VersionInfo;->lambda$checkVersion$0(Lcom/android/systemui/plugins/VersionInfo;Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/android/systemui/plugins/VersionInfo$Version;)V

    return-void
.end method
