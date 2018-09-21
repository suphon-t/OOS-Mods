.class Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
.super Ljava/lang/Object;
.source "FragmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentHostState"
.end annotation


# instance fields
.field private mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->this$0:Lcom/android/systemui/fragments/FragmentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mView:Landroid/view/View;

    .line 87
    new-instance v0, Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentService;->access$100(Lcom/android/systemui/fragments/FragmentService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mView:Landroid/view/View;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;-><init>(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-object v0
.end method

.method private handleSendConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    return-void
.end method

.method public static synthetic lambda$sendConfigurationChange$0(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->handleSendConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-object v0
.end method

.method public sendConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->this$0:Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService;->access$200(Lcom/android/systemui/fragments/FragmentService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;-><init>(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method
