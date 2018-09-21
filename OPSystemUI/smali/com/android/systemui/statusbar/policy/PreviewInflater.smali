.class public Lcom/android/systemui/statusbar/policy/PreviewInflater;
.super Ljava/lang/Object;
.source "PreviewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    return-void
.end method

.method public static getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "currentUserId"    # I
    .param p3, "onlyDirectBootAware"    # Z

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 159
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x10000

    .line 160
    .local v1, "flags":I
    if-nez p3, :cond_0

    .line 161
    const/high16 v2, 0xc0000

    or-int/2addr v1, v2

    .line 164
    :cond_0
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 167
    return-object v4

    .line 169
    :cond_1
    or-int/lit16 v3, v1, 0x80

    invoke-virtual {v0, p1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 171
    .local v3, "resolved":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_3

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v4

    .line 172
    :cond_3
    :goto_0
    return-object v4
.end method

.method private getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v1, 0xd0000

    .line 125
    .local v1, "flags":I
    nop

    .line 126
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 125
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 127
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 128
    return-object v4

    .line 130
    :cond_0
    or-int/lit16 v3, v1, 0x80

    .line 132
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 130
    invoke-virtual {v0, p1, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 133
    .local v3, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    return-object v4

    .line 136
    :cond_1
    if-eqz v3, :cond_3

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v4

    return-object v4

    .line 137
    :cond_3
    :goto_0
    return-object v4
.end method

.method private getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 3
    .param p1, "contextPackage"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/os/Bundle;

    .line 107
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 108
    return-object v0

    .line 110
    :cond_0
    const-string v1, "com.android.keyguard.layout"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "layoutId":I
    if-nez v1, :cond_1

    .line 112
    return-object v0

    .line 114
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$1;)V

    move-object v0, v2

    .line 115
    .local v0, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 116
    iput v1, v0, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    .line 117
    return-object v0
.end method

.method private getWidgetInfoFromService(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 95
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 97
    .local v1, "metaData":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 98
    .end local v1    # "metaData":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PreviewInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load preview; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
    .locals 4
    .param p1, "info"    # Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    .line 64
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 65
    return-object v0

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_1

    .line 69
    return-object v0

    .line 71
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .line 72
    .local v0, "container":Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    .line 73
    return-object v0
.end method

.method private inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;
    .locals 6
    .param p1, "widgetInfo"    # Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    .line 77
    const/4 v0, 0x0

    move-object v1, v0

    .line 79
    .local v1, "widgetView":Landroid/view/View;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 81
    .local v2, "appContext":Landroid/content/Context;
    const-string v3, "layout_inflater"

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 83
    .local v3, "appInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v3, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object v3, v4

    .line 84
    iget v4, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 87
    .end local v2    # "appContext":Landroid/content/Context;
    .end local v3    # "appInflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PreviewInflater"

    const-string v3, "Error creating widget view"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public static wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "currentUserId"    # I

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method private static wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 5
    .param p0, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 182
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 183
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 184
    .local v2, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    return v0

    .line 182
    .end local v2    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v0

    .line 55
    .local v0, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    move-result-object v1

    return-object v1
.end method

.method public inflatePreviewFromService(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromService(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v0

    .line 60
    .local v0, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    move-result-object v1

    return-object v1
.end method
