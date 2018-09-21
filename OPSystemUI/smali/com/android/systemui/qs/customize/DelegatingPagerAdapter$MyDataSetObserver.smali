.class Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DelegatingPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final mParent:Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;)V
    .locals 0
    .param p1, "mParent"    # Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;

    .line 132
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;
    .param p2, "x1"    # Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$1;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;-><init>(Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->superNotifyDataSetChanged()V

    .line 141
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;->onChanged()V

    .line 146
    return-void
.end method
