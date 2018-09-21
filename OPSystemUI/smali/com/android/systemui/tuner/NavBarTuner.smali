.class public Lcom/android/systemui/tuner/NavBarTuner;
.super Lcom/android/systemui/tuner/TunerPreferenceFragment;
.source "NavBarTuner.java"


# static fields
.field private static final ICONS:[[I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTunables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    return-void

    :array_0
    .array-data 4
        0x7f08033b
        0x7f11062c
    .end array-data

    :array_1
    .array-data 4
        0x7f080204
        0x7f11063a
    .end array-data

    :array_2
    .array-data 4
        0x7f08036d
        0x7f110637
    .end array-data

    :array_3
    .array-data 4
        0x7f080277
        0x7f110634
    .end array-data

    :array_4
    .array-data 4
        0x7f08036f
        0x7f11063b
    .end array-data

    :array_5
    .array-data 4
        0x7f080288
        0x7f110636
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    return-void
.end method

.method private varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 1
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "keys"    # [Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "k"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 124
    .local v0, "type":Landroid/support/v7/preference/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 125
    .local v7, "keycode":Landroid/support/v7/preference/Preference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/v7/preference/ListPreference;

    .line 126
    .local v8, "icon":Landroid/support/v7/preference/ListPreference;
    invoke-direct {p0, v8}, Lcom/android/systemui/tuner/NavBarTuner;->setupIcons(Landroid/support/v7/preference/ListPreference;)V

    .line 127
    new-instance v9, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$OO9apf0OQ_k5f52-B3z0sPWxq4Y;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$OO9apf0OQ_k5f52-B3z0sPWxq4Y;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v9, v1}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 148
    new-instance v9, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;

    .local v9, "listener":Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    .line 155
    invoke-virtual {v0, v9}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    new-instance v10, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$L8cT3y_Xey3yV0gzNMgaCqxduDs;

    move-object v1, v10

    move-object v3, v7

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$L8cT3y_Xey3yV0gzNMgaCqxduDs;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;)V

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    return-void
.end method

.method private bindLayout(Landroid/support/v7/preference/ListPreference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;

    .line 107
    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/ListPreference;)V

    const-string v1, "sysui_nav_bar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    return-void
.end method

.method public static synthetic lambda$bindButton$4(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "newValue"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p5, "keycode"    # Landroid/support/v7/preference/Preference;

    .line 128
    move-object v0, p1

    .line 129
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 130
    move-object v0, p2

    .line 132
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "button":Ljava/lang/String;
    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    const-string v2, "key"

    invoke-virtual {p3, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result v3

    .line 137
    .local v3, "code":I
    invoke-virtual {p4, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v4, 0x1

    invoke-virtual {p5, v4}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 141
    invoke-virtual {p4, v4}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    .line 142
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "code":I
    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p3, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 145
    invoke-virtual {p4, v2}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    .line 147
    :goto_0
    return-void
.end method

.method public static synthetic lambda$bindButton$5(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "def"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p4, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "newValue"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$bindButton$6(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 0
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    .line 151
    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    .line 152
    return-void
.end method

.method public static synthetic lambda$bindButton$7(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p5, "preference"    # Landroid/support/v7/preference/Preference;
    .param p6, "newValue"    # Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$bindButton$8(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p5, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p6, "dialog"    # Landroid/content/DialogInterface;
    .param p7, "which"    # I

    .line 164
    const/16 v0, 0x42

    .line 166
    .local v0, "code":I
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 168
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 169
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0, p3, p4, p2, p5}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    .line 171
    return-void
.end method

.method public static synthetic lambda$bindButton$9(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p5, "preference"    # Landroid/support/v7/preference/Preference;

    .line 158
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "editText":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {p5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v9, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;)V

    .line 163
    const v2, 0x104000a

    invoke-virtual {v1, v2, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 172
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$bindLayout$1(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)V
    .locals 1
    .param p0, "newValue"    # Ljava/lang/String;
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;

    .line 108
    move-object v0, p0

    .line 109
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 110
    const-string v0, "default"

    .line 112
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static synthetic lambda$bindLayout$2(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;

    invoke-direct {v1, p3, p1}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;-><init>(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$bindLayout$3(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "preference1"    # Landroid/support/v7/preference/Preference;
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 115
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "val":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 117
    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "sysui_nav_bar"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$onDestroy$0(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 1
    .param p0, "t"    # Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 98
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 5
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;

    .line 204
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "button":Ljava/lang/String;
    const-string v1, "key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "uri":Ljava/lang/String;
    const/16 v2, 0x42

    .line 209
    .local v2, "code":I
    :try_start_0
    invoke-virtual {p3}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 211
    goto :goto_0

    .line 210
    :catch_0
    move-exception v3

    .line 212
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "code":I
    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private setupIcons(Landroid/support/v7/preference/ListPreference;)V
    .locals 11
    .param p1, "icon"    # Landroid/support/v7/preference/ListPreference;

    .line 218
    sget-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 219
    .local v0, "labels":[Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 220
    .local v1, "values":[Ljava/lang/CharSequence;
    nop

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 220
    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 222
    .local v2, "size":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    sget-object v6, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 223
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 224
    .local v6, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v5

    aget v8, v8, v4

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 226
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 227
    invoke-virtual {v7, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 228
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v7, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 229
    .local v8, "span":Landroid/text/style/ImageSpan;
    const-string v9, "  "

    invoke-virtual {v6, v9, v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 230
    const-string v9, " "

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 231
    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v9, v9, v5

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 232
    aput-object v6, v0, v5

    .line 233
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v10, v10, v5

    aget v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v5

    .line 222
    .end local v6    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "span":Landroid/text/style/ImageSpan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 235
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/ListPreference;)V
    .locals 10
    .param p1, "icon"    # Landroid/support/v7/preference/ListPreference;

    .line 178
    const/high16 v0, 0x41600000    # 14.0f

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 178
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 180
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 181
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 182
    .local v4, "id":I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 183
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {v1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 185
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 186
    invoke-virtual {v6, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    new-instance v7, Landroid/text/style/ImageSpan;

    invoke-direct {v7, v6, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 188
    .local v7, "span":Landroid/text/style/ImageSpan;
    const-string v8, "  "

    invoke-virtual {v5, v8, v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 189
    const-string v8, " "

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 190
    move v8, v3

    .local v8, "i":I
    :goto_0
    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 191
    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v9, v9, v8

    aget v9, v9, v3

    if-ne v9, v4, :cond_0

    .line 192
    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v9, v9, v8

    aget v9, v9, v2

    invoke-virtual {p0, v9}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 190
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 195
    .end local v8    # "i":I
    :cond_1
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0    # "size":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NavButton"

    const-string v2, "Problem with summary"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 89
    const v0, 0x7f150003

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->addPreferencesFromResource(I)V

    .line 90
    const-string v0, "layout"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->bindLayout(Landroid/support/v7/preference/ListPreference;)V

    .line 91
    const-string v0, "sysui_nav_bar_left"

    const-string v1, "space"

    const-string v2, "left"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "sysui_nav_bar_right"

    const-string v1, "menu_ime"

    const-string v2, "right"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 99
    return-void
.end method
