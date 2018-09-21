.class Lcom/android/systemui/qs/tiles/VPNTile$Callback;
.super Ljava/lang/Object;
.source "VPNTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VPNTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VPNTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VPNTile;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VPNTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/VPNTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VPNTile;Lcom/android/systemui/qs/tiles/VPNTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/VPNTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/VPNTile$1;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VPNTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/VPNTile;)V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VPNTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/VPNTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VPNTile;->refreshState()V

    .line 83
    return-void
.end method
