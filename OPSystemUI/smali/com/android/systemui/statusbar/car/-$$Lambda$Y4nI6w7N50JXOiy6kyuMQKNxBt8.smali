.class public final synthetic Lcom/android/systemui/statusbar/car/-$$Lambda$Y4nI6w7N50JXOiy6kyuMQKNxBt8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/car/CarNavigationBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/car/CarNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$Y4nI6w7N50JXOiy6kyuMQKNxBt8;->f$0:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$Y4nI6w7N50JXOiy6kyuMQKNxBt8;->f$0:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->onNotificationsClick(Landroid/view/View;)V

    return-void
.end method
