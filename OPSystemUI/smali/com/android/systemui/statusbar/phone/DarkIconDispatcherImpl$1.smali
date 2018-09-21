.class Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;
.super Ljava/lang/Object;
.source "DarkIconDispatcherImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->access$008(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    .line 138
    return-void
.end method
