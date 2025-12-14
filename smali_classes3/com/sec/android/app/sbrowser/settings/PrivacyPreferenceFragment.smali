.class public Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lw2/n;
.implements Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
.implements Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

.field private mBlockAutoDownload:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mBlockDeepLink:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

.field private mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

.field private mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

.field private mIntentBlocker:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

.field private mIsSecretModeOn:Z

.field private mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

.field private mPromoteOnTip:Ljava/lang/String;

.field private mResetDialog:Lm/l;

.field private mResetPrivacy:Landroidx/preference/Preference;

.field private mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mStatusPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

.field private mUseAutoHttpsUpgrade:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mViewModelFactory:Landroidx/lifecycle/u0;

.field private mViewModelStore:Landroidx/lifecycle/x0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    new-instance v0, Landroidx/lifecycle/x0;

    invoke-direct {v0}, Landroidx/lifecycle/x0;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mViewModelStore:Landroidx/lifecycle/x0;

    return-void
.end method

.method private changeIconColor()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cb1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v2, 0x7f06085b

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getColorIconDrawable(I)LY0/c;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v2, 0x7f06085c

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getColorIconDrawable(I)LY0/c;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIntentBlocker:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    const v2, 0x7f06085d

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getColorIconDrawable(I)LY0/c;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v1, :cond_0

    const v2, 0x7f06085e

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getColorIconDrawable(I)LY0/c;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method private getColorIconDrawable(I)LY0/c;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cb3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070cb0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance p1, LY0/b;

    invoke-direct {p1, p0, v0}, LY0/c;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p0, 0x4efe0e19

    invoke-virtual {p1, p0}, LY0/c;->b(F)V

    return-object p1
.end method

