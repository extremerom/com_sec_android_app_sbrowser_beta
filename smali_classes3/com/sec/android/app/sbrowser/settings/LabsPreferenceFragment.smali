.class public Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"


# instance fields
.field private mConfirmDialog:Lm/l;

.field private mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method private checkPopupIsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mConfirmDialog:Lm/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mConfirmDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mConfirmDialog:Lm/l;

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->lambda$showSystemFontConfirmPopupIfNeeded$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->lambda$showSystemFontConfirmPopupIfNeeded$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic k(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->lambda$onCreate$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->lambda$onCreate$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->showSystemFontConfirmPopupIfNeeded()V

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$onCreate$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreate$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsUnifiedHomePage()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setNewsFeedEnabled(Z)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showSystemFontConfirmPopupIfNeeded$3(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140ce8

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140ce9

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "On"

    goto :goto_0

    :cond_1
    const-string p0, "Off"

    :goto_0
    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140ce7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showSystemFontConfirmPopupIfNeeded$4(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mConfirmDialog:Lm/l;

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->lambda$onCreate$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private showSystemFontConfirmPopupIfNeeded()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->checkPopupIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->dismissPopup()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/e;-><init>(Landroidx/fragment/app/Fragment;I)V

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1409f0

    goto :goto_0

    :cond_1
    const v0, 0x7f1409ef

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1409f2

    goto :goto_0

    :cond_3
    const v0, 0x7f1409f1

    :goto_0
    new-instance v2, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    const v4, 0x7f150324

    invoke-direct {v2, v3, v4}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v3, v2, Lm/k;->a:Lm/h;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lm/h;->m:Z

    const v3, 0x7f1409f3

    invoke-virtual {v2, v3}, Lm/k;->e(I)V

    invoke-virtual {v2, v0}, Lm/k;->a(I)V

    const v0, 0x7f1402ad

    invoke-virtual {v2, v0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/l;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mConfirmDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mConfirmDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_5
    :goto_1
    const-string p0, "LabsPreference"

    const-string v0, "activity is invalid, cannot show dialog for LabsPreferenceFragment"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSummary()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/system_font/SystemFont;->getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSummary getCurrentFontName e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f1409ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140ca3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "997"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f180040

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_use_system_font"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isSupportSystemFont()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    const-string p1, "pref_trans_split_scroll_sync"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportedSplit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_1
    const-string p1, "pref_use_updated_samsung_internet"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onPause()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->checkPopupIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->dismissPopup()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->mUseSystemFont:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->updateSummary()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140a03

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1400d3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
