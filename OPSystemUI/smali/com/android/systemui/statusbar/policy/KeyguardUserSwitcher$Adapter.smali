.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "KeyguardUserSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p3, "kgu"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 262
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    .line 264
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 265
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    .line 270
    .local v0, "item":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    instance-of v1, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-nez v1, :cond_1

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0097

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 274
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .line 278
    .local v1, "v":Lcom/android/systemui/qs/tiles/UserDetailItemView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 285
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setAvatarEnabled(Z)V

    .line 286
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {p2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 287
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 288
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 294
    .local v0, "user":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    goto :goto_0

    .line 298
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 301
    :cond_1
    :goto_0
    return-void
.end method
