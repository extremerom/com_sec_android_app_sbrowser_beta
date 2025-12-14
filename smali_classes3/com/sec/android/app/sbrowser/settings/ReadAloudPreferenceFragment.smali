.class public Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAwesomeIntelligencePref:Landroidx/preference/Preference;

.field private mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

.field private mLandThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceLandThumbnailDescPreferences;

.field private mReadAloudVoiceCategoryPref:Landroidx/preference/PreferenceCategory;

.field private mThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceThumbnailPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->lambda$onPreferenceTreeClick$0(Z)V

    return-void
.end method

.method private initPreference()V
    .locals 7

    const v0, 0x7f18005f

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    const-string v0, "pref_read_aloud_preference_desc"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140ba9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1401d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    const-string v6, "TC"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setMovementMethod(Z)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    const-string v0, "pref_awesome_intelligence_land_thumbnail_desc"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceLandThumbnailDescPreferences;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mLandThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceLandThumbnailDescPreferences;

    const-string v0, "pref_awesome_intelligence_thumbnail"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceThumbnailPreferences;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceThumbnailPreferences;

    const-string v0, "pref_awesome_intelligence_feature"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mAwesomeIntelligencePref:Landroidx/preference/Preference;

    const-string v0, "pref_read_aloud_voice_category"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mReadAloudVoiceCategoryPref:Landroidx/preference/PreferenceCategory;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceThumbnailPreferences;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mAwesomeIntelligencePref:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mReadAloudVoiceCategoryPref:Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$onPreferenceTreeClick$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->startGlobalSettingsActivity()V

    :cond_0
    return-void
.end method

.method private startGlobalSettingsActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.INTELLIGENT_FEATURES_GLOBAL_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateThumbnailPrefVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

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
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v3

    if-eqz v3, :cond_3

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mDescriptionPref:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    if-eqz v0, :cond_5

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mLandThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceLandThumbnailDescPreferences;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mThumbnailPref:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/view/AwesomeIntelligenceThumbnailPreferences;

    if-eqz v0, :cond_7

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mReadAloudVoiceCategoryPref:Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "575"

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->startGlobalSettingsActivity()V

    goto :goto_0

    :pswitch_1
    if-ne p2, p3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->startGlobalSettingsActivity()V

    goto :goto_0

    :pswitch_2
    if-ne p2, p3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->startGlobalSettingsActivity()V

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lw2/A;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->updateThumbnailPrefVisibility()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->initPreference()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

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

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_read_aloud_install_voice_data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.SMT"

    const-string v3, "com.samsung.SMT.gui.DownloadList"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    const-string v0, "pref_awesome_intelligence_feature"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/j;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/settings/j;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    return v1

    :cond_2
    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->updateThumbnailPrefVisibility()V

    :cond_0
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

    const v0, 0x7f140083

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
