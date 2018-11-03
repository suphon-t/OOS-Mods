.class public Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;
.super Ljava/lang/Object;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 200
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 203
    const/4 v0, 0x1

    return v0
.end method
