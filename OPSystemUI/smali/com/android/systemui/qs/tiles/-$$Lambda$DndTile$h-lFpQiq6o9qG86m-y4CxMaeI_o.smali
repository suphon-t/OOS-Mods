.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$h-lFpQiq6o9qG86m-y4CxMaeI_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$h-lFpQiq6o9qG86m-y4CxMaeI_o;->f$0:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$h-lFpQiq6o9qG86m-y4CxMaeI_o;->f$0:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->lambda$showDetail$0(Landroid/app/Dialog;)V

    return-void
.end method
