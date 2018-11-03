.class Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "OPZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p2, "context"    # Landroid/content/Context;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V

    .line 85
    return-void
.end method
