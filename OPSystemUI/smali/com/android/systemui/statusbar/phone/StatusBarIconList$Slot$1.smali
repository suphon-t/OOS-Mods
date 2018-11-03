.class Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot$1;
.super Ljava/lang/Object;
.source "StatusBarIconList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->setSubSlot(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .param p2, "rhs"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 195
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    .line 196
    .local v0, "lstate":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v1

    .line 197
    .local v1, "rstate":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    iget v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    if-ne v2, v3, :cond_1

    .line 201
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 202
    :cond_1
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    sub-int/2addr v2, v3

    .line 200
    :goto_0
    return v2

    .line 198
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 192
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot$1;->compare(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)I

    move-result p1

    return p1
.end method
