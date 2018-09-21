.class Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ForegroundServicesDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServicesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field final mInflater:Landroid/view/LayoutInflater;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const v0, 0x7f0d006a

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 168
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 169
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 170
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 192
    if-nez p2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_0

    .line 195
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 198
    .restart local v0    # "view":Landroid/view/View;
    :goto_0
    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 199
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    const v2, 0x7f0a005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 202
    .local v2, "label":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-object v0
.end method

.method public setPackages([Ljava/lang/String;)V
    .locals 5
    .param p1, "packages"    # [Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->clear()V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mPm:Landroid/content/pm/PackageManager;

    aget-object v3, p1, v1

    const v4, 0x402000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_1

    .line 180
    :catch_0
    move-exception v2

    .line 176
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->addAll(Ljava/util/Collection;)V

    .line 186
    return-void
.end method
