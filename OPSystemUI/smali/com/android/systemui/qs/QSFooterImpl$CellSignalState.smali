.class final Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;
.super Ljava/lang/Object;
.source "QSFooterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSignalState"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/String;

.field mobileSignalIconId:I

.field roaming:Z

.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterImpl;

.field typeContentDescription:Ljava/lang/String;

.field visible:Z


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSFooterImpl;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSFooterImpl;Lcom/android/systemui/qs/QSFooterImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSFooterImpl;
    .param p2, "x1"    # Lcom/android/systemui/qs/QSFooterImpl$1;

    .line 558
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    return-void
.end method
