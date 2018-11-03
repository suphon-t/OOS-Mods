.class public Lcom/android/settingslib/inputmethod/InputMethodPreference;
.super Lcom/android/settingslib/RestrictedSwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "isAllowedByOrganization"    # Z
    .param p5, "onSaveListener"    # Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setPersistent(Z)V

    .line 109
    iput-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 110
    iput-boolean p4, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    .line 111
    iput-object p5, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 113
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 114
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p3}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "settingsActivity":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 127
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 128
    invoke-virtual {v0, p2, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    .line 129
    invoke-virtual {p0, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    invoke-virtual {p0, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    return-void
.end method

.method private isImeEnabler()Z
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTv()Z
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$showDirectBootWarnDialog$2(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public static synthetic lambda$showDirectBootWarnDialog$3(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public static synthetic lambda$showSecurityWarnDialog$0(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 257
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    .line 262
    :goto_1
    return-void
.end method

.method public static synthetic lambda$showSecurityWarnDialog$1(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    .line 266
    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 236
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->notifyChanged()V

    .line 239
    return-void
.end method

.method private showDirectBootWarnDialog()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 283
    sget v2, Lcom/android/settingslib/R$string;->direct_boot_unaware_dialog_message:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 284
    const v2, 0x104000a

    new-instance v3, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$FTfMqDGTv2yWgiGfPYaiYBCHriY;

    invoke-direct {v3, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$FTfMqDGTv2yWgiGfPYaiYBCHriY;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$_R1WCgG1LabBNKieYWiJs9NnYv4;

    invoke-direct {v3, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$_R1WCgG1LabBNKieYWiJs9NnYv4;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 288
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void
.end method

.method private showSecurityWarnDialog()V
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 246
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 248
    const v3, 0x1040014

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 249
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 250
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 249
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 251
    .local v3, "label":Ljava/lang/CharSequence;
    sget v4, Lcom/android/settingslib/R$string;->ime_security_warning:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 252
    const v2, 0x104000a

    new-instance v4, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$pHt4-6FWRQ9Ts6PuJy_AB14MhJc;

    invoke-direct {v4, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$pHt4-6FWRQ9Ts6PuJy_AB14MhJc;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    const/high16 v2, 0x1040000

    new-instance v4, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$HH5dtwzFZv06UNDXJAO6Cyx4kxo;

    invoke-direct {v4, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$HH5dtwzFZv06UNDXJAO6Cyx4kxo;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 268
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 269
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 147
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    return v1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    .line 154
    return v1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result v0

    if-nez v0, :cond_5

    .line 164
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    .line 162
    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    goto :goto_1

    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showSecurityWarnDialog()V

    .line 171
    :cond_5
    :goto_1
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 178
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 186
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 190
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/android/settingslib/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string v4, "IME\'s Settings Activity Not Found"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    sget v3, Lcom/android/settingslib/R$string;->failed_to_open_app_settings_toast:I

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 194
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    .line 192
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 197
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "message":Ljava/lang/String;
    :goto_0
    return v1
.end method
