.class Landroid/support/transition/Styleable;
.super Ljava/lang/Object;
.source "Styleable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field static final ARC_MOTION:[I

.field static final CHANGE_BOUNDS:[I

.field static final CHANGE_TRANSFORM:[I

.field static final FADE:[I

.field static final PATTERN_PATH_MOTION:[I

.field static final SLIDE:[I

.field static final TRANSITION:[I

.field static final TRANSITION_MANAGER:[I

.field static final TRANSITION_SET:[I

.field static final TRANSITION_TARGET:[I

.field static final VISIBILITY_TRANSITION:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/Styleable;->TRANSITION_TARGET:[I

    .line 55
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/transition/Styleable;->TRANSITION_MANAGER:[I

    .line 71
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/support/transition/Styleable;->TRANSITION:[I

    .line 90
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10104cf

    aput v4, v2, v3

    sput-object v2, Landroid/support/transition/Styleable;->CHANGE_BOUNDS:[I

    .line 100
    new-array v2, v1, [I

    const v4, 0x101047c

    aput v4, v2, v3

    sput-object v2, Landroid/support/transition/Styleable;->VISIBILITY_TRANSITION:[I

    .line 110
    new-array v2, v1, [I

    const v4, 0x10103e1

    aput v4, v2, v3

    sput-object v2, Landroid/support/transition/Styleable;->FADE:[I

    .line 120
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    sput-object v2, Landroid/support/transition/Styleable;->CHANGE_TRANSFORM:[I

    .line 133
    new-array v2, v1, [I

    const v4, 0x1010430

    aput v4, v2, v3

    sput-object v2, Landroid/support/transition/Styleable;->SLIDE:[I

    .line 143
    new-array v2, v1, [I

    const v4, 0x10103e0

    aput v4, v2, v3

    sput-object v2, Landroid/support/transition/Styleable;->TRANSITION_SET:[I

    .line 153
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/support/transition/Styleable;->ARC_MOTION:[I

    .line 169
    new-array v0, v1, [I

    const v1, 0x10104ca

    aput v1, v0, v3

    sput-object v0, Landroid/support/transition/Styleable;->PATTERN_PATH_MOTION:[I

    return-void

    :array_0
    .array-data 4
        0x101002f
        0x10103dc
        0x1010441
        0x1010442
        0x101044d
        0x101044e
    .end array-data

    :array_1
    .array-data 4
        0x10103dd
        0x10103de
        0x10103df
    .end array-data

    :array_2
    .array-data 4
        0x1010141
        0x1010198
        0x10103e2
        0x101044f
    .end array-data

    :array_3
    .array-data 4
        0x10104bc
        0x10104bd
    .end array-data

    :array_4
    .array-data 4
        0x101047d
        0x101047e
        0x101047f
    .end array-data
.end method
