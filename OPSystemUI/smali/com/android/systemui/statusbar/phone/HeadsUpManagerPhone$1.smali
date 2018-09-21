.class Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;
.super Ljava/lang/Object;
.source "HeadsUpManagerPhone.java"

# interfaces
.implements Landroid/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Pools$Pool<",
        "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;",
        ">;"
    }
.end annotation


# instance fields
.field private mPoolObjects:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->mPoolObjects:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public acquire()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    return-object v0
.end method

.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->acquire()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v0

    return-object v0
.end method

.method public release(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)Z
    .locals 1
    .param p1, "instance"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)Z
    .locals 0

    .line 77
    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->release(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)Z

    move-result p1

    return p1
.end method
