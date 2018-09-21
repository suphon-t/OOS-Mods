.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;

    invoke-direct {v0}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;-><init>()V

    sput-object v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindLayout$3(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
