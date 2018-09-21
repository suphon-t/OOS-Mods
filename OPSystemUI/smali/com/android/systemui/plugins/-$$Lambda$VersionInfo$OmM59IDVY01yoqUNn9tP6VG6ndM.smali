.class public final synthetic Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$OmM59IDVY01yoqUNn9tP6VG6ndM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$OmM59IDVY01yoqUNn9tP6VG6ndM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$OmM59IDVY01yoqUNn9tP6VG6ndM;

    invoke-direct {v0}, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$OmM59IDVY01yoqUNn9tP6VG6ndM;-><init>()V

    sput-object v0, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$OmM59IDVY01yoqUNn9tP6VG6ndM;->INSTANCE:Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$OmM59IDVY01yoqUNn9tP6VG6ndM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-static {p1, p2}, Lcom/android/systemui/plugins/VersionInfo;->lambda$checkVersion$1(Ljava/lang/Class;Lcom/android/systemui/plugins/VersionInfo$Version;)V

    return-void
.end method
