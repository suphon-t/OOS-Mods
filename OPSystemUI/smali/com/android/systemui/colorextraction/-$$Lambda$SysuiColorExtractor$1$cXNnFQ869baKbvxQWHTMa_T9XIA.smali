.class public final synthetic Lcom/android/systemui/colorextraction/-$$Lambda$SysuiColorExtractor$1$cXNnFQ869baKbvxQWHTMa_T9XIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/colorextraction/-$$Lambda$SysuiColorExtractor$1$cXNnFQ869baKbvxQWHTMa_T9XIA;->f$0:Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;

    iput-boolean p2, p0, Lcom/android/systemui/colorextraction/-$$Lambda$SysuiColorExtractor$1$cXNnFQ869baKbvxQWHTMa_T9XIA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/colorextraction/-$$Lambda$SysuiColorExtractor$1$cXNnFQ869baKbvxQWHTMa_T9XIA;->f$0:Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;

    iget-boolean v1, p0, Lcom/android/systemui/colorextraction/-$$Lambda$SysuiColorExtractor$1$cXNnFQ869baKbvxQWHTMa_T9XIA;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;->lambda$onWallpaperVisibilityChanged$0(Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;Z)V

    return-void
.end method
