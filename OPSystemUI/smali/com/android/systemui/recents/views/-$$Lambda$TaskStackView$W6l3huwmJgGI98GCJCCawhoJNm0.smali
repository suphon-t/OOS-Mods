.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$W6l3huwmJgGI98GCJCCawhoJNm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$W6l3huwmJgGI98GCJCCawhoJNm0;->f$0:Lcom/android/systemui/recents/views/TaskStackView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$W6l3huwmJgGI98GCJCCawhoJNm0;->f$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackView;->lambda$tryStartEnterAnimation$1(Lcom/android/systemui/recents/views/TaskStackView;)V

    return-void
.end method
