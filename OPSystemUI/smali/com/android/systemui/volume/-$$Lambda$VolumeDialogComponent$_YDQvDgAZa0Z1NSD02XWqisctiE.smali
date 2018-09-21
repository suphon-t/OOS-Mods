.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$_YDQvDgAZa0Z1NSD02XWqisctiE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$_YDQvDgAZa0Z1NSD02XWqisctiE;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$_YDQvDgAZa0Z1NSD02XWqisctiE;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogComponent;->lambda$_YDQvDgAZa0Z1NSD02XWqisctiE(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    return-object v0
.end method
