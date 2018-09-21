.class Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mResId:I

.field private mWidgetResId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)V
    .locals 1
    .param p1, "other"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    .line 96
    iget v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    .line 97
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic access$102(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 87
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    return v0
.end method

.method static synthetic access$202(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .line 87
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 87
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    return v0
.end method

.method static synthetic access$302(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .line 87
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return v1

    .line 105
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 106
    .local v0, "other":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    iget v3, v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    iget v3, v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 113
    const/16 v0, 0x11

    .line 114
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    add-int/2addr v2, v3

    .line 115
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    add-int/2addr v0, v3

    .line 116
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 117
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
