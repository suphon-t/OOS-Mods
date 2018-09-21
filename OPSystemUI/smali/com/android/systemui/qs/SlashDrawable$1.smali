.class Lcom/android/systemui/qs/SlashDrawable$1;
.super Landroid/util/FloatProperty;
.source "SlashDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SlashDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/systemui/qs/SlashDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SlashDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SlashDrawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/SlashDrawable;
    .param p2, "x0"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable$1;->this$0:Lcom/android/systemui/qs/SlashDrawable;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/qs/SlashDrawable;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/qs/SlashDrawable;

    .line 119
    invoke-static {p1}, Lcom/android/systemui/qs/SlashDrawable;->access$000(Lcom/android/systemui/qs/SlashDrawable;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, Lcom/android/systemui/qs/SlashDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SlashDrawable$1;->get(Lcom/android/systemui/qs/SlashDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/systemui/qs/SlashDrawable;F)V
    .locals 0
    .param p1, "object"    # Lcom/android/systemui/qs/SlashDrawable;
    .param p2, "value"    # F

    .line 114
    invoke-static {p1, p2}, Lcom/android/systemui/qs/SlashDrawable;->access$002(Lcom/android/systemui/qs/SlashDrawable;F)F

    .line 115
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 111
    check-cast p1, Lcom/android/systemui/qs/SlashDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/SlashDrawable$1;->setValue(Lcom/android/systemui/qs/SlashDrawable;F)V

    return-void
.end method
