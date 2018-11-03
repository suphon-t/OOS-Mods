.class Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 411
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 413
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Landroid/net/Uri;

    .line 417
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 419
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 420
    .local v0, "screenshotUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 421
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v2, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 422
    return-object v1
.end method
