.class public Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lw2/m;


# instance fields
.field private mAcceptCookies:Landroidx/preference/Preference;

.field private mActivity:Landroid/app/Activity;

.field private mCameraPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

.field private mConfirmDialog:Lm/l;

.field private mEnableJavaScript:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mLocationPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

.field private mMicPermission:Landroidx/preference/SeslSwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->lambda$showConfirmJavaScriptPopupIfNeeded$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->lambda$showConfirmJavaScriptPopupIfNeeded$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$showConfirmJavaScriptPopupIfNeeded$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140ca0

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mEnableJavaScript:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-static {p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setJavaScriptEnabled(Z)V

    const p1, 0x7f140d61

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Off"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140ca1

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showConfirmJavaScriptPopupIfNeeded$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mConfirmDialog:Lm/l;

    return-void
.end method

.method private showConfirmJavaScriptPopupIfNeeded(Z)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setJavaScriptEnabled(Z)V

    const p1, 0x7f140d61

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "On"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/e;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/settings/e;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lm/k;

    const v3, 0x7f150324

    invoke-direct {v2, v1, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v3, v2, Lm/k;->a:Lm/h;

    iput-boolean v0, v3, Lm/h;->m:Z

    const-string v0, ""

    invoke-virtual {v2, v0}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    const v2, 0x7f1409e7

    invoke-virtual {v0, v2}, Lm/k;->a(I)V

    const v2, 0x7f1409e8

    invoke-virtual {v0, v2, p1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/l;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/settings/l;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    iget-object v2, p1, Lm/k;->a:Lm/h;

    iput-object v0, v2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mConfirmDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mConfirmDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateSummary()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mAcceptCookies:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    const-string p0, "SitePermissionsPreference"

    const-string v0, "Error - mAcceptCookies is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isAllowCookiesEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isThirdPartyCookiesEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v0, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    :cond_2
    :goto_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v4

    const v5, 0x7f060206

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mAcceptCookies:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140cd1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "561"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const p1, 0x7f180075

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "accept_cookies"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mAcceptCookies:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->updateSummary()V

    const-string p1, "enable_javascript"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mEnableJavaScript:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_0
    const-string p1, "location_permission"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SeslSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mLocationPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz p1, :cond_1

    const-string v0, "android.permission-group.LOCATION"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mLocationPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_1
    const-string p1, "camera_permission"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SeslSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mCameraPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz p1, :cond_2

    const-string v0, "android.permission-group.CAMERA"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mCameraPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_2
    const-string p1, "mic_permission"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SeslSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mMicPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz p1, :cond_3

    const-string v0, "android.permission-group.MICROPHONE"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mMicPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mConfirmDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mConfirmDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mEnableJavaScript:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mConfirmDialog:Lm/l;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "camera_permission"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "enable_javascript"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "mic_permission"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :sswitch_3
    const-string v2, "location_permission"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x9

    invoke-static {p0, p2}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->setContentSettingEnabled(IZ)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->showConfirmJavaScriptPopupIfNeeded(Z)Z

    move-result p0

    return p0

    :pswitch_2
    const/16 p0, 0x8

    invoke-static {p0, p2}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->setContentSettingEnabled(IZ)V

    goto :goto_1

    :pswitch_3
    const/4 p0, 0x4

    invoke-static {p0, p2}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->setContentSettingEnabled(IZ)V

    :cond_4
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x205af767 -> :sswitch_3
        0x1ae392c7 -> :sswitch_2
        0x373b89a9 -> :sswitch_1
        0x4b8f5f29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isCookiesEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->updateSummary()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mAcceptCookies:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mLocationPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->isContentSettingEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mMicPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->isContentSettingEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mCameraPermission:Landroidx/preference/SeslSwitchPreferenceScreen;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->isContentSettingEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isJavaScriptEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mEnableJavaScript:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mEnableJavaScript:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mEnableJavaScript:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isJavaScriptEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140a4f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
