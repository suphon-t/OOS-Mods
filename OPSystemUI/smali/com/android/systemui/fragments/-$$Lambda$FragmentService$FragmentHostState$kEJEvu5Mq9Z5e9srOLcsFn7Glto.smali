.class public final synthetic Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

.field private final synthetic f$1:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;->f$0:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    iput-object p2, p0, Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;->f$1:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;->f$0:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    iget-object v1, p0, Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;->f$1:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->lambda$sendConfigurationChange$0(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;Landroid/content/res/Configuration;)V

    return-void
.end method
