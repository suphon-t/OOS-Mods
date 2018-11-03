.class public Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;
.super Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.source "InputMethodSubtypePreference.java"


# instance fields
.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefKey"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "subtypeLocaleString"    # Ljava/lang/String;
    .param p5, "systemLocale"    # Ljava/util/Locale;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setPersistent(Z)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setKey(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p3}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iput-boolean v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    goto :goto_2

    .line 64
    :cond_0
    invoke-virtual {p5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 65
    iget-boolean v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v1, :cond_2

    .line 66
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    .line 69
    :goto_2
    return-void
.end method
