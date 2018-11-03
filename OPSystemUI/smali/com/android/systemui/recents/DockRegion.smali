.class Lcom/android/systemui/recents/DockRegion;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field public static PHONE_LANDSCAPE:[Lcom/android/systemui/recents/views/DockState;

.field public static PHONE_PORTRAIT:[Lcom/android/systemui/recents/views/DockState;

.field public static TABLET_LANDSCAPE:[Lcom/android/systemui/recents/views/DockState;

.field public static TABLET_PORTRAIT:[Lcom/android/systemui/recents/views/DockState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/systemui/recents/views/DockState;

    sget-object v2, Lcom/android/systemui/recents/views/DockState;->LEFT:Lcom/android/systemui/recents/views/DockState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/systemui/recents/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/views/DockState;

    .line 39
    new-array v1, v0, [Lcom/android/systemui/recents/views/DockState;

    sget-object v2, Lcom/android/systemui/recents/views/DockState;->TOP:Lcom/android/systemui/recents/views/DockState;

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/systemui/recents/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/views/DockState;

    .line 43
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/systemui/recents/views/DockState;

    sget-object v2, Lcom/android/systemui/recents/views/DockState;->LEFT:Lcom/android/systemui/recents/views/DockState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/recents/views/DockState;->RIGHT:Lcom/android/systemui/recents/views/DockState;

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/systemui/recents/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/views/DockState;

    .line 47
    sget-object v0, Lcom/android/systemui/recents/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/views/DockState;

    sput-object v0, Lcom/android/systemui/recents/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/views/DockState;

    return-void
.end method
