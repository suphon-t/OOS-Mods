.class Lcom/android/systemui/statusbar/stack/AnimationProperties$1;
.super Lcom/android/systemui/statusbar/stack/AnimationFilter;
.source "AnimationProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties$1;->this$0:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldAnimateProperty(Landroid/util/Property;)Z
    .locals 1
    .param p1, "property"    # Landroid/util/Property;

    .line 43
    const/4 v0, 0x1

    return v0
.end method
