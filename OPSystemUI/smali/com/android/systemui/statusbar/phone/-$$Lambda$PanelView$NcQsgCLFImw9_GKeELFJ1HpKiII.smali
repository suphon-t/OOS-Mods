.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;->f$0:Lcom/android/systemui/statusbar/phone/PanelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;->f$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->lambda$setExpandedHeightInternal$0(Lcom/android/systemui/statusbar/phone/PanelView;)V

    return-void
.end method
