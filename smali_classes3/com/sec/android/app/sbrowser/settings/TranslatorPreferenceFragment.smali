.class public Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/settings/SettingsFragmentLayoutChangedListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->lambda$onResume$3(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private initPreference()V
    .locals 5

    const-string v0, "prf_translator_desc"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f14107a

    const-string v4, "\n\n"

    invoke-static {v2, v3, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    const-string v4, "TC"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object p0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setMovementMethod(Z)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    :cond_0
    return-void
.end method

.method private isSupportMainSwitch()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportMainSwitch()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->lambda$onActivityResult$6(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->lambda$onActivityResult$4(Z)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->lambda$onCreateView$1(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$4(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->setPreferenceEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$5(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/V;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/V;-><init>(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$6(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->setPreferenceEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$7(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/V;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/V;-><init>(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->setPreferenceEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/V;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/V;-><init>(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/U;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/U;-><init>(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;I)V

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->setPreferenceEnabled(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResume$3(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistUtil;->updateLanguagePackPreference(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->lambda$onCreateView$0(Z)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->lambda$onActivityResult$5(Z)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->lambda$onCreateView$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->lambda$onActivityResult$7(Z)V

    return-void
.end method

.method private setPreferenceEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslatorEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->changeDefaultTranslatorStatus(Z)Z

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "574"

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
    if-ne p2, p3, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->setPreferenceEnabled(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_SUCCESS_LIST_NON_MANDATORY_OR_EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->updateConsentStatus(I)V

    goto :goto_0

    :pswitch_1
    if-ne p2, p3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/U;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/U;-><init>(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/U;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/U;-><init>(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    :cond_3
    :goto_0
    return-void

    nop

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v0, :cond_0

    const-string v0, "pref_translator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslatorEnabled()Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    const p1, 0x7f180080

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->initPreference()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

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
    .locals 1
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

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->isSupportMainSwitch()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslatorEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1400b5

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/f;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0}, Lcom/sec/android/app/sbrowser/settings/f;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public onLayoutMarginChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "translator_language_pack_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "574"

    const-string v1, "20093"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->openLangpackSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TranslatorPreferenceFragment"

    const-string v1, "ActivityNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/U;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/U;-><init>(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->isSupportMainSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->skipUserConsent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->setPreferenceEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslatorEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->setPreferenceEnabled(Z)V

    :cond_1
    :goto_0
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

    const v0, 0x7f140671

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
