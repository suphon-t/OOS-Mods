.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$GSAG9gEF755NpvH4khVvAa75uPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSFooterImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSFooterImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$GSAG9gEF755NpvH4khVvAa75uPs;->f$0:Lcom/android/systemui/qs/QSFooterImpl;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$GSAG9gEF755NpvH4khVvAa75uPs;->f$0:Lcom/android/systemui/qs/QSFooterImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/qs/QSFooterImpl;->lambda$onFinishInflate$2(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;IIIIIIII)V

    return-void
.end method
