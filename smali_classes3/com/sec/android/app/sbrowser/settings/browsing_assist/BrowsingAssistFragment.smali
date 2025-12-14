.class public Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

.field private mLandThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistLandThumbnailDescPreferences;

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistThumbnailPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->lambda$onPreferenceTreeClick$2(Z)V

    return-void
.end method

.method private initPreferences()V
    .locals 8

    const-string v0, "pref_browsing_assist_description"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    const-string v0, "pref_browsing_assist_land_thumbnail_desc"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistLandThumbnailDescPreferences;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mLandThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistLandThumbnailDescPreferences;

    const-string v0, "pref_browsing_assist_thumbnail"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistThumbnailPreferences;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistThumbnailPreferences;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140bb1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    const-string v6, "PN"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TC"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v6, v5, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setMovementMethod(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mLandThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistLandThumbnailDescPreferences;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getAIStatusSetByEDM()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v4, "pref_summarize"

    invoke-virtual {p0, v4}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    const-string v5, "pref_translator"

    invoke-virtual {p0, v5}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    const-string v6, "pref_read_articles_aloud"

    invoke-virtual {p0, v6}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-ne v0, v2, :cond_2

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "pref_category_browsing_assist"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->updateReadArticlesAloudVisibility()V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->lambda$onCreate$0(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;-><init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPreferenceTreeClick$2(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->startGlobalSettingsActivity()V

    :cond_0
    return-void
.end method

.method private setPreferenceEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    :cond_0
    return-void
.end method

.method private startGlobalSettingsActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_GLOBAL_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateReadArticlesAloudVisibility()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_read_articles_aloud"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private updateThumbnailPrefVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDisplayTypeMain(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x24c

    if-le v3, v4, :cond_3

    move v1, v2

    :cond_3
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    if-eqz v1, :cond_4

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mLandThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistLandThumbnailDescPreferences;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/BrowsingAssistThumbnailPreferences;

    if-eqz p0, :cond_6

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "571"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, p3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->startGlobalSettingsActivity()V

    goto :goto_0

    :pswitch_1
    if-ne p2, p3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->startGlobalSettingsActivity()V

    goto :goto_0

    :pswitch_2
    if-ne p2, p3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->startGlobalSettingsActivity()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x946
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "browsing_assist_first_time_use"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->setPreferenceEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lw2/A;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->updateThumbnailPrefVisibility()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    const p1, 0x7f180013

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->initPreferences()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSettingAIFeatures(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_intelligence_feature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20083"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;-><init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;I)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    :cond_0
    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->updateThumbnailPrefVisibility()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f1402a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
