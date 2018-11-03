.class Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;
.super Ljava/lang/Object;
.source "WirelessChargingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/charging/WirelessChargingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WirelessChargingView"
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

.field private mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "batteryLevel"    # I
    .param p4, "callback"    # Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;
    .param p5, "isDozing"    # Z

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 106
    iput-object p4, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

    .line 107
    new-instance v0, Lcom/android/systemui/charging/WirelessChargingLayout;

    invoke-direct {v0, p1, p3, p5}, Lcom/android/systemui/charging/WirelessChargingLayout;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mNextView:Landroid/view/View;

    .line 108
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mGravity:I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 111
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 112
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 115
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 116
    const-string v1, "Charging Animation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    const/16 v1, 0x1a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 121
    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 123
    if-nez p2, :cond_1

    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    .line 126
    if-eqz p2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t display wireless animation on a thread that has not called Looper.prepare()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;-><init>(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mHandler:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;
    .param p1, "x1"    # Landroid/view/View;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mNextView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->handleShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->handleHide()V

    return-void
.end method

.method private handleHide()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

    invoke-interface {v0}, Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;->onAnimationEnded()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 212
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    .line 214
    :cond_2
    return-void
.end method

.method private handleShow()V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_3

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->handleHide()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    :cond_0
    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mWM:Landroid/view/WindowManager;

    .line 181
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 182
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v3, 0x46d

    iput-wide v3, v2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 184
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 191
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

    invoke-interface {v2}, Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;->onAnimationStarting()V

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_0

    .line 195
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v3, "WirelessChargingView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add wireless charging view. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public hide(J)V
    .locals 3
    .param p1, "duration"    # J

    .line 159
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    return-void
.end method

.method public show()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    return-void
.end method
