.class Lcom/android/systemui/qs/QSSecurityFooter$Callback;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSSecurityFooter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;
    .param p2, "x1"    # Lcom/android/systemui/qs/QSSecurityFooter$1;

    .line 461
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    .line 465
    return-void
.end method
