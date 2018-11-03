.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$8$A3r6icx46POmpjCAt7rArXBXF0c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$8$A3r6icx46POmpjCAt7rArXBXF0c;->f$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$8$A3r6icx46POmpjCAt7rArXBXF0c;->f$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$8;->lambda$onKeyguardShowingChanged$0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method
