.class Lcom/android/systemui/plugins/VersionInfo$Version;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/VersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version"
.end annotation


# instance fields
.field private final mRequired:Z

.field private final mVersion:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "required"    # Z

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/systemui/plugins/VersionInfo$Version;->mVersion:I

    .line 136
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VersionInfo$Version;->mRequired:Z

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/plugins/VersionInfo$Version;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugins/VersionInfo$Version;

    .line 129
    iget v0, p0, Lcom/android/systemui/plugins/VersionInfo$Version;->mVersion:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/plugins/VersionInfo$Version;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugins/VersionInfo$Version;

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/plugins/VersionInfo$Version;->mRequired:Z

    return v0
.end method
