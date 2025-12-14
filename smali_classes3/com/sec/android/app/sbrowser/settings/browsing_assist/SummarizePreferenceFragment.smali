.class public Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;
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

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->lambda$onCreateView$2(Z)V

    return-void
.end method

.method private initPreference()V
    .locals 8

    new-instance v0, Lr/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1502d6

    invoke-direct {v0, v1, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw2/F;->a(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140fed

    const-string v5, "\n\n"

    invoke-static {v3, v4, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f140f13

    goto :goto_0

    :cond_0
    const v4, 0x7f140fec

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    const-string v6, "PN"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TC"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v4, v3, v6, v5, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setMovementMethod(Z)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->lambda$onCreateView$0()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->lambda$onActivityResult$5(Z)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->lambda$onCreateView$1(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$4(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->setPreferenceEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$5(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;-><init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$6(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->setPreferenceEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$7(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;-><init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->setPreferenceEnabled(Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showAllowOnlineProcessingDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->setPreferenceEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isPreventOnlineProcessingTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;-><init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Off"

    const-string v0, "On"

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string v2, "20084"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    move-object p1, v0

    :cond_2
    invoke-static {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/f;-><init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;I)V

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->setPreferenceEnabled(Z)V

    :goto_1
    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->lambda$onActivityResult$4(Z)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->lambda$onCreateView$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->lambda$onActivityResult$6(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->lambda$onActivityResult$7(Z)V

    return-void
.end method

.method private setPreferenceEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSummarizeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "572"

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
    if-ne p2, p3, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->setPreferenceEnabled(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_SUCCESS_LIST_NON_MANDATORY_OR_EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->updateConsentStatus(I)V

    goto :goto_0

    :pswitch_1
    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/browsing_assist/f;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/f;-><init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/browsing_assist/f;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/f;-><init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    :cond_2
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

    const-string v0, "pref_summarize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSummarizeEnabled()Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->initPreference()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

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

    new-instance p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSummarizeEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f14008e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance p3, Lcom/sec/android/app/sbrowser/auth/password/a;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSummarizeEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->skipUserConsent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSummarizeEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    :cond_2
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

    const v0, 0x7f14008e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
