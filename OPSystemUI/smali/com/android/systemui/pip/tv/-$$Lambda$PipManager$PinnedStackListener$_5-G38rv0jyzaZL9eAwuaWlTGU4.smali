.class public final synthetic Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

.field private final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;->f$0:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    iput-object p2, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;->f$0:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;->f$1:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->lambda$onMovementBoundsChanged$0(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;Landroid/graphics/Rect;)V

    return-void
.end method
