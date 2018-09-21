.class public final synthetic Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$ZwQyQkGsN0bsRufZ6MVGwaQtJA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/tv/PipControlButtonView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/tv/PipControlButtonView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$ZwQyQkGsN0bsRufZ6MVGwaQtJA8;->f$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$ZwQyQkGsN0bsRufZ6MVGwaQtJA8;->f$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipControlsView;->lambda$updateUserActions$0(Lcom/android/systemui/pip/tv/PipControlButtonView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