.method private getFeatureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "anti_tracking_level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "block_unwanted_webpages"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "block_auto_download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "safe_browsing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "block_popups"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, ""

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14093a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140228

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140942

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140a34

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140948

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x2936eac7 -> :sswitch_4
        -0x207016c7 -> :sswitch_3
        -0x2058d31a -> :sswitch_2
        0x3d30d595 -> :sswitch_1
        0x5a753279 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMyPrivacyStatus()I
    .locals 11

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getPrefSettings()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMyPrivacyStatus groupOne count : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PrivacyPreference"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v1

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->isBlocked()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "anti_tracking_level"

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, ""

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v6

    iget-boolean v10, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    invoke-virtual {v6, v10}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v6

    if-ne v6, v7, :cond_7

    if-ne v5, v2, :cond_3

    move v1, v7

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v8

    if-ne v5, v2, :cond_4

    move v1, v8

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_6
    move-object v3, v9

    goto :goto_2

    :cond_7
    if-ne v5, v2, :cond_8

    move v1, v8

    :cond_8
    :goto_2
    move-object v9, v3

    goto :goto_4

    :cond_9
    const-string v3, "getMyPrivacyStatus not supported SAT"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v2, :cond_a

    move v1, v7

    goto :goto_3

    :cond_a
    sub-int/2addr v2, v8

    if-ne v5, v2, :cond_b

    move v1, v8

    :cond_b
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->getName()Ljava/lang/String;

    move-result-object v9

    :cond_d
    :goto_4
    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getFeatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPromoteOnTip:Ljava/lang/String;

    const-string v0, "getMyPrivacyStatus (0 basic / 1 secure / 2 strict) : "

    const-string v2, " and on Tip promote : "

    invoke-static {v1, v0, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPromoteOnTip:Ljava/lang/String;

    invoke-static {v0, p0, v4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getPrefSettings()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result v2

    const-string v3, "block_popups"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "safe_browsing"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "block_auto_download"

    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "block_unwanted_webpages"

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;

    invoke-direct {v9, v4, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;

    invoke-direct {v2, v3, v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p0, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;

    invoke-direct {p0, v8, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$onDataReadyForGraphs$12()V

    return-void
.end method

.method private isAddedPreference(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPrivacyPreferenceSet()Z
    .locals 1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "pref_privacy_status"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$showPreferenceOnReady$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$showPreferenceOnReady$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$setGraphViewModel$9(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$onDataReadyForGraphs$12()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isPrivacyPreferenceSet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->showPreferenceOnReady()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->updatePrivacySummary()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSummaryPrivacy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->setSummaryPrivacy(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->updateAntiTrackingSummary()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$setGraphViewModel$10(Ljava/lang/String;)V
    .locals 1

    const-string p1, "PrivacyPreference"

    const-string v0, "mMyModel \'Clean web\' change observed !!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphDataClean()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphDataDump(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSummaryClean()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphSummary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSubSummaryClean()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphSubSummary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanGraphOff()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphOff(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->changeIconColor()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->drawSummary()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->drawGraph()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setGraphViewModel$11(Ljava/lang/String;)V
    .locals 1

    const-string p1, "PrivacyPreference"

    const-string v0, "mMyModel \'Privacy\' change observed !!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphDataPrivacy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphDataDump(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSummaryPrivacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphSummary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSubSummaryPrivacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphSubSummary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyGraphOff()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphOff(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->changeIconColor()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->drawSummary()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->drawGraph()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setGraphViewModel$8(Ljava/lang/String;)V
    .locals 1

    const-string p1, "PrivacyPreference"

    const-string v0, "mMyModel \'Feature name to show on Tip\' change observed !!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mStatusPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPromoteOnTip:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->updateTip(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setGraphViewModel$9(Ljava/lang/Integer;)V
    .locals 2

    const-string p1, "PrivacyPreference"

    const-string v0, "mMyModel \'Status set\' change observed !!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mStatusPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getMyPrivacyStatus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPromoteOnTip:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->setStatus(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mStatusPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->drawStatus(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showPreferenceOnReady$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpages(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$showPreferenceOnReady$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAllowPopupsEnabled(Z)V

    return p1
.end method

.method private synthetic lambda$showPreferenceOnReady$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSafeBrowsingUserOpted(Z)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSafeBrowsing(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    return v0
.end method

.method private synthetic lambda$showPreferenceOnReady$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->sendSALogging(Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$showPreferenceOnReady$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockAutoDownloadEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$showPreferenceOnReady$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAutoHttpsUpgradeEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showResetDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140cb6

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showResetDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140cb7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->resetAllSettings()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$showResetDialog$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$showPreferenceOnReady$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$showPreferenceOnReady$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$showPreferenceOnReady$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$setGraphViewModel$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$showPreferenceOnReady$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private resetAllSettings()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingDefaultLevel(Z)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingDefaultLevel(Z)I

    move-result v2

    const-string v4, "block_unwanted_webpages"

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpages(Z)V

    :cond_0
    const-string v4, "block_popups"

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isPopupEnabled()Z

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setKnoxPopupEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockPopups(Z)V

    :cond_1
    const-string v4, "pref_intent_blocker"

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->resetBlocked()Z

    :cond_2
    const-string v4, "anti_tracking_level"

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivateAccessToken(ZZ)V

    invoke-static {v1, v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->setPrivateAccessToken(ZZ)V

    :cond_3
    const-string v0, "anti_tracking_secret_mode_level"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivateAccessToken(ZZ)V

    invoke-static {v3, v2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->setPrivateAccessToken(ZZ)V

    :cond_4
    const-string v0, "safe_browsing"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSafeBrowsing(Z)V

    :cond_5
    const-string v0, "block_auto_download"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockAutoDownloadEnabled(Z)V

    :cond_6
    const-string v0, "pref_block_deeplink"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockDeepLinkEnabled(Z)V

    :cond_7
    const-string v0, "pref_use_auto_https_upgrade"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->isAddedPreference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAutoHttpsUpgradeEnabled(Z)V

    invoke-static {v3}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAutoHttpsUpgradeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mUseAutoHttpsUpgrade:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mResetPrivacy:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivacySettingsReset(Z)V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$setGraphViewModel$8(Ljava/lang/String;)V

    return-void
.end method

.method private sendSALogging(Z)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140d63

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "InBrowser"

    goto :goto_0

    :cond_0
    const-string p1, "InApp"

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private setDetailDefault(Landroidx/preference/Preference;)V
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_secretmode"

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getModuleData(Ljava/lang/String;)I

    move-result p1

    const-string v2, "count"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p1

    const-string v2, "sat_level"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getStartDateTimeInMillis()J

    move-result-wide v2

    const-string p1, "start_date"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getEndDateTimeInMillis()J

    move-result-wide v2

    const-string p1, "end_date"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->startActivityPopOver(Landroid/content/Intent;)V

    return-void
.end method

.method private setDetailDefault(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_enabled"

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_secretmode"

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getModuleData(Ljava/lang/String;)I

    move-result p1

    const-string v2, "count"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getStartDateTimeInMillis()J

    move-result-wide v2

    const-string p1, "start_date"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getEndDateTimeInMillis()J

    move-result-wide v2

    const-string p1, "end_date"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->startActivityPopOver(Landroid/content/Intent;)V

    return-void
.end method

.method private setGraphViewModel()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mViewModelFactory:Landroidx/lifecycle/u0;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "application"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/u0;->c:Landroidx/lifecycle/u0;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/lifecycle/u0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/u0;-><init>(Landroid/app/Application;)V

    sput-object v1, Landroidx/lifecycle/u0;->c:Landroidx/lifecycle/u0;

    :cond_1
    sget-object v0, Landroidx/lifecycle/u0;->c:Landroidx/lifecycle/u0;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mViewModelFactory:Landroidx/lifecycle/u0;

    :cond_2
    new-instance v0, LZ3/x;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mViewModelFactory:Landroidx/lifecycle/u0;

    invoke-direct {v0, p0, v1}, LZ3/x;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    invoke-virtual {v0, v1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->getTipPromote()Landroidx/lifecycle/X;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/v;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/v;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->getSecurityStatus()Landroidx/lifecycle/X;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/v;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/v;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->getSummaryClean()Landroidx/lifecycle/X;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/v;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/v;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->getSummaryPrivacy()Landroidx/lifecycle/X;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/v;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/v;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method private showPreferenceOnReady()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "PrivacyPreference"

    const-string v1, "showPreferenceOnReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pref_privacy_status"

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_1

    const v2, 0x7f180052

    invoke-virtual {p0, v2}, Lw2/A;->addPreferencesFromResource(I)V

    :cond_1
    const-string v2, "pref_privacy_graph_clean"

    invoke-virtual {p0, v2}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setSecretModeStatus(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanGraphOff()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphOff(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphDataClean()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphDataDump(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSummaryClean()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphSummary(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mCleanPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSubSummaryClean()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphSubSummary(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cb1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string v3, "block_unwanted_webpages"

    invoke-virtual {p0, v3}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setDividerVisible(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v5, Lcom/sec/android/app/sbrowser/settings/k;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v5, 0x7f06085b

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getColorIconDrawable(I)LY0/c;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getBlockUnwantedWebpagesAvailableStatus()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockUnwantedWebpages(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpages(Z)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string v3, "Remove BlockUnwantedWebpages Preference"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "block_popups"

    invoke-virtual {p0, v3}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setDividerVisible(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v5, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v5, 0x7f06085c

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getColorIconDrawable(I)LY0/c;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isPopupEnabled()Z

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockPopupsEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :goto_0
    const-string v3, "pref_intent_blocker"

    invoke-virtual {p0, v3}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIntentBlocker:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v3, :cond_4

    const v5, 0x7f06085d

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getColorIconDrawable(I)LY0/c;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    :cond_4
    const-string v3, "pref_privacy_graph_privacy"

    invoke-virtual {p0, v3}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphDataPrivacy()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphDataDump(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setSecretModeStatus(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSummaryPrivacy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphSummary(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyGraphOff()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphOff(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSubSummaryPrivacy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphSubSummary(Ljava/lang/String;)V

    const-string v3, "anti_tracking_level"

    invoke-virtual {p0, v3}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    const-string v5, "anti_tracking_secret_mode_level"

    invoke-virtual {p0, v5}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    const v5, 0x7f06085e

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getColorIconDrawable(I)LY0/c;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->isAntiTrackingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    const-string v2, "[IAT] feature is OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPrivacyPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->updateAntiTrackingSummary()V

    const-string v0, "safe_browsing"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setDividerVisible(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/w;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/w;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->needsForceOptInSettings()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isOptIn()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_9
    :goto_2
    const-string v0, "pref_block_deeplink"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockDeepLink:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_a

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/w;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/w;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_a
    const-string v0, "block_auto_download"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockAutoDownload:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_c

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/k;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockAutoDownload:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f140941

    goto :goto_3

    :cond_b
    const v2, 0x7f140940

    :goto_3
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_c
    const-string v0, "pref_use_auto_https_upgrade"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mUseAutoHttpsUpgrade:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_d

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/k;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mUseAutoHttpsUpgrade:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isAutoHttpsUpgradeEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_d
    const-string v0, "pref_privacy_reset_settings"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mResetPrivacy:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mResetPrivacy:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isPrivacySettingsReset()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mStatusPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getMyPrivacyStatus()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPromoteOnTip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->setStatus(ILjava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->addObserver(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->addEmptyBottomSpace(Landroidx/preference/PreferenceScreen;)V

    :cond_e
    :goto_4
    return-void
.end method

.method private showResetDialog()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mResetDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1502e8

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0e061c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b09fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0b09f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f140e5e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    const v1, 0x7f140e5f

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/u;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/u;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V

    const v2, 0x7f1402ac

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/u;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/u;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V

    const v2, 0x7f1402ae

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mResetDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mResetDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startActivityPopOver(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSetting(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$showResetDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->lambda$setGraphViewModel$10(Ljava/lang/String;)V

    return-void
.end method

.method private updateAntiTrackingSummary()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060206

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v2, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140caf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "510"

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/x0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mViewModelStore:Landroidx/lifecycle/x0;

    return-object p0
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 10

    const-string v0, "anti_tracking_level"

    const-string v1, "anti_tracking_secret_mode_level"

    const-string v2, "block_unwanted_webpages"

    const-string v3, "block_popups"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "pref_intent_blocker"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onBrowserPreferenceChanged : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PrivacyPreference"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v9, "private_access_token"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_4
    const-string v9, "pref_use_auto_https_upgrade"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_5
    const-string v9, "block_auto_download"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_6
    const-string v9, "safe_browsing"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_8
    const-string v9, "pref_block_deeplink"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_0

    :cond_8
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_9
    const-string v9, "private_access_token_secret_mode"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_0

    :cond_9
    move v7, v4

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_0

    :cond_a
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->updateGraphDataPrivacy()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSummaryPrivacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->setSummaryPrivacy(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->updateAntiTrackingSummary()V

    goto :goto_2

    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->updateGraphDataClean()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getGraphSummaryClean()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->setSummaryClean(Ljava/lang/String;)V

    :cond_e
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isPrivacySettingsReset?? : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isPrivacySettingsReset()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isPrivacySettingsReset()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivacySettingsReset(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mResetPrivacy:Landroidx/preference/Preference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_f
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mStatusPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->getStatus()I

    move-result p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getMyPrivacyStatus()I

    move-result v0

    if-eq p1, v0, :cond_10

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->getMyPrivacyStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->setSecurityStatus(I)V

    :cond_10
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mPromoteOnTip:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->setTipPromote(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6417bb0d -> :sswitch_a
        -0x55769e53 -> :sswitch_9
        -0x2ab08c0c -> :sswitch_8
        -0x2936eac7 -> :sswitch_7
        -0x207016c7 -> :sswitch_6
        -0x2058d31a -> :sswitch_5
        0xb0b38c -> :sswitch_4
        0x160ec89a -> :sswitch_3
        0x3d30d595 -> :sswitch_2
        0x4789fa4c -> :sswitch_1
        0x5a753279 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lw2/A;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mStatusPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PrivacyPreference"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    invoke-direct {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;-><init>(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mIsSecretModeOn:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->showPreferenceOnReady()V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDataReadyForGraphs()V
    .locals 4

    const-string v0, "PrivacyPreference"

    const-string v1, "onDataReadyForGraphs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/T;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/T;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDataUpdated()V
    .locals 1

    const-string v0, "pref_intent_blocker"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->onBrowserPreferenceChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mStatusPreference:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphDataController:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mViewModelStore:Landroidx/lifecycle/x0;

    invoke-virtual {v0}, Landroidx/lifecycle/x0;->a()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->removeObserver(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mResetDialog:Lm/l;

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "anti_tracking_level"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "anti_tracking_secret_mode_level"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "block_unwanted_webpages"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "safe_browsing"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "block_popups"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_0

    :sswitch_5
    const-string v3, "pref_privacy_reset_settings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mAntiTrackingLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->setDetailDefault(Landroidx/preference/Preference;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->setDetailDefault(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->setDetailDefault(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockPopups:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->setDetailDefault(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V

    :cond_6
    :goto_1
    move v0, v1

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->showResetDialog()V

    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x2c2157ba -> :sswitch_5
        -0x2936eac7 -> :sswitch_4
        -0x207016c7 -> :sswitch_3
        0x3d30d595 -> :sswitch_2
        0x4789fa4c -> :sswitch_1
        0x5a753279 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->needsForceOptInSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mSafeBrowsing:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isOptIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mBlockDeepLink:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockDeepLinkEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140a1f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PrivacyPreference"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->mGraphViewModel:Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->setGraphViewModel()V

    :cond_0
    return-void
.end method
