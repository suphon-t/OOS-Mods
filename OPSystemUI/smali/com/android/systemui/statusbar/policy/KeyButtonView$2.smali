.class Lcom/android/systemui/statusbar/policy/KeyButtonView$2;
.super Landroid/os/AsyncTask;
.source "KeyButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/drawable/Icon;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 171
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Landroid/graphics/drawable/Icon;

    .line 174
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$500(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, [Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->doInBackground([Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
