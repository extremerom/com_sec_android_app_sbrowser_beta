.class public Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

.field private mIntelligentScanSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

.field private mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

.field private mSummaryPreference:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method private createPreferences()V
    .locals 6

    new-instance v0, Lr/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1502d6

    invoke-direct {v0, v1, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw2/F;->a(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mSummaryPreference:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintSupported()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    new-instance v2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const-string v5, "pref_use_fingerprint_web_signin_in_sbrowser"

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const v5, 0x7f140556

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseFingerprintWebSigninInSBrowser()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const-string v5, "pref_use_iris_web_signin_in_sbrowser"

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const v5, 0x7f14064f

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseIrisWebSigninInSBrowser()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentScanSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIntelligentScanSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "pref_use_intelligent_scan_web_signin_in_sbrowser"

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIntelligentScanSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const v2, 0x7f14062b

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIntelligentScanSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseIntelligentWebSigninInSBrowser()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIntelligentScanSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIntelligentScanSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->updatePreferencesDescription()V

    invoke-virtual {p0, v1}, Lw2/A;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->lambda$onPreferenceChange$0(Z)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "WebSigninPreferenceFragment"

    const-string p1, "registerFingerprint() was failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showUsePhoneModeDialog(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f140123

    invoke-virtual {v0, p0}, Lm/k;->e(I)V

    invoke-virtual {v0, p1}, Lm/k;->a(I)V

    const p0, 0x7f14084e

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateBiometricsPreferenceStatus()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIntelligentScanSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method private updatePreferencesDescription()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mSummaryPreference:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isBioRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140a7f

    goto :goto_0

    :cond_0
    const v0, 0x7f140a13

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "513"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x73

    if-eq p1, p2, :cond_1

    const/16 p2, 0x74

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIntelligentScanSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f1407c0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->createPreferences()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mFingerprintSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "5126"

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->mIrisSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    const-string p0, "5127"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "5125"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "WebSigninPreferenceFragment"

    const v5, 0x7f140bd9

    const v6, 0x7f1402c6

    const v7, 0x1020002

    const/4 v8, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "pref_use_fingerprint_web_signin_in_sbrowser"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_1
    const-string v9, "pref_use_iris_web_signin_in_sbrowser"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v8, v0

    goto :goto_1

    :sswitch_2
    const-string v9, "pref_use_intelligent_scan_web_signin_in_sbrowser"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz p2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f140bd7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->showUsePhoneModeDialog(I)V

    return v1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {v6, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v1

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/password/c;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/password/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->registerFingerprint(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "5126"

    invoke-static {p0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    long-to-float p0, v2

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    goto/16 :goto_4

    :pswitch_1
    if-eqz p2, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->showUsePhoneModeDialog(I)V

    return v1

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {v6, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v1

    :cond_8
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.settings.REGISTER_IRIS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x73

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to register iris : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "5127"

    invoke-static {p0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    long-to-float p0, v2

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    goto :goto_4

    :pswitch_2
    if-eqz p2, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->showUsePhoneModeDialog(I)V

    return v1

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {v6, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v1

    :cond_b
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.settings.REGISTER_INTELLIGENT_SCAN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x74

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to register intelligent scan : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return v1

    :cond_c
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x37e45643 -> :sswitch_2
        0x4085dfb5 -> :sswitch_1
        0x6d71cfec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->updatePreferencesDescription()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->updateBiometricsPreferenceStatus()V

    return-void
.end method
